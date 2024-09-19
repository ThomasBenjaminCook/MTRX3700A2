`timescale 1 ns / 1 ns

module noise_simulate_tb;

    // Step 1: Define tb variables
    logic clk;
    logic audio_clk;
    logic reset;
    dstream.in  audio_input;
    dstream.out pitch_output;
   
    
    // Memory to load the hex file
    reg [15:0] memory [0:255]; // Adjust size if needed

    initial begin
        // Load hex file into memory
        $readmemh("C:\Users\schof\Downloads\hex_recording.hex", memory);
    end
    
    // Step 2: Instantiate DUT
    
    localparam SIMULATE_SECONDS = 10000;
    fft_pitch_detect DUT(.*);

    
    localparam CLK_PRD = 10;
    
    // Step 3: Toggle clock variable every 10 time units
    
    initial begin
        clk = 0;
        forever #(CLK_PRD / 2) clk = ~clk;
    end
    
    // Step 4: Initial block with initial inputs
    
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars();
        #(CLK_PRD * 0.5 * SIMULATE_SECONDS);
        $finish;
    end
	
	logic counter = 0;
	
	always_ff @(posedge clk) begin
	if(reset) begin
		counter <= 0;
	end else begin
			audio_input <= memory[counter];
			counter <= counter + 1;
		end
	end
	 
endmodule
