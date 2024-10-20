module camera_capture
#(
    parameter HEIGHT = 240,
    parameter WIDTH = 320
)
(
input clk,
input [3:0] KEY,
input [29:0] pixel_input,
input start_frame,
output [7:0] rgb_data,
output valid
);

localparam num_pixels = HEIGHT * WIDTH;

logic [29:0] frame_buffer [0: num_pixels];
logic start_flag;
logic end_flag;
logic [$clog2(num_pixels)-1:0] counter_in;
logic [$clog2(num_pixels)-1:0] counter_out;

always_ff @(posedge clk) begin: capture
	if (KEY[0] && start_frame) begin
		start_flag <= 1;
		end_flag <= 0;
		counter_in <= 0;
		while (start_flag && !end_flag) begin
			frame_buffer[counter_in] <= pixel_input;
			counter_in <= counter_in + 1;
		end
	end
	if(counter_in == num_pixels) end_flag <= 1;
end

//[0:7] -> [10:17] -> [20: 27]


always_ff @(posedge clk) begin: stream_out
	if(start_flag) begin
		counter_out <= 0;
		while (counter_out < num_pixels) begin
			for(int j = 0; j < 3; j = j + 1) begin
				if(j == 0) begin
					rgb_data = frame_buffer[counter_out][0:7];
				end
				else if(j == 1) begin
					rgb_data = frame_buffer[counter_out][10:17];
				end
				else begin
					rgb_data = frame_buffer[counter_out][20:27];
				end
			end
			counter_out <= counter_out + 1;
		end
	end
end

assign valid = start_flag;


endmodule