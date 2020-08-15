transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/DUT.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/alu.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/halfadder.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/fullsub.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/fulladder.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/eightbitsub.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/eightbit.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/ebitrightshift.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/multiplexor.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/inputinverter.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/modifiedrightshift.vhd}
vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/modifiedleftshift.vhd}

vcom -93 -work work {/home/ritesh/Desktop/digitalLab/digital_lab3/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
