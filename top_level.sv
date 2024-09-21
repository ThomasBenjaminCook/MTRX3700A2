`timescale 1 ps / 1 ps

module top_level(


//Camera ports
input wire clk_50,
input wire btn_resend,
input wire [3:1] KEY,
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
output wire ov7670_reset,


//LCD ports
inout  wire [7:0] LCD_DATA,    // external_interface.DATA
output wire       LCD_ON,      //                   .ON
output wire       LCD_BLON,    //                   .BLON
output wire       LCD_EN,      //                   .EN
output wire       LCD_RS,      //                   .RS
output wire       LCD_RW,    //                   .RW
//input  wire [3:0] KEY        //              reset.reset


//MIC PORTS
output	I2C_SCLK,
	inout		I2C_SDAT,
	input		AUD_ADCDAT,
	input   AUD_BCLK,
	output   AUD_XCK,
	input    AUD_ADCLRCK,
	output  logic [17:0] LEDR
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

wire       address;     //   avalon_lcd_slave.address
wire       chipselect;  //                   .chipselect
wire       read;        //                   .read
wire       write;       //                   .write
wire [7:0] writedata;   //                   .writedata
wire [7:0] readdata;    //                   .readdata
wire       waitrequest; //                   .waitrequest
wire 		  button_value;
wire reset;

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
	 
	 
	 //---------------------LCD MODULES----------------------
	 
	 
	debounce u_debounce (
		.clk(clk_50),
		.button(btn_resend),
		.button_pressed(button_value)
	);
	
	hello_lcd (
		 .clk(clk_50),
		 .button_right(~button_value),
		 .button_left(~KEY[1]),
		 // Avalon-MM signals to LCD_Controller slave
		 .address(address),          // Address line for LCD controller
		 .chipselect(chipselect),
		 .byteenable(),
		 .read(),
		 .write(write),
		 .waitrequest(waitrequest),
		 .readdata(),
		 .response(),
		 .writedata(writedata),
		 .reset(reset)
	);

	LCD_IP u_LCD_IP (
		.clk         (clk_50),         //                clk.clk
		.reset       (reset),       //              reset.reset
		.address     (address),     //   avalon_lcd_slave.address
		.chipselect  (chipselect),  //                   .chipselect
		.read        (read),        //                   .read
		.write       (write),       //                   .write
		.writedata   (writedata),   //                   .writedata
		.readdata    (readdata),    //                   .readdata
		.waitrequest (waitrequest), //                   .waitrequest
		.LCD_DATA    (LCD_DATA),    // external_interface.export
		.LCD_ON      (LCD_ON),      //                   .export
		.LCD_BLON    (LCD_BLON),    //                   .export
		.LCD_EN      (LCD_EN),      //                   .export
		.LCD_RS      (LCD_RS),      //                   .export
		.LCD_RW      (LCD_RW)       //                   .export
	);
	
	
	


endmodule
