transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {midsem.vo}

vcom -93 -work work {/home/ritesh/Desktop/midsem/testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -L maxv_ver -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
