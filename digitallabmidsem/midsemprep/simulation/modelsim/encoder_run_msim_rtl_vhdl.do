transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/ritesh/Desktop/midsemprep/dut.vhd}
vcom -93 -work work {/home/ritesh/Desktop/midsemprep/encoder.vhd}

vcom -93 -work work {/home/ritesh/Desktop/midsemprep/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
