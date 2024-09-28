`timescale 1ns / 1ns
module i2c_master_tb; 
	 
	 logic  clk;      // 20 kHz input clock. Assume this is the correct frequency for the I2C transfer.
    logic i2c_scl;    // I2C clock
    tri   i2c_sda;    // I2C DATA (inout)

    logic  [6:0] slav_addr;
    logic  read_not_write;
    logic  [7:0] reg_addr;
    logic  [7:0] write_data;
    logic  write_valid;
    logic  write_ready;
    logic  [7:0] read_data;
    logic  read_valid;
    logic  read_ready;
    logic  error;

	 // Instantiate DUT
	 i2c_master DUT (
      .clk(clk),
      .i2c_scl(i2c_scl),
      .i2c_sda(i2c_sda),
      .slav_addr(slav_addr),
      .read_not_write(read_not_write),
      .reg_addr(reg_addr),
      .write_data(write_data),
      .write_valid(write_valid),
      .write_ready(write_ready),
      .read_data(read_data),
      .read_valid(read_valid),
      .read_ready(read_ready),
      .error(error)
   );
	 
	 // Clock generation
	 always #25 clk = ~clk; // 20 kHz clock -> 50,000 ns period, 25 ns half-period

	 initial begin
		 // Initialize signals
		 clk = 0;
		 slav_addr = 7'h3C;       // Example slave address
		 reg_addr = 8'h10;        // Example register address
		 write_data = 8'hAA;      // Example data to be written
		 read_not_write = 0;      // Indicate it's a write transaction
		 write_valid = 0;         // Initially, no transaction
		 read_ready = 0;          // Not ready for reading initially

		 $dumpfile("waveform.vcd");
		 $dumpvars(0, i2c_master_tb);
		 
		 // Start a write transaction
		 @(posedge clk);
		 write_valid = 1;
		 
		 // Wait until write_ready is asserted
		 wait(write_ready);
		 
		 @(posedge clk);
		 write_valid = 0; // Deassert write_valid after the handshake

		 // Finish after some time
		 #100000;
		 $finish;
	 end

endmodule
