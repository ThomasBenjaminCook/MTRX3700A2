module fft_input_buffer #(
    parameter W = 16,
    parameter NSamples = 1024
) (
    input                clk,
     input                reset,
     input                audio_clk,
     dstream.in           audio_input,
     output logic [W-1:0] fft_input,
     output logic         fft_input_valid
);
    logic fft_read;
    logic full, wr_full;
    async_fifo u_fifo (.aclr(reset),
                        .data(audio_input.data),.wrclk(audio_clk),.wrreq(audio_input.valid),.wrfull(wr_full),
                        .q(fft_input),          .rdclk(clk),      .rdreq(fft_read),         .rdfull(full)    );
    assign audio_input.ready = !wr_full;

    assign fft_input_valid = fft_read; // The Async FIFO is set such that valid data is read out whenever the rdreq flag is high.
    
    logic [11:0] counter = 0;

    //TODO implement a counter n to set fft_read to 1 when the FIFO becomes full (use full, not wr_full).
    // Then, keep fft_read set to 1 until 1024 (NSamples) samples in total have been read out from the FIFO.
    assign fft_read = (full || ((counter<NSamples)&&(counter > 0)));
    always_ff @(posedge clk) begin : fifo_flush
        if(reset) begin
            counter <= 0;
        end
        else if(full) begin
            counter <= counter + 1;
        end
        else if(counter && (counter < NSamples+1)) begin
            counter <= counter + 1;
        end
        else begin
            counter <= 0;
        end     
    end

endmodule
