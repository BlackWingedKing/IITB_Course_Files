transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab5/DUT.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab5/string.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab5/terror.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab5/dff_new.vhdl}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab5/gun.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab5/bomb.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab5/knife.vhd}

vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab5/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all