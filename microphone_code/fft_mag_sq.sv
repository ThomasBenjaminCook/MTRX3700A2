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
    logic [2:0]mag_valid_temp;

    always_ff @(posedge clk) begin
        mag_valid_temp[0] <= fft_valid;
        mag_valid_temp[2:1] <= mag_valid_temp[1:0] << 1;
    end
    
   always_ff @(posedge clk) begin : stage1
       //TODO Your code here!
       // We want to implement the 2 pipeline stages, similar to task 1.2.
       // When multiplying, make sure to use the signed function, e.g: signed'(fft_real)*signed'(fft_real);
       // Remember to usereset.
       if (reset) begin
            multiply_stage_real <= 0;
            multiply_stage_imag <= 0;
       end
       else begin
            multiply_stage_real <= signed'(fft_real)**2;
            multiply_stage_imag <= signed'(fft_imag)**2;
       end
    end

    always_ff @(posedge clk) begin : stage2
        if (reset) add_stage <= 0;
        else add_stage <= multiply_stage_imag + multiply_stage_real;
    end

    assign mag_sq    = add_stage;
    assign mag_valid = mag_valid_temp[2];//TODO set to `1` when mag_sq valid **this should be 2 cycles after valid input!**
    // Hint: you can use a shift register to implement valid.
endmodule
