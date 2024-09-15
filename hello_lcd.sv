import lcd_inst_pkg::*;
	
module hello_lcd (
    input  logic clk,
    input  logic button_right,
    // Avalon-MM signals to LCD_Controller slave:
    output logic address,
    output logic chipselect,
    output logic byteenable,
    output logic read,
    output logic write,
    input  logic waitrequest,
    input  logic [7:0] readdata,
    input  logic [1:0] response,
    output logic [7:0] writedata,
	 output logic reset
);

	 logic button_edge;

	 button_edge_module u_button_edge_module (
		 .clk(clk),
		 .button_pressed(button_right),
		 .button_edge(button_edge)
    ); 

	 assign reset = 0;

    // State encoding for FSM
    typedef enum logic [1:0] {IDLE, WRITE_OP} state_t;
    state_t current_state, next_state;

    localparam N_INSTRS = 9; // Change this to the number of instructions you have below:
    logic [8:0] instructions [N_INSTRS] = '{CLEAR_DISPLAY, _O, _p, _t, _i, _o, _n, _SPACE, _1}; 
	 logic [8:0] instructions1 [N_INSTRS] = '{CLEAR_DISPLAY, _O, _p, _t, _i, _o, _n, _SPACE, _2};
	 logic [8:0] instructions2 [N_INSTRS] = '{CLEAR_DISPLAY, _O, _p, _t, _i, _o, _n, _SPACE, _3};
	 logic [8:0] instructions3 [N_INSTRS] = '{CLEAR_DISPLAY, _O, _p, _t, _i, _o, _n, _SPACE, _4};
    // In the above array, **bit-8 is the 1-bit `address`** and bits 7 down-to 0 give the 8-bit data.

    integer instruction_index = 0, next_instruction_index; // You can use these to count.
	 
	 logic [4:0] button_press_count = 0;

    
	 
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
	 
	 always_ff @(posedge clk) begin
		 if (button_edge) begin
			button_press_count <= (button_press_count+1)%4;
		 end
	 end

    assign write = (current_state == WRITE_OP);
    assign byteenable = 1;
    assign chipselect = write;
    assign read = 0;
    assign address = instructions[instruction_index][8];
    assign writedata = write ? instructions[instruction_index][7:0] : 0;

endmodule
