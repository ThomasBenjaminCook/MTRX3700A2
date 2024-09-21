onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Magenta -radix binary -childformat {{{/fft_pitch_detect_tb/audio_input/data[15]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[14]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[13]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[12]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[11]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[10]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[9]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[8]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[7]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[6]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[5]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[4]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[3]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[2]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[1]} -radix binary} {{/fft_pitch_detect_tb/audio_input/data[0]} -radix binary}} -subitemconfig {{/fft_pitch_detect_tb/audio_input/data[15]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[14]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[13]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[12]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[11]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[10]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[9]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[8]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[7]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[6]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[5]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[4]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[3]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[2]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[1]} {-color Magenta -height 15 -radix binary} {/fft_pitch_detect_tb/audio_input/data[0]} {-color Magenta -height 15 -radix binary}} /fft_pitch_detect_tb/audio_input/data
add wave -noupdate -color Yellow /fft_pitch_detect_tb/pitch_output/data
add wave -noupdate /fft_pitch_detect_tb/audio_input/valid
add wave -noupdate /fft_pitch_detect_tb/audio_input/ready
add wave -noupdate /fft_pitch_detect_tb/pitch_output/valid
add wave -noupdate /fft_pitch_detect_tb/pitch_output/ready
add wave -noupdate /fft_pitch_detect_tb/DUT/clk
add wave -noupdate /fft_pitch_detect_tb/DUT/audio_clk
add wave -noupdate -radix decimal /fft_pitch_detect_tb/DUT/reset
add wave -noupdate /fft_pitch_detect_tb/DUT/di_re
add wave -noupdate /fft_pitch_detect_tb/DUT/di_im
add wave -noupdate /fft_pitch_detect_tb/DUT/do_en
add wave -noupdate /fft_pitch_detect_tb/DUT/do_re
add wave -noupdate /fft_pitch_detect_tb/DUT/do_im
add wave -noupdate /fft_pitch_detect_tb/DUT/mag_valid
add wave -noupdate -radix decimal /fft_pitch_detect_tb/DUT/mag_sq
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {58750851 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 275
configure wave -valuecolwidth 148
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
WaveRestoreZoom {0 ps} {345161250 ps}
