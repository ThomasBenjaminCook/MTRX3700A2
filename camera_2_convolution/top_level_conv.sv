module top_level_conv (
	input    clk
);
   localparam W        = 30;   //NOTE: To change this, you must also change the Twiddle factor initialisations in r22sdf/Twiddle.v. You can use r22sdf/twiddle_gen.pl.
   localparam NSamples = 1024; //NOTE: To change this, you must also change the SdfUnit instantiations in r22sdf/FFT.v accordingly.

	dstream #(.N(W))  pixel_input ();
   dstream #(.N(W)) 	pixel_output ();
	 
	edge_conv u_edge_conv (
    .clk(clk),
	 .x(pixel_input),
	 .y(pixel_output)
   );
			
endmodule