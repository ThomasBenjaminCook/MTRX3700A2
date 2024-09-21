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



	 
	 //---------------------LCD MODULES----------------------
	 
	 wire       address;     //   avalon_lcd_slave.address
wire       chipselect;  //                   .chipselect
wire       read;        //                   .read
wire       write;       //                   .write
wire [7:0] writedata;   //                   .writedata
wire [7:0] readdata;    //                   .readdata
wire       waitrequest; //                   .waitrequest
wire 		  button_value;
wire reset;

wire [2:0] menu_choice;
	 
	 
	 
	debounce u_debounce (
		.clk(clk_50),
		.button(btn_resend),
		.button_pressed(button_value)
	);
	
	hello_lcd (
		 .clk(clk_50),
		 .button_right(~KEY[1]),
		 .button_left(~KEY[2]),
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
		 .reset(reset),
		 .menu_choice(menu_choice)
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
	
	
	//----------------CAMERA AND VGA--------------

	// DE2-115 board has an Altera Cyclone V E, which has ALTPLL's'
wire clk_50_camera;
wire clk_25_vga;
wire wren;
wire resend;
wire nBlank;
wire vSync;
wire [16:0] wraddress;
wire [11:0] wrdata;
reg [16:0] rdaddress;
wire [11:0] rddata;
wire [7:0] red; wire [7:0] green; wire [7:0] blue;
wire activeArea;

//  assign vga_r = red[7:0];
//  assign vga_g = green[7:0];
//  assign vga_b = blue[7:0];
  my_altpll Inst_vga_pll(
      .inclk0(clk_50),
    .c0(clk_50_camera),
    .c1(clk_25_vga));

  // take the inverted push button because KEY0 on DE2-115 board generates
  // a signal 111000111; with 1 with not pressed and 0 when pressed/pushed;
  assign resend =  ~btn_resend;
//  assign vga_vsync = vSync;
//  assign vga_blank_N = nBlank;
//  VGA Inst_VGA(
//      .CLK25(clk_25_vga),
//    .clkout(vga_CLK),
//    .Hsync(vga_hsync),
//    .Vsync(vSync),
//    .Nblank(nBlank),
//    .Nsync(vga_sync_N),
//    .activeArea(activeArea));

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

//  RGB Inst_RGB(
//      .Din(rddata),
//    .Nblank(activeArea),
//    .R(red),
//    .G(green),
//    .B(blue));
//
//  Address_Generator Inst_Address_Generator(
//      .CLK25(clk_25_vga),
//    .enable(activeArea),
//    .vsync(vSync),
//    .address(rdaddress));

integer row = 0, col = 0;
integer row_old = 0, col_old = 0;
reg vga_ready, vga_start, vga_end;
reg [30:0] vga_data;
always @(posedge clk_25_vga) begin
	if(resend) begin
		col <= 0;
		row <= 0;
	end
	else if(vga_ready) begin
		if(col >= 319) begin
			col <= 0;
			if(row >= 239) row <= 0;
			else row <= row + 1;
		end 
		else col <= col + 1;	
	end
	
	row_old <= row;
	col_old <= col;
end

always @(*) begin
 if(col_old == 0 && row_old == 0) vga_start = 1;
 else vga_start = 0;
 
  if(col_old == 319 && row_old == 239) vga_end = 1;
 else vga_end = 0;
 
 
 rdaddress = row*320 + col;
end

//always @(*) begin
//// vga_data = {
//// {row[7:0], 2'b00},
//// {row[7:0], 2'b00},
//// {row[7:0], 2'b00}
//// };
//	vga_data = {
//	{rddata[11:8],rddata[11:8], 2'b00},
//	{rddata[7:4],rddata[7:4], 2'b00},
//	{rddata[3:0],rddata[3:0], 2'b00}
//	};
//end

//---------

wire [9:0] temp_red, temp_green, temp_blue, gray_scaled;
wire [17:0] gray;

assign temp_red   = {rddata[11:8], rddata[11:8], 2'b00};
assign temp_green = {rddata[7:4],  rddata[7:4],  2'b00};
assign temp_blue  = {rddata[3:0],  rddata[3:0],  2'b00};

assign gray = (temp_red * 77 + temp_green * 150 + temp_blue * 29);
assign gray_scaled = gray >> 8;

//---------

wire [9:0] temp_red_1, temp_green_1, temp_blue_1, pink_scaled;
wire [17:0] pink;

// Increase red contribution, decrease green and blue to create a pink tint
assign temp_red_1   = {rddata[11:8], rddata[11:8], 2'b00};  // Keep red as is
assign temp_green_1 = {rddata[7:4],  rddata[7:4],  2'b00};  // Reduce green by shifting right
assign temp_blue_1  = {rddata[3:0],  rddata[3:0],  2'b00};  // Reduce blue slightly

assign pink = (temp_red_1 * 120 + temp_green_1 * 60 + temp_blue_1 * 50);  // Adjust weights for pink
assign pink_scaled = pink >> 8;

//--------

always @(*) begin
	if(menu_choice == 2) begin
		vga_data = {
			 gray_scaled,
			 gray_scaled,
			 gray_scaled
		};
	end
	else if(menu_choice == 1) begin
		vga_data = {
			pink_scaled,             // Strong red channel
			pink_scaled >> 2,        // Reduced green channel
			pink_scaled >> 1         // Slightly reduced blue channel
		};
	end
	else begin
	vga_data = {
			 temp_red,
			 temp_green,
			 temp_blue
		};
	end
end

vga_demo u_vga_demo(
		.clk_clk(clk_25_vga),                                         //                                       clk.clk
		.reset_reset_n(1),                                   //                                     reset.reset_n
		.video_scaler_0_avalon_scaler_sink_startofpacket(vga_start), //         video_scaler_0_avalon_scaler_sink.startofpacket
		.video_scaler_0_avalon_scaler_sink_endofpacket(vga_end),   //                                          .endofpacket
		.video_scaler_0_avalon_scaler_sink_valid(1'b1),         //                                          .valid
		.video_scaler_0_avalon_scaler_sink_ready(vga_ready),         //                                          .ready
		.video_scaler_0_avalon_scaler_sink_data(vga_data),          //                                          .data
		.video_vga_controller_0_external_interface_CLK(vga_CLK),   // video_vga_controller_0_external_interface.CLK
		.video_vga_controller_0_external_interface_HS(vga_hsync),    //                                          .HS
		.video_vga_controller_0_external_interface_VS(vga_vsync),    //                                          .VS
		.video_vga_controller_0_external_interface_BLANK(vga_blank_N), //                                          .BLANK
		.video_vga_controller_0_external_interface_SYNC(vga_sync_N),  //                                          .SYNC
		.video_vga_controller_0_external_interface_R(vga_r),     //                                          .R
		.video_vga_controller_0_external_interface_G(vga_g),     //                                          .G
		.video_vga_controller_0_external_interface_B(vga_b)      //                                          .B
	);

endmodule
