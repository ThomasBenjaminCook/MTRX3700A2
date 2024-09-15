module tb_fft_mag_sq;

  // Parameters
  localparam W = 16;

  // Clock and reset
  logic clk;
  logic reset;

  // DUT signals
  logic fft_valid;
  logic signed [W-1:0] fft_imag;
  logic signed [W-1:0] fft_real;
  logic [W*2:0] mag_sq;
  logic mag_valid;

  // Instantiate the DUT
  fft_mag_sq #(
    .W(W)
  ) dut (
    .clk(clk),
    .reset(reset),
    .fft_valid(fft_valid),
    .fft_imag(fft_imag),
    .fft_real(fft_real),
    .mag_sq(mag_sq),
    .mag_valid(mag_valid)
  );

  // Clock generation: 20ns period (50MHz)
  always #10 clk = ~clk;

  // Test sequence
  integer fft_imag_arr [10] = '{29636,-11006,-31880,-24906,-3145,5921,-20539,-158,-14062,15357};
  integer fft_real_arr [10] = '{23964,-7964,-28996,-28,29011,32225,-3198,5685,-21674,16884};
  logic valid_asserted = 0;
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
    // Initialize signals
    clk = 0;
    reset = 1;
    fft_imag = 0;
    fft_real = 0;
    fft_valid = 0;

    // Hold reset for a few cycles
    #60 reset = 0;
    
    // Apply test input values
    fft_valid = 1;
    for (int i = 0; i < 10; i++) begin
      fft_imag = fft_imag_arr[i];
      fft_real = fft_real_arr[i];
      $display("Input #%0d: %0d + %0di",i, fft_real, fft_imag);
      #20;
    end

    // Deassert valid after inputs
    fft_valid = 0;

    // Wait a few cycles for all computations to complete
    #60;

    if (!valid_asserted) $warning("mag_valid was never asserted high!");

    // End simulation
    $finish();
  end

  integer expected_i = 0;
  integer expected [10] = '{1452565792,184557332,1857102416,620309620,851529146,1073508866,432077725,32344189,667502120,520906905};
  always_ff @(posedge clk) begin : monitor
    if (!reset && mag_valid) begin
      valid_asserted <= 1;
      $display("Output #%0d: %0d", expected_i, mag_sq);
      expected_i <= expected_i + 1;
      if (mag_sq != expected[expected_i]) $warning("Wrong mag_sq value for value #%0d!",expected_i);
    end
  end

endmodule
