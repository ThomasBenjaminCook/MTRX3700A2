`timescale 1ns/1ns

module edge_conv #(parameter W = 30, parameter W_FRAC = 0, parameter BW = 8) (

    input clk,

    dstream.in x,

    dstream.out y

);

 

                //CHANGE THESE BACK TO 320 x 240!!!!

                localparam WIDTH = 320;

                localparam HEIGHT = 240;

 

    // 1. Assign x.ready: we are ready for data if the module we output to (y.ready) is ready (this module does not exert backpressure).

    assign x.ready = y.ready;

    // Impulse response h[n]: (32-bit, 16-bit frac, 2's complement)

    localparam N = 9;

//    logic signed [BW-1:0] h [0:N-1] = '{8'h00, 8'h00, 8'h00, 8'h00, 8'h01, 8'h00, 8'h00, 8'h00, 8'h00};
	     logic signed [BW-1:0] h [0:N-1] = '{8'hff, 8'hff, 8'hff, 
														  8'hff, 8'h08, 8'hff, 
														  8'hff, 8'hff, 8'hff};
//		  logic signed [BW-1:0] h [0:N-1] = '{8'h01, 8'h02, 8'h01, 8'h02, 8'h04, 8'h02, 8'h01, 8'h02, 8'h01};

 

                // Store the first 2 lines of pixels in shift register

                logic [W-1:0] input_buffer [0:2*WIDTH + 3];

                logic [W-1:0] input_buffer_old [0:2*WIDTH + 3];

                 logic [$clog2(307200):0]counter;

                logic conv_ready = 0;

                logic [W-1:0] test;

 

                assign test = input_buffer[0];

               

                 always_ff @(posedge clk) begin: store_values

                                if((y.ready & x.ready)) begin

                                                input_buffer_old <= input_buffer;

                                                input_buffer[0] <= x.data;

                                                counter <= counter + 1;

                                                if(counter >= 2*WIDTH + 3) begin

                                                                conv_ready <= 1'b1;

                                                                if(counter == WIDTH*HEIGHT-1)begin

                                                                                counter <= 0;

                                                                                conv_ready <= 1'b0;

                                                                end

                                                end

                                                for (int j = 0; j < 2*WIDTH + 3; j=j+1) begin

                input_buffer[j+1] = input_buffer_old[j];

            end

                                end

                end

 

    // 3. Multiply each register in the shift register by its repsective h[n] value, for n = 0 to N.

    logic signed [2*BW-1:0] mult_result_red [0:N-1];

	 logic signed [2*BW-1:0] mult_result_green [0:N-1];

	 logic signed [2*BW-1:0] mult_result_blue [0:N-1];          // 2*W as the multiply doubles width

     //logic i2;

                //logic global_pixel_pointer;

                //logic adder = 0;
					 
		always_comb begin: multiply

			  for(int j = 0; j < N; j = j + 1) begin

					mult_result_red[j] = signed'({1'b0,input_buffer[(j%3)+(WIDTH*(j/3))][29:22]}) * signed'(h[j]);

					mult_result_green[j] = signed'({1'b0,input_buffer[(j%3)+(WIDTH*(j/3))][19:12]}) * signed'(h[j]);

					mult_result_blue[j] = signed'({1'b0,input_buffer[(j%3)+(WIDTH*(j/3))][9:2]}) * signed'(h[j]);

			  end

		 end

//    always_comb begin : h_multiply
//
//        // Set mult_result for each n value.
//
//        // Hint: use a for loop.
//
// 
//
//                                mult_result_red[0] = signed'({1'b0,input_buffer[0][29:22]}) * signed'(h[0]);
//
//                                mult_result_green[0] = signed'({1'b0,input_buffer[0][19:12]}) * signed'(h[0]);
//
//                                mult_result_blue[0] = signed'({1'b0,input_buffer[0][9:2]}) * signed'(h[0]);
//
// 
//
//                                mult_result_red[1] = signed'({1'b0,input_buffer[1][29:22]}) * signed'(h[1]);
//
//                                mult_result_green[1] = signed'({1'b0,input_buffer[1][19:12]}) * signed'(h[1]);
//
//                                mult_result_blue[1] = signed'({1'b0,input_buffer[1][9:2]}) * signed'(h[1]);
//
// 
//
//                                mult_result_red[2] = signed'({1'b0,input_buffer[2][29:22]}) * signed'(h[2]);
//
//                                mult_result_green[2] = signed'({1'b0,input_buffer[2][19:12]}) * signed'(h[2]);
//
//                                mult_result_blue[2] = signed'({1'b0,input_buffer[2][9:2]}) * signed'(h[2]);
//
// 
//
//                                mult_result_red[3] = signed'({1'b0,input_buffer[WIDTH][29:22]}) * signed'(h[3]);
//
//                                mult_result_green[3] = signed'({1'b0,input_buffer[WIDTH][19:12]}) * signed'(h[3]);
//
//                                mult_result_blue[3] = signed'({1'b0,input_buffer[WIDTH][9:2]}) * signed'(h[3]);
//
// 
//
//                                mult_result_red[4] = signed'({1'b0,input_buffer[WIDTH+1][29:22]}) * signed'(h[4]);
//
//                                mult_result_green[4] = signed'({1'b0,input_buffer[WIDTH+1][19:12]}) * signed'(h[4]);
//
//                                mult_result_blue[4] = signed'({1'b0,input_buffer[WIDTH+1][9:2]}) * signed'(h[4]);
//
// 
//
//                                mult_result_red[5] = signed'({1'b0,input_buffer[WIDTH+2][29:22]}) * signed'(h[5]);
//
//                                mult_result_green[5] = signed'({1'b0,input_buffer[WIDTH+2][19:12]}) * signed'(h[5]);
//
//                                mult_result_blue[5] = signed'({1'b0,input_buffer[WIDTH+2][9:2]}) * signed'(h[5]);
//
// 
//
//                                mult_result_red[6] = signed'({1'b0,input_buffer[2*WIDTH][29:22]}) * signed'(h[6]);
//
//                                mult_result_green[6] = signed'({1'b0,input_buffer[2*WIDTH][19:12]}) * signed'(h[6]);
//
//                                mult_result_blue[6] = signed'({1'b0,input_buffer[2*WIDTH][9:2]}) * signed'(h[6]);
//
// 
//
//                                mult_result_red[7] = signed'({1'b0,input_buffer[2*WIDTH+1][29:22]}) * signed'(h[7]);
//
//                                mult_result_green[7] = signed'({1'b0,input_buffer[2*WIDTH+1][19:12]}) * signed'(h[7]);
//
//                                mult_result_blue[7] = signed'({1'b0,input_buffer[2*WIDTH+1][9:2]}) * signed'(h[7]);
//
// 
//
//                                mult_result_red[8] = signed'({1'b0,input_buffer[2*WIDTH+2][29:22]}) * signed'(h[8]);
//
//                                mult_result_green[8] = signed'({1'b0,input_buffer[2*WIDTH+2][19:12]}) * signed'(h[8]);
//
//                                mult_result_blue[8] = signed'({1'b0,input_buffer[2*WIDTH+2][9:2]}) * signed'(h[8]);
//
//    end

 

    // 4. Add all of the multiplication results together and shift the result into the output buffer.

    logic signed [$clog2(N)+2*BW:0] macc_red, macc_green, macc_blue; // $clog2(N)+1 to accomodate for overflows over the 41 additions.

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
	 
	 logic [$clog2(N)+2*BW:0] macc_red_final, macc_blue_final, macc_green_final;
	 
	 assign macc_red_final = macc_red[$clog2(N)+2*BW] ? 0 : macc_red;
	 assign macc_green_final = macc_green[$clog2(N)+2*BW] ? 0 : macc_green;
	 assign macc_blue_final = macc_blue[$clog2(N)+2*BW] ? 0 : macc_blue;
	 

    always_ff @(posedge clk) begin : output_reg

        if (x.valid & x.ready & conv_ready) begin
		  


            y.data <= {macc_red_final[BW-1+W_FRAC : W_FRAC], 2'b00, macc_green_final[BW-1+W_FRAC : W_FRAC], 2'b00, macc_blue_final[BW-1+W_FRAC : W_FRAC], 2'b00}; // Remember to truncate the fixed point properly!!!

            //overflow <= FILL-IN; // (Optional) Check if our INTEGER truncation causes overflow (remember 2's complement!!!)

            x_valid_q <= 1'b1;    // Delay x.valid by 1 clock cycle

            y.valid <= x_valid_q; // 2 clock cycles for valid data to get from x to y

        end

    end

 

endmodule