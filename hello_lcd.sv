import lcd_inst_pkg::*;
	
module hello_lcd (
    input  logic clk,
    input  logic reset,
    // Avalon-MM signals to LCD_Controller slave:
    output logic address,
    output logic chipselect,
    output logic byteenable,
    output logic read,
    output logic write,
    input  logic waitrequest,
    input  logic [7:0] readdata,
    input  logic [1:0] response,
    output logic [7:0] writedata
);
    // State encoding for FSM
    typedef enum logic [1:0] {IDLE, WRITE_OP} state_t;
    state_t current_state, next_state;

    localparam N_INSTRS = 13; // Change this to the number of instructions you have below:
    logic [8:0] instructions [N_INSTRS] = '{CLEAR_DISPLAY, _H, _e, _l, _l, _o, _SPACE, _W, _o, _r, _l, _d, _EXCLAMATION}; // Clear display then display "Hi".
    // In the above array, **bit-8 is the 1-bit `address`** and bits 7 down-to 0 give the 8-bit data.

    integer instruction_index = 0, next_instruction_index; // You can use these to count.

    // Your code here! (FSM always_ff, always_comb, etc).

    /* Recommendation */
    //TODO Create a FSM with two states IDLE and WRITE_OP.
    // IDLE:     Nothing is asserted - go to WRITE_OP if instruction_index < N_INSTRS.
    // WRITE_OP: Assert the appropriate signals to write `writedata` to `address`.
    //           Wait in this state until `waitrequest` is LOW. Increment instruction index (hint: next_instruction_index).
    
    always_comb begin
        next_state = IDLE;
        case(current_state)
            IDLE : next_state = ((instruction_index < N_INSTRS)&(~reset)) ? WRITE_OP : IDLE;
            WRITE_OP : next_state = ~waitrequest ? IDLE : WRITE_OP;
        endcase
    end

    always_ff @(posedge clk) begin
        if(~waitrequest) begin
            instruction_index <= next_instruction_index;
        end
        if((next_state == WRITE_OP)&(current_state==IDLE)) begin
            next_instruction_index <= next_instruction_index + 1;
        end
        current_state <= next_state;
    end

    assign write = (current_state == WRITE_OP);
    assign byteenable = 1;
    assign chipselect = write;
    assign read = 0;
    assign address = instructions[instruction_index][8];
    assign writedata = write ? instructions[instruction_index][7:0] : 0;

endmodule
