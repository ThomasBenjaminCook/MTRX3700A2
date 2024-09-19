onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/W
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/W_FRAC
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/N
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/clk
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/h
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/shift_reg
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/mult_result
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/macc
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/overflow
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/x_valid_q
add wave -noupdate /fft_pitch_detect_tb/DUT/u_anti_alias_filter/x_valid_q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {58891010 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 362
configure wave -valuecolwidth 178
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {223238016 ps}
