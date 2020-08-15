transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/ritesh/Desktop/midsem/dut.vhd}
vcom -93 -work work {/home/ritesh/Desktop/midsem/halfadder.vhd}
vcom -93 -work work {/home/ritesh/Desktop/midsem/fulladder.vhd}
vcom -93 -work work {/home/ritesh/Desktop/midsem/nfbit.vhd}
vcom -93 -work work {/home/ritesh/Desktop/midsem/midsem.vhd}

vcom -93 -work work {/home/ritesh/Desktop/midsem/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
