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
	
	
	
	//-----------------MIC MODULES--------------
	
		//FFT signals
	wire [15:0] fft_input;
	wire fft_input_valid;
	wire [33:0] mag_sq;  
	wire mag_valid;
	wire [15:0] peak;
	wire [9:0] peak_k;   
	wire peak_valid;
	
	logic adc_clk; adc_pll adc_pll_u (.areset(1'b0),.inclk0(clk_50),.c0(adc_clk)); // generate 18.432 MHz clock
	logic i2c_clk; i2c_pll i2c_pll_u (.areset(1'b0),.inclk0(clk_50),.c0(i2c_clk)); // generate 20 kHz clock

	set_audio_encoder set_codec_u (.i2c_clk(i2c_clk), .I2C_SCLK(I2C_SCLK), .I2C_SDAT(I2C_SDAT));
		
	logic [15:0] data;
	
	dstream #(.N(16))                audio_input  ();
	assign audio_input.valid = 1'b1;
	assign audio_input.data = data;
		
	mic_load #(.N(16)) u_mic_load (
    .adclrc(AUD_ADCLRCK),
	 .bclk(AUD_BCLK),
	 .adcdat(AUD_ADCDAT),
    .sample_data(data)
   );
	
	//instantiate FFT input buffer (3.1a)
	fft_input_buffer #(
    .W(16),
    .NSamples(1024)
) 
	u_fft_input_buffer (
    .clk(clk_50),
    .reset(reset),
    .audio_clk(adc_clk),
    .audio_input(audio_input), 
    .fft_input(fft_input),
    .fft_input_valid(fft_input_valid)
);

//	//instantiate the FFT magnitude^2 (3.1b)
//	//also not sure what the module is called so i just called is fft_mag_sq
//	fft_mag_sq #(
//    .W(16)
//) u_fft_mag_sq (
//    .clk(clk_50),
//    .reset(reset),
//    .fft_valid(fft_input_valid),
//    .fft_imag(0),       // not sure where to connect this one :/
//    .fft_real(fft_input),
//    .mag_sq(mag_sq),
//    .mag_valid(mag_valid)
//);
//	//instantiate 3.1c
//	//again, not sure what the module is actually called
//	fft_find_peak #(
//    .NSamples(1024),
//    .W(33)
//) u_fft_find_peak (
//    .clk(clk_50),
//    .reset(reset),
//    .mag(mag_sq),
//    .mag_valid(mag_valid),
//    .peak(peak),
//    .peak_k(peak_k),
//    .peak_valid(peak_valid)
//);
//	
//	assign AUD_XCK = adc_clk;
//		
//always_comb begin
//    if (peak_valid) begin
//        LEDR[15:0] <= peak[15:0]; // Display peak magnitude or other relevant info
//    end
//    else begin
//        LEDR[15:0] <= 16'b0; // Default state when not valid
//    end
//end


endmodule