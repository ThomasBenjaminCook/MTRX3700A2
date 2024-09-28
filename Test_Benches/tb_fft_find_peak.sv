`timescale 1ns/1ns

module tb_fft_find_peak;

  // Parameters
  localparam NSamples = 1024;
  localparam W = 33;
  localparam NBits = $clog2(NSamples);

  // Clock and reset
  logic clk;
  logic reset;

  // DUT signals
  logic [W-1:0] mag;
  logic mag_valid;
  logic [W-1:0] peak;
  logic [NBits-1:0] peak_k;
  logic peak_valid;

  // Instantiate the DUT
  fft_find_peak #(
    .NSamples(NSamples),
    .W(W),
    .NBits(NBits)
  ) dut (
    .clk(clk),
    .reset(reset),
    .mag(mag),
    .mag_valid(mag_valid),
    .peak(peak),
    .peak_k(peak_k),
    .peak_valid(peak_valid)
  );

  // Clock generation: 20ns period (50MHz)
  always #10 clk = ~clk;

  localparam WindowN = 5;
  logic [NBits-1:0]     expected_peak_k [WindowN];
  logic [W-1:0]         expected_peak   [WindowN];
  integer expected_i = 0;
  integer valid_count = 0;

  // Test sequence
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
    // Initialize signals
    clk = 0;
    reset = 1;
    mag = 0;
    mag_valid = 0;

    // Hold reset for a few cycles
    #60 reset = 0;

    // Test input values
    for (integer window_i = 0; window_i < WindowN; window_i++) begin
      mag_valid = 1;
      expected_peak[window_i] = 0;
      $display("\nSending FFT window #%0d (N=1024)", window_i);
      for (integer i = 0; i < NSamples; i++) begin
        mag = $urandom() % 65536;  // Random magnitude values
        if (mag > expected_peak[window_i] && !i[0]) begin
          expected_peak[window_i]   = mag;
          expected_peak_k[window_i] = {i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8],i[9]};
        end
        #20;
      end
      $display("Expected maximum peak = %0d at k=%0d",window_i,expected_peak[window_i],expected_peak_k[window_i]);
    end

    // End simulation
    #50;
    if (valid_count != WindowN) $display("\n**\nError: peak_valid was asserted %0d time/s, but should have been asserted %0d times!\n**",valid_count,WindowN);
    $finish();
  end

  always_ff @(posedge clk) begin : monitor
    if (!reset && peak_valid) begin
      expected_i <= expected_i + 1;
      if (peak_k != expected_peak_k[expected_i]) $display("\nError: Wrong peak *k-index* for FFT window #%0d! Expected: %0d. Actual: %0d.",expected_i,expected_peak_k[expected_i],peak_k);
      if (peak   != expected_peak[expected_i])   $display("\nError: Wrong peak *magnitude value* for FFT window #%0d! Expected: %0d. Actual: %0d.",expected_i,expected_peak[expected_i],peak);
      
      valid_count <= valid_count + 1;
    end
  end

endmodule
