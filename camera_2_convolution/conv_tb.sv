`timescale 1 ns / 1 ns
module conv_tb;

    localparam NSamples = 1024;
    localparam W        = 30;

    localparam TCLK  = 50;  // 20 MHz.

    logic clk = 0;
    
    always #(TCLK/2) clk = ~clk;
    
    dstream #(.N(W)) pixel_input();
    dstream #(.N(W)) pixel_output();
	 
	 edge_conv u_edge_conv (
		 .clk(clk),
		 .x(pixel_input),
		 .y(pixel_output)
    );


     logic [W-1:0] input_signal [NSamples];
     int j;
	  initial begin
		  for (j = 0; j < NSamples; j = j + 1) begin
				input_signal[j] = NSamples & 30'h3FFFFFFF; // Mask to get 30 bits
		  end
	  end

    logic start = 1'b0; // Use a start flag.
    initial begin : test_procedure
        $dumpfile("waveform.vcd");
        $dumpvars();
        #(TCLK*5);
        start = 1'b1;
        repeat (3) @(negedge pixel_output.valid);
        #(TCLK*100);
        $finish();
    end

    // Input Driver
    integer i = 0, next_i;
    assign next_i = i < NSamples-1 ? i + 1 : 0;
    always_ff @(posedge clk) begin : driver
        pixel_input.valid <= 1'b0;
        pixel_input.data <= input_signal[i];
        if (start) begin
            pixel_input.valid <= 1'b1;
            if (pixel_input.valid && pixel_input.ready) begin
                pixel_input.data <= input_signal[next_i];
                i <= next_i;
            end
        end
    end

    logic [2*W:0] output_check, expected_output;
    integer output_i = 0;
    always_ff @(posedge clk) begin : monitor
        if (pixel_output.valid) begin
            output_check <= pixel_output.data;
            output_i     <= output_i < NSamples-1 ? output_i + 1 : 0;
        end
    end


endmodule