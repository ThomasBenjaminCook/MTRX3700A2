import lcd_inst_pkg::*;
	
module hello_lcd (
    input  logic clk,
    input  logic button_right,
    input logic button_left,
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
	 output logic reset,
     output logic [2:0] menu_choice
);

    logic button_edge_left;
	 logic button_edge_right;
     

	 button_edge u_button_edge_module_left (
		 .clk(clk),
		 .button_pressed(button_left),
		 .button_edge(button_edge_left)
    ); 

    button_edge u_button_edge_module_right (
		 .clk(clk),
		 .button_pressed(button_right),
		 .button_edge(button_edge_right)
    ); 

	 assign reset = 0;

     assign menu_choice = button_press_count;

    // State encoding for FSM
    typedef enum logic [1:0] {IDLE, WRITE_OP} state_t;
    state_t current_state, next_state;

    localparam N_INSTRS = 17;
    logic [8:0] instructions0 [N_INSTRS] = '{CLEAR_DISPLAY, _LESS_THAN, _MINUS, _SPACE, _SPACE, _SPACE, _SPACE, _E, _d, _g, _e, _SPACE, _SPACE, _SPACE, _SPACE, _MINUS, _GREATER_THAN}; 
	 logic [8:0] instructions1 [N_INSTRS] = '{CLEAR_DISPLAY, _LESS_THAN, _MINUS, _SPACE, _L, _o, _v, _e, _SPACE, _M, _o, _d, _e, _SPACE, _SPACE, _MINUS, _GREATER_THAN};
	 logic [8:0] instructions2 [N_INSTRS] = '{CLEAR_DISPLAY, _LESS_THAN, _MINUS, _SPACE, _G, _r, _e, _y, _s, _c, _a, _l, _e, _SPACE, _SPACE, _MINUS, _GREATER_THAN};
	 logic [8:0] instructions3 [N_INSTRS] = '{CLEAR_DISPLAY, _LESS_THAN, _MINUS, _SPACE, _SPACE, _SPACE, _SPACE, _B, _l, _u, _r, _SPACE, _SPACE, _SPACE, _SPACE, _MINUS, _GREATER_THAN};
	 logic [8:0] instructions4 [N_INSTRS] = '{CLEAR_DISPLAY, _LESS_THAN, _MINUS, _SPACE, _E, _d, _g, _e, _SPACE, _P, _i, _t, _c, _h, _SPACE, _MINUS, _GREATER_THAN}; 
	 logic [8:0] instructions5 [N_INSTRS] = '{CLEAR_DISPLAY, _LESS_THAN, _MINUS, _SPACE, _B, _l, _u, _r, _SPACE, _P, _i, _t, _c, _h, _SPACE, _MINUS, _GREATER_THAN}; 
    // In the above array, **bit-8 is the 1-bit `address`** and bits 7 down-to 0 give the 8-bit data.

    logic [8:0] instructions [N_INSTRS];

    always_comb begin
        case(button_press_count) 
            3'b000 : begin
                instructions = instructions0;
            end
            3'b001 : begin
                instructions = instructions1;
            end
            3'b010 : begin
                instructions = instructions2;
            end
            3'b011 : begin
                instructions = instructions3;
            end
            3'b100 : begin
                instructions = instructions4;
            end
            3'b101 : begin
                instructions = instructions5;
            end
				default : begin
					instructions = instructions3;
				end
        endcase
    end

    integer instruction_index = 0, next_instruction_index; // You can use these to count.
	 
	 logic [2:0] button_press_count = 0;

    
	 
    always_comb begin
        next_state = IDLE;
        case(current_state)
            IDLE : next_state = ((instruction_index < N_INSTRS)&(~reset)) ? WRITE_OP : IDLE;
            WRITE_OP : next_state = ~waitrequest ? IDLE : WRITE_OP;
        endcase
    end

    always_ff @(posedge clk) begin
        if(~waitrequest &  ~(button_edge_left | button_edge_right)) begin
            instruction_index <= next_instruction_index;
        end
        if((next_state == WRITE_OP)&(current_state==IDLE)) begin
            next_instruction_index <= next_instruction_index + 1;
        end
        current_state <= next_state;
		  
		  if (button_edge_left | button_edge_right) begin
			instruction_index <= 0;
			next_instruction_index <= 0;
		  end
    end
	 
	 always_ff @(posedge clk) begin
		 if (button_edge_left) begin
			if(button_press_count)begin
				button_press_count <= (button_press_count-1)%6; 
		   end
			else begin
				button_press_count <= 5;
			end
		 end
         if (button_edge_right) begin
            button_press_count <= (button_press_count+1)%6; 
         end
	 end

    assign write = (current_state == WRITE_OP);
    assign byteenable = 1;
    assign chipselect = write;
    assign read = 0;
    assign address = instructions[instruction_index][8];
    assign writedata = write ? instructions[instruction_index][7:0] : 0;

endmodule
