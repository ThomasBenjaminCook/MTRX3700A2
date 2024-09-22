set_global_assignment -entity "vga" -library "lib_vga" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "vga" -library "lib_vga" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "vga" -library "lib_vga" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_vga" -name SPD_FILE [file join $::quartus(sip_path) "../vga.spd"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "../../vga.qsys"]

set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "vga.v"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_controller.v"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_synchronizer.v"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_controller.sdc"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_avalon_video_vga_timing.v"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/vga_video_vga_controller_0.v"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/vga_video_rgb_resampler_1.v"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/vga_video_rgb_resampler_0.v"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/vga_video_pll_0.v"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_avalon_reset_from_locked_signal.v"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_altpll.v"]
set_global_assignment -library "lib_vga" -name MISC_FILE [file join $::quartus(sip_path) "submodules/vga_face.sv"]
