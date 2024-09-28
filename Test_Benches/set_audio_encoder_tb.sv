`timescale 1ns/1ns
module set_audio_encoder_tb;
    localparam CLK_PERIOD = 50_000; // 50us->20kHz
    localparam CLK_HALF = CLK_PERIOD/2;
    logic i2c_clk = 1'b0;
      
    logic	I2C_SCLK;
    wire	I2C_SDAT;

    set_audio_encoder DUT (.*);

    always begin
        #CLK_HALF i2c_clk = ~i2c_clk;
    end

    initial begin
        $dumpfile("waveform.fst");
        $dumpvars();
        /* Initial interface inputs: */
        @(posedge DUT.done);
        #(CLK_PERIOD*10);
        $finish();
    end

    always_ff @(posedge i2c_clk) begin
        if (DUT.valid & DUT.ready) $display("Setting register %b to data %b",DUT.reg_and_data[15:9],DUT.reg_and_data[8:0]);
    end
  
endmodule
