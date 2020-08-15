transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {endsem.vho}

vcom -93 -work work {/home/ritesh/Desktop/endsemprep/testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut_instance=endsem_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
