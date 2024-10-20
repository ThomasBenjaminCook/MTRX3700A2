`timescale 1ps/1ps
module mic_load #(parameter N=16) (
	input bclk, // Assume a 18.432 MHz clock
    input adclrc,
	input adcdat,

    output logic valid,
    output logic [N-1:0] sample_data
);

    // Paste your mic_load code here from Lesson 3.ii Task 3.2.
	 logic redge_adclrc, adclrc_q; 
    always_ff @(posedge  bclk) begin : adclrc_rising_edge_ff
        adclrc_q <= adclrc;
    end
    assign redge_adclrc = ~adclrc_q & adclrc; // rising edge detected!

    /*
     * Implement the Timing diagram.
     * -----------------------------
     * You should use a temporary N-bit RX register to store the ADCDAT bitstream from MSB to LSB.
     * Remember that MSB is first, LSB is last.
     * Use `temp_rx_data[(N-1)-bit_index] <= adcdat;`
     * BCLK rising is your triggner to sample the value of ADCDAT into the register at the appropriate bit index.
     * ADCLRC rising (see `redge_adclrc`) signals that the MSB should be sampled on the next rising edge of BCLK.
     * With the above, think about when and how you would reset your bit_index counter.
     */
    integer bit_index;
    logic [N-1 : 0] temp_rx_data;
   
	 
	 always_ff @(posedge bclk) begin
		valid <= 0;
		
		if (redge_adclrc) bit_index <= 0;
		
		if (bit_index == N) begin
			sample_data <= temp_rx_data;
			valid <= 1;
		end
		
		if (bit_index <= N) begin
			temp_rx_data[N-1-bit_index] <= adcdat;
			bit_index <= bit_index + 1;
		end
	 end
	 
endmodule
