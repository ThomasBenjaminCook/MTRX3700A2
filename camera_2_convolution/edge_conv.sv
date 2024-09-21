`timescale 1ns/1ns
module edge_conv #(parameter W, W_FRAC) (
    input clk,
    dstream.in x,
    dstream.out y
);
	localparam WIDTH = 320;
	localparam HEIGHT = 240;

    // 1. Assign x.ready: we are ready for data if the module we output to (y.ready) is ready (this module does not exert backpressure).
    assign x.ready = y.ready;
    // Impulse response h[n]: (32-bit, 16-bit frac, 2's complement)
    localparam N = 9;
    logic signed [W-1:0] h [0:N-1] = '{32'hffffffff, 32'hffffffff, 32'hffffffff, 32'hffffffff, 32'hfffffff8,32'hffffffff, 32'hffffffff, 32'hffffffff, 32'hffffffff};

	 // Store the first 2 lines of pixels
	 logic [W-1:0] input_buffer [0:2*WIDTH + 3];
	 logic j;
	 logic counter;
	 logic [W-1:0] input_buffer_old [0:2*WIDTH + 3];
	 

	 
	 logic valid_signal = 0;
	 
	 always_ff @(posedge clk) begin: store_values
		if((valid_signal & x.ready)) begin
			input_buffer_old <= input_buffer;
			input_buffer[0] <= signed'(x.data);
			counter <= counter + 1;
			if((counter >= 2*WIDTH + 3) & (counter <= WIDTH*HEIGHT-1)) begin
				valid_signal <= 1'b1;
			end
		end
		for (int j = 0; j < 2*WIDTH + 3; j=j+1) begin
                input_buffer[j+1] <= input_buffer_old[j];
            end
	 
	 end
		
	
//    // 2. Make a shift register of depth = impulse response size. Feed x.data into this shift register when x.valid=1 and x.ready=1 (and shift all other data in the shift reg).
//    logic signed [W-1:0] shift_reg [0:N-1];
//    logic i1;
//    logic signed [W-1:0] shift_reg_old [0:N-1];
//    always_ff @(posedge clk) begin : h_shift_register
//        if ((x.valid & x.ready)) begin
//            shift_reg_old <= shift_reg;
//            shift_reg[0]<=signed'(x.data);
//            for (int i1 = 0; i1 < N; i1=i1+1) begin
//                shift_reg[i1+1] <= shift_reg_old[i1];
//            end
//        end 
//        // On a handshake (x.valid & x.ready), shift signed'(x.data) into shift_reg and shift everything.
//        // Hint: use a for loop.
//    end

//	logic signed [W-1:0] window [0:N-1];
//	logic i1;
//	always_comb begin
//		for(i1 = 0; i1 < N; i1 = i1 + 1) begin
//			window[i1] = input_buffer[global_pixel_pointer];
//			if(i1%3 == 0) begin
//			global_pixel_pointer = i1 + WIDTH;
//			end
//		end
//		global_pixel_pointer = i1;
//
//	end

    // 3. Multiply each register in the shift register by its repsective h[n] value, for n = 0 to N.
    logic signed [2*W-1:0] mult_result_red [0:N-1]; 
	 logic signed [2*W-1:0] mult_result_green [0:N-1];
	 logic signed [2*W-1:0] mult_result_blue [0:N-1];	// 2*W as the multiply doubles width
    logic i2;
	 logic global_pixel_pointer = 0;
	 logic adder = 0;
    always_comb begin : h_multiply
        // Set mult_result for each n value.
        // Hint: use a for loop.
        for (int i2 = 0; i2 < N; i2 = i2+1) begin
				if(i2%3 == 0) begin
					global_pixel_pointer = i2+(WIDTH-3);
					adder = 0;
				end
				mult_result_red[i2] = input_buffer[global_pixel_pointer+adder][29:22] * h[i2];
				mult_result_green[i2] = input_buffer[global_pixel_pointer+adder][19:12] * h[i2];
				mult_result_blue[i2] = input_buffer[global_pixel_pointer+adder][9:0] * h[i2];
				adder = adder + 1;
        end
    end

    // 4. Add all of the multiplication results together and shift the result into the output buffer.
    logic signed [$clog2(N)+2*W:0] macc_red, macc_green, macc_blue; // $clog2(N)+1 to accomodate for overflows over the 41 additions.
    logic i;
    always_comb begin : MAC
        macc_red = 0;
		  macc_green = 0;
		  macc_blue = 0;
        
        for (int i = 0; i < N; i = i+1) begin
            macc_red = macc_red + mult_result_red[i];
				macc_green = macc_green + mult_result_green[i];
				macc_blue = macc_blue + mult_result_blue[i];
        end
        // Set macc to be the sum of all elements in mult_result.
        // Hint: use a for loop.
    end

    // 5. Output reg: use y.data as a register, load the result of the MACC into y.data if x.valid and x.ready are high (i.e. data is moving).
    // y.valid should be set as a register here too.
    logic overflow; // Optional (not marked): detect for overflow.
    logic x_valid_q = 1'b0; // Delay x.valid by 1 clock cycle
    always_ff @(posedge clk) begin : output_reg
        if (x.valid & x.ready) begin
            y.data <= {macc_red[W-1+W_FRAC : W_FRAC], 2'b00, macc_green[W-1+W_FRAC : W_FRAC], 2'b00, macc_blue[W-1+W_FRAC : W_FRAC], 2'b00}; // Remember to truncate the fixed point properly!!!
            //overflow <= FILL-IN; // (Optional) Check if our INTEGER truncation causes overflow (remember 2's complement!!!)
            x_valid_q <= 1'b1;    // Delay x.valid by 1 clock cycle
            y.valid <= x_valid_q; // 2 clock cycles for valid data to get from x to y
        end
    end

endmodule