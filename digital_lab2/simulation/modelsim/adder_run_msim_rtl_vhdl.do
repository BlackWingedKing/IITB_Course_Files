transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/ritesh/Desktop/digital_lab2/halfadder.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digital_lab2/fullsub.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digital_lab2/eightbitsub.vhd}

