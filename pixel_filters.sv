`timescale 1ns/1ns

module pixel_filters (
   input wire [2:0] filter_selection,
	input wire [11:0] rddata,
	input wire [29:0] pitch_output,
	output wire [29:0] filter_output
);

	// Gray
	wire [9:0] temp_red, temp_green, temp_blue, gray_scaled;
	wire [17:0] gray;
	
	assign temp_red   = {rddata[11:8], rddata[11:8], 2'b00};
	assign temp_green = {rddata[7:4],  rddata[7:4],  2'b00};
	assign temp_blue  = {rddata[3:0],  rddata[3:0],  2'b00};
	assign gray = (temp_red * 77 + temp_green * 150 + temp_blue * 29);
	assign gray_scaled = gray >> 8;
	
	// Pink
	wire [17:0] pink;
	wire [23:0] scaled_pink;  // Wider wire to handle scaling result
	wire [8:0] pitch_output_capped;
	
	assign pink = (temp_red * 120 + temp_green * 60 + temp_blue * 50);  // Adjust weights for pink
	assign pitch_output_capped = (pitch_output > 63) ? 63 : (pitch_output < 10) ? 10 : pitch_output;
	assign scaled_pink = (pink * pitch_output_capped) >> 6;

	always_comb begin
		if ((filter_selection == 2) | (filter_selection == 0) | (filter_selection == 4)) begin
			filter_output = {gray_scaled, gray_scaled, gray_scaled};
		end
		else if (filter_selection == 1) begin
			filter_output = {
				scaled_pink[17:8],      // Strong red channel
				scaled_pink[17:8] >> 2, // Reduced green channel
				scaled_pink[17:8] >> 1  // Slightly reduced blue channel
			};
		end
		else begin
			filter_output = {
				temp_red,
				temp_green,
				temp_blue
			};
		end
	end

endmodule