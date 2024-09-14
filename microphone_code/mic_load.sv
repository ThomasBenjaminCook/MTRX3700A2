    // Paste your mic_load code here from Lesson 3.ii Task 3.2.
    `timescale 1ps/1ps
module mic_load #(parameter N=16) (
	input bclk, // Assume a 18.432 MHz clock
    input adclrc,
	input adcdat,
    // No ready signal nor handshake: as this module streams live audio data, it cannot be stalled, therefore we only have the valid signal.
    output logic valid,
    output logic [N-1:0] sample_data
);
    // Assume that i2c has already configured the CODEC for LJ data, MSB-first and N-bit samples.

    // Rising edge detect on ADCLRC to sense left channel
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
     * BCLK rising is your trigger to sample the value of ADCDAT into the register at the appropriate bit index.
     * ADCLRC rising (see `redge_adclrc`) signals that the MSB should be sampled on the next rising edge of BCLK.
     * With the above, think about when and how you would reset your bit_index counter.
     */

     logic [N-1:0] temp_rx_data;
     logic [N-1:0] bit_index;
     logic flag;
     always_ff @(posedge bclk) begin
        valid <= 0;
        if (flag) begin
            temp_rx_data[(N-1)-bit_index] <= adcdat;
            bit_index <= bit_index + 1;
            valid <= 0;
        end
        if (bit_index == (N)) begin
            valid <= 1;
            sample_data <= temp_rx_data;
            flag <= 0;
            bit_index <= bit_index + 1;
        end
        else if (bit_index == (N)) begin
            bit_index <= bit_index + 1;
            valid <= 0;
        end
     end

     always_ff @(posedge redge_adclrc) begin
        flag <= 1;
        bit_index <= 0;
     end

endmodule


