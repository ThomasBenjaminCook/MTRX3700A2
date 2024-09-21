transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/async_fifo.v}
vlog -vlog01compat -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf/fft.v}
vlog -vlog01compat -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf/sdfunit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf/butterfly.v}
vlog -vlog01compat -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf/delaybuffer.v}
vlog -vlog01compat -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf/twiddle.v}
vlog -vlog01compat -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/r22sdf/multiply.v}
vlog -sv -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/dstream.sv}
vlog -sv -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/fft_find_peak.sv}
vlog -sv -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/fft_mag_sq.sv}
vlog -sv -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/fft_pitch_detect.sv}
vlog -sv -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/fft_input_buffer.sv}

vlog -sv -work work +incdir+C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code {C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/fft_pitch_detect_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  fft_pitch_detect_tb

do C:/Users/Alfie/OneDrive/Desktop/tron/MTRX3700A2/microphone_code/simulation/modelsim/wave.do
