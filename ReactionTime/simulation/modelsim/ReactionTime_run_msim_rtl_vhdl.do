transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/ritesh/Desktop/ReactionTime/lcd_controller.vhd}
vcom -93 -work work {/home/ritesh/Desktop/ReactionTime/ReactionTime.vhd}
vcom -93 -work work {/home/ritesh/Desktop/ReactionTime/randm.vhd}
vcom -93 -work work {/home/ritesh/Desktop/ReactionTime/lowCLK.vhd}
vcom -93 -work work {/home/ritesh/Desktop/ReactionTime/lighter.vhd}
vcom -93 -work work {/home/ritesh/Desktop/ReactionTime/calculateTime.vhd}
vcom -93 -work work {/home/ritesh/Desktop/ReactionTime/runMultiple.vhd}

