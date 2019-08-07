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

-- DATE "03/05/2018 19:18:17"

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

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(17 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|a|f_1|h_1|x_1|c~combout\ : std_logic;
SIGNAL \dut|c|o_4|c~0_combout\ : std_logic;
SIGNAL \dut|c|o_4|c~combout\ : std_logic;
SIGNAL \dut|Z[0]~0_combout\ : std_logic;
SIGNAL \dut|c|r_1|g_2:1:m_3|o_1|c~1_combout\ : std_logic;
SIGNAL \dut|c|r_1|g_2:1:m_3|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|c|r_1|g_2:1:m_3|o_1|c~2_combout\ : std_logic;
SIGNAL \dut|c|r_1|g_1:2:m_1|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|c|g_1:7:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|c|r_1|g_3:0:m_6|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|c|r_1|g_3:0:m_6|o_1|c~1_combout\ : std_logic;
SIGNAL \dut|Z[0]~1_combout\ : std_logic;
SIGNAL \dut|Z[0]~2_combout\ : std_logic;
SIGNAL \dut|c|g_1:2:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|c|g_1:1:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:6:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:6:m_8|a_2|c~1_combout\ : std_logic;
SIGNAL \dut|Z[1]~23_combout\ : std_logic;
SIGNAL \dut|Z[1]~24_combout\ : std_logic;
SIGNAL \dut|Z[1]~3_combout\ : std_logic;
SIGNAL \dut|d|g_1:0:f_1|o_4|c~0_combout\ : std_logic;
SIGNAL \dut|a|g_1:0:f_1|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|Z[2]~4_combout\ : std_logic;
SIGNAL \dut|c|g_1:7:m_8|a_2|c~1_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:5:m_8|a_2|c~1_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:5:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:5:m_8|a_2|c~2_combout\ : std_logic;
SIGNAL \dut|c|r_1|g_2:3:m_3|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|c|g_1:2:m_8|a_2|c~1_combout\ : std_logic;
SIGNAL \dut|Z[2]~5_combout\ : std_logic;
SIGNAL \dut|Z[2]~6_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:4:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:4:m_8|a_2|c~1_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:4:m_8|a_2|c~2_combout\ : std_logic;
SIGNAL \dut|d|g_1:1:f_1|o_4|c~0_combout\ : std_logic;
SIGNAL \dut|a|g_1:1:f_1|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|Z[3]~7_combout\ : std_logic;
SIGNAL \dut|Z[3]~8_combout\ : std_logic;
SIGNAL \dut|c|g_1:4:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|c|g_1:3:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|c|g_1:3:m_8|a_2|c~1_combout\ : std_logic;
SIGNAL \dut|Z[3]~9_combout\ : std_logic;
SIGNAL \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|b|r_1|r_1|g_2:3:m_3|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:3:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|Z[4]~11_combout\ : std_logic;
SIGNAL \dut|Z[4]~12_combout\ : std_logic;
SIGNAL \dut|c|g_1:4:m_8|a_2|c~1_combout\ : std_logic;
SIGNAL \dut|c|g_1:4:m_8|a_2|c~2_combout\ : std_logic;
SIGNAL \dut|d|g_1:2:f_1|o_4|c~0_combout\ : std_logic;
SIGNAL \dut|a|g_1:2:f_1|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|Z[4]~10_combout\ : std_logic;
SIGNAL \dut|Z[4]~13_combout\ : std_logic;
SIGNAL \dut|c|g_1:5:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|c|g_1:5:m_8|a_2|c~1_combout\ : std_logic;
SIGNAL \dut|a|g_1:3:f_1|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|d|g_1:3:f_1|o_4|c~0_combout\ : std_logic;
SIGNAL \dut|Z[5]~14_combout\ : std_logic;
SIGNAL \dut|Z[5]~15_combout\ : std_logic;
SIGNAL \dut|b|r_1|r_1|g_1:2:m_1|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:1:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:2:m_8|a_2|c~0_combout\ : std_logic;
SIGNAL \dut|Z[5]~16_combout\ : std_logic;
SIGNAL \dut|Z[6]~17_combout\ : std_logic;
SIGNAL \dut|Z[6]~18_combout\ : std_logic;
SIGNAL \dut|a|g_1:4:f_1|o_1|c~0_combout\ : std_logic;
SIGNAL \dut|d|g_1:4:f_1|o_4|c~0_combout\ : std_logic;
SIGNAL \dut|Z[6]~19_combout\ : std_logic;
SIGNAL \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~1_combout\ : std_logic;
SIGNAL \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~2_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:1:m_8|a_2|c~1_combout\ : std_logic;
SIGNAL \dut|Z[6]~20_combout\ : std_logic;
SIGNAL \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~1_combout\ : std_logic;
SIGNAL \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~2_combout\ : std_logic;
SIGNAL \dut|b|r_1|g_1:0:m_8|a_2|c~combout\ : std_logic;
SIGNAL \dut|d|g_1:6:f_1|x_2|c~0_combout\ : std_logic;
SIGNAL \dut|d|g_1:6:f_1|x_2|c~combout\ : std_logic;
SIGNAL \dut|a|g_1:6:f_1|h_2|x_1|c~combout\ : std_logic;
SIGNAL \dut|Z[7]~21_combout\ : std_logic;
SIGNAL \dut|c|g_1:7:m_8|a_2|c~combout\ : std_logic;
SIGNAL \dut|Z[7]~22_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X13_Y8_N5
\dut|a|f_1|h_1|x_1|c\ : maxv_lcell
-- Equation(s):
-- \dut|a|f_1|h_1|x_1|c~combout\ = \input_vector~combout\(8) $ ((((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datac => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|f_1|h_1|x_1|c~combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X13_Y7_N8
\dut|c|o_4|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|o_4|c~0_combout\ = (\input_vector~combout\(4)) # (((\input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|o_4|c~0_combout\);

-- Location: LC_X12_Y9_N7
\dut|c|o_4|c\ : maxv_lcell
-- Equation(s):
-- \dut|c|o_4|c~combout\ = (\input_vector~combout\(6)) # ((\input_vector~combout\(7)) # ((\input_vector~combout\(5)) # (\dut|c|o_4|c~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(5),
	datad => \dut|c|o_4|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|o_4|c~combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(16),
	combout => \input_vector~combout\(16));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X13_Y9_N4
\dut|Z[0]~0\ : maxv_lcell
-- Equation(s):
-- \dut|Z[0]~0_combout\ = (((!\input_vector~combout\(2) & \input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[0]~0_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X12_Y8_N9
\dut|c|r_1|g_2:1:m_3|o_1|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|r_1|g_2:1:m_3|o_1|c~1_combout\ = (\input_vector~combout\(2) & (\input_vector~combout\(13))) # (!\input_vector~combout\(2) & (((\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|r_1|g_2:1:m_3|o_1|c~1_combout\);

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X12_Y8_N0
\dut|c|r_1|g_2:1:m_3|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|r_1|g_2:1:m_3|o_1|c~0_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(15))))) # (!\input_vector~combout\(2) & (((\input_vector~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|r_1|g_2:1:m_3|o_1|c~0_combout\);

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X12_Y8_N6
\dut|c|r_1|g_2:1:m_3|o_1|c~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|r_1|g_2:1:m_3|o_1|c~2_combout\ = ((\input_vector~combout\(1) & ((\dut|c|r_1|g_2:1:m_3|o_1|c~0_combout\))) # (!\input_vector~combout\(1) & (\dut|c|r_1|g_2:1:m_3|o_1|c~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|c|r_1|g_2:1:m_3|o_1|c~1_combout\,
	datac => \dut|c|r_1|g_2:1:m_3|o_1|c~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|r_1|g_2:1:m_3|o_1|c~2_combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X13_Y9_N9
\dut|c|r_1|g_1:2:m_1|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|r_1|g_1:2:m_1|o_1|c~0_combout\ = ((\input_vector~combout\(2) & ((\input_vector~combout\(14)))) # (!\input_vector~combout\(2) & (\input_vector~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|r_1|g_1:2:m_1|o_1|c~0_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: LC_X13_Y9_N1
\dut|c|g_1:7:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:7:m_8|a_2|c~0_combout\ = ((!\input_vector~combout\(0) & (!\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:7:m_8|a_2|c~0_combout\);

-- Location: LC_X13_Y9_N0
\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\ = ((\input_vector~combout\(0)) # ((!\input_vector~combout\(1) & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\);

-- Location: LC_X13_Y9_N5
\dut|c|r_1|g_3:0:m_6|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|r_1|g_3:0:m_6|o_1|c~0_combout\ = (\dut|c|g_1:7:m_8|a_2|c~0_combout\ & ((\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\ & (\input_vector~combout\(12))) # (!\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\ & ((\input_vector~combout\(8)))))) # 
-- (!\dut|c|g_1:7:m_8|a_2|c~0_combout\ & (((\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \dut|c|g_1:7:m_8|a_2|c~0_combout\,
	datac => \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|r_1|g_3:0:m_6|o_1|c~0_combout\);

-- Location: LC_X13_Y9_N6
\dut|c|r_1|g_3:0:m_6|o_1|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|r_1|g_3:0:m_6|o_1|c~1_combout\ = (\dut|c|r_1|g_3:0:m_6|o_1|c~0_combout\ & ((\dut|c|r_1|g_2:1:m_3|o_1|c~2_combout\) # ((\dut|c|g_1:7:m_8|a_2|c~0_combout\)))) # (!\dut|c|r_1|g_3:0:m_6|o_1|c~0_combout\ & (((\dut|c|r_1|g_1:2:m_1|o_1|c~0_combout\ & 
-- !\dut|c|g_1:7:m_8|a_2|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|r_1|g_2:1:m_3|o_1|c~2_combout\,
	datab => \dut|c|r_1|g_1:2:m_1|o_1|c~0_combout\,
	datac => \dut|c|r_1|g_3:0:m_6|o_1|c~0_combout\,
	datad => \dut|c|g_1:7:m_8|a_2|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|r_1|g_3:0:m_6|o_1|c~1_combout\);

-- Location: LC_X13_Y9_N7
\dut|Z[0]~1\ : maxv_lcell
-- Equation(s):
-- \dut|Z[0]~1_combout\ = (\input_vector~combout\(16) & (\dut|Z[0]~0_combout\ & ((\dut|c|g_1:7:m_8|a_2|c~0_combout\)))) # (!\input_vector~combout\(16) & (((\dut|c|r_1|g_3:0:m_6|o_1|c~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d850",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \dut|Z[0]~0_combout\,
	datac => \dut|c|r_1|g_3:0:m_6|o_1|c~1_combout\,
	datad => \dut|c|g_1:7:m_8|a_2|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[0]~1_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(17),
	combout => \input_vector~combout\(17));

-- Location: LC_X13_Y8_N9
\dut|Z[0]~2\ : maxv_lcell
-- Equation(s):
-- \dut|Z[0]~2_combout\ = (\input_vector~combout\(17) & (((!\dut|c|o_4|c~combout\ & \dut|Z[0]~1_combout\)))) # (!\input_vector~combout\(17) & (\dut|a|f_1|h_1|x_1|c~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|a|f_1|h_1|x_1|c~combout\,
	datab => \dut|c|o_4|c~combout\,
	datac => \dut|Z[0]~1_combout\,
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[0]~2_combout\);

-- Location: LC_X13_Y9_N2
\dut|c|g_1:2:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:2:m_8|a_2|c~0_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(12) & ((!\input_vector~combout\(2))))) # (!\input_vector~combout\(1) & (((\dut|c|r_1|g_1:2:m_1|o_1|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \dut|c|r_1|g_1:2:m_1|o_1|c~0_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:2:m_8|a_2|c~0_combout\);

-- Location: LC_X13_Y8_N4
\dut|c|g_1:1:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:1:m_8|a_2|c~0_combout\ = (!\dut|c|o_4|c~combout\ & ((\input_vector~combout\(0) & ((\dut|c|g_1:2:m_8|a_2|c~0_combout\))) # (!\input_vector~combout\(0) & (\dut|c|r_1|g_2:1:m_3|o_1|c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|r_1|g_2:1:m_3|o_1|c~2_combout\,
	datab => \input_vector~combout\(0),
	datac => \dut|c|g_1:2:m_8|a_2|c~0_combout\,
	datad => \dut|c|o_4|c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:1:m_8|a_2|c~0_combout\);

-- Location: LC_X13_Y8_N3
\dut|b|r_1|g_1:6:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:6:m_8|a_2|c~0_combout\ = ((!\dut|c|o_4|c~combout\ & (!\input_vector~combout\(2) & !\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|c|o_4|c~combout\,
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:6:m_8|a_2|c~0_combout\);

-- Location: LC_X13_Y8_N0
\dut|b|r_1|g_1:6:m_8|a_2|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:6:m_8|a_2|c~1_combout\ = (\dut|b|r_1|g_1:6:m_8|a_2|c~0_combout\ & ((\input_vector~combout\(0) & ((\input_vector~combout\(8)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(8),
	datad => \dut|b|r_1|g_1:6:m_8|a_2|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:6:m_8|a_2|c~1_combout\);

-- Location: LC_X13_Y8_N7
\dut|Z[1]~23\ : maxv_lcell
-- Equation(s):
-- \dut|Z[1]~23_combout\ = \input_vector~combout\(9) $ (\input_vector~combout\(1) $ (((\input_vector~combout\(0) & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[1]~23_combout\);

-- Location: LC_X13_Y8_N1
\dut|Z[1]~24\ : maxv_lcell
-- Equation(s):
-- \dut|Z[1]~24_combout\ = (\input_vector~combout\(17) & (\input_vector~combout\(16))) # (!\input_vector~combout\(17) & (\dut|Z[1]~23_combout\ $ (((\input_vector~combout\(16) & \input_vector~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa6c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \dut|Z[1]~23_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[1]~24_combout\);

-- Location: LC_X13_Y8_N6
\dut|Z[1]~3\ : maxv_lcell
-- Equation(s):
-- \dut|Z[1]~3_combout\ = (\input_vector~combout\(17) & ((\dut|Z[1]~24_combout\ & ((\dut|b|r_1|g_1:6:m_8|a_2|c~1_combout\))) # (!\dut|Z[1]~24_combout\ & (\dut|c|g_1:1:m_8|a_2|c~0_combout\)))) # (!\input_vector~combout\(17) & (((\dut|Z[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|g_1:1:m_8|a_2|c~0_combout\,
	datab => \dut|b|r_1|g_1:6:m_8|a_2|c~1_combout\,
	datac => \input_vector~combout\(17),
	datad => \dut|Z[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[1]~3_combout\);

-- Location: LC_X11_Y7_N2
\dut|d|g_1:0:f_1|o_4|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|g_1:0:f_1|o_4|c~0_combout\ = (\input_vector~combout\(9) & (\input_vector~combout\(0) & (\input_vector~combout\(1) & !\input_vector~combout\(8)))) # (!\input_vector~combout\(9) & ((\input_vector~combout\(1)) # ((\input_vector~combout\(0) & 
-- !\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|g_1:0:f_1|o_4|c~0_combout\);

-- Location: LC_X11_Y7_N7
\dut|a|g_1:0:f_1|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|g_1:0:f_1|o_1|c~0_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(1)) # ((\input_vector~combout\(0) & \input_vector~combout\(8))))) # (!\input_vector~combout\(9) & (\input_vector~combout\(0) & (\input_vector~combout\(1) & 
-- \input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|g_1:0:f_1|o_1|c~0_combout\);

-- Location: LC_X11_Y7_N9
\dut|Z[2]~4\ : maxv_lcell
-- Equation(s):
-- \dut|Z[2]~4_combout\ = \input_vector~combout\(10) $ (((\input_vector~combout\(16) & (\dut|d|g_1:0:f_1|o_4|c~0_combout\)) # (!\input_vector~combout\(16) & ((\dut|a|g_1:0:f_1|o_1|c~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "27d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \dut|d|g_1:0:f_1|o_4|c~0_combout\,
	datac => \dut|a|g_1:0:f_1|o_1|c~0_combout\,
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[2]~4_combout\);

-- Location: LC_X11_Y9_N2
\dut|c|g_1:7:m_8|a_2|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:7:m_8|a_2|c~1_combout\ = (((!\input_vector~combout\(2) & !\dut|c|o_4|c~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(2),
	datad => \dut|c|o_4|c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:7:m_8|a_2|c~1_combout\);

-- Location: LC_X11_Y7_N0
\dut|b|r_1|g_1:5:m_8|a_2|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:5:m_8|a_2|c~1_combout\ = (((\input_vector~combout\(1) & !\input_vector~combout\(0))))

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
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:5:m_8|a_2|c~1_combout\);

-- Location: LC_X11_Y7_N4
\dut|b|r_1|g_1:5:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:5:m_8|a_2|c~0_combout\ = (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (\input_vector~combout\(9))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:5:m_8|a_2|c~0_combout\);

-- Location: LC_X11_Y7_N5
\dut|b|r_1|g_1:5:m_8|a_2|c~2\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:5:m_8|a_2|c~2_combout\ = (\dut|c|g_1:7:m_8|a_2|c~1_combout\ & ((\dut|b|r_1|g_1:5:m_8|a_2|c~0_combout\) # ((\dut|b|r_1|g_1:5:m_8|a_2|c~1_combout\ & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|g_1:7:m_8|a_2|c~1_combout\,
	datab => \dut|b|r_1|g_1:5:m_8|a_2|c~1_combout\,
	datac => \dut|b|r_1|g_1:5:m_8|a_2|c~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:5:m_8|a_2|c~2_combout\);

-- Location: LC_X12_Y8_N2
\dut|c|r_1|g_2:3:m_3|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|r_1|g_2:3:m_3|o_1|c~0_combout\ = (\input_vector~combout\(1) & (!\input_vector~combout\(2) & (\input_vector~combout\(13)))) # (!\input_vector~combout\(1) & (((\dut|c|r_1|g_2:1:m_3|o_1|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(13),
	datac => \dut|c|r_1|g_2:1:m_3|o_1|c~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|r_1|g_2:3:m_3|o_1|c~0_combout\);

-- Location: LC_X13_Y8_N2
\dut|c|g_1:2:m_8|a_2|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:2:m_8|a_2|c~1_combout\ = (!\dut|c|o_4|c~combout\ & ((\input_vector~combout\(0) & ((\dut|c|r_1|g_2:3:m_3|o_1|c~0_combout\))) # (!\input_vector~combout\(0) & (\dut|c|g_1:2:m_8|a_2|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \dut|c|o_4|c~combout\,
	datac => \dut|c|g_1:2:m_8|a_2|c~0_combout\,
	datad => \dut|c|r_1|g_2:3:m_3|o_1|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:2:m_8|a_2|c~1_combout\);

-- Location: LC_X11_Y7_N8
\dut|Z[2]~5\ : maxv_lcell
-- Equation(s):
-- \dut|Z[2]~5_combout\ = (\input_vector~combout\(16) & (((\dut|b|r_1|g_1:5:m_8|a_2|c~2_combout\)))) # (!\input_vector~combout\(16) & (((\dut|c|g_1:2:m_8|a_2|c~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datac => \dut|b|r_1|g_1:5:m_8|a_2|c~2_combout\,
	datad => \dut|c|g_1:2:m_8|a_2|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[2]~5_combout\);

-- Location: LC_X11_Y7_N6
\dut|Z[2]~6\ : maxv_lcell
-- Equation(s):
-- \dut|Z[2]~6_combout\ = (\input_vector~combout\(17) & (((\dut|Z[2]~5_combout\)))) # (!\input_vector~combout\(17) & (\dut|Z[2]~4_combout\ $ ((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \dut|Z[2]~4_combout\,
	datac => \input_vector~combout\(2),
	datad => \dut|Z[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[2]~6_combout\);

-- Location: LC_X13_Y9_N8
\dut|b|r_1|g_1:4:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:4:m_8|a_2|c~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(8))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:4:m_8|a_2|c~0_combout\);

-- Location: LC_X11_Y9_N9
\dut|b|r_1|g_1:4:m_8|a_2|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:4:m_8|a_2|c~1_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(9))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:4:m_8|a_2|c~1_combout\);

-- Location: LC_X11_Y9_N6
\dut|b|r_1|g_1:4:m_8|a_2|c~2\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:4:m_8|a_2|c~2_combout\ = (\dut|c|g_1:7:m_8|a_2|c~1_combout\ & ((\input_vector~combout\(0) & (\dut|b|r_1|g_1:4:m_8|a_2|c~0_combout\)) # (!\input_vector~combout\(0) & ((\dut|b|r_1|g_1:4:m_8|a_2|c~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|r_1|g_1:4:m_8|a_2|c~0_combout\,
	datab => \dut|c|g_1:7:m_8|a_2|c~1_combout\,
	datac => \input_vector~combout\(0),
	datad => \dut|b|r_1|g_1:4:m_8|a_2|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:4:m_8|a_2|c~2_combout\);

-- Location: LC_X11_Y7_N3
\dut|d|g_1:1:f_1|o_4|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|g_1:1:f_1|o_4|c~0_combout\ = ((\dut|d|g_1:0:f_1|o_4|c~0_combout\ & ((\input_vector~combout\(2)) # (!\input_vector~combout\(10)))) # (!\dut|d|g_1:0:f_1|o_4|c~0_combout\ & (\input_vector~combout\(2) & !\input_vector~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|d|g_1:0:f_1|o_4|c~0_combout\,
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|g_1:1:f_1|o_4|c~0_combout\);

-- Location: LC_X11_Y7_N1
\dut|a|g_1:1:f_1|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|g_1:1:f_1|o_1|c~0_combout\ = (\input_vector~combout\(2) & (((\dut|a|g_1:0:f_1|o_1|c~0_combout\) # (\input_vector~combout\(10))))) # (!\input_vector~combout\(2) & (((\dut|a|g_1:0:f_1|o_1|c~0_combout\ & \input_vector~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datac => \dut|a|g_1:0:f_1|o_1|c~0_combout\,
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|g_1:1:f_1|o_1|c~0_combout\);

-- Location: LC_X13_Y7_N9
\dut|Z[3]~7\ : maxv_lcell
-- Equation(s):
-- \dut|Z[3]~7_combout\ = (\input_vector~combout\(17) & (((\input_vector~combout\(16))))) # (!\input_vector~combout\(17) & ((\input_vector~combout\(16) & (\dut|d|g_1:1:f_1|o_4|c~0_combout\)) # (!\input_vector~combout\(16) & 
-- ((\dut|a|g_1:1:f_1|o_1|c~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \dut|d|g_1:1:f_1|o_4|c~0_combout\,
	datac => \input_vector~combout\(16),
	datad => \dut|a|g_1:1:f_1|o_1|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[3]~7_combout\);

-- Location: LC_X13_Y7_N4
\dut|Z[3]~8\ : maxv_lcell
-- Equation(s):
-- \dut|Z[3]~8_combout\ = \dut|Z[3]~7_combout\ $ (((!\input_vector~combout\(17) & (\input_vector~combout\(11) $ (\input_vector~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c99c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \dut|Z[3]~7_combout\,
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[3]~8_combout\);

-- Location: LC_X12_Y8_N5
\dut|c|g_1:4:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:4:m_8|a_2|c~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(14))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(1),
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:4:m_8|a_2|c~0_combout\);

-- Location: LC_X12_Y8_N7
\dut|c|g_1:3:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:3:m_8|a_2|c~0_combout\ = (\input_vector~combout\(0) & (\dut|c|g_1:4:m_8|a_2|c~0_combout\ & ((!\input_vector~combout\(2))))) # (!\input_vector~combout\(0) & (((\dut|c|r_1|g_2:3:m_3|o_1|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|g_1:4:m_8|a_2|c~0_combout\,
	datab => \dut|c|r_1|g_2:3:m_3|o_1|c~0_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:3:m_8|a_2|c~0_combout\);

-- Location: LC_X13_Y7_N2
\dut|c|g_1:3:m_8|a_2|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:3:m_8|a_2|c~1_combout\ = (((\dut|c|g_1:3:m_8|a_2|c~0_combout\ & !\dut|c|o_4|c~combout\)))

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
	datac => \dut|c|g_1:3:m_8|a_2|c~0_combout\,
	datad => \dut|c|o_4|c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:3:m_8|a_2|c~1_combout\);

-- Location: LC_X13_Y7_N3
\dut|Z[3]~9\ : maxv_lcell
-- Equation(s):
-- \dut|Z[3]~9_combout\ = (\input_vector~combout\(17) & ((\dut|Z[3]~8_combout\ & (\dut|b|r_1|g_1:4:m_8|a_2|c~2_combout\)) # (!\dut|Z[3]~8_combout\ & ((\dut|c|g_1:3:m_8|a_2|c~1_combout\))))) # (!\input_vector~combout\(17) & (((\dut|Z[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \dut|b|r_1|g_1:4:m_8|a_2|c~2_combout\,
	datac => \dut|Z[3]~8_combout\,
	datad => \dut|c|g_1:3:m_8|a_2|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[3]~9_combout\);

-- Location: LC_X13_Y9_N3
\dut|b|r_1|r_1|g_2:1:m_3|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~0_combout\ = ((\input_vector~combout\(2) & ((\input_vector~combout\(8)))) # (!\input_vector~combout\(2) & (\input_vector~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~0_combout\);

-- Location: LC_X11_Y9_N0
\dut|b|r_1|r_1|g_2:3:m_3|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|r_1|g_2:3:m_3|o_1|c~0_combout\ = (\input_vector~combout\(1) & (!\input_vector~combout\(2) & (\input_vector~combout\(10)))) # (!\input_vector~combout\(1) & (((\dut|b|r_1|r_1|g_2:1:m_3|o_1|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(1),
	datad => \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|r_1|g_2:3:m_3|o_1|c~0_combout\);

-- Location: LC_X11_Y9_N1
\dut|b|r_1|g_1:3:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:3:m_8|a_2|c~0_combout\ = (\input_vector~combout\(0) & (!\input_vector~combout\(2) & (\dut|b|r_1|g_1:4:m_8|a_2|c~1_combout\))) # (!\input_vector~combout\(0) & (((\dut|b|r_1|r_1|g_2:3:m_3|o_1|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \dut|b|r_1|g_1:4:m_8|a_2|c~1_combout\,
	datac => \input_vector~combout\(0),
	datad => \dut|b|r_1|r_1|g_2:3:m_3|o_1|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:3:m_8|a_2|c~0_combout\);

-- Location: LC_X13_Y8_N8
\dut|Z[4]~11\ : maxv_lcell
-- Equation(s):
-- \dut|Z[4]~11_combout\ = (\input_vector~combout\(17) & (((\dut|c|o_4|c~combout\)))) # (!\input_vector~combout\(17) & (\input_vector~combout\(12) $ (((\input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c5ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \dut|c|o_4|c~combout\,
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[4]~11_combout\);

-- Location: LC_X12_Y10_N4
\dut|Z[4]~12\ : maxv_lcell
-- Equation(s):
-- \dut|Z[4]~12_combout\ = ((\input_vector~combout\(17) & (\dut|b|r_1|g_1:3:m_8|a_2|c~0_combout\ & !\dut|Z[4]~11_combout\)) # (!\input_vector~combout\(17) & ((\dut|Z[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(17),
	datac => \dut|b|r_1|g_1:3:m_8|a_2|c~0_combout\,
	datad => \dut|Z[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[4]~12_combout\);

-- Location: LC_X12_Y8_N1
\dut|c|g_1:4:m_8|a_2|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:4:m_8|a_2|c~1_combout\ = ((\input_vector~combout\(1) & ((\input_vector~combout\(15)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:4:m_8|a_2|c~1_combout\);

-- Location: LC_X12_Y8_N3
\dut|c|g_1:4:m_8|a_2|c~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:4:m_8|a_2|c~2_combout\ = (\dut|c|g_1:7:m_8|a_2|c~1_combout\ & ((\input_vector~combout\(0) & ((\dut|c|g_1:4:m_8|a_2|c~1_combout\))) # (!\input_vector~combout\(0) & (\dut|c|g_1:4:m_8|a_2|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|g_1:4:m_8|a_2|c~0_combout\,
	datab => \dut|c|g_1:4:m_8|a_2|c~1_combout\,
	datac => \input_vector~combout\(0),
	datad => \dut|c|g_1:7:m_8|a_2|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:4:m_8|a_2|c~2_combout\);

-- Location: LC_X13_Y7_N7
\dut|d|g_1:2:f_1|o_4|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|g_1:2:f_1|o_4|c~0_combout\ = ((\dut|d|g_1:1:f_1|o_4|c~0_combout\ & ((\input_vector~combout\(3)) # (!\input_vector~combout\(11)))) # (!\dut|d|g_1:1:f_1|o_4|c~0_combout\ & (!\input_vector~combout\(11) & \input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|d|g_1:1:f_1|o_4|c~0_combout\,
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|g_1:2:f_1|o_4|c~0_combout\);

-- Location: LC_X13_Y7_N6
\dut|a|g_1:2:f_1|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|g_1:2:f_1|o_1|c~0_combout\ = ((\dut|a|g_1:1:f_1|o_1|c~0_combout\ & ((\input_vector~combout\(11)) # (\input_vector~combout\(3)))) # (!\dut|a|g_1:1:f_1|o_1|c~0_combout\ & (\input_vector~combout\(11) & \input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|a|g_1:1:f_1|o_1|c~0_combout\,
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|g_1:2:f_1|o_1|c~0_combout\);

-- Location: LC_X13_Y7_N5
\dut|Z[4]~10\ : maxv_lcell
-- Equation(s):
-- \dut|Z[4]~10_combout\ = (\input_vector~combout\(16) & ((\dut|d|g_1:2:f_1|o_4|c~0_combout\) # ((\input_vector~combout\(17))))) # (!\input_vector~combout\(16) & (((\dut|a|g_1:2:f_1|o_1|c~0_combout\ & !\input_vector~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \dut|d|g_1:2:f_1|o_4|c~0_combout\,
	datac => \dut|a|g_1:2:f_1|o_1|c~0_combout\,
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[4]~10_combout\);

-- Location: LC_X12_Y10_N2
\dut|Z[4]~13\ : maxv_lcell
-- Equation(s):
-- \dut|Z[4]~13_combout\ = (\input_vector~combout\(17) & ((\dut|Z[4]~10_combout\ & (\dut|Z[4]~12_combout\)) # (!\dut|Z[4]~10_combout\ & ((\dut|c|g_1:4:m_8|a_2|c~2_combout\))))) # (!\input_vector~combout\(17) & (\dut|Z[4]~12_combout\ $ 
-- (((\dut|Z[4]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Z[4]~12_combout\,
	datab => \input_vector~combout\(17),
	datac => \dut|c|g_1:4:m_8|a_2|c~2_combout\,
	datad => \dut|Z[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[4]~13_combout\);

-- Location: LC_X12_Y8_N8
\dut|c|g_1:5:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:5:m_8|a_2|c~0_combout\ = (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & ((\input_vector~combout\(14)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:5:m_8|a_2|c~0_combout\);

-- Location: LC_X11_Y8_N2
\dut|c|g_1:5:m_8|a_2|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:5:m_8|a_2|c~1_combout\ = (\dut|c|g_1:7:m_8|a_2|c~1_combout\ & ((\dut|c|g_1:5:m_8|a_2|c~0_combout\) # ((\input_vector~combout\(15) & \dut|b|r_1|g_1:5:m_8|a_2|c~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|g_1:7:m_8|a_2|c~1_combout\,
	datab => \dut|c|g_1:5:m_8|a_2|c~0_combout\,
	datac => \input_vector~combout\(15),
	datad => \dut|b|r_1|g_1:5:m_8|a_2|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:5:m_8|a_2|c~1_combout\);

-- Location: LC_X13_Y7_N0
\dut|a|g_1:3:f_1|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|g_1:3:f_1|o_1|c~0_combout\ = ((\input_vector~combout\(12) & ((\dut|a|g_1:2:f_1|o_1|c~0_combout\) # (\input_vector~combout\(4)))) # (!\input_vector~combout\(12) & (\dut|a|g_1:2:f_1|o_1|c~0_combout\ & \input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(12),
	datac => \dut|a|g_1:2:f_1|o_1|c~0_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|g_1:3:f_1|o_1|c~0_combout\);

-- Location: LC_X13_Y7_N1
\dut|d|g_1:3:f_1|o_4|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|g_1:3:f_1|o_4|c~0_combout\ = ((\input_vector~combout\(12) & (\dut|d|g_1:2:f_1|o_4|c~0_combout\ & \input_vector~combout\(4))) # (!\input_vector~combout\(12) & ((\dut|d|g_1:2:f_1|o_4|c~0_combout\) # (\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(12),
	datac => \dut|d|g_1:2:f_1|o_4|c~0_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|g_1:3:f_1|o_4|c~0_combout\);

-- Location: LC_X11_Y8_N0
\dut|Z[5]~14\ : maxv_lcell
-- Equation(s):
-- \dut|Z[5]~14_combout\ = (\input_vector~combout\(17) & (\input_vector~combout\(16))) # (!\input_vector~combout\(17) & ((\input_vector~combout\(16) & ((\dut|d|g_1:3:f_1|o_4|c~0_combout\))) # (!\input_vector~combout\(16) & 
-- (\dut|a|g_1:3:f_1|o_1|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \input_vector~combout\(16),
	datac => \dut|a|g_1:3:f_1|o_1|c~0_combout\,
	datad => \dut|d|g_1:3:f_1|o_4|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[5]~14_combout\);

-- Location: LC_X11_Y8_N4
\dut|Z[5]~15\ : maxv_lcell
-- Equation(s):
-- \dut|Z[5]~15_combout\ = \dut|Z[5]~14_combout\ $ (((!\input_vector~combout\(17) & (\input_vector~combout\(13) $ (\input_vector~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f096",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(5),
	datac => \dut|Z[5]~14_combout\,
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[5]~15_combout\);

-- Location: LC_X12_Y8_N4
\dut|b|r_1|r_1|g_1:2:m_1|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|r_1|g_1:2:m_1|o_1|c~0_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(9))))) # (!\input_vector~combout\(2) & (\input_vector~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|r_1|g_1:2:m_1|o_1|c~0_combout\);

-- Location: LC_X11_Y9_N4
\dut|b|r_1|g_1:1:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:1:m_8|a_2|c~0_combout\ = (\input_vector~combout\(1) & (!\input_vector~combout\(2) & ((\input_vector~combout\(11))))) # (!\input_vector~combout\(1) & (((\dut|b|r_1|r_1|g_1:2:m_1|o_1|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \dut|b|r_1|r_1|g_1:2:m_1|o_1|c~0_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:1:m_8|a_2|c~0_combout\);

-- Location: LC_X11_Y9_N8
\dut|b|r_1|g_1:2:m_8|a_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:2:m_8|a_2|c~0_combout\ = (!\dut|c|o_4|c~combout\ & ((\input_vector~combout\(0) & ((\dut|b|r_1|r_1|g_2:3:m_3|o_1|c~0_combout\))) # (!\input_vector~combout\(0) & (\dut|b|r_1|g_1:1:m_8|a_2|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|o_4|c~combout\,
	datab => \input_vector~combout\(0),
	datac => \dut|b|r_1|g_1:1:m_8|a_2|c~0_combout\,
	datad => \dut|b|r_1|r_1|g_2:3:m_3|o_1|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:2:m_8|a_2|c~0_combout\);

-- Location: LC_X11_Y8_N3
\dut|Z[5]~16\ : maxv_lcell
-- Equation(s):
-- \dut|Z[5]~16_combout\ = (\input_vector~combout\(17) & ((\dut|Z[5]~15_combout\ & ((\dut|b|r_1|g_1:2:m_8|a_2|c~0_combout\))) # (!\dut|Z[5]~15_combout\ & (\dut|c|g_1:5:m_8|a_2|c~1_combout\)))) # (!\input_vector~combout\(17) & (((\dut|Z[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \dut|c|g_1:5:m_8|a_2|c~1_combout\,
	datac => \dut|Z[5]~15_combout\,
	datad => \dut|b|r_1|g_1:2:m_8|a_2|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[5]~16_combout\);

-- Location: LC_X11_Y8_N7
\dut|Z[6]~17\ : maxv_lcell
-- Equation(s):
-- \dut|Z[6]~17_combout\ = (\input_vector~combout\(17) & ((\input_vector~combout\(0) & (\input_vector~combout\(15))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(14)))))) # (!\input_vector~combout\(17) & (((\input_vector~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[6]~17_combout\);

-- Location: LC_X11_Y8_N9
\dut|Z[6]~18\ : maxv_lcell
-- Equation(s):
-- \dut|Z[6]~18_combout\ = (\input_vector~combout\(17) & (((\dut|Z[6]~17_combout\ & \dut|b|r_1|g_1:6:m_8|a_2|c~0_combout\)))) # (!\input_vector~combout\(17) & (\input_vector~combout\(6) $ ((\dut|Z[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b414",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \input_vector~combout\(6),
	datac => \dut|Z[6]~17_combout\,
	datad => \dut|b|r_1|g_1:6:m_8|a_2|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[6]~18_combout\);

-- Location: LC_X11_Y8_N1
\dut|a|g_1:4:f_1|o_1|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|g_1:4:f_1|o_1|c~0_combout\ = (\dut|a|g_1:3:f_1|o_1|c~0_combout\ & ((\input_vector~combout\(5)) # ((\input_vector~combout\(13))))) # (!\dut|a|g_1:3:f_1|o_1|c~0_combout\ & (\input_vector~combout\(5) & (\input_vector~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|a|g_1:3:f_1|o_1|c~0_combout\,
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|g_1:4:f_1|o_1|c~0_combout\);

-- Location: LC_X11_Y8_N5
\dut|d|g_1:4:f_1|o_4|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|g_1:4:f_1|o_4|c~0_combout\ = ((\input_vector~combout\(5) & ((\dut|d|g_1:3:f_1|o_4|c~0_combout\) # (!\input_vector~combout\(13)))) # (!\input_vector~combout\(5) & (!\input_vector~combout\(13) & \dut|d|g_1:3:f_1|o_4|c~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(13),
	datad => \dut|d|g_1:3:f_1|o_4|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|g_1:4:f_1|o_4|c~0_combout\);

-- Location: LC_X11_Y8_N6
\dut|Z[6]~19\ : maxv_lcell
-- Equation(s):
-- \dut|Z[6]~19_combout\ = (\input_vector~combout\(17) & (((\input_vector~combout\(16))))) # (!\input_vector~combout\(17) & ((\input_vector~combout\(16) & ((\dut|d|g_1:4:f_1|o_4|c~0_combout\))) # (!\input_vector~combout\(16) & 
-- (\dut|a|g_1:4:f_1|o_1|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \dut|a|g_1:4:f_1|o_1|c~0_combout\,
	datac => \dut|d|g_1:4:f_1|o_4|c~0_combout\,
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[6]~19_combout\);

-- Location: LC_X11_Y9_N3
\dut|b|r_1|r_1|g_2:1:m_3|o_1|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~1_combout\ = ((\input_vector~combout\(2) & (\input_vector~combout\(10))) # (!\input_vector~combout\(2) & ((\input_vector~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~1_combout\);

-- Location: LC_X11_Y9_N7
\dut|b|r_1|r_1|g_2:1:m_3|o_1|c~2\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~2_combout\ = ((\input_vector~combout\(1) & (\dut|b|r_1|r_1|g_2:1:m_3|o_1|c~0_combout\)) # (!\input_vector~combout\(1) & ((\dut|b|r_1|r_1|g_2:1:m_3|o_1|c~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~0_combout\,
	datac => \input_vector~combout\(1),
	datad => \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~2_combout\);

-- Location: LC_X11_Y9_N5
\dut|b|r_1|g_1:1:m_8|a_2|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:1:m_8|a_2|c~1_combout\ = (!\dut|c|o_4|c~combout\ & ((\input_vector~combout\(0) & ((\dut|b|r_1|g_1:1:m_8|a_2|c~0_combout\))) # (!\input_vector~combout\(0) & (\dut|b|r_1|r_1|g_2:1:m_3|o_1|c~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|o_4|c~combout\,
	datab => \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~2_combout\,
	datac => \input_vector~combout\(0),
	datad => \dut|b|r_1|g_1:1:m_8|a_2|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:1:m_8|a_2|c~1_combout\);

-- Location: LC_X11_Y8_N8
\dut|Z[6]~20\ : maxv_lcell
-- Equation(s):
-- \dut|Z[6]~20_combout\ = (\dut|Z[6]~19_combout\ & ((\input_vector~combout\(17) & ((\dut|b|r_1|g_1:1:m_8|a_2|c~1_combout\))) # (!\input_vector~combout\(17) & (!\dut|Z[6]~18_combout\)))) # (!\dut|Z[6]~19_combout\ & (((\dut|Z[6]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc1c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \dut|Z[6]~18_combout\,
	datac => \dut|Z[6]~19_combout\,
	datad => \dut|b|r_1|g_1:1:m_8|a_2|c~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[6]~20_combout\);

-- Location: LC_X12_Y9_N6
\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~1_combout\ = (\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\ & (((!\dut|c|g_1:7:m_8|a_2|c~0_combout\)))) # (!\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\ & ((\dut|c|g_1:7:m_8|a_2|c~0_combout\ & (\input_vector~combout\(15))) # 
-- (!\dut|c|g_1:7:m_8|a_2|c~0_combout\ & ((\dut|b|r_1|r_1|g_1:2:m_1|o_1|c~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\,
	datab => \input_vector~combout\(15),
	datac => \dut|b|r_1|r_1|g_1:2:m_1|o_1|c~0_combout\,
	datad => \dut|c|g_1:7:m_8|a_2|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~1_combout\);

-- Location: LC_X12_Y9_N1
\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~2\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~2_combout\ = (\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\ & ((\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~1_combout\ & (\dut|b|r_1|r_1|g_2:1:m_3|o_1|c~2_combout\)) # (!\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~1_combout\ & 
-- ((\input_vector~combout\(11)))))) # (!\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\ & (((\dut|b|r_1|r_1|g_3:0:m_6|o_1|c~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~0_combout\,
	datab => \dut|b|r_1|r_1|g_2:1:m_3|o_1|c~2_combout\,
	datac => \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~1_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~2_combout\);

-- Location: LC_X12_Y9_N5
\dut|b|r_1|g_1:0:m_8|a_2|c\ : maxv_lcell
-- Equation(s):
-- \dut|b|r_1|g_1:0:m_8|a_2|c~combout\ = (((!\dut|c|o_4|c~combout\ & \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|c|o_4|c~combout\,
	datad => \dut|b|r_1|r_1|g_3:0:m_6|o_1|c~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|r_1|g_1:0:m_8|a_2|c~combout\);

-- Location: LC_X12_Y9_N4
\dut|d|g_1:6:f_1|x_2|c~0\ : maxv_lcell
-- Equation(s):
-- \dut|d|g_1:6:f_1|x_2|c~0_combout\ = (\input_vector~combout\(7) $ (((\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(7),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|g_1:6:f_1|x_2|c~0_combout\);

-- Location: LC_X12_Y9_N0
\dut|d|g_1:6:f_1|x_2|c\ : maxv_lcell
-- Equation(s):
-- \dut|d|g_1:6:f_1|x_2|c~combout\ = \dut|d|g_1:6:f_1|x_2|c~0_combout\ $ (((\input_vector~combout\(6) & ((\dut|d|g_1:4:f_1|o_4|c~0_combout\) # (!\input_vector~combout\(14)))) # (!\input_vector~combout\(6) & (!\input_vector~combout\(14) & 
-- \dut|d|g_1:4:f_1|o_4|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4bd2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(14),
	datac => \dut|d|g_1:6:f_1|x_2|c~0_combout\,
	datad => \dut|d|g_1:4:f_1|o_4|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|g_1:6:f_1|x_2|c~combout\);

-- Location: LC_X12_Y9_N8
\dut|a|g_1:6:f_1|h_2|x_1|c\ : maxv_lcell
-- Equation(s):
-- \dut|a|g_1:6:f_1|h_2|x_1|c~combout\ = \dut|d|g_1:6:f_1|x_2|c~0_combout\ $ (((\dut|a|g_1:4:f_1|o_1|c~0_combout\ & ((\input_vector~combout\(6)) # (\input_vector~combout\(14)))) # (!\dut|a|g_1:4:f_1|o_1|c~0_combout\ & (\input_vector~combout\(6) & 
-- \input_vector~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "566a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|d|g_1:6:f_1|x_2|c~0_combout\,
	datab => \dut|a|g_1:4:f_1|o_1|c~0_combout\,
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|g_1:6:f_1|h_2|x_1|c~combout\);

-- Location: LC_X12_Y9_N9
\dut|Z[7]~21\ : maxv_lcell
-- Equation(s):
-- \dut|Z[7]~21_combout\ = (\input_vector~combout\(16) & ((\dut|d|g_1:6:f_1|x_2|c~combout\) # ((\input_vector~combout\(17))))) # (!\input_vector~combout\(16) & (((!\input_vector~combout\(17) & \dut|a|g_1:6:f_1|h_2|x_1|c~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \dut|d|g_1:6:f_1|x_2|c~combout\,
	datac => \input_vector~combout\(17),
	datad => \dut|a|g_1:6:f_1|h_2|x_1|c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[7]~21_combout\);

-- Location: LC_X12_Y9_N2
\dut|c|g_1:7:m_8|a_2|c\ : maxv_lcell
-- Equation(s):
-- \dut|c|g_1:7:m_8|a_2|c~combout\ = (\input_vector~combout\(15) & (!\dut|c|o_4|c~combout\ & (!\input_vector~combout\(2) & \dut|c|g_1:7:m_8|a_2|c~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \dut|c|o_4|c~combout\,
	datac => \input_vector~combout\(2),
	datad => \dut|c|g_1:7:m_8|a_2|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|g_1:7:m_8|a_2|c~combout\);

-- Location: LC_X12_Y9_N3
\dut|Z[7]~22\ : maxv_lcell
-- Equation(s):
-- \dut|Z[7]~22_combout\ = (\dut|Z[7]~21_combout\ & ((\dut|b|r_1|g_1:0:m_8|a_2|c~combout\) # ((!\input_vector~combout\(17))))) # (!\dut|Z[7]~21_combout\ & (((\input_vector~combout\(17) & \dut|c|g_1:7:m_8|a_2|c~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|r_1|g_1:0:m_8|a_2|c~combout\,
	datab => \dut|Z[7]~21_combout\,
	datac => \input_vector~combout\(17),
	datad => \dut|c|g_1:7:m_8|a_2|c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[7]~22_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|Z[0]~2_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|Z[1]~3_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|Z[2]~6_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|Z[3]~9_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|Z[4]~13_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|Z[5]~16_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|Z[6]~20_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|Z[7]~22_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


