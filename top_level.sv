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
//input    CLOCK_50,
output	I2C_SCLK,
inout		I2C_SDAT,
output [6:0] HEX0,
output [6:0] HEX1,
output [6:0] HEX2,
output [6:0] HEX3,
//input  [3:0] KEY,
input		AUD_ADCDAT,
input    AUD_BCLK,
output   AUD_XCK,
input    AUD_ADCLRCK,
output logic [17:0] LEDR
);


	//----------- MIC WIRES-----------
		dstream #(.N(W))                audio_input ();
   dstream #(.N($clog2(NSamples))) pitch_output ();
	
	//----------EDGE CONV WIRES-------
	
	dstream #(.N(30)) pixel_input ();

    dstream #(.N(30)) pixel_output ();

	 
	 //---------------LCD MODULES-----------------
	 
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
		.clk         (clk_50),      //                clk.clk
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

  my_altpll Inst_vga_pll(
    .inclk0(clk_50),
    .c0(clk_50_camera),
    .c1(clk_25_vga));

  // take the inverted push button because KEY0 on DE2-115 board generates
  // a signal 111000111; with 1 with not pressed and 0 when pressed/pushed;
  assign resend =  ~btn_resend;

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
	 
//---------------ADDRESS GENERATOR---------------

integer row = 0, col = 0;
integer row_old = 0, col_old = 0;
reg vga_ready, vga_start, vga_end;
reg [30:0] vga_data;
always @(posedge clk_25_vga) begin
	if(resend) begin
		col <= 0;
		row <= 0;
	end
	else if(vga_ready & pixel_output.valid) begin
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


//------------------PIXEL FILTERS----------------

wire [29:0] filter_output;

pixel_filters u_pixel_filters (
	.filter_selection(menu_choice),
	.rddata(rddata),
	.filter_output(filter_output),
	.pitch_output(pitch_output.data)
);


//----------------MENU MULTIPLEXER---------------

logic signed [16-1:0] h [0:25-1];
logic signed [31:0] h_mic [0:25-1];
logic signed [31:0] h_selected [0:25-1];
logic signed [31:0] h_expanded [0:25-1];
logic [15:0] scale_down;
logic signed [10:0] pitch_output_capped;

always @(*) begin
	h = '{16'h0000, 16'hffff, 16'hffff, 16'hffff, 16'h0000, 
				16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
				16'hffff, 16'hffff, 16'h0014, 16'hffff, 16'hffff, 
				16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
				16'h0000, 16'hffff, 16'hffff, 16'hffff, 16'h0000};
	scale_down = 1;
	if((menu_choice == 1) | (menu_choice == 2)) begin
		vga_data = filter_output;
	end
	else if(menu_choice == 0) begin
		h = '{16'h0000, 16'hffff, 16'hffff, 16'hffff, 16'h0000, 
				16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
				16'hffff, 16'hffff, 16'h0014, 16'hffff, 16'hffff, 
				16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
				16'h0000, 16'hffff, 16'hffff, 16'hffff, 16'h0000};
		scale_down = 1;
		vga_data = vga_data_conv;
	end
	else if(menu_choice == 3) begin
		h = '{16'h0001, 16'h0004, 16'h0007, 16'h0004, 16'h0001, 
				16'h0004, 16'h0014, 16'h0021, 16'h0014, 16'h0004, 
				16'h0007, 16'h0021, 16'h0037, 16'h0021, 16'h0007, 
				16'h0004, 16'h0014, 16'h0021, 16'h0014, 16'h0004, 
				16'h0001, 16'h0004, 16'h0007, 16'h0004, 16'h0001};
		scale_down = 311;
		vga_data = vga_data_conv;
	end
	else if(menu_choice == 4) begin
		h = '{16'h0000, 16'hffff, 16'hffff, 16'hffff, 16'h0000, 
				16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
				16'hffff, 16'hffff, 16'h0014, 16'hffff, 16'hffff, 
				16'hffff, 16'hffff, 16'hffff, 16'hffff, 16'hffff, 
				16'h0000, 16'hffff, 16'hffff, 16'hffff, 16'h0000};
		scale_down = 1;
		vga_data = vga_data_conv;
	end
	else if(menu_choice == 5) begin
		h = '{16'h0001, 16'h0004, 16'h0007, 16'h0004, 16'h0001, 
				16'h0004, 16'h0014, 16'h0021, 16'h0014, 16'h0004, 
				16'h0007, 16'h0021, 16'h0037, 16'h0021, 16'h0007, 
				16'h0004, 16'h0014, 16'h0021, 16'h0014, 16'h0004, 
				16'h0001, 16'h0004, 16'h0007, 16'h0004, 16'h0001};
		scale_down = 1+(pitch_output_capped*6);
		vga_data = vga_data_conv;
	end
	else begin
	vga_data = filter_output;
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
	
	
	
	//-----------------MIC MODULES----------------
	
	localparam W        = 16;   //NOTE: To change this, you must also change the Twiddle factor initialisations in r22sdf/Twiddle.v. You can use r22sdf/twiddle_gen.pl.
   localparam NSamples = 1024; //NOTE: To change this, you must also change the SdfUnit instantiations in r22sdf/FFT.v accordingly.

	logic adc_clk; adc_pll adc_pll_u (.areset(1'b0),.inclk0(clk_50),.c0(adc_clk)); // generate 18.432 MHz clock
	logic i2c_clk; i2c_pll i2c_pll_u (.areset(1'b0),.inclk0(clk_50),.c0(i2c_clk)); // generate 20 kHz clock

	set_audio_encoder set_codec_u (.i2c_clk(i2c_clk), .I2C_SCLK(I2C_SCLK), .I2C_SDAT(I2C_SDAT));
	 
	mic_load #(.N(W)) u_mic_load (
    .adclrc(AUD_ADCLRCK),
	 .bclk(AUD_BCLK),
	 .adcdat(AUD_ADCDAT),
    .sample_data(audio_input.data),
	 .valid(audio_input.valid)
   );
			
	assign AUD_XCK = adc_clk;
	
   fft_pitch_detect #(.W(W), .NSamples(NSamples)) DUT (
	    .clk(adc_clk),
		 .audio_clk(AUD_BCLK),
		 .reset(~btn_resend),
		 .audio_input(audio_input),
		 .pitch_output(pitch_output)
    );
	
	display u_display (.clk(adc_clk),.value(pitch_output.data),.display0(HEX0),.display1(HEX1),.display2(HEX2),.display3(HEX3));


	//-----------------CONVOLUTION----------------

    assign pixel_input.data = filter_output;
    assign pixel_input.valid = 1'b1;
    assign pixel_output.ready = vga_ready;
	 
	 
	 assign pitch_output_capped = (pitch_output.data > 60) ? 50 : (pitch_output.data < 10) ? 0 : pitch_output.data-10;
	 
	 kernel_converter #(.k_range(50), .N(25), .FRACTIONAL_BITS(10)) u_kernel_converter (

    .selected_kernel(h),
    .k_index(pitch_output_capped),
    .output_kernel(h_mic)
);

	always_comb begin: get_expanded_kernel
		 for(int j = 0; j < 25; j = j + 1) begin
			  h_expanded[j] = h[j]*(1 << 10);
		 end
	end

	always_comb begin
		if((menu_choice == 4) | (menu_choice == 5)) begin
		h_selected = h_mic;
		end
		else begin
		h_selected = h_expanded;
		end
	end
	

    conv_filter u_conv_filter (
		 .clk(clk_25_vga),
		 .x(pixel_input),
		 .h(h_selected),
		 .scale_down(scale_down),
		 .y(pixel_output)
    );
	 
	 reg [30:0] vga_data_conv;
	 
	 always @(posedge clk_25_vga) begin
		vga_data_conv <= pixel_output.data;
	 end
	 
	 
endmodule
