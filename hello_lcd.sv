//import lcd_inst_pkg::*;
//	
//module hello_lcd (
//    input  logic clk,
//    input  logic button_right,
//    // Avalon-MM signals to LCD_Controller slave:
//    output logic address,
//    output logic chipselect,
//    output logic byteenable,
//    output logic read,
//    output logic write,
//    input  logic waitrequest,
//    input  logic [7:0] readdata,
//    input  logic [1:0] response,
//    output logic [7:0] writedata,
//	 output logic reset
//);
//
//	 logic button_edge;
//
//	 button_edge_module u_button_edge_module (
//		 .clk(clk),
//		 .button_pressed(button_right),
//		 .button_edge(button_edge)
//    ); 
//
//	 assign reset = 0;
//
//    // State encoding for FSM
//    typedef enum logic [1:0] {IDLE, WRITE_OP} state_t;
//    state_t current_state, next_state;
//
//    localparam N_INSTRS = 9; // Change this to the number of instructions you have below:
//    logic [8:0] instructions [N_INSTRS] = '{CLEAR_DISPLAY, _o, _p, _t, _i, _o, _n, _SPACE, _1}; 
//	 logic [8:0] instructions1 [N_INSTRS] = '{CLEAR_DISPLAY, _o, _p, _t, _i, _o, _n, _SPACE, _2};
//	 logic [8:0] instructions2 [N_INSTRS] = '{CLEAR_DISPLAY, _o, _p, _t, _i, _o, _n, _SPACE, _3};
//	 logic [8:0] instructions3 [N_INSTRS] = '{CLEAR_DISPLAY, _o, _p, _t, _i, _o, _n, _SPACE, _4};
//    // In the above array, **bit-8 is the 1-bit `address`** and bits 7 down-to 0 give the 8-bit data.
//
//    integer instruction_index = 0, next_instruction_index; // You can use these to count.
//
//    
//	 
//    always_comb begin
//        next_state = IDLE;
//        case(current_state)
//            IDLE : next_state = ((instruction_index < N_INSTRS)&(~reset)) ? WRITE_OP : IDLE;
//            WRITE_OP : next_state = ~waitrequest ? IDLE : WRITE_OP;
//        endcase
//    end
//
//    always_ff @(posedge clk) begin
//        if(~waitrequest) begin
//            instruction_index <= next_instruction_index;
//        end
//        if((next_state == WRITE_OP)&(current_state==IDLE)) begin
//            next_instruction_index <= next_instruction_index + 1;
//        end
//        current_state <= next_state;
//    end
//
//    assign write = (current_state == WRITE_OP);
//    assign byteenable = 1;
//    assign chipselect = write;
//    assign read = 0;
//    assign address = instructions[instruction_index][8];
//    assign writedata = write ? instructions[instruction_index][7:0] : 0;
//
//endmodule


// CAMERA TOP LEVEL

module digital_cam_impl1(
input wire clk_50,
input wire btn_resend,
output wire led_config_finished,
output wire vga_hsync,
output wire vga_vsync,
output wire [7:0] vga_r,
output wire [7:0] vga_g,
output wire [7:0] vga_b,
output wire vga_blank_N,
output wire vga_sync_N,
output wire vga_CLK,
input wire ov7670_pclk,
output wire ov7670_xclk,
input wire ov7670_vsync,
input wire ov7670_href,
input wire [7:0] ov7670_data,
output wire ov7670_sioc,
inout wire ov7670_siod,
output wire ov7670_pwdn,
output wire ov7670_reset
);




// DE2-115 board has an Altera Cyclone V E, which has ALTPLL's'
wire clk_50_camera;
wire clk_25_vga;
wire wren;
wire resend;
wire nBlank;
wire vSync;
wire [16:0] wraddress;
wire [11:0] wrdata;
wire [16:0] rdaddress;
wire [11:0] rddata;
wire [7:0] red; wire [7:0] green; wire [7:0] blue;
wire activeArea;

  assign vga_r = red[7:0];
  assign vga_g = green[7:0];
  assign vga_b = blue[7:0];
  my_altpll Inst_vga_pll(
      .inclk0(clk_50),
    .c0(clk_50_camera),
    .c1(clk_25_vga));

  // take the inverted push button because KEY0 on DE2-115 board generates
  // a signal 111000111; with 1 with not pressed and 0 when pressed/pushed;
  assign resend =  ~btn_resend;
  assign vga_vsync = vSync;
  assign vga_blank_N = nBlank;
  VGA Inst_VGA(
      .CLK25(clk_25_vga),
    .clkout(vga_CLK),
    .Hsync(vga_hsync),
    .Vsync(vSync),
    .Nblank(nBlank),
    .Nsync(vga_sync_N),
    .activeArea(activeArea));

  ov7670_controller Inst_ov7670_controller(
      .clk(clk_50_camera),
    .resend(resend),
    .config_finished(led_config_finished),
    .sioc(ov7670_sioc),
    .siod(ov7670_siod),
    .reset(ov7670_reset),
    .pwdn(ov7670_pwdn),
    .xclk(ov7670_xclk));

  ov7670_capture Inst_ov7670_capture(
      .pclk(ov7670_pclk),
    .vsync(ov7670_vsync),
    .href(ov7670_href),
    .d(ov7670_data),
    .addr(wraddress),
    .dout(wrdata),
    .we(wren));

  frame_buffer Inst_frame_buffer(
      .rdaddress(rdaddress),
    .rdclock(clk_25_vga),
    .q(rddata),
    .wrclock(ov7670_pclk),
    .wraddress(wraddress[16:0]),
    .data(wrdata),
    .wren(wren));

  RGB Inst_RGB(
      .Din(rddata),
    .Nblank(activeArea),
    .R(red),
    .G(green),
    .B(blue));

  Address_Generator Inst_Address_Generator(
      .CLK25(clk_25_vga),
    .enable(activeArea),
    .vsync(vSync),
    .address(rdaddress));


endmodule

