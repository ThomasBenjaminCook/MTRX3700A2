module fft_find_peak #(
    parameter NSamples = 1024, // 1024 N-points
    parameter W        = 33,   // For 16x2 + 1
    parameter NBits    = $clog2(NSamples)

) (
    input                        clk,
    input                        reset,
    input  [W-1:0]               mag,
    input                        mag_valid,
    output logic [W-1:0]         peak = 0,
    output logic [NBits-1:0]     peak_k = 0,
    output logic                 peak_valid
);
    logic [NBits-1:0] i = 0, k;
    always_comb for (integer j=0; j<NBits; j=j+1) k[j] = i[NBits-1-j]; // bit-reversed index
    
    logic [W-1:0]         peak_temp   = 0;
    logic [NBits-1:0]     peak_k_temp = 0;

    always_ff @(posedge clk) begin : find_peak
        peak_valid <= 1'b0;
        if (reset) begin
            peak_temp       <= 1'b0;
            i <= 0;
        end else if (mag_valid) begin
            if (mag > peak_temp && !i[0]) begin
                peak_temp   <= mag;
                peak_k_temp <= k;
            end
            if (i == NSamples-1) begin
                peak_valid  <= 1'b1;
                peak        <= peak_temp;
                peak_k      <= peak_k_temp;
                peak_temp   <= 0;
                i <= 0;
            end
            i <= i + 1;
        end
        else begin
            peak_temp       <= 0;
            i <= 0;
        end
    end
endmodule