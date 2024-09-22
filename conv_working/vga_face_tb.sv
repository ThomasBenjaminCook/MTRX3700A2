module vga_face_tb;

    logic        clk;
    logic        reset;
    logic [1:0]  face_select;
    logic [29:0] data;
    logic        startofpacket;
    logic        endofpacket;
    logic        valid;
    logic        ready = 1'b0;

    // Instantiate the vga_face module
    vga_face uut (
        .clk(clk),
        .reset(reset),
        .face_select(face_select),
        .conv_data(conv_data),
        .startofpacket(startofpacket),
        .endofpacket(endofpacket),
        .valid(valid),
        .ready(ready)
    );

    localparam CLK_T = 20;

    // Clock generation
    initial begin
        clk = 0;
        forever #(CLK_T/2) clk = ~clk; // 50 MHz clock
    end

    // Simulation procedure
    initial begin : procedure
        $dumpfile("waveform.vcd");
        $dumpvars();
        // Initialize signals
        reset = 1'b1;
        face_select = 2'b00; // Happy face

        // Apply reset
        #CLK_T reset = 1'b0;

        // Run for some time with Angry face
        #(CLK_T*1000);

        // End the simulation
        $finish;
    end

    // Monitor signals to verify behavior
    always_ff @(posedge clk) begin : monitor
        if (valid && ready) begin
            $display("Received pixel: pixel_index =%d, face_select = %d, data = %b", 
                      uut.pixel_index, face_select, data);
        end
    end

    always_ff @(posedge clk) begin : vga_stall
        ready <= ($urandom() % 8 >= 2); // VGA is ready to receive 75% of the time.
    end

endmodule

