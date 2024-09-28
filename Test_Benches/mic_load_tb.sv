`timescale 1ps/1ps
module mic_load_tb;

    localparam TCLK = 54_253; // Assume a 18.432 MHz clock (roughly 54'253ps period)

    localparam T_FS = 18_432_000/48_000; // =384. 48kHz sample frequency -> period in 18.432 MHz clk periods
    
    localparam N = 16; // 16-bit audio data from the ADCLRC

    logic clk = 0;
    logic bclk;
	 assign bclk = clk;

    logic adclrc = 0, adcdat = 1'bX;

    logic valid;
    logic [N-1:0] sample_data;

    mic_load #(.N(N)) DUT (.*);

    always #(TCLK/2) clk <= ~clk;

    localparam LEN = 64;
    
    // 64 values of sine (16-bit):
    logic [N-1:0] audio_data [0:LEN-1] = '{16'h8000, 16'h8c8b, 16'h98f8, 16'ha527, 16'hb0fb, 16'hbc56, 16'hc71c, 16'hd133, 16'hda82, 16'he2f1, 16'hea6d, 16'hf0e2, 16'hf641, 16'hfa7c, 16'hfd89, 16'hff61, 16'hffff, 16'hff61, 16'hfd89, 16'hfa7c, 16'hf641, 16'hf0e2, 16'hea6d, 16'he2f1, 16'hda82, 16'hd133, 16'hc71c, 16'hbc56, 16'hb0fb, 16'ha527, 16'h98f8, 16'h8c8b, 16'h8000, 16'h7374, 16'h6707, 16'h5ad8, 16'h4f04, 16'h43a9, 16'h38e3, 16'h2ecc, 16'h257d, 16'h1d0e, 16'h1592, 16'hf1d, 16'h9be, 16'h583, 16'h276, 16'h9e, 16'h0, 16'h9e, 16'h276, 16'h583, 16'h9be, 16'hf1d, 16'h1592, 16'h1d0e, 16'h257d, 16'h2ecc, 16'h38e3, 16'h43a9, 16'h4f04, 16'h5ad8, 16'h6707, 16'h7374};
    task automatic signal_generation;
        begin
            @(negedge bclk); // Shift data out on the negedge of the clock!
            for (integer k = 0; k < LEN; k++) begin : audio_data_values
                adclrc = 1'b1;
                for (integer i = 0; i < T_FS/2-1; i++) begin : audio_data_bits_left
                    if (i < N) adcdat = audio_data[k][N-1-i]; // MSB first
                    else adcdat = 1'bX;
                    #(TCLK);
                end
                @(negedge bclk);
                adclrc = 1'b0;
                for (integer i = 0; i < T_FS/2-1; i++) begin : audio_data_bits_right
                    if (i < N) adcdat = audio_data[k][N-1-i]; // MSB first
                    else adcdat = 1'bX;
                    #(TCLK);
                end
                @(negedge bclk);
            end
        end
    endtask

    logic [N-1:0] test_output;
    always_ff @(posedge clk) if (valid) test_output <= sample_data; // Handshake

    task test;
    begin
        fork
            signal_generation();
            begin : check_output
                for (integer k = 0; k < LEN; k++) begin
                    @(posedge valid) #(TCLK*1.5) $display("Out: %h", test_output);
                    if (test_output != audio_data[k]) $error("Mismatch at t=%t, expected test_output=%h, but got %h!", $time, audio_data[k], test_output);
                end
            end
        join        
        #(TCLK*100);
    end
    endtask

    initial begin : testcases
        $dumpfile("waveform.vcd");
        $dumpvars();
		  // Initialise signals

		  adcdat = 0;
		  test_output = 0;

		  
        #(TCLK*10);
        #(TCLK*50);

        test();

        #(TCLK*100);
        $finish();
    end
    
    initial #1400000000 $error("Taking too long! Did you assert all valid signals?");   
endmodule



        
