module camera_capture
#(
    parameter HEIGHT = 100,
    parameter WIDTH = 320
)
(
input clk,
input [3:1] KEY,
input [29:0] pixel_input,
input start_frame,
input uart_ready,
output [7:0] rgb_data,
output valid
);

localparam num_pixels = HEIGHT * WIDTH;

logic [29:0] frame_buffer [num_pixels:0];
logic start_flag;
logic end_flag;
logic [$clog2(num_pixels)-1:0] counter_in;
logic [$clog2(num_pixels)-1:0] counter_out = num_pixels;
logic [2:0] colour_index;

always_ff @(posedge clk) begin: capture
	if (~(KEY[1]) && start_frame) begin
		start_flag <= 1;
		end_flag <= 0;
		counter_in <= 0;
	end
	
	if(start_flag && !end_flag) begin
		frame_buffer[counter_in] <= pixel_input;
		counter_in <= counter_in + 1;
	end
	
	if(counter_in == num_pixels) end_flag <= 1;
end

//[0:7] -> [10:17] -> [20: 27]


always_ff @(posedge clk) begin: stream_out
	if(start_flag) begin
		counter_out <= 0;
	end
	else begin
		if((counter_out < num_pixels)&uart_ready) begin
			if(colour_index == 0) begin
				rgb_data = frame_buffer[counter_out][7:0];
			end
			else if(colour_index == 1) begin
				rgb_data = frame_buffer[counter_out][17:10];
			end
			else begin
				rgb_data = frame_buffer[counter_out][27:20];
				counter_out <= counter_out + 1;
				colour_index <= 0;
			end
		end
	end
end

assign valid = start_flag;


endmodule