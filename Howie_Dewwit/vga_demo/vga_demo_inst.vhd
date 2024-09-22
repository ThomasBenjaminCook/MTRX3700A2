	component vga_demo is
		port (
			video_vga_controller_0_external_interface_CLK   : out std_logic;                                        -- CLK
			video_vga_controller_0_external_interface_HS    : out std_logic;                                        -- HS
			video_vga_controller_0_external_interface_VS    : out std_logic;                                        -- VS
			video_vga_controller_0_external_interface_BLANK : out std_logic;                                        -- BLANK
			video_vga_controller_0_external_interface_SYNC  : out std_logic;                                        -- SYNC
			video_vga_controller_0_external_interface_R     : out std_logic_vector(7 downto 0);                     -- R
			video_vga_controller_0_external_interface_G     : out std_logic_vector(7 downto 0);                     -- G
			video_vga_controller_0_external_interface_B     : out std_logic_vector(7 downto 0);                     -- B
			video_scaler_0_avalon_scaler_sink_startofpacket : in  std_logic                     := 'X';             -- startofpacket
			video_scaler_0_avalon_scaler_sink_endofpacket   : in  std_logic                     := 'X';             -- endofpacket
			video_scaler_0_avalon_scaler_sink_valid         : in  std_logic                     := 'X';             -- valid
			video_scaler_0_avalon_scaler_sink_ready         : out std_logic;                                        -- ready
			video_scaler_0_avalon_scaler_sink_data          : in  std_logic_vector(29 downto 0) := (others => 'X'); -- data
			clk_clk                                         : in  std_logic                     := 'X';             -- clk
			reset_reset_n                                   : in  std_logic                     := 'X'              -- reset_n
		);
	end component vga_demo;

	u0 : component vga_demo
		port map (
			video_vga_controller_0_external_interface_CLK   => CONNECTED_TO_video_vga_controller_0_external_interface_CLK,   -- video_vga_controller_0_external_interface.CLK
			video_vga_controller_0_external_interface_HS    => CONNECTED_TO_video_vga_controller_0_external_interface_HS,    --                                          .HS
			video_vga_controller_0_external_interface_VS    => CONNECTED_TO_video_vga_controller_0_external_interface_VS,    --                                          .VS
			video_vga_controller_0_external_interface_BLANK => CONNECTED_TO_video_vga_controller_0_external_interface_BLANK, --                                          .BLANK
			video_vga_controller_0_external_interface_SYNC  => CONNECTED_TO_video_vga_controller_0_external_interface_SYNC,  --                                          .SYNC
			video_vga_controller_0_external_interface_R     => CONNECTED_TO_video_vga_controller_0_external_interface_R,     --                                          .R
			video_vga_controller_0_external_interface_G     => CONNECTED_TO_video_vga_controller_0_external_interface_G,     --                                          .G
			video_vga_controller_0_external_interface_B     => CONNECTED_TO_video_vga_controller_0_external_interface_B,     --                                          .B
			video_scaler_0_avalon_scaler_sink_startofpacket => CONNECTED_TO_video_scaler_0_avalon_scaler_sink_startofpacket, --         video_scaler_0_avalon_scaler_sink.startofpacket
			video_scaler_0_avalon_scaler_sink_endofpacket   => CONNECTED_TO_video_scaler_0_avalon_scaler_sink_endofpacket,   --                                          .endofpacket
			video_scaler_0_avalon_scaler_sink_valid         => CONNECTED_TO_video_scaler_0_avalon_scaler_sink_valid,         --                                          .valid
			video_scaler_0_avalon_scaler_sink_ready         => CONNECTED_TO_video_scaler_0_avalon_scaler_sink_ready,         --                                          .ready
			video_scaler_0_avalon_scaler_sink_data          => CONNECTED_TO_video_scaler_0_avalon_scaler_sink_data,          --                                          .data
			clk_clk                                         => CONNECTED_TO_clk_clk,                                         --                                       clk.clk
			reset_reset_n                                   => CONNECTED_TO_reset_reset_n                                    --                                     reset.reset_n
		);

