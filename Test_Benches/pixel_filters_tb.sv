`timescale 1ns/1ns

module pixel_filters_tb;
    // Parameters
    localparam CLK_PERIOD = 20; // Clock period (20ns = 50MHz)

    // Testbench signals
    logic clk;
    logic [2:0] menu_choice;
	 logic [11:0] rddata;
	 logic [29:0] pitch_output;
	 logic [29:0] filter_output;
	 logic [9:0] red_output;
	 logic [9:0] green_output;
	 logic [9:0] blue_output;

    // Instantiate the pixel_filters module
	pixel_filters dut (
		.filter_selection(menu_choice),
		.rddata(rddata),
		.pitch_output(pitch_output),
		.filter_output(filter_output)	
	);
	
	assign red_output = filter_output[29:20];
	assign green_output = filter_output[19:10];
	assign blue_output = filter_output[9:0];


    // Clock generation
    initial begin : clk_gen
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end

    // Testbench procedure
    initial begin : procedure
        $dumpfile("waveform.fst");
        $dumpvars();
        // Initialize signals
			rddata = 12'b111111111111;
			pitch_output = 0;
			menu_choice = 1;

        // Wait for a few clock cycles
        #(5 * CLK_PERIOD);

        // Release reset
         rddata = 12'b111111110000;
			pitch_output = 0;
			menu_choice = 1;


        // Wait for a few clock cycles
        #(5 * CLK_PERIOD);
		  
		  // Release reset
         rddata = 12'b111111110000;
			pitch_output = 15;
			menu_choice = 1;
			
			#(5 * CLK_PERIOD);
			
			rddata = 12'b111111110000;
			pitch_output = 15;
			menu_choice = 2;
			
			#(5 * CLK_PERIOD);


        // Stop the simulation
        $finish();
    end


endmodule
