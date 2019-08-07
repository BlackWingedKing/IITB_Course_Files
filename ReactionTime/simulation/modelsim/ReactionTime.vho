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

-- DATE "05/03/2018 21:38:53"

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

ENTITY 	ReactionTime IS
    PORT (
	btnClick : IN std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	ledLight : OUT std_logic;
	readWrite : OUT std_logic;
	enable : OUT std_logic;
	datCom : OUT std_logic;
	b11 : OUT std_logic;
	b12 : OUT std_logic;
	lcdOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END ReactionTime;

-- Design Ports Information


ARCHITECTURE structure OF ReactionTime IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_btnClick : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ledLight : std_logic;
SIGNAL ww_readWrite : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_datCom : std_logic;
SIGNAL ww_b11 : std_logic;
SIGNAL ww_b12 : std_logic;
SIGNAL ww_lcdOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~combout\ : std_logic;
SIGNAL \cmp2|Add0~27\ : std_logic;
SIGNAL \cmp2|Add0~27COUT1_87\ : std_logic;
SIGNAL \cmp2|Add0~52\ : std_logic;
SIGNAL \cmp2|Add0~52COUT1_88\ : std_logic;
SIGNAL \cmp2|Add0~30_combout\ : std_logic;
SIGNAL \cmp2|Add0~32COUT1_89\ : std_logic;
SIGNAL \cmp2|Add0~37\ : std_logic;
SIGNAL \cmp2|Add0~37COUT1_90\ : std_logic;
SIGNAL \cmp2|Add0~40_combout\ : std_logic;
SIGNAL \cmp2|Add0~32\ : std_logic;
SIGNAL \cmp2|Add0~35_combout\ : std_logic;
SIGNAL \cmp2|Equal0~0\ : std_logic;
SIGNAL \cmp2|Add0~75_combout\ : std_logic;
SIGNAL \cmp2|Add0~77\ : std_logic;
SIGNAL \cmp2|Add0~77COUT1_81\ : std_logic;
SIGNAL \cmp2|Add0~70_combout\ : std_logic;
SIGNAL \cmp2|Add0~72\ : std_logic;
SIGNAL \cmp2|Add0~72COUT1_82\ : std_logic;
SIGNAL \cmp2|Add0~65_combout\ : std_logic;
SIGNAL \cmp2|Equal0~1\ : std_logic;
SIGNAL \cmp2|Add0~0_combout\ : std_logic;
SIGNAL \cmp2|Equal0~2_combout\ : std_logic;
SIGNAL \cmp2|Add0~25_combout\ : std_logic;
SIGNAL \cmp2|Add0~2\ : std_logic;
SIGNAL \cmp2|Add0~2COUT1_83\ : std_logic;
SIGNAL \cmp2|Add0~7\ : std_logic;
SIGNAL \cmp2|Add0~7COUT1_84\ : std_logic;
SIGNAL \cmp2|Add0~20_combout\ : std_logic;
SIGNAL \cmp2|LessThan0~0\ : std_logic;
SIGNAL \cmp2|Add0~22\ : std_logic;
SIGNAL \cmp2|Add0~22COUT1_85\ : std_logic;
SIGNAL \cmp2|Add0~12\ : std_logic;
SIGNAL \cmp2|Add0~12COUT1_86\ : std_logic;
SIGNAL \cmp2|Add0~15_combout\ : std_logic;
SIGNAL \cmp2|Add0~17\ : std_logic;
SIGNAL \cmp2|Add0~50_combout\ : std_logic;
SIGNAL \cmp2|Add0~42\ : std_logic;
SIGNAL \cmp2|Add0~55_combout\ : std_logic;
SIGNAL \cmp2|Add0~57\ : std_logic;
SIGNAL \cmp2|Add0~57COUT1_91\ : std_logic;
SIGNAL \cmp2|Add0~62\ : std_logic;
SIGNAL \cmp2|Add0~62COUT1_92\ : std_logic;
SIGNAL \cmp2|Add0~45_combout\ : std_logic;
SIGNAL \cmp2|Equal0~4\ : std_logic;
SIGNAL \cmp2|Add0~5_combout\ : std_logic;
SIGNAL \cmp2|Add0~67\ : std_logic;
SIGNAL \cmp2|Add0~10_combout\ : std_logic;
SIGNAL \cmp2|Equal0~3\ : std_logic;
SIGNAL \cmp2|Add0~60_combout\ : std_logic;
SIGNAL \cmp2|LessThan0~1\ : std_logic;
SIGNAL \cmp2|LessThan0~2_combout\ : std_logic;
SIGNAL \cmp2|outputSignal~regout\ : std_logic;
SIGNAL \cmp2|outclk~regout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \cmp4|count[0]~19\ : std_logic;
SIGNAL \cmp4|count[0]~19COUT1_23\ : std_logic;
SIGNAL \cmp4|count[1]~21\ : std_logic;
SIGNAL \cmp4|count[1]~21COUT1_24\ : std_logic;
SIGNAL \cmp4|count[2]~3\ : std_logic;
SIGNAL \cmp4|count[2]~3COUT1_25\ : std_logic;
SIGNAL \cmp4|count[3]~1\ : std_logic;
SIGNAL \cmp4|count[3]~1COUT1_26\ : std_logic;
SIGNAL \cmp4|count[4]~7\ : std_logic;
SIGNAL \cmp4|count[5]~5\ : std_logic;
SIGNAL \cmp4|count[5]~5COUT1_27\ : std_logic;
SIGNAL \cmp4|count[6]~11\ : std_logic;
SIGNAL \cmp4|count[6]~11COUT1_28\ : std_logic;
SIGNAL \cmp4|count[7]~9\ : std_logic;
SIGNAL \cmp4|count[7]~9COUT1_29\ : std_logic;
SIGNAL \cmp4|count[8]~15\ : std_logic;
SIGNAL \cmp4|count[8]~15COUT1_30\ : std_logic;
SIGNAL \cmp4|count[9]~13\ : std_logic;
SIGNAL \btnClick~combout\ : std_logic;
SIGNAL \cmp3|Add0~25_combout\ : std_logic;
SIGNAL \cmp3|Add0~27\ : std_logic;
SIGNAL \cmp3|Add0~27COUT1_50\ : std_logic;
SIGNAL \cmp3|Add0~30_combout\ : std_logic;
SIGNAL \cmp3|Add0~32\ : std_logic;
SIGNAL \cmp3|Add0~32COUT1_51\ : std_logic;
SIGNAL \cmp3|Add0~35_combout\ : std_logic;
SIGNAL \cmp3|Equal0~1_combout\ : std_logic;
SIGNAL \cmp3|Add0~0_combout\ : std_logic;
SIGNAL \cmp3|Add0~2\ : std_logic;
SIGNAL \cmp3|Add0~2COUT1_46\ : std_logic;
SIGNAL \cmp3|Add0~5_combout\ : std_logic;
SIGNAL \cmp3|Add0~7\ : std_logic;
SIGNAL \cmp3|Add0~7COUT1_47\ : std_logic;
SIGNAL \cmp3|Add0~10_combout\ : std_logic;
SIGNAL \cmp3|Add0~12\ : std_logic;
SIGNAL \cmp3|Add0~12COUT1_48\ : std_logic;
SIGNAL \cmp3|Add0~15_combout\ : std_logic;
SIGNAL \cmp3|Equal0~0_combout\ : std_logic;
SIGNAL \cmp3|Add0~17\ : std_logic;
SIGNAL \cmp3|Add0~17COUT1_49\ : std_logic;
SIGNAL \cmp3|Add0~20_combout\ : std_logic;
SIGNAL \cmp3|Add0~22\ : std_logic;
SIGNAL \cmp3|Add0~37\ : std_logic;
SIGNAL \cmp3|Add0~37COUT1_52\ : std_logic;
SIGNAL \cmp3|Add0~40_combout\ : std_logic;
SIGNAL \cmp4|light~6\ : std_logic;
SIGNAL \cmp4|light~0_combout\ : std_logic;
SIGNAL \cmp4|light~1\ : std_logic;
SIGNAL \cmp4|light~2\ : std_logic;
SIGNAL \cmp4|light~3_combout\ : std_logic;
SIGNAL \cmp4|light~4_combout\ : std_logic;
SIGNAL \cmp4|light~5_combout\ : std_logic;
SIGNAL \cmp4|light~regout\ : std_logic;
SIGNAL \cmp4|lightUp~regout\ : std_logic;
SIGNAL \cmp7|LessThan1~0_combout\ : std_logic;
SIGNAL \cmp7|comp~regout\ : std_logic;
SIGNAL \ledLight~0_combout\ : std_logic;
SIGNAL \cmp8|LessThan0~0_combout\ : std_logic;
SIGNAL \cmp8|state.S1~regout\ : std_logic;
SIGNAL \cmp8|state.S2~regout\ : std_logic;
SIGNAL \cmp8|state~31_combout\ : std_logic;
SIGNAL \cmp8|state.S0~regout\ : std_logic;
SIGNAL \cmp8|Selector1~0_combout\ : std_logic;
SIGNAL \cmp8|state.S7~regout\ : std_logic;
SIGNAL \cmp8|state.S8~regout\ : std_logic;
SIGNAL \cmp8|state.S9~regout\ : std_logic;
SIGNAL \cmp8|Selector10~3_combout\ : std_logic;
SIGNAL \cmp8|state.S3~regout\ : std_logic;
SIGNAL \cmp8|state.S4~regout\ : std_logic;
SIGNAL \cmp8|state.S5~regout\ : std_logic;
SIGNAL \cmp8|state.S6~regout\ : std_logic;
SIGNAL \cmp8|Selector10~0_combout\ : std_logic;
SIGNAL \cmp8|Selector10~1_combout\ : std_logic;
SIGNAL \cmp8|lcd_en~regout\ : std_logic;
SIGNAL \cmp8|Selector8~0_combout\ : std_logic;
SIGNAL \cmp8|Selector8~1_combout\ : std_logic;
SIGNAL \cmp8|lcd_rs~regout\ : std_logic;
SIGNAL \cmp8|Selector7~1_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \cmp8|Selector5~0_combout\ : std_logic;
SIGNAL \cmp8|Selector7~0_combout\ : std_logic;
SIGNAL \cmp8|WideOr1~0_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \cmp8|Selector6~0\ : std_logic;
SIGNAL \cmp8|Selector6~1_combout\ : std_logic;
SIGNAL \cmp8|Selector5~1_combout\ : std_logic;
SIGNAL \cmp8|Selector5~2_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~7COUT1_161\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~12COUT1_162\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~17COUT1_163\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~22COUT1_164\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~32\ : std_logic;
SIGNAL \Add4~32COUT1_165\ : std_logic;
SIGNAL \Add4~35_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~37COUT1_166\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~42COUT1_167\ : std_logic;
SIGNAL \Add4~45_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~47COUT1_168\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~52\ : std_logic;
SIGNAL \Add4~55_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~57COUT1_169\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~62COUT1_170\ : std_logic;
SIGNAL \Add4~65_combout\ : std_logic;
SIGNAL \Add4~67\ : std_logic;
SIGNAL \Add4~67COUT1_171\ : std_logic;
SIGNAL \Add4~70_combout\ : std_logic;
SIGNAL \Add4~72\ : std_logic;
SIGNAL \Add4~72COUT1_172\ : std_logic;
SIGNAL \Add4~75_combout\ : std_logic;
SIGNAL \Add4~77\ : std_logic;
SIGNAL \Add4~80_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~82COUT1_173\ : std_logic;
SIGNAL \Add4~85_combout\ : std_logic;
SIGNAL \Add4~87\ : std_logic;
SIGNAL \Add4~87COUT1_174\ : std_logic;
SIGNAL \Add4~90_combout\ : std_logic;
SIGNAL \Add4~92\ : std_logic;
SIGNAL \Add4~92COUT1_175\ : std_logic;
SIGNAL \Add4~95_combout\ : std_logic;
SIGNAL \Add4~97\ : std_logic;
SIGNAL \Add4~97COUT1_176\ : std_logic;
SIGNAL \Add4~100_combout\ : std_logic;
SIGNAL \Add4~102\ : std_logic;
SIGNAL \Add4~105_combout\ : std_logic;
SIGNAL \Add4~107\ : std_logic;
SIGNAL \Add4~107COUT1_177\ : std_logic;
SIGNAL \Add4~110_combout\ : std_logic;
SIGNAL \Add4~112\ : std_logic;
SIGNAL \Add4~112COUT1_178\ : std_logic;
SIGNAL \Add4~115_combout\ : std_logic;
SIGNAL \Add4~117\ : std_logic;
SIGNAL \Add4~117COUT1_179\ : std_logic;
SIGNAL \Add4~120_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \Add4~122\ : std_logic;
SIGNAL \Add4~122COUT1_180\ : std_logic;
SIGNAL \Add4~125_combout\ : std_logic;
SIGNAL \Add4~127\ : std_logic;
SIGNAL \Add4~130_combout\ : std_logic;
SIGNAL \Add4~132\ : std_logic;
SIGNAL \Add4~132COUT1_181\ : std_logic;
SIGNAL \Add4~135_combout\ : std_logic;
SIGNAL \Add4~137\ : std_logic;
SIGNAL \Add4~137COUT1_182\ : std_logic;
SIGNAL \Add4~140_combout\ : std_logic;
SIGNAL \Add4~142\ : std_logic;
SIGNAL \Add4~142COUT1_183\ : std_logic;
SIGNAL \Add4~145_combout\ : std_logic;
SIGNAL \Add4~147\ : std_logic;
SIGNAL \Add4~147COUT1_184\ : std_logic;
SIGNAL \Add4~150_combout\ : std_logic;
SIGNAL \Add4~152\ : std_logic;
SIGNAL \Add4~155_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \cmp8|Selector4~2_combout\ : std_logic;
SIGNAL \cmp8|Selector4~0_combout\ : std_logic;
SIGNAL \cmp8|Selector4~1_combout\ : std_logic;
SIGNAL \cmp8|LessThan0~1_combout\ : std_logic;
SIGNAL \cmp8|Selector0~0_combout\ : std_logic;
SIGNAL \cmp8|lcd[4]~0_combout\ : std_logic;
SIGNAL \cmp8|Selector3~0\ : std_logic;
SIGNAL \cmp8|Selector1~1_combout\ : std_logic;
SIGNAL toChange : std_logic_vector(31 DOWNTO 0);
SIGNAL \cmp8|lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cmp7|countTimes\ : std_logic_vector(3 DOWNTO 0);
SIGNAL nst : std_logic_vector(31 DOWNTO 0);
SIGNAL \cmp8|count_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cmp8|cmd_position\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cmp3|outval\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \cmp4|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL wrCol : std_logic_vector(3 DOWNTO 0);
SIGNAL \cmp2|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cmp3|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL ALT_INV_nst : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_btnClick <= btnClick;
ww_clock <= clock;
ww_reset <= reset;
ledLight <= ww_ledLight;
readWrite <= ww_readWrite;
enable <= ww_enable;
datCom <= ww_datCom;
b11 <= ww_b11;
b12 <= ww_b12;
lcdOut <= ww_lcdOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
ALT_INV_nst(0) <= NOT nst(0);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: LC_X11_Y4_N0
\cmp2|Add0~25\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~25_combout\ = (\cmp2|count\(8) $ ((!\cmp2|Add0~17\)))
-- \cmp2|Add0~27\ = CARRY(((\cmp2|count\(8) & !\cmp2|Add0~17\)))
-- \cmp2|Add0~27COUT1_87\ = CARRY(((\cmp2|count\(8) & !\cmp2|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(8),
	cin => \cmp2|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~25_combout\,
	cout0 => \cmp2|Add0~27\,
	cout1 => \cmp2|Add0~27COUT1_87\);

-- Location: LC_X11_Y4_N1
\cmp2|Add0~50\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~50_combout\ = (\cmp2|count\(9) $ (((!\cmp2|Add0~17\ & \cmp2|Add0~27\) # (\cmp2|Add0~17\ & \cmp2|Add0~27COUT1_87\))))
-- \cmp2|Add0~52\ = CARRY(((!\cmp2|Add0~27\) # (!\cmp2|count\(9))))
-- \cmp2|Add0~52COUT1_88\ = CARRY(((!\cmp2|Add0~27COUT1_87\) # (!\cmp2|count\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(9),
	cin => \cmp2|Add0~17\,
	cin0 => \cmp2|Add0~27\,
	cin1 => \cmp2|Add0~27COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~50_combout\,
	cout0 => \cmp2|Add0~52\,
	cout1 => \cmp2|Add0~52COUT1_88\);

-- Location: LC_X11_Y4_N2
\cmp2|Add0~30\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~30_combout\ = (\cmp2|count\(10) $ ((!(!\cmp2|Add0~17\ & \cmp2|Add0~52\) # (\cmp2|Add0~17\ & \cmp2|Add0~52COUT1_88\))))
-- \cmp2|Add0~32\ = CARRY(((\cmp2|count\(10) & !\cmp2|Add0~52\)))
-- \cmp2|Add0~32COUT1_89\ = CARRY(((\cmp2|count\(10) & !\cmp2|Add0~52COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(10),
	cin => \cmp2|Add0~17\,
	cin0 => \cmp2|Add0~52\,
	cin1 => \cmp2|Add0~52COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~30_combout\,
	cout0 => \cmp2|Add0~32\,
	cout1 => \cmp2|Add0~32COUT1_89\);

-- Location: LC_X11_Y4_N3
\cmp2|Add0~35\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~35_combout\ = (\cmp2|count\(11) $ (((!\cmp2|Add0~17\ & \cmp2|Add0~32\) # (\cmp2|Add0~17\ & \cmp2|Add0~32COUT1_89\))))
-- \cmp2|Add0~37\ = CARRY(((!\cmp2|Add0~32\) # (!\cmp2|count\(11))))
-- \cmp2|Add0~37COUT1_90\ = CARRY(((!\cmp2|Add0~32COUT1_89\) # (!\cmp2|count\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(11),
	cin => \cmp2|Add0~17\,
	cin0 => \cmp2|Add0~32\,
	cin1 => \cmp2|Add0~32COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~35_combout\,
	cout0 => \cmp2|Add0~37\,
	cout1 => \cmp2|Add0~37COUT1_90\);

-- Location: LC_X11_Y4_N4
\cmp2|Add0~40\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~40_combout\ = \cmp2|count\(12) $ ((((!(!\cmp2|Add0~17\ & \cmp2|Add0~37\) # (\cmp2|Add0~17\ & \cmp2|Add0~37COUT1_90\)))))
-- \cmp2|Add0~42\ = CARRY((\cmp2|count\(12) & ((!\cmp2|Add0~37COUT1_90\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|count\(12),
	cin => \cmp2|Add0~17\,
	cin0 => \cmp2|Add0~37\,
	cin1 => \cmp2|Add0~37COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~40_combout\,
	cout => \cmp2|Add0~42\);

-- Location: LC_X12_Y4_N6
\cmp2|count[12]\ : maxv_lcell
-- Equation(s):
-- \cmp2|count\(12) = DFFEAS((((\cmp2|Add0~40_combout\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \cmp2|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|count\(12));

-- Location: LC_X12_Y4_N9
\cmp2|count[10]\ : maxv_lcell
-- Equation(s):
-- \cmp2|Equal0~0\ = (!\cmp2|count\(11) & (((!B1_count[10] & !\cmp2|count\(12)))))
-- \cmp2|count\(10) = DFFEAS(\cmp2|Equal0~0\, GLOBAL(\clock~combout\), VCC, , , \cmp2|Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|count\(11),
	datac => \cmp2|Add0~30_combout\,
	datad => \cmp2|count\(12),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Equal0~0\,
	regout => \cmp2|count\(10));

-- Location: LC_X12_Y4_N5
\cmp2|count[11]\ : maxv_lcell
-- Equation(s):
-- \cmp2|count\(11) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , , \cmp2|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \cmp2|Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|count\(11));

-- Location: LC_X10_Y4_N2
\cmp2|Add0~75\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~75_combout\ = ((!\cmp2|count\(0)))
-- \cmp2|Add0~77\ = CARRY(((\cmp2|count\(0))))
-- \cmp2|Add0~77COUT1_81\ = CARRY(((\cmp2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~75_combout\,
	cout0 => \cmp2|Add0~77\,
	cout1 => \cmp2|Add0~77COUT1_81\);

-- Location: LC_X11_Y4_N9
\cmp2|count[0]\ : maxv_lcell
-- Equation(s):
-- \cmp2|count\(0) = DFFEAS((\cmp2|Add0~75_combout\ & (((!\cmp2|Equal0~2_combout\) # (!\cmp2|Equal0~3\)) # (!\cmp2|Equal0~4\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|Equal0~4\,
	datab => \cmp2|Add0~75_combout\,
	datac => \cmp2|Equal0~3\,
	datad => \cmp2|Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|count\(0));

-- Location: LC_X10_Y4_N3
\cmp2|Add0~70\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~70_combout\ = (\cmp2|count\(1) $ ((\cmp2|Add0~77\)))
-- \cmp2|Add0~72\ = CARRY(((!\cmp2|Add0~77\) # (!\cmp2|count\(1))))
-- \cmp2|Add0~72COUT1_82\ = CARRY(((!\cmp2|Add0~77COUT1_81\) # (!\cmp2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(1),
	cin0 => \cmp2|Add0~77\,
	cin1 => \cmp2|Add0~77COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~70_combout\,
	cout0 => \cmp2|Add0~72\,
	cout1 => \cmp2|Add0~72COUT1_82\);

-- Location: LC_X10_Y4_N0
\cmp2|count[1]\ : maxv_lcell
-- Equation(s):
-- \cmp2|count\(1) = DFFEAS((((\cmp2|Add0~70_combout\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \cmp2|Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|count\(1));

-- Location: LC_X10_Y4_N4
\cmp2|Add0~65\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~65_combout\ = (\cmp2|count\(2) $ ((!\cmp2|Add0~72\)))
-- \cmp2|Add0~67\ = CARRY(((\cmp2|count\(2) & !\cmp2|Add0~72COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(2),
	cin0 => \cmp2|Add0~72\,
	cin1 => \cmp2|Add0~72COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~65_combout\,
	cout => \cmp2|Add0~67\);

-- Location: LC_X11_Y4_N8
\cmp2|count[2]\ : maxv_lcell
-- Equation(s):
-- \cmp2|Equal0~1\ = (\cmp2|count\(4) & (!\cmp2|count\(0) & (!B1_count[2] & !\cmp2|count\(1))))
-- \cmp2|count\(2) = DFFEAS(\cmp2|Equal0~1\, GLOBAL(\clock~combout\), VCC, , , \cmp2|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|count\(4),
	datab => \cmp2|count\(0),
	datac => \cmp2|Add0~65_combout\,
	datad => \cmp2|count\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Equal0~1\,
	regout => \cmp2|count\(2));

-- Location: LC_X10_Y4_N5
\cmp2|Add0~0\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~0_combout\ = (\cmp2|count\(3) $ ((\cmp2|Add0~67\)))
-- \cmp2|Add0~2\ = CARRY(((!\cmp2|Add0~67\) # (!\cmp2|count\(3))))
-- \cmp2|Add0~2COUT1_83\ = CARRY(((!\cmp2|Add0~67\) # (!\cmp2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(3),
	cin => \cmp2|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~0_combout\,
	cout0 => \cmp2|Add0~2\,
	cout1 => \cmp2|Add0~2COUT1_83\);

-- Location: LC_X9_Y4_N6
\cmp2|count[3]\ : maxv_lcell
-- Equation(s):
-- \cmp2|LessThan0~0\ = ((!\cmp2|count\(6) & (!B1_count[3] & !\cmp2|count\(4)))) # (!\cmp2|count\(7))
-- \cmp2|count\(3) = DFFEAS(\cmp2|LessThan0~0\, GLOBAL(\clock~combout\), VCC, , , \cmp2|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3337",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|count\(6),
	datab => \cmp2|count\(7),
	datac => \cmp2|Add0~0_combout\,
	datad => \cmp2|count\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|LessThan0~0\,
	regout => \cmp2|count\(3));

-- Location: LC_X12_Y4_N8
\cmp2|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \cmp2|Equal0~2_combout\ = ((\cmp2|Equal0~0\ & (\cmp2|Equal0~1\ & !\cmp2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|Equal0~0\,
	datac => \cmp2|Equal0~1\,
	datad => \cmp2|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Equal0~2_combout\);

-- Location: LC_X12_Y4_N2
\cmp2|count[8]\ : maxv_lcell
-- Equation(s):
-- \cmp2|count\(8) = DFFEAS((\cmp2|Add0~25_combout\ & (((!\cmp2|Equal0~4\) # (!\cmp2|Equal0~3\)) # (!\cmp2|Equal0~2_combout\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|Equal0~2_combout\,
	datab => \cmp2|Equal0~3\,
	datac => \cmp2|Equal0~4\,
	datad => \cmp2|Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|count\(8));

-- Location: LC_X10_Y4_N6
\cmp2|Add0~5\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~5_combout\ = (\cmp2|count\(4) $ ((!(!\cmp2|Add0~67\ & \cmp2|Add0~2\) # (\cmp2|Add0~67\ & \cmp2|Add0~2COUT1_83\))))
-- \cmp2|Add0~7\ = CARRY(((\cmp2|count\(4) & !\cmp2|Add0~2\)))
-- \cmp2|Add0~7COUT1_84\ = CARRY(((\cmp2|count\(4) & !\cmp2|Add0~2COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(4),
	cin => \cmp2|Add0~67\,
	cin0 => \cmp2|Add0~2\,
	cin1 => \cmp2|Add0~2COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~5_combout\,
	cout0 => \cmp2|Add0~7\,
	cout1 => \cmp2|Add0~7COUT1_84\);

-- Location: LC_X10_Y4_N7
\cmp2|Add0~20\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~20_combout\ = (\cmp2|count\(5) $ (((!\cmp2|Add0~67\ & \cmp2|Add0~7\) # (\cmp2|Add0~67\ & \cmp2|Add0~7COUT1_84\))))
-- \cmp2|Add0~22\ = CARRY(((!\cmp2|Add0~7\) # (!\cmp2|count\(5))))
-- \cmp2|Add0~22COUT1_85\ = CARRY(((!\cmp2|Add0~7COUT1_84\) # (!\cmp2|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(5),
	cin => \cmp2|Add0~67\,
	cin0 => \cmp2|Add0~7\,
	cin1 => \cmp2|Add0~7COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~20_combout\,
	cout0 => \cmp2|Add0~22\,
	cout1 => \cmp2|Add0~22COUT1_85\);

-- Location: LC_X9_Y4_N7
\cmp2|count[5]\ : maxv_lcell
-- Equation(s):
-- \cmp2|LessThan0~1\ = ((\cmp2|LessThan0~0\) # ((!\cmp2|count\(6) & !B1_count[5]))) # (!\cmp2|count\(8))
-- \cmp2|count\(5) = DFFEAS(\cmp2|LessThan0~1\, GLOBAL(\clock~combout\), VCC, , , \cmp2|Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff37",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|count\(6),
	datab => \cmp2|count\(8),
	datac => \cmp2|Add0~20_combout\,
	datad => \cmp2|LessThan0~0\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|LessThan0~1\,
	regout => \cmp2|count\(5));

-- Location: LC_X10_Y4_N8
\cmp2|Add0~10\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~10_combout\ = (\cmp2|count\(6) $ ((!(!\cmp2|Add0~67\ & \cmp2|Add0~22\) # (\cmp2|Add0~67\ & \cmp2|Add0~22COUT1_85\))))
-- \cmp2|Add0~12\ = CARRY(((\cmp2|count\(6) & !\cmp2|Add0~22\)))
-- \cmp2|Add0~12COUT1_86\ = CARRY(((\cmp2|count\(6) & !\cmp2|Add0~22COUT1_85\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(6),
	cin => \cmp2|Add0~67\,
	cin0 => \cmp2|Add0~22\,
	cin1 => \cmp2|Add0~22COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~10_combout\,
	cout0 => \cmp2|Add0~12\,
	cout1 => \cmp2|Add0~12COUT1_86\);

-- Location: LC_X10_Y4_N9
\cmp2|Add0~15\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~15_combout\ = (\cmp2|count\(7) $ (((!\cmp2|Add0~67\ & \cmp2|Add0~12\) # (\cmp2|Add0~67\ & \cmp2|Add0~12COUT1_86\))))
-- \cmp2|Add0~17\ = CARRY(((!\cmp2|Add0~12COUT1_86\) # (!\cmp2|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(7),
	cin => \cmp2|Add0~67\,
	cin0 => \cmp2|Add0~12\,
	cin1 => \cmp2|Add0~12COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~15_combout\,
	cout => \cmp2|Add0~17\);

-- Location: LC_X9_Y4_N2
\cmp2|count[7]\ : maxv_lcell
-- Equation(s):
-- \cmp2|Equal0~3\ = (\cmp2|count\(6) & (!\cmp2|count\(5) & (!B1_count[7] & \cmp2|count\(8))))
-- \cmp2|count\(7) = DFFEAS(\cmp2|Equal0~3\, GLOBAL(\clock~combout\), VCC, , , \cmp2|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|count\(6),
	datab => \cmp2|count\(5),
	datac => \cmp2|Add0~15_combout\,
	datad => \cmp2|count\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Equal0~3\,
	regout => \cmp2|count\(7));

-- Location: LC_X12_Y4_N4
\cmp2|count[9]\ : maxv_lcell
-- Equation(s):
-- \cmp2|count\(9) = DFFEAS((\cmp2|Add0~50_combout\ & (((!\cmp2|Equal0~2_combout\) # (!\cmp2|Equal0~4\)) # (!\cmp2|Equal0~3\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|Equal0~3\,
	datab => \cmp2|Equal0~4\,
	datac => \cmp2|Add0~50_combout\,
	datad => \cmp2|Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|count\(9));

-- Location: LC_X11_Y4_N5
\cmp2|Add0~55\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~55_combout\ = (\cmp2|count\(13) $ ((\cmp2|Add0~42\)))
-- \cmp2|Add0~57\ = CARRY(((!\cmp2|Add0~42\) # (!\cmp2|count\(13))))
-- \cmp2|Add0~57COUT1_91\ = CARRY(((!\cmp2|Add0~42\) # (!\cmp2|count\(13))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|count\(13),
	cin => \cmp2|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~55_combout\,
	cout0 => \cmp2|Add0~57\,
	cout1 => \cmp2|Add0~57COUT1_91\);

-- Location: LC_X12_Y4_N1
\cmp2|count[13]\ : maxv_lcell
-- Equation(s):
-- \cmp2|Equal0~4\ = (\cmp2|count\(9) & (\cmp2|count\(15) & (!B1_count[13] & \cmp2|count\(14))))
-- \cmp2|count\(13) = DFFEAS(\cmp2|Equal0~4\, GLOBAL(\clock~combout\), VCC, , , \cmp2|Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|count\(9),
	datab => \cmp2|count\(15),
	datac => \cmp2|Add0~55_combout\,
	datad => \cmp2|count\(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Equal0~4\,
	regout => \cmp2|count\(13));

-- Location: LC_X11_Y4_N6
\cmp2|Add0~60\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~60_combout\ = \cmp2|count\(14) $ ((((!(!\cmp2|Add0~42\ & \cmp2|Add0~57\) # (\cmp2|Add0~42\ & \cmp2|Add0~57COUT1_91\)))))
-- \cmp2|Add0~62\ = CARRY((\cmp2|count\(14) & ((!\cmp2|Add0~57\))))
-- \cmp2|Add0~62COUT1_92\ = CARRY((\cmp2|count\(14) & ((!\cmp2|Add0~57COUT1_91\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|count\(14),
	cin => \cmp2|Add0~42\,
	cin0 => \cmp2|Add0~57\,
	cin1 => \cmp2|Add0~57COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~60_combout\,
	cout0 => \cmp2|Add0~62\,
	cout1 => \cmp2|Add0~62COUT1_92\);

-- Location: LC_X11_Y4_N7
\cmp2|Add0~45\ : maxv_lcell
-- Equation(s):
-- \cmp2|Add0~45_combout\ = (((!\cmp2|Add0~42\ & \cmp2|Add0~62\) # (\cmp2|Add0~42\ & \cmp2|Add0~62COUT1_92\) $ (\cmp2|count\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \cmp2|count\(15),
	cin => \cmp2|Add0~42\,
	cin0 => \cmp2|Add0~62\,
	cin1 => \cmp2|Add0~62COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|Add0~45_combout\);

-- Location: LC_X12_Y4_N7
\cmp2|count[15]\ : maxv_lcell
-- Equation(s):
-- \cmp2|count\(15) = DFFEAS((\cmp2|Add0~45_combout\ & (((!\cmp2|Equal0~3\) # (!\cmp2|Equal0~4\)) # (!\cmp2|Equal0~2_combout\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|Equal0~2_combout\,
	datab => \cmp2|Equal0~4\,
	datac => \cmp2|Equal0~3\,
	datad => \cmp2|Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|count\(15));

-- Location: LC_X10_Y4_N1
\cmp2|count[4]\ : maxv_lcell
-- Equation(s):
-- \cmp2|count\(4) = DFFEAS((\cmp2|Add0~5_combout\ & (((!\cmp2|Equal0~2_combout\) # (!\cmp2|Equal0~3\)) # (!\cmp2|Equal0~4\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|Equal0~4\,
	datab => \cmp2|Equal0~3\,
	datac => \cmp2|Add0~5_combout\,
	datad => \cmp2|Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|count\(4));

-- Location: LC_X9_Y4_N4
\cmp2|count[6]\ : maxv_lcell
-- Equation(s):
-- \cmp2|count\(6) = DFFEAS((\cmp2|Add0~10_combout\ & (((!\cmp2|Equal0~2_combout\) # (!\cmp2|Equal0~4\)) # (!\cmp2|Equal0~3\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|Equal0~3\,
	datab => \cmp2|Add0~10_combout\,
	datac => \cmp2|Equal0~4\,
	datad => \cmp2|Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|count\(6));

-- Location: LC_X12_Y4_N3
\cmp2|count[14]\ : maxv_lcell
-- Equation(s):
-- \cmp2|count\(14) = DFFEAS((\cmp2|Add0~60_combout\ & (((!\cmp2|Equal0~2_combout\) # (!\cmp2|Equal0~4\)) # (!\cmp2|Equal0~3\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|Equal0~3\,
	datab => \cmp2|Equal0~4\,
	datac => \cmp2|Add0~60_combout\,
	datad => \cmp2|Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|count\(14));

-- Location: LC_X9_Y4_N8
\cmp2|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \cmp2|LessThan0~2_combout\ = (\cmp2|Equal0~0\ & (!\cmp2|count\(15) & (!\cmp2|count\(9) & \cmp2|LessThan0~1\)))

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
	dataa => \cmp2|Equal0~0\,
	datab => \cmp2|count\(15),
	datac => \cmp2|count\(9),
	datad => \cmp2|LessThan0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp2|LessThan0~2_combout\);

-- Location: LC_X9_Y4_N9
\cmp2|outputSignal\ : maxv_lcell
-- Equation(s):
-- \cmp2|outputSignal~regout\ = DFFEAS((!\cmp2|LessThan0~2_combout\ & ((\cmp2|count\(15)) # ((\cmp2|count\(14) & \cmp2|count\(13))))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp2|count\(14),
	datab => \cmp2|count\(13),
	datac => \cmp2|count\(15),
	datad => \cmp2|LessThan0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|outputSignal~regout\);

-- Location: LC_X12_Y3_N4
\cmp2|outclk\ : maxv_lcell
-- Equation(s):
-- \cmp2|outclk~regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , , \cmp2|outputSignal~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \cmp2|outputSignal~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp2|outclk~regout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X6_Y7_N5
\cmp4|count[0]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(0) = DFFEAS((!\cmp4|count\(0)), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )
-- \cmp4|count[0]~19\ = CARRY((\cmp4|count\(0)))
-- \cmp4|count[0]~19COUT1_23\ = CARRY((\cmp4|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp4|count\(0),
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(0),
	cout0 => \cmp4|count[0]~19\,
	cout1 => \cmp4|count[0]~19COUT1_23\);

-- Location: LC_X6_Y7_N6
\cmp4|count[1]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(1) = DFFEAS(\cmp4|count\(1) $ ((((\cmp4|count[0]~19\)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )
-- \cmp4|count[1]~21\ = CARRY(((!\cmp4|count[0]~19\)) # (!\cmp4|count\(1)))
-- \cmp4|count[1]~21COUT1_24\ = CARRY(((!\cmp4|count[0]~19COUT1_23\)) # (!\cmp4|count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp4|count\(1),
	aclr => GND,
	sclr => \reset~combout\,
	cin0 => \cmp4|count[0]~19\,
	cin1 => \cmp4|count[0]~19COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(1),
	cout0 => \cmp4|count[1]~21\,
	cout1 => \cmp4|count[1]~21COUT1_24\);

-- Location: LC_X6_Y7_N7
\cmp4|count[2]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(2) = DFFEAS((\cmp4|count\(2) $ ((!\cmp4|count[1]~21\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )
-- \cmp4|count[2]~3\ = CARRY(((\cmp4|count\(2) & !\cmp4|count[1]~21\)))
-- \cmp4|count[2]~3COUT1_25\ = CARRY(((\cmp4|count\(2) & !\cmp4|count[1]~21COUT1_24\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => \cmp4|count\(2),
	aclr => GND,
	sclr => \reset~combout\,
	cin0 => \cmp4|count[1]~21\,
	cin1 => \cmp4|count[1]~21COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(2),
	cout0 => \cmp4|count[2]~3\,
	cout1 => \cmp4|count[2]~3COUT1_25\);

-- Location: LC_X6_Y7_N8
\cmp4|count[3]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(3) = DFFEAS(\cmp4|count\(3) $ ((((\cmp4|count[2]~3\)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )
-- \cmp4|count[3]~1\ = CARRY(((!\cmp4|count[2]~3\)) # (!\cmp4|count\(3)))
-- \cmp4|count[3]~1COUT1_26\ = CARRY(((!\cmp4|count[2]~3COUT1_25\)) # (!\cmp4|count\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp4|count\(3),
	aclr => GND,
	sclr => \reset~combout\,
	cin0 => \cmp4|count[2]~3\,
	cin1 => \cmp4|count[2]~3COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(3),
	cout0 => \cmp4|count[3]~1\,
	cout1 => \cmp4|count[3]~1COUT1_26\);

-- Location: LC_X6_Y7_N9
\cmp4|count[4]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(4) = DFFEAS((\cmp4|count\(4) $ ((!\cmp4|count[3]~1\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )
-- \cmp4|count[4]~7\ = CARRY(((\cmp4|count\(4) & !\cmp4|count[3]~1COUT1_26\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => \cmp4|count\(4),
	aclr => GND,
	sclr => \reset~combout\,
	cin0 => \cmp4|count[3]~1\,
	cin1 => \cmp4|count[3]~1COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(4),
	cout => \cmp4|count[4]~7\);

-- Location: LC_X7_Y7_N0
\cmp4|count[5]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(5) = DFFEAS((\cmp4|count\(5) $ ((\cmp4|count[4]~7\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )
-- \cmp4|count[5]~5\ = CARRY(((!\cmp4|count[4]~7\) # (!\cmp4|count\(5))))
-- \cmp4|count[5]~5COUT1_27\ = CARRY(((!\cmp4|count[4]~7\) # (!\cmp4|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => \cmp4|count\(5),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \cmp4|count[4]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(5),
	cout0 => \cmp4|count[5]~5\,
	cout1 => \cmp4|count[5]~5COUT1_27\);

-- Location: LC_X7_Y7_N1
\cmp4|count[6]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(6) = DFFEAS((\cmp4|count\(6) $ ((!(!\cmp4|count[4]~7\ & \cmp4|count[5]~5\) # (\cmp4|count[4]~7\ & \cmp4|count[5]~5COUT1_27\)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )
-- \cmp4|count[6]~11\ = CARRY(((\cmp4|count\(6) & !\cmp4|count[5]~5\)))
-- \cmp4|count[6]~11COUT1_28\ = CARRY(((\cmp4|count\(6) & !\cmp4|count[5]~5COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => \cmp4|count\(6),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \cmp4|count[4]~7\,
	cin0 => \cmp4|count[5]~5\,
	cin1 => \cmp4|count[5]~5COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(6),
	cout0 => \cmp4|count[6]~11\,
	cout1 => \cmp4|count[6]~11COUT1_28\);

-- Location: LC_X7_Y7_N2
\cmp4|count[7]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(7) = DFFEAS((\cmp4|count\(7) $ (((!\cmp4|count[4]~7\ & \cmp4|count[6]~11\) # (\cmp4|count[4]~7\ & \cmp4|count[6]~11COUT1_28\)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )
-- \cmp4|count[7]~9\ = CARRY(((!\cmp4|count[6]~11\) # (!\cmp4|count\(7))))
-- \cmp4|count[7]~9COUT1_29\ = CARRY(((!\cmp4|count[6]~11COUT1_28\) # (!\cmp4|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => \cmp4|count\(7),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \cmp4|count[4]~7\,
	cin0 => \cmp4|count[6]~11\,
	cin1 => \cmp4|count[6]~11COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(7),
	cout0 => \cmp4|count[7]~9\,
	cout1 => \cmp4|count[7]~9COUT1_29\);

-- Location: LC_X7_Y7_N3
\cmp4|count[8]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(8) = DFFEAS(\cmp4|count\(8) $ ((((!(!\cmp4|count[4]~7\ & \cmp4|count[7]~9\) # (\cmp4|count[4]~7\ & \cmp4|count[7]~9COUT1_29\))))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )
-- \cmp4|count[8]~15\ = CARRY((\cmp4|count\(8) & ((!\cmp4|count[7]~9\))))
-- \cmp4|count[8]~15COUT1_30\ = CARRY((\cmp4|count\(8) & ((!\cmp4|count[7]~9COUT1_29\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp4|count\(8),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \cmp4|count[4]~7\,
	cin0 => \cmp4|count[7]~9\,
	cin1 => \cmp4|count[7]~9COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(8),
	cout0 => \cmp4|count[8]~15\,
	cout1 => \cmp4|count[8]~15COUT1_30\);

-- Location: LC_X7_Y7_N4
\cmp4|count[9]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(9) = DFFEAS(\cmp4|count\(9) $ (((((!\cmp4|count[4]~7\ & \cmp4|count[8]~15\) # (\cmp4|count[4]~7\ & \cmp4|count[8]~15COUT1_30\))))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )
-- \cmp4|count[9]~13\ = CARRY(((!\cmp4|count[8]~15COUT1_30\)) # (!\cmp4|count\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp4|count\(9),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \cmp4|count[4]~7\,
	cin0 => \cmp4|count[8]~15\,
	cin1 => \cmp4|count[8]~15COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(9),
	cout => \cmp4|count[9]~13\);

-- Location: LC_X7_Y7_N5
\cmp4|count[10]\ : maxv_lcell
-- Equation(s):
-- \cmp4|count\(10) = DFFEAS(\cmp4|count\(10) $ ((((!\cmp4|count[9]~13\)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp4|count\(10),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \cmp4|count[9]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|count\(10));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btnClick~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_btnClick,
	combout => \btnClick~combout\);

-- Location: LC_X7_Y5_N5
\cmp3|Add0~25\ : maxv_lcell
-- Equation(s):
-- \cmp3|Add0~25_combout\ = \cmp3|count\(7) $ ((((!\cmp3|Add0~22\))))
-- \cmp3|Add0~27\ = CARRY((\cmp3|count\(7)) # ((!\cmp3|Add0~22\)))
-- \cmp3|Add0~27COUT1_50\ = CARRY((\cmp3|count\(7)) # ((!\cmp3|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5af",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|count\(7),
	cin => \cmp3|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Add0~25_combout\,
	cout0 => \cmp3|Add0~27\,
	cout1 => \cmp3|Add0~27COUT1_50\);

-- Location: LC_X8_Y5_N3
\cmp3|count[7]\ : maxv_lcell
-- Equation(s):
-- \cmp3|count\(7) = DFFEAS((!\cmp3|Add0~25_combout\ & (((!\cmp3|Equal0~1_combout\) # (!\cmp3|Equal0~0_combout\)) # (!\cmp3|count\(10)))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp3|count\(10),
	datab => \cmp3|Equal0~0_combout\,
	datac => \cmp3|Equal0~1_combout\,
	datad => \cmp3|Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|count\(7));

-- Location: LC_X7_Y5_N6
\cmp3|Add0~30\ : maxv_lcell
-- Equation(s):
-- \cmp3|Add0~30_combout\ = \cmp3|count\(8) $ (((((!\cmp3|Add0~22\ & \cmp3|Add0~27\) # (\cmp3|Add0~22\ & \cmp3|Add0~27COUT1_50\)))))
-- \cmp3|Add0~32\ = CARRY((!\cmp3|count\(8) & ((!\cmp3|Add0~27\))))
-- \cmp3|Add0~32COUT1_51\ = CARRY((!\cmp3|count\(8) & ((!\cmp3|Add0~27COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|count\(8),
	cin => \cmp3|Add0~22\,
	cin0 => \cmp3|Add0~27\,
	cin1 => \cmp3|Add0~27COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Add0~30_combout\,
	cout0 => \cmp3|Add0~32\,
	cout1 => \cmp3|Add0~32COUT1_51\);

-- Location: LC_X8_Y5_N7
\cmp3|count[8]\ : maxv_lcell
-- Equation(s):
-- \cmp3|count\(8) = DFFEAS((!\cmp3|Add0~30_combout\ & (((!\cmp3|Equal0~0_combout\) # (!\cmp3|Equal0~1_combout\)) # (!\cmp3|count\(10)))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "070f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp3|count\(10),
	datab => \cmp3|Equal0~1_combout\,
	datac => \cmp3|Add0~30_combout\,
	datad => \cmp3|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|count\(8));

-- Location: LC_X7_Y5_N7
\cmp3|Add0~35\ : maxv_lcell
-- Equation(s):
-- \cmp3|Add0~35_combout\ = \cmp3|count\(9) $ ((((!(!\cmp3|Add0~22\ & \cmp3|Add0~32\) # (\cmp3|Add0~22\ & \cmp3|Add0~32COUT1_51\)))))
-- \cmp3|Add0~37\ = CARRY((\cmp3|count\(9)) # ((!\cmp3|Add0~32\)))
-- \cmp3|Add0~37COUT1_52\ = CARRY((\cmp3|count\(9)) # ((!\cmp3|Add0~32COUT1_51\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5af",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|count\(9),
	cin => \cmp3|Add0~22\,
	cin0 => \cmp3|Add0~32\,
	cin1 => \cmp3|Add0~32COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Add0~35_combout\,
	cout0 => \cmp3|Add0~37\,
	cout1 => \cmp3|Add0~37COUT1_52\);

-- Location: LC_X8_Y5_N0
\cmp3|count[9]\ : maxv_lcell
-- Equation(s):
-- \cmp3|count\(9) = DFFEAS((!\cmp3|Add0~35_combout\ & (((!\cmp3|Equal0~1_combout\) # (!\cmp3|Equal0~0_combout\)) # (!\cmp3|count\(10)))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp3|count\(10),
	datab => \cmp3|Equal0~0_combout\,
	datac => \cmp3|Equal0~1_combout\,
	datad => \cmp3|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|count\(9));

-- Location: LC_X8_Y5_N6
\cmp3|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \cmp3|Equal0~1_combout\ = (!\cmp3|count\(7) & (!\cmp3|count\(8) & (!\cmp3|count\(9) & !\cmp3|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|count\(7),
	datab => \cmp3|count\(8),
	datac => \cmp3|count\(9),
	datad => \cmp3|count\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Equal0~1_combout\);

-- Location: LC_X7_Y5_N0
\cmp3|Add0~0\ : maxv_lcell
-- Equation(s):
-- \cmp3|Add0~0_combout\ = ((!\cmp3|count\(2)))
-- \cmp3|Add0~2\ = CARRY(((\cmp3|count\(2))))
-- \cmp3|Add0~2COUT1_46\ = CARRY(((\cmp3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp3|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Add0~0_combout\,
	cout0 => \cmp3|Add0~2\,
	cout1 => \cmp3|Add0~2COUT1_46\);

-- Location: LC_X7_Y5_N9
\cmp3|count[2]\ : maxv_lcell
-- Equation(s):
-- \cmp3|count\(2) = DFFEAS((\cmp3|Add0~0_combout\ & (((!\cmp3|Equal0~0_combout\) # (!\cmp3|count\(10))) # (!\cmp3|Equal0~1_combout\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp3|Equal0~1_combout\,
	datab => \cmp3|count\(10),
	datac => \cmp3|Add0~0_combout\,
	datad => \cmp3|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|count\(2));

-- Location: LC_X7_Y5_N1
\cmp3|Add0~5\ : maxv_lcell
-- Equation(s):
-- \cmp3|Add0~5_combout\ = (\cmp3|count\(3) $ ((!\cmp3|Add0~2\)))
-- \cmp3|Add0~7\ = CARRY(((\cmp3|count\(3)) # (!\cmp3|Add0~2\)))
-- \cmp3|Add0~7COUT1_47\ = CARRY(((\cmp3|count\(3)) # (!\cmp3|Add0~2COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp3|count\(3),
	cin0 => \cmp3|Add0~2\,
	cin1 => \cmp3|Add0~2COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Add0~5_combout\,
	cout0 => \cmp3|Add0~7\,
	cout1 => \cmp3|Add0~7COUT1_47\);

-- Location: LC_X8_Y5_N2
\cmp3|count[3]\ : maxv_lcell
-- Equation(s):
-- \cmp3|count\(3) = DFFEAS((!\cmp3|Add0~5_combout\ & (((!\cmp3|Equal0~0_combout\) # (!\cmp3|Equal0~1_combout\)) # (!\cmp3|count\(10)))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "070f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp3|count\(10),
	datab => \cmp3|Equal0~1_combout\,
	datac => \cmp3|Add0~5_combout\,
	datad => \cmp3|Equal0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|count\(3));

-- Location: LC_X7_Y5_N2
\cmp3|Add0~10\ : maxv_lcell
-- Equation(s):
-- \cmp3|Add0~10_combout\ = (\cmp3|count\(4) $ ((!\cmp3|Add0~7\)))
-- \cmp3|Add0~12\ = CARRY(((\cmp3|count\(4) & !\cmp3|Add0~7\)))
-- \cmp3|Add0~12COUT1_48\ = CARRY(((\cmp3|count\(4) & !\cmp3|Add0~7COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp3|count\(4),
	cin0 => \cmp3|Add0~7\,
	cin1 => \cmp3|Add0~7COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Add0~10_combout\,
	cout0 => \cmp3|Add0~12\,
	cout1 => \cmp3|Add0~12COUT1_48\);

-- Location: LC_X8_Y5_N9
\cmp3|count[4]\ : maxv_lcell
-- Equation(s):
-- \cmp3|count\(4) = DFFEAS((\cmp3|Add0~10_combout\ & (((!\cmp3|Equal0~1_combout\) # (!\cmp3|Equal0~0_combout\)) # (!\cmp3|count\(10)))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp3|count\(10),
	datab => \cmp3|Equal0~0_combout\,
	datac => \cmp3|Equal0~1_combout\,
	datad => \cmp3|Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|count\(4));

-- Location: LC_X7_Y5_N3
\cmp3|Add0~15\ : maxv_lcell
-- Equation(s):
-- \cmp3|Add0~15_combout\ = (\cmp3|count\(5) $ ((\cmp3|Add0~12\)))
-- \cmp3|Add0~17\ = CARRY(((\cmp3|count\(5) & !\cmp3|Add0~12\)))
-- \cmp3|Add0~17COUT1_49\ = CARRY(((\cmp3|count\(5) & !\cmp3|Add0~12COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp3|count\(5),
	cin0 => \cmp3|Add0~12\,
	cin1 => \cmp3|Add0~12COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Add0~15_combout\,
	cout0 => \cmp3|Add0~17\,
	cout1 => \cmp3|Add0~17COUT1_49\);

-- Location: LC_X8_Y5_N5
\cmp3|count[5]\ : maxv_lcell
-- Equation(s):
-- \cmp3|count\(5) = DFFEAS((((!\cmp3|Add0~15_combout\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \cmp3|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|count\(5));

-- Location: LC_X8_Y5_N1
\cmp3|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \cmp3|Equal0~0_combout\ = (\cmp3|count\(5) & (\cmp3|count\(3) & (\cmp3|count\(4) & !\cmp3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|count\(5),
	datab => \cmp3|count\(3),
	datac => \cmp3|count\(4),
	datad => \cmp3|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Equal0~0_combout\);

-- Location: LC_X7_Y5_N4
\cmp3|Add0~20\ : maxv_lcell
-- Equation(s):
-- \cmp3|Add0~20_combout\ = (\cmp3|count\(6) $ ((!\cmp3|Add0~17\)))
-- \cmp3|Add0~22\ = CARRY(((!\cmp3|Add0~17COUT1_49\) # (!\cmp3|count\(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c33f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp3|count\(6),
	cin0 => \cmp3|Add0~17\,
	cin1 => \cmp3|Add0~17COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Add0~20_combout\,
	cout => \cmp3|Add0~22\);

-- Location: LC_X8_Y5_N4
\cmp3|count[6]\ : maxv_lcell
-- Equation(s):
-- \cmp3|count\(6) = DFFEAS((!\cmp3|Add0~20_combout\ & (((!\cmp3|Equal0~1_combout\) # (!\cmp3|Equal0~0_combout\)) # (!\cmp3|count\(10)))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp3|count\(10),
	datab => \cmp3|Equal0~0_combout\,
	datac => \cmp3|Equal0~1_combout\,
	datad => \cmp3|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|count\(6));

-- Location: LC_X7_Y5_N8
\cmp3|Add0~40\ : maxv_lcell
-- Equation(s):
-- \cmp3|Add0~40_combout\ = (((!\cmp3|Add0~22\ & \cmp3|Add0~37\) # (\cmp3|Add0~22\ & \cmp3|Add0~37COUT1_52\) $ (!\cmp3|count\(10))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \cmp3|count\(10),
	cin => \cmp3|Add0~22\,
	cin0 => \cmp3|Add0~37\,
	cin1 => \cmp3|Add0~37COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp3|Add0~40_combout\);

-- Location: LC_X8_Y5_N8
\cmp3|count[10]\ : maxv_lcell
-- Equation(s):
-- \cmp3|count\(10) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , , \cmp3|Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \cmp3|Add0~40_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|count\(10));

-- Location: LC_X8_Y7_N8
\cmp3|outval[10]\ : maxv_lcell
-- Equation(s):
-- \cmp4|light~6\ = (!\btnClick~combout\ & (!\cmp4|count\(0) & (\cmp4|count\(10) $ (!C1_outval[10]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0021",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp4|count\(10),
	datab => \btnClick~combout\,
	datac => \cmp3|count\(10),
	datad => \cmp4|count\(0),
	aclr => GND,
	sload => VCC,
	ena => \btnClick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp4|light~6\,
	regout => \cmp3|outval\(10));

-- Location: LC_X7_Y7_N8
\cmp4|light~0\ : maxv_lcell
-- Equation(s):
-- \cmp4|light~0_combout\ = (!\btnClick~combout\ & (((!\reset~combout\ & !\cmp4|light~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btnClick~combout\,
	datac => \reset~combout\,
	datad => \cmp4|light~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp4|light~0_combout\);

-- Location: LC_X8_Y7_N2
\cmp3|outval[3]\ : maxv_lcell
-- Equation(s):
-- \cmp3|outval\(3) = DFFEAS((((!\cmp3|count\(3)))), GLOBAL(\clock~combout\), VCC, , \btnClick~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \cmp3|count\(3),
	aclr => GND,
	ena => \btnClick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|outval\(3));

-- Location: LC_X8_Y7_N6
\cmp3|outval[2]\ : maxv_lcell
-- Equation(s):
-- \cmp4|light~1\ = (\cmp4|count\(3) & (\cmp3|outval\(3) & (\cmp4|count\(2) $ (!C1_outval[2])))) # (!\cmp4|count\(3) & (!\cmp3|outval\(3) & (\cmp4|count\(2) $ (!C1_outval[2]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp4|count\(3),
	datab => \cmp4|count\(2),
	datac => \cmp3|count\(2),
	datad => \cmp3|outval\(3),
	aclr => GND,
	sload => VCC,
	ena => \btnClick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp4|light~1\,
	regout => \cmp3|outval\(2));

-- Location: LC_X8_Y7_N0
\cmp3|outval[5]\ : maxv_lcell
-- Equation(s):
-- \cmp3|outval\(5) = DFFEAS((((!\cmp3|count\(5)))), GLOBAL(\clock~combout\), VCC, , \btnClick~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \cmp3|count\(5),
	aclr => GND,
	ena => \btnClick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|outval\(5));

-- Location: LC_X8_Y7_N1
\cmp3|outval[4]\ : maxv_lcell
-- Equation(s):
-- \cmp4|light~2\ = (\cmp4|count\(4) & (C1_outval[4] & (\cmp3|outval\(5) $ (!\cmp4|count\(5))))) # (!\cmp4|count\(4) & (!C1_outval[4] & (\cmp3|outval\(5) $ (!\cmp4|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \cmp4|count\(4),
	datab => \cmp3|outval\(5),
	datac => \cmp3|count\(4),
	datad => \cmp4|count\(5),
	aclr => GND,
	sload => VCC,
	ena => \btnClick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp4|light~2\,
	regout => \cmp3|outval\(4));

-- Location: LC_X8_Y7_N7
\cmp3|outval[7]\ : maxv_lcell
-- Equation(s):
-- \cmp3|outval\(7) = DFFEAS((((!\cmp3|count\(7)))), GLOBAL(\clock~combout\), VCC, , \btnClick~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \cmp3|count\(7),
	aclr => GND,
	ena => \btnClick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|outval\(7));

-- Location: LC_X8_Y7_N9
\cmp3|outval[6]\ : maxv_lcell
-- Equation(s):
-- \cmp3|outval\(6) = DFFEAS((((!\cmp3|count\(6)))), GLOBAL(\clock~combout\), VCC, , \btnClick~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \cmp3|count\(6),
	aclr => GND,
	ena => \btnClick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|outval\(6));

-- Location: LC_X8_Y7_N5
\cmp4|light~3\ : maxv_lcell
-- Equation(s):
-- \cmp4|light~3_combout\ = (\cmp4|count\(6) & (\cmp3|outval\(6) & (\cmp4|count\(7) $ (!\cmp3|outval\(7))))) # (!\cmp4|count\(6) & (!\cmp3|outval\(6) & (\cmp4|count\(7) $ (!\cmp3|outval\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|count\(6),
	datab => \cmp4|count\(7),
	datac => \cmp3|outval\(7),
	datad => \cmp3|outval\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp4|light~3_combout\);

-- Location: LC_X7_Y7_N6
\cmp3|outval[8]\ : maxv_lcell
-- Equation(s):
-- \cmp3|outval\(8) = DFFEAS((((!\cmp3|count\(8)))), GLOBAL(\clock~combout\), VCC, , \btnClick~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \cmp3|count\(8),
	aclr => GND,
	ena => \btnClick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|outval\(8));

-- Location: LC_X7_Y7_N9
\cmp3|outval[9]\ : maxv_lcell
-- Equation(s):
-- \cmp3|outval\(9) = DFFEAS((((!\cmp3|count\(9)))), GLOBAL(\clock~combout\), VCC, , \btnClick~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \cmp3|count\(9),
	aclr => GND,
	ena => \btnClick~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp3|outval\(9));

-- Location: LC_X7_Y7_N7
\cmp4|light~4\ : maxv_lcell
-- Equation(s):
-- \cmp4|light~4_combout\ = (\cmp4|count\(8) & (\cmp3|outval\(8) & (\cmp4|count\(9) $ (!\cmp3|outval\(9))))) # (!\cmp4|count\(8) & (!\cmp3|outval\(8) & (\cmp4|count\(9) $ (!\cmp3|outval\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|count\(8),
	datab => \cmp4|count\(9),
	datac => \cmp3|outval\(8),
	datad => \cmp3|outval\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp4|light~4_combout\);

-- Location: LC_X8_Y7_N3
\cmp4|light~5\ : maxv_lcell
-- Equation(s):
-- \cmp4|light~5_combout\ = (\cmp4|light~1\ & (\cmp4|light~2\ & (\cmp4|light~3_combout\ & \cmp4|light~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|light~1\,
	datab => \cmp4|light~2\,
	datac => \cmp4|light~3_combout\,
	datad => \cmp4|light~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp4|light~5_combout\);

-- Location: LC_X8_Y7_N4
\cmp4|light\ : maxv_lcell
-- Equation(s):
-- \cmp4|light~regout\ = DFFEAS((!\cmp4|light~0_combout\ & (((\cmp4|count\(1)) # (!\cmp4|light~5_combout\)) # (!\cmp4|light~6\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp4|light~6\,
	datab => \cmp4|count\(1),
	datac => \cmp4|light~0_combout\,
	datad => \cmp4|light~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|light~regout\);

-- Location: LC_X12_Y3_N2
\cmp4|lightUp\ : maxv_lcell
-- Equation(s):
-- \cmp4|lightUp~regout\ = DFFEAS((((!\cmp4|light~regout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \cmp4|light~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp4|lightUp~regout\);

-- Location: LC_X13_Y4_N2
\cmp7|countTimes[0]\ : maxv_lcell
-- Equation(s):
-- \cmp7|countTimes\(0) = DFFEAS((\cmp7|countTimes\(3)) # (((!\cmp7|countTimes\(0)))), GLOBAL(\cmp4|lightUp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp4|lightUp~regout\,
	dataa => \cmp7|countTimes\(3),
	datad => \cmp7|countTimes\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp7|countTimes\(0));

-- Location: LC_X13_Y4_N9
\cmp7|countTimes[1]\ : maxv_lcell
-- Equation(s):
-- \cmp7|countTimes\(1) = DFFEAS(((!\cmp7|countTimes\(3) & (\cmp7|countTimes\(0) $ (\cmp7|countTimes\(1))))), GLOBAL(\cmp4|lightUp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp4|lightUp~regout\,
	datab => \cmp7|countTimes\(0),
	datac => \cmp7|countTimes\(1),
	datad => \cmp7|countTimes\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp7|countTimes\(1));

-- Location: LC_X13_Y4_N6
\cmp7|countTimes[2]\ : maxv_lcell
-- Equation(s):
-- \cmp7|countTimes\(2) = DFFEAS((!\cmp7|countTimes\(3) & (\cmp7|countTimes\(2) $ (((\cmp7|countTimes\(0) & \cmp7|countTimes\(1)))))), GLOBAL(\cmp4|lightUp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "006a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp4|lightUp~regout\,
	dataa => \cmp7|countTimes\(2),
	datab => \cmp7|countTimes\(0),
	datac => \cmp7|countTimes\(1),
	datad => \cmp7|countTimes\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp7|countTimes\(2));

-- Location: LC_X13_Y4_N8
\cmp7|countTimes[3]\ : maxv_lcell
-- Equation(s):
-- \cmp7|countTimes\(3) = DFFEAS((\cmp7|countTimes\(3)) # ((\cmp7|countTimes\(2) & (\cmp7|countTimes\(0) & \cmp7|countTimes\(1)))), GLOBAL(\cmp4|lightUp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp4|lightUp~regout\,
	dataa => \cmp7|countTimes\(2),
	datab => \cmp7|countTimes\(0),
	datac => \cmp7|countTimes\(1),
	datad => \cmp7|countTimes\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp7|countTimes\(3));

-- Location: LC_X13_Y4_N4
\cmp7|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \cmp7|LessThan1~0_combout\ = ((!\cmp7|countTimes\(1) & (!\cmp7|countTimes\(2) & !\cmp7|countTimes\(0)))) # (!\cmp7|countTimes\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp7|countTimes\(3),
	datab => \cmp7|countTimes\(1),
	datac => \cmp7|countTimes\(2),
	datad => \cmp7|countTimes\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp7|LessThan1~0_combout\);

-- Location: LC_X13_Y4_N5
\cmp7|comp\ : maxv_lcell
-- Equation(s):
-- \cmp7|comp~regout\ = DFFEAS((((\cmp7|comp~regout\) # (!\cmp7|LessThan1~0_combout\))), GLOBAL(\cmp4|lightUp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp4|lightUp~regout\,
	datac => \cmp7|comp~regout\,
	datad => \cmp7|LessThan1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp7|comp~regout\);

-- Location: LC_X12_Y3_N5
\ledLight~0\ : maxv_lcell
-- Equation(s):
-- \ledLight~0_combout\ = ((\cmp4|lightUp~regout\ & ((!\cmp7|comp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp4|lightUp~regout\,
	datad => \cmp7|comp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ledLight~0_combout\);

-- Location: LC_X11_Y6_N5
\cmp8|count_cmd[0]\ : maxv_lcell
-- Equation(s):
-- \cmp8|count_cmd\(0) = DFFEAS(((\cmp8|count_cmd\(0) $ (\cmp8|state.S2~regout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \cmp8|count_cmd\(0),
	datad => \cmp8|state.S2~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|count_cmd\(0));

-- Location: LC_X11_Y6_N2
\cmp8|count_cmd[1]\ : maxv_lcell
-- Equation(s):
-- \cmp8|count_cmd\(1) = DFFEAS((\cmp8|count_cmd\(1) $ ((\cmp8|count_cmd\(0)))), GLOBAL(\cmp2|outclk~regout\), VCC, , \cmp8|state~31_combout\, , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => \cmp8|count_cmd\(1),
	datac => \cmp8|count_cmd\(0),
	aclr => GND,
	sclr => \reset~combout\,
	ena => \cmp8|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|count_cmd\(1));

-- Location: LC_X11_Y6_N1
\cmp8|count_cmd[2]\ : maxv_lcell
-- Equation(s):
-- \cmp8|count_cmd\(2) = DFFEAS((\cmp8|count_cmd\(2) $ (((\cmp8|count_cmd\(1) & \cmp8|count_cmd\(0))))), GLOBAL(\cmp2|outclk~regout\), VCC, , \cmp8|state~31_combout\, , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => \cmp8|count_cmd\(1),
	datac => \cmp8|count_cmd\(0),
	datad => \cmp8|count_cmd\(2),
	aclr => GND,
	sclr => \reset~combout\,
	ena => \cmp8|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|count_cmd\(2));

-- Location: LC_X11_Y6_N7
\cmp8|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \cmp8|LessThan0~0_combout\ = (((!\cmp8|count_cmd\(1) & !\cmp8|count_cmd\(0))) # (!\cmp8|count_cmd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp8|count_cmd\(1),
	datac => \cmp8|count_cmd\(0),
	datad => \cmp8|count_cmd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|LessThan0~0_combout\);

-- Location: LC_X11_Y6_N0
\cmp8|state.S1\ : maxv_lcell
-- Equation(s):
-- \cmp8|state.S1~regout\ = DFFEAS(((!\reset~combout\ & (\cmp8|LessThan0~0_combout\ & !\cmp8|state.S0~regout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => \reset~combout\,
	datac => \cmp8|LessThan0~0_combout\,
	datad => \cmp8|state.S0~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|state.S1~regout\);

-- Location: LC_X12_Y7_N9
\cmp8|state.S2\ : maxv_lcell
-- Equation(s):
-- \cmp8|state.S2~regout\ = DFFEAS((\cmp8|state.S1~regout\ & (((!\reset~combout\)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|state.S1~regout\,
	datac => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|state.S2~regout\);

-- Location: LC_X11_Y6_N9
\cmp8|state~31\ : maxv_lcell
-- Equation(s):
-- \cmp8|state~31_combout\ = ((\reset~combout\) # ((\cmp8|state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \cmp8|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|state~31_combout\);

-- Location: LC_X11_Y6_N8
\cmp8|state.S0\ : maxv_lcell
-- Equation(s):
-- \cmp8|state.S0~regout\ = DFFEAS((((!\cmp8|state~31_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \cmp8|state~31_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|state.S0~regout\);

-- Location: LC_X12_Y6_N7
\cmp8|Selector1~0\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector1~0_combout\ = (!\cmp8|state.S0~regout\ & (\cmp8|count_cmd\(2) & ((\cmp8|count_cmd\(1)) # (\cmp8|count_cmd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|state.S0~regout\,
	datab => \cmp8|count_cmd\(1),
	datac => \cmp8|count_cmd\(2),
	datad => \cmp8|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector1~0_combout\);

-- Location: LC_X15_Y6_N5
\nst[0]\ : maxv_lcell
-- Equation(s):
-- nst(0) = DFFEAS((((!nst(0)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => nst(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nst(0));

-- Location: LC_X15_Y6_N6
\cmp8|state.S7\ : maxv_lcell
-- Equation(s):
-- \cmp8|state.S7~regout\ = DFFEAS(((nst(0) & (!\reset~combout\ & \cmp8|state.S6~regout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => nst(0),
	datac => \reset~combout\,
	datad => \cmp8|state.S6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|state.S7~regout\);

-- Location: LC_X15_Y6_N4
\cmp8|state.S8\ : maxv_lcell
-- Equation(s):
-- \cmp8|state.S8~regout\ = DFFEAS((\cmp8|state.S7~regout\ & (((!\reset~combout\)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|state.S7~regout\,
	datac => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|state.S8~regout\);

-- Location: LC_X14_Y6_N1
\cmp8|state.S9\ : maxv_lcell
-- Equation(s):
-- \cmp8|state.S9~regout\ = DFFEAS((((!\reset~combout\ & \cmp8|state.S8~regout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

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
	clk => \cmp2|outclk~regout\,
	datac => \reset~combout\,
	datad => \cmp8|state.S8~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|state.S9~regout\);

-- Location: LC_X13_Y6_N5
\cmp8|Selector10~3\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector10~3_combout\ = (((\cmp8|state.S6~regout\ & !nst(0))))

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
	datac => \cmp8|state.S6~regout\,
	datad => nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector10~3_combout\);

-- Location: LC_X12_Y6_N2
\cmp8|state.S3\ : maxv_lcell
-- Equation(s):
-- \cmp8|state.S3~regout\ = DFFEAS((!\reset~combout\ & ((\cmp8|Selector1~0_combout\) # ((\cmp8|state.S9~regout\) # (\cmp8|Selector10~3_combout\)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5554",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \reset~combout\,
	datab => \cmp8|Selector1~0_combout\,
	datac => \cmp8|state.S9~regout\,
	datad => \cmp8|Selector10~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|state.S3~regout\);

-- Location: LC_X12_Y7_N8
\cmp8|state.S4\ : maxv_lcell
-- Equation(s):
-- \cmp8|state.S4~regout\ = DFFEAS(((\cmp8|state.S3~regout\ & (!\reset~combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => \cmp8|state.S3~regout\,
	datac => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|state.S4~regout\);

-- Location: LC_X12_Y7_N2
\cmp8|state.S5\ : maxv_lcell
-- Equation(s):
-- \cmp8|state.S5~regout\ = DFFEAS((((!\reset~combout\ & \cmp8|state.S4~regout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

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
	clk => \cmp2|outclk~regout\,
	datac => \reset~combout\,
	datad => \cmp8|state.S4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|state.S5~regout\);

-- Location: LC_X13_Y6_N6
\cmp8|state.S6\ : maxv_lcell
-- Equation(s):
-- \cmp8|state.S6~regout\ = DFFEAS((((!\reset~combout\ & \cmp8|state.S5~regout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

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
	clk => \cmp2|outclk~regout\,
	datac => \reset~combout\,
	datad => \cmp8|state.S5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|state.S6~regout\);

-- Location: LC_X14_Y6_N3
\cmp8|Selector10~0\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector10~0_combout\ = (\cmp8|lcd_en~regout\ & ((\cmp8|state.S9~regout\) # ((\cmp8|state.S6~regout\ & !nst(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|state.S6~regout\,
	datab => \cmp8|lcd_en~regout\,
	datac => \cmp8|state.S9~regout\,
	datad => nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector10~0_combout\);

-- Location: LC_X12_Y7_N6
\cmp8|Selector10~1\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector10~1_combout\ = (\cmp8|state.S4~regout\) # (((\cmp8|state.S1~regout\) # (\cmp8|state.S7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|state.S4~regout\,
	datac => \cmp8|state.S1~regout\,
	datad => \cmp8|state.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector10~1_combout\);

-- Location: LC_X14_Y6_N2
\cmp8|lcd_en\ : maxv_lcell
-- Equation(s):
-- \cmp8|lcd_en~regout\ = DFFEAS((\cmp8|Selector10~0_combout\) # ((\cmp8|Selector10~1_combout\) # ((\cmp8|lcd_en~regout\ & \cmp8|Selector1~0_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|Selector10~0_combout\,
	datab => \cmp8|lcd_en~regout\,
	datac => \cmp8|Selector1~0_combout\,
	datad => \cmp8|Selector10~1_combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|lcd_en~regout\);

-- Location: LC_X14_Y6_N5
\cmp8|Selector8~0\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector8~0_combout\ = (\cmp8|state.S6~regout\ & ((\cmp8|lcd_rs~regout\) # ((nst(0))))) # (!\cmp8|state.S6~regout\ & (\cmp8|lcd_rs~regout\ & (\cmp8|state.S9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|state.S6~regout\,
	datab => \cmp8|lcd_rs~regout\,
	datac => \cmp8|state.S9~regout\,
	datad => nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector8~0_combout\);

-- Location: LC_X14_Y6_N9
\cmp8|Selector8~1\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector8~1_combout\ = ((!\cmp8|state.S8~regout\ & (!\cmp8|state.S7~regout\)))

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
	datab => \cmp8|state.S8~regout\,
	datac => \cmp8|state.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector8~1_combout\);

-- Location: LC_X14_Y6_N0
\cmp8|lcd_rs\ : maxv_lcell
-- Equation(s):
-- \cmp8|lcd_rs~regout\ = DFFEAS((\cmp8|Selector8~0_combout\) # (((\cmp8|Selector1~0_combout\ & \cmp8|lcd_rs~regout\)) # (!\cmp8|Selector8~1_combout\)), GLOBAL(\cmp2|outclk~regout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|Selector8~0_combout\,
	datab => \cmp8|Selector1~0_combout\,
	datac => \cmp8|lcd_rs~regout\,
	datad => \cmp8|Selector8~1_combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|lcd_rs~regout\);

-- Location: LC_X12_Y6_N5
\cmp8|Selector7~1\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector7~1_combout\ = (\cmp8|lcd\(0) & ((\cmp8|Selector1~0_combout\) # ((\cmp8|state.S9~regout\) # (\cmp8|Selector10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|lcd\(0),
	datab => \cmp8|Selector1~0_combout\,
	datac => \cmp8|state.S9~regout\,
	datad => \cmp8|Selector10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector7~1_combout\);

-- Location: LC_X13_Y8_N4
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = ((!toChange(0)))
-- \Add4~2\ = CARRY(((toChange(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\,
	cout => \Add4~2\);

-- Location: LC_X13_Y8_N1
\toChange[0]\ : maxv_lcell
-- Equation(s):
-- toChange(0) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(0));

-- Location: LC_X12_Y9_N4
\wrCol[0]\ : maxv_lcell
-- Equation(s):
-- wrCol(0) = DFFEAS((((!toChange(0)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => toChange(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => wrCol(0));

-- Location: LC_X12_Y9_N2
\cmp8|cmd_position[0]\ : maxv_lcell
-- Equation(s):
-- \cmp8|cmd_position\(0) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , , wrCol(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => wrCol(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|cmd_position\(0));

-- Location: LC_X11_Y6_N6
\cmp8|Selector5~0\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector5~0_combout\ = (\cmp8|state.S1~regout\) # ((\cmp8|state.S2~regout\) # ((!\cmp8|state.S0~regout\ & \cmp8|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|state.S0~regout\,
	datab => \cmp8|state.S1~regout\,
	datac => \cmp8|LessThan0~0_combout\,
	datad => \cmp8|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector5~0_combout\);

-- Location: LC_X12_Y6_N0
\cmp8|Selector7~0\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector7~0_combout\ = ((!\cmp8|count_cmd\(1) & (\cmp8|Selector5~0_combout\ & \cmp8|count_cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cmp8|count_cmd\(1),
	datac => \cmp8|Selector5~0_combout\,
	datad => \cmp8|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector7~0_combout\);

-- Location: LC_X12_Y7_N7
\cmp8|WideOr1~0\ : maxv_lcell
-- Equation(s):
-- \cmp8|WideOr1~0_combout\ = (\cmp8|state.S4~regout\) # (((\cmp8|state.S3~regout\) # (\cmp8|state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|state.S4~regout\,
	datac => \cmp8|state.S3~regout\,
	datad => \cmp8|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|WideOr1~0_combout\);

-- Location: LC_X12_Y6_N6
\cmp8|lcd[0]\ : maxv_lcell
-- Equation(s):
-- \cmp8|lcd\(0) = DFFEAS((\cmp8|Selector7~1_combout\) # ((\cmp8|Selector7~0_combout\) # ((\cmp8|cmd_position\(0) & \cmp8|WideOr1~0_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|Selector7~1_combout\,
	datab => \cmp8|cmd_position\(0),
	datac => \cmp8|Selector7~0_combout\,
	datad => \cmp8|WideOr1~0_combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|lcd\(0));

-- Location: LC_X13_Y8_N5
\Add4~5\ : maxv_lcell
-- Equation(s):
-- \Add4~5_combout\ = toChange(1) $ ((((\Add4~2\))))
-- \Add4~7\ = CARRY(((!\Add4~2\)) # (!toChange(1)))
-- \Add4~7COUT1_161\ = CARRY(((!\Add4~2\)) # (!toChange(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => toChange(1),
	cin => \Add4~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~5_combout\,
	cout0 => \Add4~7\,
	cout1 => \Add4~7COUT1_161\);

-- Location: LC_X13_Y8_N3
\toChange[1]\ : maxv_lcell
-- Equation(s):
-- toChange(1) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(1));

-- Location: LC_X12_Y7_N4
\wrCol[1]\ : maxv_lcell
-- Equation(s):
-- wrCol(1) = DFFEAS((((!toChange(1)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => toChange(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => wrCol(1));

-- Location: LC_X12_Y7_N5
\cmp8|cmd_position[1]\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector6~0\ = (G1_cmd_position[1] & ((\cmp8|state.S4~regout\) # ((\cmp8|state.S3~regout\) # (\cmp8|state.S5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|state.S4~regout\,
	datab => \cmp8|state.S3~regout\,
	datac => wrCol(1),
	datad => \cmp8|state.S5~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector6~0\,
	regout => \cmp8|cmd_position\(1));

-- Location: LC_X14_Y6_N7
\cmp8|Selector6~1\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector6~1_combout\ = (\cmp8|lcd\(1) & ((\cmp8|state.S9~regout\) # ((\cmp8|state.S6~regout\ & !nst(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|lcd\(1),
	datab => \cmp8|state.S9~regout\,
	datac => \cmp8|state.S6~regout\,
	datad => nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector6~1_combout\);

-- Location: LC_X14_Y6_N8
\cmp8|lcd[1]\ : maxv_lcell
-- Equation(s):
-- \cmp8|lcd\(1) = DFFEAS((\cmp8|Selector6~0\) # ((\cmp8|Selector6~1_combout\) # ((\cmp8|lcd\(1) & \cmp8|Selector1~0_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|lcd\(1),
	datab => \cmp8|Selector6~0\,
	datac => \cmp8|Selector1~0_combout\,
	datad => \cmp8|Selector6~1_combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|lcd\(1));

-- Location: LC_X12_Y6_N4
\cmp8|Selector5~1\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector5~1_combout\ = (!\cmp8|count_cmd\(0) & (\cmp8|Selector5~0_combout\ & (\cmp8|count_cmd\(2) $ (\cmp8|count_cmd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|count_cmd\(0),
	datab => \cmp8|Selector5~0_combout\,
	datac => \cmp8|count_cmd\(2),
	datad => \cmp8|count_cmd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector5~1_combout\);

-- Location: LC_X12_Y6_N1
\cmp8|Selector5~2\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector5~2_combout\ = (\cmp8|lcd\(2) & ((\cmp8|Selector1~0_combout\) # ((\cmp8|state.S9~regout\) # (\cmp8|Selector10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|lcd\(2),
	datab => \cmp8|Selector1~0_combout\,
	datac => \cmp8|state.S9~regout\,
	datad => \cmp8|Selector10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector5~2_combout\);

-- Location: LC_X13_Y8_N6
\Add4~10\ : maxv_lcell
-- Equation(s):
-- \Add4~10_combout\ = toChange(2) $ ((((!(!\Add4~2\ & \Add4~7\) # (\Add4~2\ & \Add4~7COUT1_161\)))))
-- \Add4~12\ = CARRY((toChange(2) & ((!\Add4~7\))))
-- \Add4~12COUT1_162\ = CARRY((toChange(2) & ((!\Add4~7COUT1_161\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => toChange(2),
	cin => \Add4~2\,
	cin0 => \Add4~7\,
	cin1 => \Add4~7COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~10_combout\,
	cout0 => \Add4~12\,
	cout1 => \Add4~12COUT1_162\);

-- Location: LC_X11_Y8_N6
\toChange[3]\ : maxv_lcell
-- Equation(s):
-- toChange(3) = DFFEAS((((\Add4~15_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \Add4~15_combout\,
	aclr => GND,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(3));

-- Location: LC_X13_Y8_N7
\Add4~15\ : maxv_lcell
-- Equation(s):
-- \Add4~15_combout\ = (toChange(3) $ (((!\Add4~2\ & \Add4~12\) # (\Add4~2\ & \Add4~12COUT1_162\))))
-- \Add4~17\ = CARRY(((!\Add4~12\) # (!toChange(3))))
-- \Add4~17COUT1_163\ = CARRY(((!\Add4~12COUT1_162\) # (!toChange(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(3),
	cin => \Add4~2\,
	cin0 => \Add4~12\,
	cin1 => \Add4~12COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~15_combout\,
	cout0 => \Add4~17\,
	cout1 => \Add4~17COUT1_163\);

-- Location: LC_X12_Y8_N2
\toChange[4]\ : maxv_lcell
-- Equation(s):
-- toChange(4) = DFFEAS((((\Add4~20_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \Add4~20_combout\,
	aclr => GND,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(4));

-- Location: LC_X13_Y8_N8
\Add4~20\ : maxv_lcell
-- Equation(s):
-- \Add4~20_combout\ = (toChange(4) $ ((!(!\Add4~2\ & \Add4~17\) # (\Add4~2\ & \Add4~17COUT1_163\))))
-- \Add4~22\ = CARRY(((toChange(4) & !\Add4~17\)))
-- \Add4~22COUT1_164\ = CARRY(((toChange(4) & !\Add4~17COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(4),
	cin => \Add4~2\,
	cin0 => \Add4~17\,
	cin1 => \Add4~17COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~20_combout\,
	cout0 => \Add4~22\,
	cout1 => \Add4~22COUT1_164\);

-- Location: LC_X11_Y8_N5
\Equal5~0\ : maxv_lcell
-- Equation(s):
-- \Equal5~0_combout\ = (!\Add4~0_combout\ & (!\Add4~15_combout\ & (!\Add4~20_combout\ & !\Add4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add4~15_combout\,
	datac => \Add4~20_combout\,
	datad => \Add4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~0_combout\);

-- Location: LC_X11_Y8_N2
\toChange[6]\ : maxv_lcell
-- Equation(s):
-- toChange(6) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(6));

-- Location: LC_X13_Y8_N9
\Add4~25\ : maxv_lcell
-- Equation(s):
-- \Add4~25_combout\ = (toChange(5) $ (((!\Add4~2\ & \Add4~22\) # (\Add4~2\ & \Add4~22COUT1_164\))))
-- \Add4~27\ = CARRY(((!\Add4~22COUT1_164\) # (!toChange(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(5),
	cin => \Add4~2\,
	cin0 => \Add4~22\,
	cin1 => \Add4~22COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~25_combout\,
	cout => \Add4~27\);

-- Location: LC_X11_Y8_N9
\toChange[5]\ : maxv_lcell
-- Equation(s):
-- toChange(5) = DFFEAS((((\Add4~25_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \Add4~25_combout\,
	aclr => GND,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(5));

-- Location: LC_X14_Y8_N0
\Add4~30\ : maxv_lcell
-- Equation(s):
-- \Add4~30_combout\ = (toChange(6) $ ((!\Add4~27\)))
-- \Add4~32\ = CARRY(((toChange(6) & !\Add4~27\)))
-- \Add4~32COUT1_165\ = CARRY(((toChange(6) & !\Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(6),
	cin => \Add4~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~30_combout\,
	cout0 => \Add4~32\,
	cout1 => \Add4~32COUT1_165\);

-- Location: LC_X14_Y9_N5
\toChange[8]\ : maxv_lcell
-- Equation(s):
-- toChange(8) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~40_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(8));

-- Location: LC_X14_Y8_N1
\Add4~35\ : maxv_lcell
-- Equation(s):
-- \Add4~35_combout\ = (toChange(7) $ (((!\Add4~27\ & \Add4~32\) # (\Add4~27\ & \Add4~32COUT1_165\))))
-- \Add4~37\ = CARRY(((!\Add4~32\) # (!toChange(7))))
-- \Add4~37COUT1_166\ = CARRY(((!\Add4~32COUT1_165\) # (!toChange(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(7),
	cin => \Add4~27\,
	cin0 => \Add4~32\,
	cin1 => \Add4~32COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~35_combout\,
	cout0 => \Add4~37\,
	cout1 => \Add4~37COUT1_166\);

-- Location: LC_X11_Y8_N8
\toChange[7]\ : maxv_lcell
-- Equation(s):
-- toChange(7) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(7));

-- Location: LC_X14_Y8_N2
\Add4~40\ : maxv_lcell
-- Equation(s):
-- \Add4~40_combout\ = (toChange(8) $ ((!(!\Add4~27\ & \Add4~37\) # (\Add4~27\ & \Add4~37COUT1_166\))))
-- \Add4~42\ = CARRY(((toChange(8) & !\Add4~37\)))
-- \Add4~42COUT1_167\ = CARRY(((toChange(8) & !\Add4~37COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(8),
	cin => \Add4~27\,
	cin0 => \Add4~37\,
	cin1 => \Add4~37COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~40_combout\,
	cout0 => \Add4~42\,
	cout1 => \Add4~42COUT1_167\);

-- Location: LC_X13_Y8_N2
\Equal5~1\ : maxv_lcell
-- Equation(s):
-- \Equal5~1_combout\ = (!\Add4~30_combout\ & (!\Add4~25_combout\ & (!\Add4~40_combout\ & !\Add4~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~30_combout\,
	datab => \Add4~25_combout\,
	datac => \Add4~40_combout\,
	datad => \Add4~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~1_combout\);

-- Location: LC_X11_Y8_N7
\toChange[9]\ : maxv_lcell
-- Equation(s):
-- toChange(9) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~45_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(9));

-- Location: LC_X14_Y8_N3
\Add4~45\ : maxv_lcell
-- Equation(s):
-- \Add4~45_combout\ = (toChange(9) $ (((!\Add4~27\ & \Add4~42\) # (\Add4~27\ & \Add4~42COUT1_167\))))
-- \Add4~47\ = CARRY(((!\Add4~42\) # (!toChange(9))))
-- \Add4~47COUT1_168\ = CARRY(((!\Add4~42COUT1_167\) # (!toChange(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(9),
	cin => \Add4~27\,
	cin0 => \Add4~42\,
	cin1 => \Add4~42COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~45_combout\,
	cout0 => \Add4~47\,
	cout1 => \Add4~47COUT1_168\);

-- Location: LC_X14_Y7_N0
\toChange[10]\ : maxv_lcell
-- Equation(s):
-- toChange(10) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(10));

-- Location: LC_X14_Y8_N4
\Add4~50\ : maxv_lcell
-- Equation(s):
-- \Add4~50_combout\ = (toChange(10) $ ((!(!\Add4~27\ & \Add4~47\) # (\Add4~27\ & \Add4~47COUT1_168\))))
-- \Add4~52\ = CARRY(((toChange(10) & !\Add4~47COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(10),
	cin => \Add4~27\,
	cin0 => \Add4~47\,
	cin1 => \Add4~47COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~50_combout\,
	cout => \Add4~52\);

-- Location: LC_X11_Y8_N3
\toChange[12]\ : maxv_lcell
-- Equation(s):
-- toChange(12) = DFFEAS((((\Add4~60_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \Add4~60_combout\,
	aclr => GND,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(12));

-- Location: LC_X14_Y8_N5
\Add4~55\ : maxv_lcell
-- Equation(s):
-- \Add4~55_combout\ = (toChange(11) $ ((\Add4~52\)))
-- \Add4~57\ = CARRY(((!\Add4~52\) # (!toChange(11))))
-- \Add4~57COUT1_169\ = CARRY(((!\Add4~52\) # (!toChange(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(11),
	cin => \Add4~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~55_combout\,
	cout0 => \Add4~57\,
	cout1 => \Add4~57COUT1_169\);

-- Location: LC_X14_Y7_N2
\toChange[11]\ : maxv_lcell
-- Equation(s):
-- toChange(11) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~55_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(11));

-- Location: LC_X14_Y8_N6
\Add4~60\ : maxv_lcell
-- Equation(s):
-- \Add4~60_combout\ = toChange(12) $ ((((!(!\Add4~52\ & \Add4~57\) # (\Add4~52\ & \Add4~57COUT1_169\)))))
-- \Add4~62\ = CARRY((toChange(12) & ((!\Add4~57\))))
-- \Add4~62COUT1_170\ = CARRY((toChange(12) & ((!\Add4~57COUT1_169\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => toChange(12),
	cin => \Add4~52\,
	cin0 => \Add4~57\,
	cin1 => \Add4~57COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~60_combout\,
	cout0 => \Add4~62\,
	cout1 => \Add4~62COUT1_170\);

-- Location: LC_X13_Y8_N0
\Equal5~2\ : maxv_lcell
-- Equation(s):
-- \Equal5~2_combout\ = (!\Add4~45_combout\ & (!\Add4~50_combout\ & (!\Add4~60_combout\ & !\Add4~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~45_combout\,
	datab => \Add4~50_combout\,
	datac => \Add4~60_combout\,
	datad => \Add4~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~2_combout\);

-- Location: LC_X11_Y8_N1
\toChange[15]\ : maxv_lcell
-- Equation(s):
-- toChange(15) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(15));

-- Location: LC_X14_Y8_N7
\Add4~65\ : maxv_lcell
-- Equation(s):
-- \Add4~65_combout\ = (toChange(13) $ (((!\Add4~52\ & \Add4~62\) # (\Add4~52\ & \Add4~62COUT1_170\))))
-- \Add4~67\ = CARRY(((!\Add4~62\) # (!toChange(13))))
-- \Add4~67COUT1_171\ = CARRY(((!\Add4~62COUT1_170\) # (!toChange(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(13),
	cin => \Add4~52\,
	cin0 => \Add4~62\,
	cin1 => \Add4~62COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~65_combout\,
	cout0 => \Add4~67\,
	cout1 => \Add4~67COUT1_171\);

-- Location: LC_X12_Y8_N1
\toChange[13]\ : maxv_lcell
-- Equation(s):
-- toChange(13) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~65_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(13));

-- Location: LC_X14_Y8_N8
\Add4~70\ : maxv_lcell
-- Equation(s):
-- \Add4~70_combout\ = (toChange(14) $ ((!(!\Add4~52\ & \Add4~67\) # (\Add4~52\ & \Add4~67COUT1_171\))))
-- \Add4~72\ = CARRY(((toChange(14) & !\Add4~67\)))
-- \Add4~72COUT1_172\ = CARRY(((toChange(14) & !\Add4~67COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(14),
	cin => \Add4~52\,
	cin0 => \Add4~67\,
	cin1 => \Add4~67COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~70_combout\,
	cout0 => \Add4~72\,
	cout1 => \Add4~72COUT1_172\);

-- Location: LC_X11_Y8_N0
\toChange[14]\ : maxv_lcell
-- Equation(s):
-- toChange(14) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~70_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(14));

-- Location: LC_X14_Y8_N9
\Add4~75\ : maxv_lcell
-- Equation(s):
-- \Add4~75_combout\ = (toChange(15) $ (((!\Add4~52\ & \Add4~72\) # (\Add4~52\ & \Add4~72COUT1_172\))))
-- \Add4~77\ = CARRY(((!\Add4~72COUT1_172\) # (!toChange(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(15),
	cin => \Add4~52\,
	cin0 => \Add4~72\,
	cin1 => \Add4~72COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~75_combout\,
	cout => \Add4~77\);

-- Location: LC_X11_Y8_N4
\toChange[16]\ : maxv_lcell
-- Equation(s):
-- toChange(16) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~80_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(16));

-- Location: LC_X15_Y8_N0
\Add4~80\ : maxv_lcell
-- Equation(s):
-- \Add4~80_combout\ = (toChange(16) $ ((!\Add4~77\)))
-- \Add4~82\ = CARRY(((toChange(16) & !\Add4~77\)))
-- \Add4~82COUT1_173\ = CARRY(((toChange(16) & !\Add4~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(16),
	cin => \Add4~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~80_combout\,
	cout0 => \Add4~82\,
	cout1 => \Add4~82COUT1_173\);

-- Location: LC_X12_Y8_N8
\Equal5~3\ : maxv_lcell
-- Equation(s):
-- \Equal5~3_combout\ = (!\Add4~75_combout\ & (!\Add4~65_combout\ & (!\Add4~80_combout\ & !\Add4~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~75_combout\,
	datab => \Add4~65_combout\,
	datac => \Add4~80_combout\,
	datad => \Add4~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~3_combout\);

-- Location: LC_X12_Y8_N0
\Equal5~4\ : maxv_lcell
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal5~0_combout\ & (\Equal5~1_combout\ & (\Equal5~2_combout\ & \Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal5~1_combout\,
	datac => \Equal5~2_combout\,
	datad => \Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~4_combout\);

-- Location: LC_X15_Y7_N5
\toChange[24]\ : maxv_lcell
-- Equation(s):
-- toChange(24) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~120_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(24));

-- Location: LC_X15_Y8_N1
\Add4~85\ : maxv_lcell
-- Equation(s):
-- \Add4~85_combout\ = (toChange(17) $ (((!\Add4~77\ & \Add4~82\) # (\Add4~77\ & \Add4~82COUT1_173\))))
-- \Add4~87\ = CARRY(((!\Add4~82\) # (!toChange(17))))
-- \Add4~87COUT1_174\ = CARRY(((!\Add4~82COUT1_173\) # (!toChange(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(17),
	cin => \Add4~77\,
	cin0 => \Add4~82\,
	cin1 => \Add4~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~85_combout\,
	cout0 => \Add4~87\,
	cout1 => \Add4~87COUT1_174\);

-- Location: LC_X15_Y7_N8
\toChange[17]\ : maxv_lcell
-- Equation(s):
-- toChange(17) = DFFEAS((((\Add4~85_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \Add4~85_combout\,
	aclr => GND,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(17));

-- Location: LC_X15_Y8_N2
\Add4~90\ : maxv_lcell
-- Equation(s):
-- \Add4~90_combout\ = (toChange(18) $ ((!(!\Add4~77\ & \Add4~87\) # (\Add4~77\ & \Add4~87COUT1_174\))))
-- \Add4~92\ = CARRY(((toChange(18) & !\Add4~87\)))
-- \Add4~92COUT1_175\ = CARRY(((toChange(18) & !\Add4~87COUT1_174\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(18),
	cin => \Add4~77\,
	cin0 => \Add4~87\,
	cin1 => \Add4~87COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~90_combout\,
	cout0 => \Add4~92\,
	cout1 => \Add4~92COUT1_175\);

-- Location: LC_X14_Y9_N0
\toChange[18]\ : maxv_lcell
-- Equation(s):
-- toChange(18) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~90_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(18));

-- Location: LC_X15_Y8_N3
\Add4~95\ : maxv_lcell
-- Equation(s):
-- \Add4~95_combout\ = (toChange(19) $ (((!\Add4~77\ & \Add4~92\) # (\Add4~77\ & \Add4~92COUT1_175\))))
-- \Add4~97\ = CARRY(((!\Add4~92\) # (!toChange(19))))
-- \Add4~97COUT1_176\ = CARRY(((!\Add4~92COUT1_175\) # (!toChange(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(19),
	cin => \Add4~77\,
	cin0 => \Add4~92\,
	cin1 => \Add4~92COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~95_combout\,
	cout0 => \Add4~97\,
	cout1 => \Add4~97COUT1_176\);

-- Location: LC_X15_Y7_N2
\toChange[19]\ : maxv_lcell
-- Equation(s):
-- toChange(19) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(19));

-- Location: LC_X15_Y8_N4
\Add4~100\ : maxv_lcell
-- Equation(s):
-- \Add4~100_combout\ = (toChange(20) $ ((!(!\Add4~77\ & \Add4~97\) # (\Add4~77\ & \Add4~97COUT1_176\))))
-- \Add4~102\ = CARRY(((toChange(20) & !\Add4~97COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(20),
	cin => \Add4~77\,
	cin0 => \Add4~97\,
	cin1 => \Add4~97COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~100_combout\,
	cout => \Add4~102\);

-- Location: LC_X15_Y7_N1
\toChange[20]\ : maxv_lcell
-- Equation(s):
-- toChange(20) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~100_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(20));

-- Location: LC_X15_Y8_N5
\Add4~105\ : maxv_lcell
-- Equation(s):
-- \Add4~105_combout\ = (toChange(21) $ ((\Add4~102\)))
-- \Add4~107\ = CARRY(((!\Add4~102\) # (!toChange(21))))
-- \Add4~107COUT1_177\ = CARRY(((!\Add4~102\) # (!toChange(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(21),
	cin => \Add4~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~105_combout\,
	cout0 => \Add4~107\,
	cout1 => \Add4~107COUT1_177\);

-- Location: LC_X14_Y9_N6
\toChange[21]\ : maxv_lcell
-- Equation(s):
-- toChange(21) = DFFEAS((((\Add4~105_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \Add4~105_combout\,
	aclr => GND,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(21));

-- Location: LC_X15_Y8_N6
\Add4~110\ : maxv_lcell
-- Equation(s):
-- \Add4~110_combout\ = (toChange(22) $ ((!(!\Add4~102\ & \Add4~107\) # (\Add4~102\ & \Add4~107COUT1_177\))))
-- \Add4~112\ = CARRY(((toChange(22) & !\Add4~107\)))
-- \Add4~112COUT1_178\ = CARRY(((toChange(22) & !\Add4~107COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(22),
	cin => \Add4~102\,
	cin0 => \Add4~107\,
	cin1 => \Add4~107COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~110_combout\,
	cout0 => \Add4~112\,
	cout1 => \Add4~112COUT1_178\);

-- Location: LC_X16_Y8_N8
\toChange[22]\ : maxv_lcell
-- Equation(s):
-- toChange(22) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~110_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(22));

-- Location: LC_X15_Y8_N7
\Add4~115\ : maxv_lcell
-- Equation(s):
-- \Add4~115_combout\ = (toChange(23) $ (((!\Add4~102\ & \Add4~112\) # (\Add4~102\ & \Add4~112COUT1_178\))))
-- \Add4~117\ = CARRY(((!\Add4~112\) # (!toChange(23))))
-- \Add4~117COUT1_179\ = CARRY(((!\Add4~112COUT1_178\) # (!toChange(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(23),
	cin => \Add4~102\,
	cin0 => \Add4~112\,
	cin1 => \Add4~112COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~115_combout\,
	cout0 => \Add4~117\,
	cout1 => \Add4~117COUT1_179\);

-- Location: LC_X14_Y9_N7
\toChange[23]\ : maxv_lcell
-- Equation(s):
-- toChange(23) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~115_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(23));

-- Location: LC_X15_Y8_N8
\Add4~120\ : maxv_lcell
-- Equation(s):
-- \Add4~120_combout\ = (toChange(24) $ ((!(!\Add4~102\ & \Add4~117\) # (\Add4~102\ & \Add4~117COUT1_179\))))
-- \Add4~122\ = CARRY(((toChange(24) & !\Add4~117\)))
-- \Add4~122COUT1_180\ = CARRY(((toChange(24) & !\Add4~117COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(24),
	cin => \Add4~102\,
	cin0 => \Add4~117\,
	cin1 => \Add4~117COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~120_combout\,
	cout0 => \Add4~122\,
	cout1 => \Add4~122COUT1_180\);

-- Location: LC_X12_Y8_N7
\Equal5~5\ : maxv_lcell
-- Equation(s):
-- \Equal5~5_combout\ = (!\Add4~85_combout\ & (!\Add4~90_combout\ & (!\Add4~95_combout\ & !\Add4~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~85_combout\,
	datab => \Add4~90_combout\,
	datac => \Add4~95_combout\,
	datad => \Add4~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~5_combout\);

-- Location: LC_X12_Y8_N9
\Equal5~6\ : maxv_lcell
-- Equation(s):
-- \Equal5~6_combout\ = (((!\Add4~110_combout\ & !\Add4~105_combout\)))

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
	datac => \Add4~110_combout\,
	datad => \Add4~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~6_combout\);

-- Location: LC_X12_Y8_N6
\Equal5~7\ : maxv_lcell
-- Equation(s):
-- \Equal5~7_combout\ = (!\Add4~120_combout\ & (!\Add4~115_combout\ & (\Equal5~5_combout\ & \Equal5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~120_combout\,
	datab => \Add4~115_combout\,
	datac => \Equal5~5_combout\,
	datad => \Equal5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~7_combout\);

-- Location: LC_X16_Y8_N7
\toChange[29]\ : maxv_lcell
-- Equation(s):
-- toChange(29) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~145_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(29));

-- Location: LC_X15_Y8_N9
\Add4~125\ : maxv_lcell
-- Equation(s):
-- \Add4~125_combout\ = (toChange(25) $ (((!\Add4~102\ & \Add4~122\) # (\Add4~102\ & \Add4~122COUT1_180\))))
-- \Add4~127\ = CARRY(((!\Add4~122COUT1_180\) # (!toChange(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(25),
	cin => \Add4~102\,
	cin0 => \Add4~122\,
	cin1 => \Add4~122COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~125_combout\,
	cout => \Add4~127\);

-- Location: LC_X15_Y7_N7
\toChange[25]\ : maxv_lcell
-- Equation(s):
-- toChange(25) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~125_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(25));

-- Location: LC_X16_Y8_N0
\Add4~130\ : maxv_lcell
-- Equation(s):
-- \Add4~130_combout\ = (toChange(26) $ ((!\Add4~127\)))
-- \Add4~132\ = CARRY(((toChange(26) & !\Add4~127\)))
-- \Add4~132COUT1_181\ = CARRY(((toChange(26) & !\Add4~127\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(26),
	cin => \Add4~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~130_combout\,
	cout0 => \Add4~132\,
	cout1 => \Add4~132COUT1_181\);

-- Location: LC_X16_Y9_N5
\toChange[26]\ : maxv_lcell
-- Equation(s):
-- toChange(26) = DFFEAS((((\Add4~130_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \Add4~130_combout\,
	aclr => GND,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(26));

-- Location: LC_X16_Y8_N1
\Add4~135\ : maxv_lcell
-- Equation(s):
-- \Add4~135_combout\ = (toChange(27) $ (((!\Add4~127\ & \Add4~132\) # (\Add4~127\ & \Add4~132COUT1_181\))))
-- \Add4~137\ = CARRY(((!\Add4~132\) # (!toChange(27))))
-- \Add4~137COUT1_182\ = CARRY(((!\Add4~132COUT1_181\) # (!toChange(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(27),
	cin => \Add4~127\,
	cin0 => \Add4~132\,
	cin1 => \Add4~132COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~135_combout\,
	cout0 => \Add4~137\,
	cout1 => \Add4~137COUT1_182\);

-- Location: LC_X16_Y9_N2
\toChange[27]\ : maxv_lcell
-- Equation(s):
-- toChange(27) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~135_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~135_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(27));

-- Location: LC_X16_Y8_N2
\Add4~140\ : maxv_lcell
-- Equation(s):
-- \Add4~140_combout\ = (toChange(28) $ ((!(!\Add4~127\ & \Add4~137\) # (\Add4~127\ & \Add4~137COUT1_182\))))
-- \Add4~142\ = CARRY(((toChange(28) & !\Add4~137\)))
-- \Add4~142COUT1_183\ = CARRY(((toChange(28) & !\Add4~137COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(28),
	cin => \Add4~127\,
	cin0 => \Add4~137\,
	cin1 => \Add4~137COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~140_combout\,
	cout0 => \Add4~142\,
	cout1 => \Add4~142COUT1_183\);

-- Location: LC_X15_Y7_N0
\toChange[28]\ : maxv_lcell
-- Equation(s):
-- toChange(28) = DFFEAS((((\Add4~140_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \Add4~140_combout\,
	aclr => GND,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(28));

-- Location: LC_X16_Y8_N3
\Add4~145\ : maxv_lcell
-- Equation(s):
-- \Add4~145_combout\ = (toChange(29) $ (((!\Add4~127\ & \Add4~142\) # (\Add4~127\ & \Add4~142COUT1_183\))))
-- \Add4~147\ = CARRY(((!\Add4~142\) # (!toChange(29))))
-- \Add4~147COUT1_184\ = CARRY(((!\Add4~142COUT1_183\) # (!toChange(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(29),
	cin => \Add4~127\,
	cin0 => \Add4~142\,
	cin1 => \Add4~142COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~145_combout\,
	cout0 => \Add4~147\,
	cout1 => \Add4~147COUT1_184\);

-- Location: LC_X16_Y8_N9
\toChange[30]\ : maxv_lcell
-- Equation(s):
-- toChange(30) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), \Add4~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => \Add4~150_combout\,
	aclr => GND,
	sload => VCC,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(30));

-- Location: LC_X16_Y8_N4
\Add4~150\ : maxv_lcell
-- Equation(s):
-- \Add4~150_combout\ = (toChange(30) $ ((!(!\Add4~127\ & \Add4~147\) # (\Add4~127\ & \Add4~147COUT1_184\))))
-- \Add4~152\ = CARRY(((toChange(30) & !\Add4~147COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => toChange(30),
	cin => \Add4~127\,
	cin0 => \Add4~147\,
	cin1 => \Add4~147COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~150_combout\,
	cout => \Add4~152\);

-- Location: LC_X16_Y8_N6
\toChange[31]\ : maxv_lcell
-- Equation(s):
-- toChange(31) = DFFEAS((((\Add4~155_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \Add4~155_combout\,
	aclr => GND,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(31));

-- Location: LC_X16_Y8_N5
\Add4~155\ : maxv_lcell
-- Equation(s):
-- \Add4~155_combout\ = toChange(31) $ ((((\Add4~152\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => toChange(31),
	cin => \Add4~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~155_combout\);

-- Location: LC_X12_Y8_N3
\Equal5~8\ : maxv_lcell
-- Equation(s):
-- \Equal5~8_combout\ = (!\Add4~135_combout\ & (!\Add4~125_combout\ & (!\Add4~140_combout\ & !\Add4~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~135_combout\,
	datab => \Add4~125_combout\,
	datac => \Add4~140_combout\,
	datad => \Add4~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~8_combout\);

-- Location: LC_X12_Y8_N4
\Equal5~9\ : maxv_lcell
-- Equation(s):
-- \Equal5~9_combout\ = (!\Add4~145_combout\ & (!\Add4~150_combout\ & (!\Add4~155_combout\ & \Equal5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~145_combout\,
	datab => \Add4~150_combout\,
	datac => \Add4~155_combout\,
	datad => \Equal5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~9_combout\);

-- Location: LC_X12_Y8_N5
\toChange[2]\ : maxv_lcell
-- Equation(s):
-- toChange(2) = DFFEAS((\Add4~10_combout\ & (((!\Equal5~9_combout\) # (!\Equal5~7_combout\)) # (!\Equal5~4_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !nst(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \Add4~10_combout\,
	datab => \Equal5~4_combout\,
	datac => \Equal5~7_combout\,
	datad => \Equal5~9_combout\,
	aclr => GND,
	ena => ALT_INV_nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => toChange(2));

-- Location: LC_X11_Y7_N6
\wrCol[2]\ : maxv_lcell
-- Equation(s):
-- wrCol(2) = DFFEAS((((toChange(2)))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => toChange(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => wrCol(2));

-- Location: LC_X11_Y7_N5
\cmp8|cmd_position[2]\ : maxv_lcell
-- Equation(s):
-- \cmp8|cmd_position\(2) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , , wrCol(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => wrCol(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|cmd_position\(2));

-- Location: LC_X12_Y6_N3
\cmp8|lcd[2]\ : maxv_lcell
-- Equation(s):
-- \cmp8|lcd\(2) = DFFEAS((\cmp8|Selector5~1_combout\) # ((\cmp8|Selector5~2_combout\) # ((\cmp8|cmd_position\(2) & \cmp8|WideOr1~0_combout\))), GLOBAL(\cmp2|outclk~regout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|Selector5~1_combout\,
	datab => \cmp8|Selector5~2_combout\,
	datac => \cmp8|cmd_position\(2),
	datad => \cmp8|WideOr1~0_combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|lcd\(2));

-- Location: LC_X13_Y6_N4
\cmp8|Selector4~2\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector4~2_combout\ = (\cmp8|lcd\(3) & ((\cmp8|state.S9~regout\) # ((!nst(0) & \cmp8|state.S6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|lcd\(3),
	datab => nst(0),
	datac => \cmp8|state.S6~regout\,
	datad => \cmp8|state.S9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector4~2_combout\);

-- Location: LC_X11_Y7_N4
\wrCol[3]\ : maxv_lcell
-- Equation(s):
-- wrCol(3) = DFFEAS((toChange(3) $ (((toChange(2))))), GLOBAL(\cmp2|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datab => toChange(3),
	datad => toChange(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => wrCol(3));

-- Location: LC_X11_Y7_N2
\cmp8|cmd_position[3]\ : maxv_lcell
-- Equation(s):
-- \cmp8|cmd_position\(3) = DFFEAS(GND, GLOBAL(\cmp2|outclk~regout\), VCC, , , wrCol(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datac => wrCol(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|cmd_position\(3));

-- Location: LC_X11_Y6_N4
\cmp8|Selector4~0\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector4~0_combout\ = (!\cmp8|count_cmd\(2) & (((\cmp8|state.S1~regout\) # (\cmp8|state.S2~regout\)) # (!\cmp8|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3331",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|state.S0~regout\,
	datab => \cmp8|count_cmd\(2),
	datac => \cmp8|state.S1~regout\,
	datad => \cmp8|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector4~0_combout\);

-- Location: LC_X12_Y6_N8
\cmp8|Selector4~1\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector4~1_combout\ = (\cmp8|count_cmd\(0) & (\cmp8|lcd\(3) & (\cmp8|Selector1~0_combout\))) # (!\cmp8|count_cmd\(0) & ((\cmp8|Selector4~0_combout\) # ((\cmp8|lcd\(3) & \cmp8|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|count_cmd\(0),
	datab => \cmp8|lcd\(3),
	datac => \cmp8|Selector1~0_combout\,
	datad => \cmp8|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector4~1_combout\);

-- Location: LC_X12_Y6_N9
\cmp8|lcd[3]\ : maxv_lcell
-- Equation(s):
-- \cmp8|lcd\(3) = DFFEAS((\cmp8|Selector4~2_combout\) # ((\cmp8|Selector4~1_combout\) # ((\cmp8|WideOr1~0_combout\ & \cmp8|cmd_position\(3)))), GLOBAL(\cmp2|outclk~regout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|WideOr1~0_combout\,
	datab => \cmp8|Selector4~2_combout\,
	datac => \cmp8|cmd_position\(3),
	datad => \cmp8|Selector4~1_combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|lcd\(3));

-- Location: LC_X13_Y6_N7
\cmp8|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \cmp8|LessThan0~1_combout\ = (((!\cmp8|count_cmd\(1) & !\cmp8|count_cmd\(0))))

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
	datac => \cmp8|count_cmd\(1),
	datad => \cmp8|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|LessThan0~1_combout\);

-- Location: LC_X15_Y6_N2
\cmp8|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector0~0_combout\ = (!\cmp8|state.S8~regout\ & (((!\cmp8|state.S7~regout\ & !\cmp8|state.S6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|state.S8~regout\,
	datac => \cmp8|state.S7~regout\,
	datad => \cmp8|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector0~0_combout\);

-- Location: LC_X13_Y6_N2
\cmp8|lcd[4]~0\ : maxv_lcell
-- Equation(s):
-- \cmp8|lcd[4]~0_combout\ = (!\reset~combout\ & (!\cmp8|Selector1~0_combout\ & (!\cmp8|Selector10~3_combout\ & !\cmp8|state.S9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \cmp8|Selector1~0_combout\,
	datac => \cmp8|Selector10~3_combout\,
	datad => \cmp8|state.S9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|lcd[4]~0_combout\);

-- Location: LC_X13_Y6_N9
\cmp8|lcd[4]\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector3~0\ = (!\cmp8|WideOr1~0_combout\ & (((!\cmp8|count_cmd\(2) & \cmp8|LessThan0~1_combout\)) # (!\cmp8|Selector0~0_combout\)))
-- \cmp8|lcd\(4) = DFFEAS(\cmp8|Selector3~0\, GLOBAL(\cmp2|outclk~regout\), VCC, , \cmp8|lcd[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1055",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|WideOr1~0_combout\,
	datab => \cmp8|count_cmd\(2),
	datac => \cmp8|LessThan0~1_combout\,
	datad => \cmp8|Selector0~0_combout\,
	aclr => GND,
	ena => \cmp8|lcd[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector3~0\,
	regout => \cmp8|lcd\(4));

-- Location: LC_X13_Y6_N3
\cmp8|lcd[5]\ : maxv_lcell
-- Equation(s):
-- \cmp8|lcd\(5) = DFFEAS((((\cmp8|Selector3~0\))), GLOBAL(\cmp2|outclk~regout\), VCC, , \cmp8|lcd[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	datad => \cmp8|Selector3~0\,
	aclr => GND,
	ena => \cmp8|lcd[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|lcd\(5));

-- Location: LC_X14_Y6_N6
\cmp8|Selector1~1\ : maxv_lcell
-- Equation(s):
-- \cmp8|Selector1~1_combout\ = (\cmp8|lcd\(6) & ((\cmp8|state.S9~regout\) # ((\cmp8|state.S6~regout\ & !nst(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cmp8|lcd\(6),
	datab => \cmp8|state.S9~regout\,
	datac => \cmp8|state.S6~regout\,
	datad => nst(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cmp8|Selector1~1_combout\);

-- Location: LC_X14_Y6_N4
\cmp8|lcd[6]\ : maxv_lcell
-- Equation(s):
-- \cmp8|lcd\(6) = DFFEAS((\cmp8|Selector1~1_combout\) # ((\cmp8|WideOr1~0_combout\) # ((\cmp8|Selector1~0_combout\ & \cmp8|lcd\(6)))), GLOBAL(\cmp2|outclk~regout\), VCC, , !\reset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|Selector1~1_combout\,
	datab => \cmp8|Selector1~0_combout\,
	datac => \cmp8|lcd\(6),
	datad => \cmp8|WideOr1~0_combout\,
	aclr => GND,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|lcd\(6));

-- Location: LC_X13_Y6_N8
\cmp8|lcd[7]\ : maxv_lcell
-- Equation(s):
-- \cmp8|lcd\(7) = DFFEAS((\cmp8|WideOr1~0_combout\) # ((\cmp8|count_cmd\(1) & (\cmp8|Selector0~0_combout\ & \cmp8|count_cmd\(0)))), GLOBAL(\cmp2|outclk~regout\), VCC, , \cmp8|lcd[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cmp2|outclk~regout\,
	dataa => \cmp8|count_cmd\(1),
	datab => \cmp8|Selector0~0_combout\,
	datac => \cmp8|WideOr1~0_combout\,
	datad => \cmp8|count_cmd\(0),
	aclr => GND,
	ena => \cmp8|lcd[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cmp8|lcd\(7));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ledLight~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ledLight~0_combout\,
	oe => VCC,
	padio => ww_ledLight);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\readWrite~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_readWrite);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\enable~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cmp8|lcd_en~regout\,
	oe => VCC,
	padio => ww_enable);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\datCom~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cmp8|lcd_rs~regout\,
	oe => VCC,
	padio => ww_datCom);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b11~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_b11);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b12~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_b12);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdOut[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cmp8|lcd\(0),
	oe => VCC,
	padio => ww_lcdOut(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdOut[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cmp8|lcd\(1),
	oe => VCC,
	padio => ww_lcdOut(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdOut[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cmp8|lcd\(2),
	oe => VCC,
	padio => ww_lcdOut(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdOut[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cmp8|lcd\(3),
	oe => VCC,
	padio => ww_lcdOut(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdOut[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cmp8|lcd\(4),
	oe => VCC,
	padio => ww_lcdOut(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdOut[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cmp8|lcd\(5),
	oe => VCC,
	padio => ww_lcdOut(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdOut[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cmp8|lcd\(6),
	oe => VCC,
	padio => ww_lcdOut(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcdOut[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cmp8|lcd\(7),
	oe => VCC,
	padio => ww_lcdOut(7));
END structure;


