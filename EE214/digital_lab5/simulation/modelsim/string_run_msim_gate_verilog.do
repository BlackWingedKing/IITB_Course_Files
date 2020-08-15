transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {string.vo}

vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab5/Testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -L maxv_ver -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all