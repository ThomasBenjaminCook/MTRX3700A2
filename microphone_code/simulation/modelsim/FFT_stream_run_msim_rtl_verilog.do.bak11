transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/mic {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/mic/i2c_pll.v}
vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/mic {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/mic/adc_pll.v}
vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/async_fifo.v}
vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/db {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/db/adc_pll_altpll.v}
vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/db {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/db/i2c_pll_altpll.v}
vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf/fft.v}
vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf/sdfunit.v}
vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf/butterfly.v}
vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf/delaybuffer.v}
vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf/twiddle.v}
vlog -vlog01compat -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/r22sdf/multiply.v}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/dstream.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/seven_seg.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/display.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/fft_find_peak.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/fft_mag_sq.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/mic {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/mic/set_audio_encoder.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/mic {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/mic/i2c_master.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/mic {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/mic/mic_load.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/fft_pitch_detect.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/top_level.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/fft_input_buffer.sv}
vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/low_pass_conv.sv}

vlog -sv -work work +incdir+C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch {C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/fft_pitch_detect_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  fft_pitch_detect_tb

do C:/Users/lykan/MTRX3700_Assignment2/mic_find_pitch/simulation/modelsim/wave.do
