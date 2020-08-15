-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "04/21/2018 16:41:03"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Top1 IS
    PORT (
	TDI : IN std_logic;
	TDO : OUT std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic
	);
END Top1;

-- Design Ports Information


ARCHITECTURE structure OF Top1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TDI : std_logic;
SIGNAL ww_TDO : std_logic;
SIGNAL ww_TMS : std_logic;
SIGNAL ww_TCLK : std_logic;
SIGNAL ww_TRST : std_logic;
SIGNAL \TCLK~combout\ : std_logic;
SIGNAL \TRST~combout\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \TMS~combout\ : std_logic;
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|Selector3~0\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1[6]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[2]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[1]~0_combout\ : std_logic;
SIGNAL \dut1|dut1|d_2|Q~regout\ : std_logic;
SIGNAL \dut1|dut1|d_1|Q~regout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~1_combout\ : std_logic;
SIGNAL \scan_instance|Selector0~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|PO\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TCLK,
	combout => \TCLK~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TRST,
	combout => \TRST~combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TDI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TDI,
	combout => \TDI~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TMS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TMS,
	combout => \TMS~combout\);

-- Location: LC_X2_Y6_N9
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector3~0\ = (!\TMS~combout\ & (((C1_current_state.s_shift) # (\scan_instance|current_state.s_capture~regout\))))
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS(\scan_instance|Selector3~0\, GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5550",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector3~0\,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X2_Y6_N7
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_shift~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X3_Y6_N5
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS(((!\scan_instance|current_state.s_update~regout\ & ((\TMS~combout\) # (\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_update~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X2_Y6_N4
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS((\TMS~combout\ & (((\scan_instance|current_state.s_DR~regout\) # (!\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TMS~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X2_Y6_N3
\scan_instance|current_state.s_capture\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_capture~regout\ = DFFEAS((((!\TMS~combout\ & \scan_instance|current_state.s_DR~regout\))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_capture~regout\);

-- Location: LC_X3_Y6_N0
\scan_instance|In_Reg|L1[6]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1[6]~1_combout\ = (\TRST~combout\) # ((!\TMS~combout\ & (\scan_instance|current_state.s_idle~regout\ & !\scan_instance|current_state.s_update~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L1[6]~1_combout\);

-- Location: LC_X4_Y6_N6
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS((!\TRST~combout\ & (((\TDI~combout\ & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \TDI~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X4_Y6_N4
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(6) & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(6),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X4_Y6_N5
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(5) & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(5),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X4_Y6_N7
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(4) & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(4),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X4_Y6_N9
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(3) & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(3),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X4_Y6_N2
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(2) & ((\scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L1\(2),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X4_Y6_N8
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(1) & ((\scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L1\(1),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X2_Y6_N8
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~combout\,
	datab => \scan_instance|current_state.s_shift~regout\,
	datac => \TRST~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X2_Y6_N5
\scan_instance|In_Reg|L2[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(2) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(2))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(2));

-- Location: LC_X3_Y6_N6
\scan_instance|In_Reg|PO[2]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[2]~1_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[2]~1_combout\);

-- Location: LC_X2_Y6_N2
\scan_instance|In_Reg|L2[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(1) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(1))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(1));

-- Location: LC_X3_Y6_N2
\scan_instance|In_Reg|PO[1]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[1]~0_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[1]~0_combout\);

-- Location: LC_X2_Y6_N0
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(0))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(0),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X2_Y6_N6
\scan_instance|In_Reg|PO[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO\(0) = LCELL((((\scan_instance|In_Reg|L2\(0) & !\TRST~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO\(0));

-- Location: LC_X3_Y6_N3
\dut1|dut1|d_2|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut1|d_2|Q~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[2]~1_combout\ & (\dut1|dut1|d_1|Q~regout\ $ (((\scan_instance|In_Reg|PO[1]~0_combout\) # (!\dut1|dut1|d_2|Q~regout\))))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1203",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \scan_instance|In_Reg|PO[1]~0_combout\,
	datab => \scan_instance|In_Reg|PO[2]~1_combout\,
	datac => \dut1|dut1|d_1|Q~regout\,
	datad => \dut1|dut1|d_2|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut1|d_2|Q~regout\);

-- Location: LC_X3_Y6_N4
\dut1|dut1|d_1|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut1|d_1|Q~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[2]~1_combout\ & (!\dut1|dut1|d_1|Q~regout\ & (\scan_instance|In_Reg|PO[1]~0_combout\ $ (!\dut1|dut1|d_2|Q~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0201",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \scan_instance|In_Reg|PO[1]~0_combout\,
	datab => \scan_instance|In_Reg|PO[2]~1_combout\,
	datac => \dut1|dut1|d_1|Q~regout\,
	datad => \dut1|dut1|d_2|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut1|d_1|Q~regout\);

-- Location: LC_X3_Y6_N7
\scan_instance|Out_Reg|mux1[0]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~0_combout\ = (!\scan_instance|In_Reg|PO[2]~1_combout\ & (\dut1|dut1|d_2|Q~regout\ & (\scan_instance|In_Reg|PO[1]~0_combout\ $ (!\dut1|dut1|d_1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~1_combout\,
	datab => \scan_instance|In_Reg|PO[1]~0_combout\,
	datac => \dut1|dut1|d_1|Q~regout\,
	datad => \dut1|dut1|d_2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~0_combout\);

-- Location: LC_X3_Y6_N8
\scan_instance|Out_Reg|mux1[0]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~1_combout\ = (\TRST~combout\ & (((\scan_instance|Out_Reg|mux1[0]~0_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(0))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|mux1[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L1\(0),
	datac => \scan_instance|Selector3~0\,
	datad => \scan_instance|Out_Reg|mux1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~1_combout\);

-- Location: LC_X3_Y6_N9
\scan_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector0~0_combout\ = ((\TMS~combout\) # ((\scan_instance|current_state.s_update~regout\) # (!\scan_instance|current_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector0~0_combout\);

-- Location: LC_X3_Y6_N1
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1\(0))))) # (!\TRST~combout\ & ((\scan_instance|Selector0~0_combout\ & ((\scan_instance|Out_Reg|L1\(0)))) # (!\scan_instance|Selector0~0_combout\ & 
-- (\scan_instance|Out_Reg|mux1[0]~1_combout\)))), GLOBAL(\TCLK~combout\), VCC, , , , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|mux1[0]~1_combout\,
	datab => \scan_instance|Out_Reg|L1\(0),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector0~0_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TDO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \scan_instance|Out_Reg|L1\(0),
	oe => VCC,
	padio => ww_TDO);
END structure;


