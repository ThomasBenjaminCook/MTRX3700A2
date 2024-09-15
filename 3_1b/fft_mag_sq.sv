module fft_mag_sq #(
    parameter W = 16
) (
    input                clk,
    input                reset,
    input                fft_valid,
    input        [W-1:0] fft_imag,
    input        [W-1:0] fft_real,
    output logic [W*2:0] mag_sq,
    output logic         mag_valid
);

    logic signed [W*2-1:0] multiply_stage_real, multiply_stage_imag;
    logic signed [W*2:0]   add_stage;
    logic valid_one, valid_two;
    
    always_ff @(posedge clk) begin
        add_stage <= multiply_stage_real + multiply_stage_imag;
        multiply_stage_imag <= signed'(fft_imag) * signed'(fft_imag);
        multiply_stage_real <= signed'(fft_real) * signed'(fft_real);
       //TODO Your code here!
       // We want to implement the 2 pipeline stages, similar to task 1.2.
       // When multiplying, make sure to use the signed function, e.g: signed'(fft_real)*signed'(fft_real);
       // Remember to use reset.
       valid_two <= valid_one;
       valid_one <= fft_valid;
    end

    assign mag_sq    = add_stage;
    assign mag_valid = valid_two;//TODO set to `1` when mag_sq valid **this should be 2 cycles after valid input!**
    // Hint: you can use a shift register to implement valid.

endmodule
