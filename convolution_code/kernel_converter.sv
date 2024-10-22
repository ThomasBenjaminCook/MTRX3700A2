`timescale 1ns/1ns

module kernel_converter #(parameter k_range, parameter N, parameter FRACTIONAL_BITS)(

    input logic signed [BW-1:0] selected_kernel [0:N-1],
    input [$clog2(k_range):0]k_index,
    output logic signed [32-1:0] output_kernel [0:N-1]
);

// Kernel values; 0 = edge, 1 = blur
localparam BW = 16;
localparam [FRACTIONAL_BITS:0] SCALE_FACTOR = 1 << FRACTIONAL_BITS;

logic signed [BW-1:0] identity_kernel [0:N-1] = '{16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 
                                                16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 
                                                16'h0000, 16'h0000, 16'h0001, 16'h0000, 16'h0000, 
                                                16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000, 
                                                16'h0000, 16'h0000, 16'h0000, 16'h0000, 16'h0000};

logic signed [BW-1:0] range_kernel [0:N-1];


always_comb begin: find_range_kernel
    for(int i = 0; i < N; i = i + 1) begin
        range_kernel[i] = selected_kernel[i] - identity_kernel[i];
    end
end

always_comb begin: get_output_kernel
    for(int j = 0; j < N; j = j + 1) begin
        output_kernel[j] = ((range_kernel[j]*SCALE_FACTOR)/k_range)*k_index + identity_kernel[j]*SCALE_FACTOR;
    end
end

endmodule