transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/ritesh/Desktop/digitalLab/debounce/counter4.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/debounce/dff_new.vhdl}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/debounce/divider.vhd}

