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

-- DATE "05/05/2018 00:47:28"

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

ENTITY 	ReactionGame IS
    PORT (
	NClick : IN std_logic;
	CLK : IN std_logic;
	NReset : IN std_logic;
	LED : BUFFER std_logic;
	LEDOver : BUFFER std_logic;
	LEDEnd : BUFFER std_logic;
	LCD : BUFFER std_logic_vector(7 DOWNTO 0);
	en : BUFFER std_logic;
	rw : BUFFER std_logic;
	rs : BUFFER std_logic;
	b11 : BUFFER std_logic;
	b12 : BUFFER std_logic
	);
END ReactionGame;

-- Design Ports Information


ARCHITECTURE structure OF ReactionGame IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_NClick : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_NReset : std_logic;
SIGNAL ww_LED : std_logic;
SIGNAL ww_LEDOver : std_logic;
SIGNAL ww_LEDEnd : std_logic;
SIGNAL ww_LCD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_b11 : std_logic;
SIGNAL ww_b12 : std_logic;
SIGNAL \Con|Add1~15\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CH|Add0~5_combout\ : std_logic;
SIGNAL \NReset~combout\ : std_logic;
SIGNAL \CH|Add0~7\ : std_logic;
SIGNAL \CH|Add0~7COUT1_161\ : std_logic;
SIGNAL \CH|Add0~10_combout\ : std_logic;
SIGNAL \CH|Add0~12\ : std_logic;
SIGNAL \CH|Add0~12COUT1_162\ : std_logic;
SIGNAL \CH|Add0~15_combout\ : std_logic;
SIGNAL \CH1|Add0~2\ : std_logic;
SIGNAL \CH1|Add0~2COUT1_156\ : std_logic;
SIGNAL \CH1|Add0~7\ : std_logic;
SIGNAL \CH1|Add0~7COUT1_157\ : std_logic;
SIGNAL \CH1|Add0~10_combout\ : std_logic;
SIGNAL \CH1|Add0~5_combout\ : std_logic;
SIGNAL \CH|Add0~0_combout\ : std_logic;
SIGNAL \CH1|Add0~0_combout\ : std_logic;
SIGNAL \CH|Add0~2\ : std_logic;
SIGNAL \CH|Add0~17\ : std_logic;
SIGNAL \CH|Add0~17COUT1_163\ : std_logic;
SIGNAL \CH|Add0~20_combout\ : std_logic;
SIGNAL \CH|Equal0~0_combout\ : std_logic;
SIGNAL \CH|Add0~25_combout\ : std_logic;
SIGNAL \CH|Add0~80_combout\ : std_logic;
SIGNAL \CH|Add0~82\ : std_logic;
SIGNAL \CH|Add0~82COUT1_173\ : std_logic;
SIGNAL \CH|Add0~85_combout\ : std_logic;
SIGNAL \CH|Add0~87\ : std_logic;
SIGNAL \CH|Add0~87COUT1_174\ : std_logic;
SIGNAL \CH|Add0~90_combout\ : std_logic;
SIGNAL \CH|Add0~92\ : std_logic;
SIGNAL \CH|Add0~92COUT1_175\ : std_logic;
SIGNAL \CH|Add0~95_combout\ : std_logic;
SIGNAL \CH|Equal0~5_combout\ : std_logic;
SIGNAL \CH|Add0~105_combout\ : std_logic;
SIGNAL \CH|Add0~107\ : std_logic;
SIGNAL \CH|Add0~107COUT1_177\ : std_logic;
SIGNAL \CH|Add0~110_combout\ : std_logic;
SIGNAL \CH|Add0~112\ : std_logic;
SIGNAL \CH|Add0~112COUT1_178\ : std_logic;
SIGNAL \CH|Add0~115_combout\ : std_logic;
SIGNAL \CH|Add0~117\ : std_logic;
SIGNAL \CH|Add0~117COUT1_179\ : std_logic;
SIGNAL \CH|Add0~122\ : std_logic;
SIGNAL \CH|Add0~122COUT1_180\ : std_logic;
SIGNAL \CH|Add0~125_combout\ : std_logic;
SIGNAL \CH|Add0~127\ : std_logic;
SIGNAL \CH|Add0~130_combout\ : std_logic;
SIGNAL \CH|Add0~132\ : std_logic;
SIGNAL \CH|Add0~132COUT1_181\ : std_logic;
SIGNAL \CH|Add0~135_combout\ : std_logic;
SIGNAL \CH|Add0~137\ : std_logic;
SIGNAL \CH|Add0~137COUT1_182\ : std_logic;
SIGNAL \CH|Add0~140_combout\ : std_logic;
SIGNAL \CH|Add0~142\ : std_logic;
SIGNAL \CH|Add0~142COUT1_183\ : std_logic;
SIGNAL \CH|Add0~145_combout\ : std_logic;
SIGNAL \CH|Add0~147\ : std_logic;
SIGNAL \CH|Add0~147COUT1_184\ : std_logic;
SIGNAL \CH|Add0~150_combout\ : std_logic;
SIGNAL \CH|Add0~152\ : std_logic;
SIGNAL \CH|Add0~155_combout\ : std_logic;
SIGNAL \CH|Equal0~8_combout\ : std_logic;
SIGNAL \CH|Equal0~6_combout\ : std_logic;
SIGNAL \CH|Equal0~7_combout\ : std_logic;
SIGNAL \CH|Equal0~9_combout\ : std_logic;
SIGNAL \CH|Add0~27\ : std_logic;
SIGNAL \CH|Add0~27COUT1_165\ : std_logic;
SIGNAL \CH|Add0~35_combout\ : std_logic;
SIGNAL \CH|Equal0~1_combout\ : std_logic;
SIGNAL \CH|Add0~37\ : std_logic;
SIGNAL \CH|Add0~37COUT1_166\ : std_logic;
SIGNAL \CH|Add0~40_combout\ : std_logic;
SIGNAL \CH|Add0~55_combout\ : std_logic;
SIGNAL \CH|Add0~42\ : std_logic;
SIGNAL \CH|Add0~42COUT1_167\ : std_logic;
SIGNAL \CH|Add0~45_combout\ : std_logic;
SIGNAL \CH|Equal0~2_combout\ : std_logic;
SIGNAL \CH|Add0~57\ : std_logic;
SIGNAL \CH|Add0~57COUT1_169\ : std_logic;
SIGNAL \CH|Add0~70_combout\ : std_logic;
SIGNAL \CH|Add0~72\ : std_logic;
SIGNAL \CH|Add0~72COUT1_170\ : std_logic;
SIGNAL \CH|Add0~75_combout\ : std_logic;
SIGNAL \CH|Add0~77\ : std_logic;
SIGNAL \CH|Add0~77COUT1_171\ : std_logic;
SIGNAL \CH|Add0~60_combout\ : std_logic;
SIGNAL \CH|Equal0~3_combout\ : std_logic;
SIGNAL \CH|Equal0~4_combout\ : std_logic;
SIGNAL \CH|Add0~22\ : std_logic;
SIGNAL \CH|Add0~22COUT1_164\ : std_logic;
SIGNAL \CH|Add0~30_combout\ : std_logic;
SIGNAL \CH|Add0~32\ : std_logic;
SIGNAL \CH|Add0~47\ : std_logic;
SIGNAL \CH|Add0~47COUT1_168\ : std_logic;
SIGNAL \CH|Add0~50_combout\ : std_logic;
SIGNAL \CH|Add0~52\ : std_logic;
SIGNAL \CH|Add0~62\ : std_logic;
SIGNAL \CH|Add0~62COUT1_172\ : std_logic;
SIGNAL \CH|Add0~65_combout\ : std_logic;
SIGNAL \CH|Add0~67\ : std_logic;
SIGNAL \CH|Add0~97\ : std_logic;
SIGNAL \CH|Add0~97COUT1_176\ : std_logic;
SIGNAL \CH|Add0~100_combout\ : std_logic;
SIGNAL \CH|Add0~102\ : std_logic;
SIGNAL \CH|Add0~120_combout\ : std_logic;
SIGNAL \CH1|Add0~12\ : std_logic;
SIGNAL \CH1|Add0~12COUT1_158\ : std_logic;
SIGNAL \CH1|Add0~17\ : std_logic;
SIGNAL \CH1|Add0~17COUT1_159\ : std_logic;
SIGNAL \CH1|Add0~27\ : std_logic;
SIGNAL \CH1|Add0~22\ : std_logic;
SIGNAL \CH1|Add0~22COUT1_160\ : std_logic;
SIGNAL \CH1|Add0~32\ : std_logic;
SIGNAL \CH1|Add0~32COUT1_161\ : std_logic;
SIGNAL \CH1|Add0~37\ : std_logic;
SIGNAL \CH1|Add0~37COUT1_162\ : std_logic;
SIGNAL \CH1|Add0~42\ : std_logic;
SIGNAL \CH1|Add0~42COUT1_163\ : std_logic;
SIGNAL \CH1|Add0~47\ : std_logic;
SIGNAL \CH1|Add0~52\ : std_logic;
SIGNAL \CH1|Add0~52COUT1_164\ : std_logic;
SIGNAL \CH1|Add0~67\ : std_logic;
SIGNAL \CH1|Add0~67COUT1_165\ : std_logic;
SIGNAL \CH1|Add0~72\ : std_logic;
SIGNAL \CH1|Add0~72COUT1_166\ : std_logic;
SIGNAL \CH1|Add0~57\ : std_logic;
SIGNAL \CH1|Add0~57COUT1_167\ : std_logic;
SIGNAL \CH1|Add0~62\ : std_logic;
SIGNAL \CH1|Add0~77\ : std_logic;
SIGNAL \CH1|Add0~77COUT1_168\ : std_logic;
SIGNAL \CH1|Add0~82\ : std_logic;
SIGNAL \CH1|Add0~82COUT1_169\ : std_logic;
SIGNAL \CH1|Add0~87\ : std_logic;
SIGNAL \CH1|Add0~87COUT1_170\ : std_logic;
SIGNAL \CH1|Add0~92\ : std_logic;
SIGNAL \CH1|Add0~92COUT1_171\ : std_logic;
SIGNAL \CH1|Add0~97\ : std_logic;
SIGNAL \CH1|Add0~102\ : std_logic;
SIGNAL \CH1|Add0~102COUT1_172\ : std_logic;
SIGNAL \CH1|Add0~107\ : std_logic;
SIGNAL \CH1|Add0~107COUT1_173\ : std_logic;
SIGNAL \CH1|Add0~112\ : std_logic;
SIGNAL \CH1|Add0~112COUT1_174\ : std_logic;
SIGNAL \CH1|Add0~115_combout\ : std_logic;
SIGNAL \CH1|Add0~117\ : std_logic;
SIGNAL \CH1|Add0~117COUT1_175\ : std_logic;
SIGNAL \CH1|Add0~122\ : std_logic;
SIGNAL \CH1|Add0~125_combout\ : std_logic;
SIGNAL \CH1|Add0~120_combout\ : std_logic;
SIGNAL \CH1|Add0~127\ : std_logic;
SIGNAL \CH1|Add0~127COUT1_176\ : std_logic;
SIGNAL \CH1|Add0~130_combout\ : std_logic;
SIGNAL \CH1|Equal0~7_combout\ : std_logic;
SIGNAL \CH1|Add0~100_combout\ : std_logic;
SIGNAL \CH1|Add0~110_combout\ : std_logic;
SIGNAL \CH1|Add0~105_combout\ : std_logic;
SIGNAL \CH1|Add0~95_combout\ : std_logic;
SIGNAL \CH1|Equal0~6_combout\ : std_logic;
SIGNAL \CH1|Add0~90_combout\ : std_logic;
SIGNAL \CH1|Add0~75_combout\ : std_logic;
SIGNAL \CH1|Add0~80_combout\ : std_logic;
SIGNAL \CH1|Add0~85_combout\ : std_logic;
SIGNAL \CH1|Equal0~5_combout\ : std_logic;
SIGNAL \CH1|Add0~132\ : std_logic;
SIGNAL \CH1|Add0~132COUT1_177\ : std_logic;
SIGNAL \CH1|Add0~137\ : std_logic;
SIGNAL \CH1|Add0~137COUT1_178\ : std_logic;
SIGNAL \CH1|Add0~142\ : std_logic;
SIGNAL \CH1|Add0~142COUT1_179\ : std_logic;
SIGNAL \CH1|Add0~147\ : std_logic;
SIGNAL \CH1|Add0~150_combout\ : std_logic;
SIGNAL \CH1|Add0~140_combout\ : std_logic;
SIGNAL \CH1|Add0~145_combout\ : std_logic;
SIGNAL \CH1|Add0~135_combout\ : std_logic;
SIGNAL \CH1|Equal0~8_combout\ : std_logic;
SIGNAL \CH1|Equal0~9_combout\ : std_logic;
SIGNAL \CH1|Add0~30_combout\ : std_logic;
SIGNAL \CH1|Add0~25_combout\ : std_logic;
SIGNAL \CH1|Add0~15_combout\ : std_logic;
SIGNAL \CH1|Add0~20_combout\ : std_logic;
SIGNAL \CH1|Equal0~1_combout\ : std_logic;
SIGNAL \CH1|Add0~40_combout\ : std_logic;
SIGNAL \CH1|Add0~50_combout\ : std_logic;
SIGNAL \CH1|Add0~45_combout\ : std_logic;
SIGNAL \CH1|Add0~35_combout\ : std_logic;
SIGNAL \CH1|Equal0~2_combout\ : std_logic;
SIGNAL \CH1|Add0~60_combout\ : std_logic;
SIGNAL \CH1|Add0~70_combout\ : std_logic;
SIGNAL \CH1|Add0~65_combout\ : std_logic;
SIGNAL \CH1|Add0~55_combout\ : std_logic;
SIGNAL \CH1|Equal0~3_combout\ : std_logic;
SIGNAL \CH1|Equal0~0\ : std_logic;
SIGNAL \CH1|Equal0~4_combout\ : std_logic;
SIGNAL \CH1|Output~regout\ : std_logic;
SIGNAL \NClick~combout\ : std_logic;
SIGNAL \CL|Add0~2\ : std_logic;
SIGNAL \CL|Add0~5_combout\ : std_logic;
SIGNAL \CL|Add0~7\ : std_logic;
SIGNAL \CL|Add0~7COUT1_161\ : std_logic;
SIGNAL \CL|Add0~10_combout\ : std_logic;
SIGNAL \CL|Add0~12\ : std_logic;
SIGNAL \CL|Add0~12COUT1_162\ : std_logic;
SIGNAL \CL|Add0~15_combout\ : std_logic;
SIGNAL \CL|Add0~17\ : std_logic;
SIGNAL \CL|Add0~17COUT1_163\ : std_logic;
SIGNAL \CL|Add0~25_combout\ : std_logic;
SIGNAL \CL|Add0~27\ : std_logic;
SIGNAL \CL|Add0~27COUT1_164\ : std_logic;
SIGNAL \CL|Add0~22\ : std_logic;
SIGNAL \CL|Add0~30_combout\ : std_logic;
SIGNAL \CL|Add0~32\ : std_logic;
SIGNAL \CL|Add0~32COUT1_165\ : std_logic;
SIGNAL \CL|Add0~35_combout\ : std_logic;
SIGNAL \CL|Add0~37\ : std_logic;
SIGNAL \CL|Add0~37COUT1_166\ : std_logic;
SIGNAL \CL|Add0~40_combout\ : std_logic;
SIGNAL \CL|Add0~42\ : std_logic;
SIGNAL \CL|Add0~42COUT1_167\ : std_logic;
SIGNAL \CL|Add0~45_combout\ : std_logic;
SIGNAL \CL|Add0~47\ : std_logic;
SIGNAL \CL|Add0~47COUT1_168\ : std_logic;
SIGNAL \CL|Add0~50_combout\ : std_logic;
SIGNAL \CL|Add0~52\ : std_logic;
SIGNAL \CL|Add0~55_combout\ : std_logic;
SIGNAL \CL|Add0~57\ : std_logic;
SIGNAL \CL|Add0~57COUT1_169\ : std_logic;
SIGNAL \CL|Add0~70_combout\ : std_logic;
SIGNAL \CL|Add0~72\ : std_logic;
SIGNAL \CL|Add0~72COUT1_170\ : std_logic;
SIGNAL \CL|Add0~60_combout\ : std_logic;
SIGNAL \CL|Add0~62\ : std_logic;
SIGNAL \CL|Add0~62COUT1_171\ : std_logic;
SIGNAL \CL|Add0~75_combout\ : std_logic;
SIGNAL \CL|Add0~77\ : std_logic;
SIGNAL \CL|Add0~77COUT1_172\ : std_logic;
SIGNAL \CL|Add0~65_combout\ : std_logic;
SIGNAL \CL|Add0~67\ : std_logic;
SIGNAL \CL|Add0~80_combout\ : std_logic;
SIGNAL \CL|Add0~82\ : std_logic;
SIGNAL \CL|Add0~82COUT1_173\ : std_logic;
SIGNAL \CL|Add0~85_combout\ : std_logic;
SIGNAL \CL|Add0~87\ : std_logic;
SIGNAL \CL|Add0~87COUT1_174\ : std_logic;
SIGNAL \CL|Add0~90_combout\ : std_logic;
SIGNAL \CL|Add0~92\ : std_logic;
SIGNAL \CL|Add0~92COUT1_175\ : std_logic;
SIGNAL \CL|Add0~95_combout\ : std_logic;
SIGNAL \CL|Add0~97\ : std_logic;
SIGNAL \CL|Add0~97COUT1_176\ : std_logic;
SIGNAL \CL|Add0~100_combout\ : std_logic;
SIGNAL \CL|Add0~102\ : std_logic;
SIGNAL \CL|Add0~105_combout\ : std_logic;
SIGNAL \CL|Add0~107\ : std_logic;
SIGNAL \CL|Add0~107COUT1_177\ : std_logic;
SIGNAL \CL|Add0~110_combout\ : std_logic;
SIGNAL \CL|Add0~112\ : std_logic;
SIGNAL \CL|Add0~112COUT1_178\ : std_logic;
SIGNAL \CL|Add0~115_combout\ : std_logic;
SIGNAL \CL|Add0~117\ : std_logic;
SIGNAL \CL|Add0~117COUT1_179\ : std_logic;
SIGNAL \CL|Add0~120_combout\ : std_logic;
SIGNAL \CL|Add0~122\ : std_logic;
SIGNAL \CL|Add0~122COUT1_180\ : std_logic;
SIGNAL \CL|Add0~125_combout\ : std_logic;
SIGNAL \CL|Add0~127\ : std_logic;
SIGNAL \CL|Add0~130_combout\ : std_logic;
SIGNAL \CL|Add0~132\ : std_logic;
SIGNAL \CL|Add0~132COUT1_181\ : std_logic;
SIGNAL \CL|Add0~135_combout\ : std_logic;
SIGNAL \CL|Equal0~7_combout\ : std_logic;
SIGNAL \CL|Equal0~5_combout\ : std_logic;
SIGNAL \CL|Equal0~6_combout\ : std_logic;
SIGNAL \CL|Add0~137\ : std_logic;
SIGNAL \CL|Add0~137COUT1_182\ : std_logic;
SIGNAL \CL|Add0~140_combout\ : std_logic;
SIGNAL \CL|Add0~142\ : std_logic;
SIGNAL \CL|Add0~142COUT1_183\ : std_logic;
SIGNAL \CL|Add0~145_combout\ : std_logic;
SIGNAL \CL|Add0~147\ : std_logic;
SIGNAL \CL|Add0~147COUT1_184\ : std_logic;
SIGNAL \CL|Add0~150_combout\ : std_logic;
SIGNAL \CL|Add0~152\ : std_logic;
SIGNAL \CL|Add0~155_combout\ : std_logic;
SIGNAL \CL|Equal0~8_combout\ : std_logic;
SIGNAL \CL|Equal0~9_combout\ : std_logic;
SIGNAL \CL|Add0~20_combout\ : std_logic;
SIGNAL \CL|Equal0~1_combout\ : std_logic;
SIGNAL \CL|Add0~0_combout\ : std_logic;
SIGNAL \CL|Equal0~0_combout\ : std_logic;
SIGNAL \CL|Equal0~2_combout\ : std_logic;
SIGNAL \CL|Equal0~3_combout\ : std_logic;
SIGNAL \CL|Equal0~4_combout\ : std_logic;
SIGNAL \CL|Output~regout\ : std_logic;
SIGNAL \Edge|current_s~regout\ : std_logic;
SIGNAL \Con|state~17_combout\ : std_logic;
SIGNAL \Con|React[31]~0_combout\ : std_logic;
SIGNAL \Con|React[1]~2\ : std_logic;
SIGNAL \Con|React[1]~2COUT1_65\ : std_logic;
SIGNAL \Con|React[2]~4\ : std_logic;
SIGNAL \Con|React[2]~4COUT1_66\ : std_logic;
SIGNAL \Con|Equal1~0_combout\ : std_logic;
SIGNAL \Con|React[3]~6\ : std_logic;
SIGNAL \Con|React[3]~6COUT1_67\ : std_logic;
SIGNAL \Con|React[4]~8\ : std_logic;
SIGNAL \Con|React[4]~8COUT1_68\ : std_logic;
SIGNAL \Con|React[5]~10\ : std_logic;
SIGNAL \Con|React[6]~12\ : std_logic;
SIGNAL \Con|React[6]~12COUT1_69\ : std_logic;
SIGNAL \Con|React[7]~14\ : std_logic;
SIGNAL \Con|React[7]~14COUT1_70\ : std_logic;
SIGNAL \Con|React[8]~16\ : std_logic;
SIGNAL \Con|React[8]~16COUT1_71\ : std_logic;
SIGNAL \Con|React[9]~18\ : std_logic;
SIGNAL \Con|React[9]~18COUT1_72\ : std_logic;
SIGNAL \Con|React[10]~20\ : std_logic;
SIGNAL \Con|React[11]~22\ : std_logic;
SIGNAL \Con|React[11]~22COUT1_73\ : std_logic;
SIGNAL \Con|React[12]~24\ : std_logic;
SIGNAL \Con|React[12]~24COUT1_74\ : std_logic;
SIGNAL \Con|React[13]~26\ : std_logic;
SIGNAL \Con|React[13]~26COUT1_75\ : std_logic;
SIGNAL \Con|React[14]~28\ : std_logic;
SIGNAL \Con|React[14]~28COUT1_76\ : std_logic;
SIGNAL \Con|Equal1~3_combout\ : std_logic;
SIGNAL \Con|Equal1~2_combout\ : std_logic;
SIGNAL \Con|Equal1~1_combout\ : std_logic;
SIGNAL \Con|Equal1~4_combout\ : std_logic;
SIGNAL \Con|React[15]~30\ : std_logic;
SIGNAL \Con|React[16]~32\ : std_logic;
SIGNAL \Con|React[16]~32COUT1_77\ : std_logic;
SIGNAL \Con|React[17]~34\ : std_logic;
SIGNAL \Con|React[17]~34COUT1_78\ : std_logic;
SIGNAL \Con|React[18]~36\ : std_logic;
SIGNAL \Con|React[18]~36COUT1_79\ : std_logic;
SIGNAL \Con|React[19]~38\ : std_logic;
SIGNAL \Con|React[19]~38COUT1_80\ : std_logic;
SIGNAL \Con|React[20]~40\ : std_logic;
SIGNAL \Con|React[21]~42\ : std_logic;
SIGNAL \Con|React[21]~42COUT1_81\ : std_logic;
SIGNAL \Con|React[22]~44\ : std_logic;
SIGNAL \Con|React[22]~44COUT1_82\ : std_logic;
SIGNAL \Con|React[23]~46\ : std_logic;
SIGNAL \Con|React[23]~46COUT1_83\ : std_logic;
SIGNAL \Con|React[24]~48\ : std_logic;
SIGNAL \Con|React[24]~48COUT1_84\ : std_logic;
SIGNAL \Con|React[25]~50\ : std_logic;
SIGNAL \Con|React[26]~52\ : std_logic;
SIGNAL \Con|React[26]~52COUT1_85\ : std_logic;
SIGNAL \Con|Equal1~8_combout\ : std_logic;
SIGNAL \Con|Equal1~5_combout\ : std_logic;
SIGNAL \Con|Equal1~6_combout\ : std_logic;
SIGNAL \Con|Equal1~7_combout\ : std_logic;
SIGNAL \Con|React[27]~54\ : std_logic;
SIGNAL \Con|React[27]~54COUT1_86\ : std_logic;
SIGNAL \Con|React[28]~56\ : std_logic;
SIGNAL \Con|React[28]~56COUT1_87\ : std_logic;
SIGNAL \Con|React[29]~58\ : std_logic;
SIGNAL \Con|React[29]~58COUT1_88\ : std_logic;
SIGNAL \Con|React[30]~60\ : std_logic;
SIGNAL \Con|Equal1~9_combout\ : std_logic;
SIGNAL \Con|Equal1~10_combout\ : std_logic;
SIGNAL \Con|Add0~35_combout\ : std_logic;
SIGNAL \Con|Add0~37\ : std_logic;
SIGNAL \Con|Add0~40_combout\ : std_logic;
SIGNAL \Con|Add0~42\ : std_logic;
SIGNAL \Con|Add0~42COUT1_161\ : std_logic;
SIGNAL \Con|Add0~45_combout\ : std_logic;
SIGNAL \Con|Add0~47\ : std_logic;
SIGNAL \Con|Add0~47COUT1_162\ : std_logic;
SIGNAL \Con|Add0~50_combout\ : std_logic;
SIGNAL \Con|Add0~52\ : std_logic;
SIGNAL \Con|Add0~52COUT1_163\ : std_logic;
SIGNAL \Con|Add0~30_combout\ : std_logic;
SIGNAL \Con|Add0~32\ : std_logic;
SIGNAL \Con|Add0~32COUT1_164\ : std_logic;
SIGNAL \Con|Add0~25_combout\ : std_logic;
SIGNAL \Con|Add0~27\ : std_logic;
SIGNAL \Con|Add0~5_combout\ : std_logic;
SIGNAL \Con|Add0~7\ : std_logic;
SIGNAL \Con|Add0~7COUT1_165\ : std_logic;
SIGNAL \Con|Add0~10_combout\ : std_logic;
SIGNAL \Con|Add0~12\ : std_logic;
SIGNAL \Con|Add0~12COUT1_166\ : std_logic;
SIGNAL \Con|Add0~15_combout\ : std_logic;
SIGNAL \Con|Add0~17\ : std_logic;
SIGNAL \Con|Add0~17COUT1_167\ : std_logic;
SIGNAL \Con|Add0~20_combout\ : std_logic;
SIGNAL \Con|Add0~22\ : std_logic;
SIGNAL \Con|Add0~22COUT1_168\ : std_logic;
SIGNAL \Con|Add0~2\ : std_logic;
SIGNAL \Con|Add0~75_combout\ : std_logic;
SIGNAL \Con|Add0~77\ : std_logic;
SIGNAL \Con|Add0~77COUT1_169\ : std_logic;
SIGNAL \Con|Add0~80_combout\ : std_logic;
SIGNAL \Con|Add0~82\ : std_logic;
SIGNAL \Con|Add0~82COUT1_170\ : std_logic;
SIGNAL \Con|Add0~85_combout\ : std_logic;
SIGNAL \Con|Add0~87\ : std_logic;
SIGNAL \Con|Add0~87COUT1_171\ : std_logic;
SIGNAL \Con|Add0~90_combout\ : std_logic;
SIGNAL \Con|Add0~92\ : std_logic;
SIGNAL \Con|Add0~92COUT1_172\ : std_logic;
SIGNAL \Con|Add0~95_combout\ : std_logic;
SIGNAL \Con|Add0~97\ : std_logic;
SIGNAL \Con|Add0~102\ : std_logic;
SIGNAL \Con|Add0~102COUT1_173\ : std_logic;
SIGNAL \Con|Add0~105_combout\ : std_logic;
SIGNAL \Con|Add0~107\ : std_logic;
SIGNAL \Con|Add0~107COUT1_174\ : std_logic;
SIGNAL \Con|Add0~110_combout\ : std_logic;
SIGNAL \Con|Add0~112\ : std_logic;
SIGNAL \Con|Add0~112COUT1_175\ : std_logic;
SIGNAL \Con|Add0~115_combout\ : std_logic;
SIGNAL \Con|Add0~117\ : std_logic;
SIGNAL \Con|Add0~117COUT1_176\ : std_logic;
SIGNAL \Con|Add0~120_combout\ : std_logic;
SIGNAL \Con|Add0~122\ : std_logic;
SIGNAL \Con|Add0~125_combout\ : std_logic;
SIGNAL \Con|Add0~127\ : std_logic;
SIGNAL \Con|Add0~127COUT1_177\ : std_logic;
SIGNAL \Con|Add0~130_combout\ : std_logic;
SIGNAL \Con|Add0~132\ : std_logic;
SIGNAL \Con|Add0~132COUT1_178\ : std_logic;
SIGNAL \Con|Add0~135_combout\ : std_logic;
SIGNAL \Con|Add0~137\ : std_logic;
SIGNAL \Con|Add0~137COUT1_179\ : std_logic;
SIGNAL \Con|Add0~140_combout\ : std_logic;
SIGNAL \Con|Add0~142\ : std_logic;
SIGNAL \Con|Add0~142COUT1_180\ : std_logic;
SIGNAL \Con|Add0~145_combout\ : std_logic;
SIGNAL \Con|Add0~147\ : std_logic;
SIGNAL \Con|Add0~150_combout\ : std_logic;
SIGNAL \Con|Add0~152\ : std_logic;
SIGNAL \Con|Add0~152COUT1_181\ : std_logic;
SIGNAL \Con|Add0~55_combout\ : std_logic;
SIGNAL \Con|Add0~57\ : std_logic;
SIGNAL \Con|Add0~57COUT1_182\ : std_logic;
SIGNAL \Con|Add0~60_combout\ : std_logic;
SIGNAL \Con|Add0~62\ : std_logic;
SIGNAL \Con|Add0~62COUT1_183\ : std_logic;
SIGNAL \Con|Add0~65_combout\ : std_logic;
SIGNAL \Con|Add0~67\ : std_logic;
SIGNAL \Con|Add0~67COUT1_184\ : std_logic;
SIGNAL \Con|Add0~70_combout\ : std_logic;
SIGNAL \Con|Add0~72\ : std_logic;
SIGNAL \Con|Add0~155_combout\ : std_logic;
SIGNAL \Con|LessThan1~4_combout\ : std_logic;
SIGNAL \Con|LessThan0~7_combout\ : std_logic;
SIGNAL \Con|LessThan0~8_combout\ : std_logic;
SIGNAL \Con|LessThan0~9_combout\ : std_logic;
SIGNAL \Con|LessThan0~4_combout\ : std_logic;
SIGNAL \Con|LessThan0~5_combout\ : std_logic;
SIGNAL \Con|LessThan0~0_combout\ : std_logic;
SIGNAL \Con|LessThan0~1_combout\ : std_logic;
SIGNAL \Con|LessThan0~2_combout\ : std_logic;
SIGNAL \Con|LessThan0~3_combout\ : std_logic;
SIGNAL \Con|LessThan0~6_combout\ : std_logic;
SIGNAL \Edge|W~0_combout\ : std_logic;
SIGNAL \Con|process_1~0_combout\ : std_logic;
SIGNAL \Con|state~12_combout\ : std_logic;
SIGNAL \Con|state.GON~regout\ : std_logic;
SIGNAL \Con|Add0~0_combout\ : std_logic;
SIGNAL \Con|LessThan1~1_combout\ : std_logic;
SIGNAL \Con|LessThan1~0_combout\ : std_logic;
SIGNAL \Con|LessThan1~2_combout\ : std_logic;
SIGNAL \Con|LessThan1~3_combout\ : std_logic;
SIGNAL \Con|Count[14]~0_combout\ : std_logic;
SIGNAL \Con|Add0~100_combout\ : std_logic;
SIGNAL \Con|Add1~17_cout\ : std_logic;
SIGNAL \Con|Add1~7\ : std_logic;
SIGNAL \Con|Add1~7COUT1_166\ : std_logic;
SIGNAL \Con|Add1~2\ : std_logic;
SIGNAL \Con|Add1~2COUT1_167\ : std_logic;
SIGNAL \Con|Add1~12\ : std_logic;
SIGNAL \Con|Add1~12COUT1_168\ : std_logic;
SIGNAL \Con|Add1~22\ : std_logic;
SIGNAL \Con|Add1~22COUT1_169\ : std_logic;
SIGNAL \Con|Add1~27\ : std_logic;
SIGNAL \Con|Add1~32\ : std_logic;
SIGNAL \Con|Add1~32COUT1_170\ : std_logic;
SIGNAL \Con|Add1~37\ : std_logic;
SIGNAL \Con|Add1~37COUT1_171\ : std_logic;
SIGNAL \Con|Add1~42\ : std_logic;
SIGNAL \Con|Add1~42COUT1_172\ : std_logic;
SIGNAL \Con|Add1~47\ : std_logic;
SIGNAL \Con|Add1~47COUT1_173\ : std_logic;
SIGNAL \Con|Add1~52\ : std_logic;
SIGNAL \Con|Add1~62\ : std_logic;
SIGNAL \Con|Add1~62COUT1_174\ : std_logic;
SIGNAL \Con|Add1~57\ : std_logic;
SIGNAL \Con|Add1~57COUT1_175\ : std_logic;
SIGNAL \Con|Add1~72\ : std_logic;
SIGNAL \Con|Add1~72COUT1_176\ : std_logic;
SIGNAL \Con|Add1~67\ : std_logic;
SIGNAL \Con|Add1~67COUT1_177\ : std_logic;
SIGNAL \Con|Add1~82\ : std_logic;
SIGNAL \Con|Add1~75_combout\ : std_logic;
SIGNAL \Con|Add1~55_combout\ : std_logic;
SIGNAL \Con|Add1~35_combout\ : std_logic;
SIGNAL \Con|Add1~30_combout\ : std_logic;
SIGNAL \Con|Add1~25_combout\ : std_logic;
SIGNAL \Con|Add1~20_combout\ : std_logic;
SIGNAL \Con|Add2~2\ : std_logic;
SIGNAL \Con|Add2~2COUT1_146\ : std_logic;
SIGNAL \Con|Add2~7\ : std_logic;
SIGNAL \Con|Add2~7COUT1_147\ : std_logic;
SIGNAL \Con|Add2~12\ : std_logic;
SIGNAL \Con|Add2~12COUT1_148\ : std_logic;
SIGNAL \Con|Add2~17\ : std_logic;
SIGNAL \Con|Add1~60_combout\ : std_logic;
SIGNAL \Con|Add1~50_combout\ : std_logic;
SIGNAL \Con|Add1~45_combout\ : std_logic;
SIGNAL \Con|Add1~40_combout\ : std_logic;
SIGNAL \Con|Add2~22\ : std_logic;
SIGNAL \Con|Add2~22COUT1_149\ : std_logic;
SIGNAL \Con|Add2~27\ : std_logic;
SIGNAL \Con|Add2~27COUT1_150\ : std_logic;
SIGNAL \Con|Add2~32\ : std_logic;
SIGNAL \Con|Add2~32COUT1_151\ : std_logic;
SIGNAL \Con|Add2~42\ : std_logic;
SIGNAL \Con|Add2~42COUT1_152\ : std_logic;
SIGNAL \Con|Add2~37\ : std_logic;
SIGNAL \Con|Add1~80_combout\ : std_logic;
SIGNAL \Con|Add1~65_combout\ : std_logic;
SIGNAL \Con|Add1~70_combout\ : std_logic;
SIGNAL \Con|Add2~52\ : std_logic;
SIGNAL \Con|Add2~52COUT1_153\ : std_logic;
SIGNAL \Con|Add2~47\ : std_logic;
SIGNAL \Con|Add2~47COUT1_154\ : std_logic;
SIGNAL \Con|Add2~62\ : std_logic;
SIGNAL \Con|Add2~62COUT1_155\ : std_logic;
SIGNAL \Con|Equal0~8_combout\ : std_logic;
SIGNAL \Con|Equal0~7_combout\ : std_logic;
SIGNAL \Con|Equal0~6_combout\ : std_logic;
SIGNAL \Con|Add2~30_combout\ : std_logic;
SIGNAL \Con|Add2~25_combout\ : std_logic;
SIGNAL \Con|Equal0~5_combout\ : std_logic;
SIGNAL \Con|Equal0~9_combout\ : std_logic;
SIGNAL \Con|Equal0~0_combout\ : std_logic;
SIGNAL \Con|Add2~0_combout\ : std_logic;
SIGNAL \Con|Equal0~1_combout\ : std_logic;
SIGNAL \Con|Add2~10_combout\ : std_logic;
SIGNAL \Con|Equal0~2_combout\ : std_logic;
SIGNAL \Con|Add2~15_combout\ : std_logic;
SIGNAL \Con|Add2~20_combout\ : std_logic;
SIGNAL \Con|Equal0~3_combout\ : std_logic;
SIGNAL \Con|Equal0~4_combout\ : std_logic;
SIGNAL \Con|Add1~77\ : std_logic;
SIGNAL \Con|Add1~77COUT1_178\ : std_logic;
SIGNAL \Con|Add1~92\ : std_logic;
SIGNAL \Con|Add1~92COUT1_179\ : std_logic;
SIGNAL \Con|Add1~87\ : std_logic;
SIGNAL \Con|Add1~87COUT1_180\ : std_logic;
SIGNAL \Con|Add1~102\ : std_logic;
SIGNAL \Con|Add1~102COUT1_181\ : std_logic;
SIGNAL \Con|Add1~97\ : std_logic;
SIGNAL \Con|Add1~112\ : std_logic;
SIGNAL \Con|Add1~112COUT1_182\ : std_logic;
SIGNAL \Con|Add1~107\ : std_logic;
SIGNAL \Con|Add1~107COUT1_183\ : std_logic;
SIGNAL \Con|Add1~122\ : std_logic;
SIGNAL \Con|Add1~122COUT1_184\ : std_logic;
SIGNAL \Con|Add1~115_combout\ : std_logic;
SIGNAL \Con|Add1~105_combout\ : std_logic;
SIGNAL \Con|Add1~90_combout\ : std_logic;
SIGNAL \Con|Add2~57\ : std_logic;
SIGNAL \Con|Add2~57COUT1_156\ : std_logic;
SIGNAL \Con|Add2~72\ : std_logic;
SIGNAL \Con|Add1~110_combout\ : std_logic;
SIGNAL \Con|Add1~95_combout\ : std_logic;
SIGNAL \Con|Add1~100_combout\ : std_logic;
SIGNAL \Con|Add1~85_combout\ : std_logic;
SIGNAL \Con|Add2~67\ : std_logic;
SIGNAL \Con|Add2~67COUT1_157\ : std_logic;
SIGNAL \Con|Add2~82\ : std_logic;
SIGNAL \Con|Add2~82COUT1_158\ : std_logic;
SIGNAL \Con|Add2~77\ : std_logic;
SIGNAL \Con|Add2~77COUT1_159\ : std_logic;
SIGNAL \Con|Add2~92\ : std_logic;
SIGNAL \Con|Add2~92COUT1_160\ : std_logic;
SIGNAL \Con|Add2~87\ : std_logic;
SIGNAL \Con|Add1~120_combout\ : std_logic;
SIGNAL \Con|Add2~102\ : std_logic;
SIGNAL \Con|Add2~102COUT1_161\ : std_logic;
SIGNAL \Con|Equal0~13_combout\ : std_logic;
SIGNAL \Con|Equal0~10_combout\ : std_logic;
SIGNAL \Con|Equal0~11_combout\ : std_logic;
SIGNAL \Con|Equal0~12_combout\ : std_logic;
SIGNAL \Con|Equal0~14_combout\ : std_logic;
SIGNAL \Con|Add1~117\ : std_logic;
SIGNAL \Con|Add1~117COUT1_185\ : std_logic;
SIGNAL \Con|Add1~132\ : std_logic;
SIGNAL \Con|Add1~125_combout\ : std_logic;
SIGNAL \Con|Add1~130_combout\ : std_logic;
SIGNAL \Con|Add2~97\ : std_logic;
SIGNAL \Con|Add2~97COUT1_162\ : std_logic;
SIGNAL \Con|Add2~112\ : std_logic;
SIGNAL \Con|Add2~112COUT1_163\ : std_logic;
SIGNAL \Con|Equal0~15_combout\ : std_logic;
SIGNAL \Con|Add1~127\ : std_logic;
SIGNAL \Con|Add1~127COUT1_186\ : std_logic;
SIGNAL \Con|Add1~137\ : std_logic;
SIGNAL \Con|Add1~137COUT1_187\ : std_logic;
SIGNAL \Con|Add1~142\ : std_logic;
SIGNAL \Con|Add1~142COUT1_188\ : std_logic;
SIGNAL \Con|Add1~152\ : std_logic;
SIGNAL \Con|Add1~152COUT1_189\ : std_logic;
SIGNAL \Con|Add1~147\ : std_logic;
SIGNAL \Con|Add1~160_combout\ : std_logic;
SIGNAL \Con|Add1~135_combout\ : std_logic;
SIGNAL \Con|Add2~107\ : std_logic;
SIGNAL \Con|Add2~107COUT1_164\ : std_logic;
SIGNAL \Con|Add2~117\ : std_logic;
SIGNAL \Con|Add1~145_combout\ : std_logic;
SIGNAL \Con|Add1~150_combout\ : std_logic;
SIGNAL \Con|Add1~140_combout\ : std_logic;
SIGNAL \Con|Add2~122\ : std_logic;
SIGNAL \Con|Add2~122COUT1_165\ : std_logic;
SIGNAL \Con|Add2~132\ : std_logic;
SIGNAL \Con|Add2~132COUT1_166\ : std_logic;
SIGNAL \Con|Add2~127\ : std_logic;
SIGNAL \Con|Add2~127COUT1_167\ : std_logic;
SIGNAL \Con|Add1~162\ : std_logic;
SIGNAL \Con|Add1~162COUT1_190\ : std_logic;
SIGNAL \Con|Add1~155_combout\ : std_logic;
SIGNAL \Con|Add2~142\ : std_logic;
SIGNAL \Con|Add2~142COUT1_168\ : std_logic;
SIGNAL \Con|Equal0~18_combout\ : std_logic;
SIGNAL \Con|Equal0~17_combout\ : std_logic;
SIGNAL \Con|Equal0~16_combout\ : std_logic;
SIGNAL \Con|Equal0~19_combout\ : std_logic;
SIGNAL \Con|Equal0~20_combout\ : std_logic;
SIGNAL \Con|LEDF~regout\ : std_logic;
SIGNAL \Con|TimeClk~combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~2\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~155_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~157\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~157COUT1_161\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~145_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~147\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~147COUT1_162\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~150_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Equal8~0\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~152\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~152COUT1_163\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~140_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~142\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~142COUT1_164\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~135_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~137\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~130_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~132\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~132COUT1_165\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~125_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~127\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~127COUT1_166\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~120_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~122\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~122COUT1_167\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~115_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~117\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~117COUT1_168\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~110_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~112\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~105_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Equal0~6\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~107\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~107COUT1_169\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~100_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~102\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~102COUT1_170\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~95_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~97\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~97COUT1_171\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~90_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~92\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~92COUT1_172\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~85_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Equal0~5\ : std_logic;
SIGNAL \Con|TimeCount0|Equal0~7\ : std_logic;
SIGNAL \Con|TimeCount0|Equal0~8_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~87\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~80_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~82\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~82COUT1_173\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~75_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~77\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~77COUT1_174\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~70_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~72\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~72COUT1_175\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~65_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~67\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~67COUT1_176\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~60_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~62\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~55_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~57\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~57COUT1_177\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~50_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~52\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~52COUT1_178\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~45_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Equal0~2\ : std_logic;
SIGNAL \Con|TimeCount0|Equal0~3\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~47\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~47COUT1_179\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~40_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~42\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~42COUT1_180\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~35_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~37\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~30_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~32\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~32COUT1_181\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~25_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~27\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~27COUT1_182\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~20_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~22\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~22COUT1_183\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~15_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~17\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~17COUT1_184\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~10_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~12\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~5_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Equal0~0\ : std_logic;
SIGNAL \Con|TimeCount0|Equal0~1\ : std_logic;
SIGNAL \Con|TimeCount0|Equal0~4_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Equal8~1_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Equal0~9_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Add0~0_combout\ : std_logic;
SIGNAL \Con|TimeCount0|Equal4~0_combout\ : std_logic;
SIGNAL \Con|TimeCount0|car~regout\ : std_logic;
SIGNAL \CH|Output~regout\ : std_logic;
SIGNAL \col~16_combout\ : std_logic;
SIGNAL \col~15_combout\ : std_logic;
SIGNAL \col[2]~14_combout\ : std_logic;
SIGNAL \LCD1|count_cmd[2]~0_combout\ : std_logic;
SIGNAL \LCD1|state.S0~regout\ : std_logic;
SIGNAL \LCD1|state.S1~regout\ : std_logic;
SIGNAL \LCD1|state.S2~regout\ : std_logic;
SIGNAL \LCD1|LessThan0~0_combout\ : std_logic;
SIGNAL \LCD1|state.S9~regout\ : std_logic;
SIGNAL \LCD1|state.S3~regout\ : std_logic;
SIGNAL \LCD1|state.S4~regout\ : std_logic;
SIGNAL \LCD1|state.S5~regout\ : std_logic;
SIGNAL \LCD1|state.S6~regout\ : std_logic;
SIGNAL \LCD1|state.S7~regout\ : std_logic;
SIGNAL \LCD1|state.S8~regout\ : std_logic;
SIGNAL \LCD1|ack~regout\ : std_logic;
SIGNAL \lcd_data~16_combout\ : std_logic;
SIGNAL \col~10_combout\ : std_logic;
SIGNAL \col~11_combout\ : std_logic;
SIGNAL \col~12_combout\ : std_logic;
SIGNAL \col~13_combout\ : std_logic;
SIGNAL \col~8_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~0_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~2\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~155_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~157\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~157COUT1_161\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~152COUT1_162\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~147\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~147COUT1_163\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~140_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~142\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~142COUT1_164\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~135_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~137\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~130_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~132\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~132COUT1_165\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~125_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~127\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~127COUT1_166\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~120_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~122\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~122COUT1_167\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~115_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~117\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~117COUT1_168\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~110_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~112\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~105_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~107\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~107COUT1_169\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~100_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~102\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~102COUT1_170\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~95_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~97\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~97COUT1_171\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~90_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~92\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~92COUT1_172\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~85_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~87\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~80_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~82\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~82COUT1_173\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~75_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~77\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~77COUT1_174\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~70_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~72\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~72COUT1_175\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~65_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~67\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~67COUT1_176\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~60_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~62\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~55_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~57\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~57COUT1_177\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~50_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~52\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~52COUT1_178\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~45_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~47\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~47COUT1_179\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~40_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~42\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~42COUT1_180\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~35_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~37\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~30_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~32\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~32COUT1_181\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~25_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~27\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~27COUT1_182\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~20_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~22\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~22COUT1_183\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~15_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~17\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~17COUT1_184\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~10_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~12\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~5_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~0\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~1\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~3\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~2\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~4_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~7\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~6\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~5\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~8_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~150_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~152\ : std_logic;
SIGNAL \Con|TimeCount1|Add0~145_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Equal8~0_combout\ : std_logic;
SIGNAL \Con|TimeCount1|car~regout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~0_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~2\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~155_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~157\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~157COUT1_161\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~150_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~152COUT1_162\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~147\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~147COUT1_163\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~140_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~142\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~142COUT1_164\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~135_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~137\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~130_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~132\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~132COUT1_165\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~125_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~127\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~127COUT1_166\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~120_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~122\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~122COUT1_167\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~115_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~117\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~117COUT1_168\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~110_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~112\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~105_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Equal0~6\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~107\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~107COUT1_169\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~100_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~102\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~102COUT1_170\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~95_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~97\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~97COUT1_171\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~90_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~92\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~92COUT1_172\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~85_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Equal0~5\ : std_logic;
SIGNAL \Con|TimeCount2|Equal0~7\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~87\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~80_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~82\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~82COUT1_173\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~75_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~77\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~77COUT1_174\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~70_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~72\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~72COUT1_175\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~65_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~67\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~67COUT1_176\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~60_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~62\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~55_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~57\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~57COUT1_177\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~50_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~52\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~52COUT1_178\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~45_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Equal0~2\ : std_logic;
SIGNAL \Con|TimeCount2|Equal0~3\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~47\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~47COUT1_179\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~40_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~42\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~42COUT1_180\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~35_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~37\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~30_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~32\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~32COUT1_181\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~25_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~27\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~27COUT1_182\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~20_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~22\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~22COUT1_183\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~15_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~17\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~17COUT1_184\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~10_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~12\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~5_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Equal0~0\ : std_logic;
SIGNAL \Con|TimeCount2|Equal0~1\ : std_logic;
SIGNAL \Con|TimeCount2|Equal0~4_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Equal0~8_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~152\ : std_logic;
SIGNAL \Con|TimeCount2|Add0~145_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Equal8~0_combout\ : std_logic;
SIGNAL \Con|TimeCount2|car~regout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~2\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~155_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~157COUT1_161\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~147COUT1_162\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~152\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~152COUT1_163\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~140_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~142\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~142COUT1_164\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~135_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~137\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~130_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~132\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~132COUT1_165\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~125_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~127\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~127COUT1_166\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~120_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~122\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~122COUT1_167\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~115_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~117\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~117COUT1_168\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~110_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~112\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~105_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Equal0~6\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~107\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~107COUT1_169\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~100_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~102\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~102COUT1_170\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~95_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~97\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~97COUT1_171\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~90_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~92\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~92COUT1_172\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~85_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Equal0~5\ : std_logic;
SIGNAL \Con|TimeCount3|Equal0~7\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~87\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~80_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~82\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~82COUT1_173\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~75_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~77\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~77COUT1_174\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~70_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~72\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~72COUT1_175\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~65_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~67\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~67COUT1_176\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~60_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~62\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~55_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~57\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~57COUT1_177\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~50_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~52\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~52COUT1_178\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~45_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~47\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~47COUT1_179\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~40_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~42\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~42COUT1_180\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~35_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~37\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~30_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~32\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~32COUT1_181\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~25_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Equal0~1\ : std_logic;
SIGNAL \Con|TimeCount3|Equal0~3\ : std_logic;
SIGNAL \Con|TimeCount3|Equal0~2\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~27\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~27COUT1_182\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~20_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~22\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~22COUT1_183\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~15_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~17\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~17COUT1_184\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~10_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~12\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~5_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Equal0~0\ : std_logic;
SIGNAL \Con|TimeCount3|Equal0~4_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Equal0~8_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Equal8~0_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~157\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~145_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~147\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~150_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Equal0~9\ : std_logic;
SIGNAL \Con|TimeCount3|Add0~0_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Equal4~0_combout\ : std_logic;
SIGNAL \Con|TimeCount3|car~regout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~157\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~152\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~152COUT1_161\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~145_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~147\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~147COUT1_162\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~140_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~142\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~142COUT1_163\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~135_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~137\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~137COUT1_164\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~130_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~132\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~125_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~127\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~127COUT1_165\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~120_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Equal0~7\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~122\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~122COUT1_166\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~115_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~117\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~117COUT1_167\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~110_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~112\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~112COUT1_168\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~105_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~107\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~100_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~102\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~102COUT1_169\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~95_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~97\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~97COUT1_170\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~90_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~92\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~92COUT1_171\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~85_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~87\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~87COUT1_172\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~80_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Equal0~5\ : std_logic;
SIGNAL \Con|TimeCount4|Equal0~6\ : std_logic;
SIGNAL \Con|TimeCount4|Equal0~8_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~82\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~75_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~77\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~77COUT1_173\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~70_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~72\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~72COUT1_174\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~65_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~67\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~67COUT1_175\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~60_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~62\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~62COUT1_176\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~55_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~57\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~50_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~52\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~52COUT1_177\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~45_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~47\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~47COUT1_178\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~40_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~42\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~42COUT1_179\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~35_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~37\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~37COUT1_180\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~30_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~32\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~25_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~27\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~27COUT1_181\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~20_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Equal0~1\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~22\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~22COUT1_182\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~15_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~17\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~17COUT1_183\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~10_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~12\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~12COUT1_184\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~5_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~7\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~0_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Equal0~0\ : std_logic;
SIGNAL \Con|TimeCount4|Equal0~3\ : std_logic;
SIGNAL \Con|TimeCount4|Equal0~2\ : std_logic;
SIGNAL \Con|TimeCount4|Equal0~4_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Equal8~0\ : std_logic;
SIGNAL \Con|TimeCount4|Equal8~1_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Equal0~9_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~155_combout\ : std_logic;
SIGNAL \Con|TimeCount4|Add0~150_combout\ : std_logic;
SIGNAL \Con|state~15_combout\ : std_logic;
SIGNAL \Con|state~16_combout\ : std_logic;
SIGNAL \Con|state.GOVER~regout\ : std_logic;
SIGNAL \Con|LEDOver~regout\ : std_logic;
SIGNAL \Con|state~14\ : std_logic;
SIGNAL \Con|state.GEND~regout\ : std_logic;
SIGNAL \Con|LEDEnd~regout\ : std_logic;
SIGNAL \LCD1|Selector6~0_combout\ : std_logic;
SIGNAL \lcd_data~24_combout\ : std_logic;
SIGNAL \lcd_data~23\ : std_logic;
SIGNAL \lcd_data~25_combout\ : std_logic;
SIGNAL \A4|Y[1]~6\ : std_logic;
SIGNAL \Con|TimeCount4|Equal4~0_combout\ : std_logic;
SIGNAL \A4|Y[3]~7_combout\ : std_logic;
SIGNAL \A4|Y[0]~8_combout\ : std_logic;
SIGNAL \lcd_data~63\ : std_logic;
SIGNAL \lcd_data~64_combout\ : std_logic;
SIGNAL \lcd_data~26_combout\ : std_logic;
SIGNAL \lcd_data~21_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Equal0~9\ : std_logic;
SIGNAL \Con|TimeCount2|Equal4~0_combout\ : std_logic;
SIGNAL \lcd_data~19_combout\ : std_logic;
SIGNAL \lcd_data~17\ : std_logic;
SIGNAL \lcd_data~18\ : std_logic;
SIGNAL \lcd_data~55_combout\ : std_logic;
SIGNAL \lcd_data~20_combout\ : std_logic;
SIGNAL \lcd_data~22_combout\ : std_logic;
SIGNAL \LCD1|state~32\ : std_logic;
SIGNAL \LCD1|Selector5~0_combout\ : std_logic;
SIGNAL \LCD1|Selector7~0_combout\ : std_logic;
SIGNAL \LCD1|Selector8~0_combout\ : std_logic;
SIGNAL \LCD1|lcd[4]~0_combout\ : std_logic;
SIGNAL \LCD1|Selector7~1\ : std_logic;
SIGNAL \lcd_data~37_combout\ : std_logic;
SIGNAL \A4|Y[1]~9_combout\ : std_logic;
SIGNAL \A4|Y[1]~13_combout\ : std_logic;
SIGNAL \lcd_data~27_combout\ : std_logic;
SIGNAL \A4|Y[1]~12\ : std_logic;
SIGNAL \lcd_data~56_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \lcd_data~59_combout\ : std_logic;
SIGNAL \lcd_data~29_combout\ : std_logic;
SIGNAL \lcd_data~28_combout\ : std_logic;
SIGNAL \lcd_data~58_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \lcd_data~57_combout\ : std_logic;
SIGNAL \lcd_data~30_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~10\ : std_logic;
SIGNAL \lcd_data~34_combout\ : std_logic;
SIGNAL \lcd_data~60_combout\ : std_logic;
SIGNAL \lcd_data~32_combout\ : std_logic;
SIGNAL \lcd_data~31_combout\ : std_logic;
SIGNAL \lcd_data~33_combout\ : std_logic;
SIGNAL \lcd_data~35_combout\ : std_logic;
SIGNAL \lcd_data~36_combout\ : std_logic;
SIGNAL \LCD1|Selector6~1\ : std_logic;
SIGNAL \lcd_data~43_combout\ : std_logic;
SIGNAL \A4|Y[2]~14_combout\ : std_logic;
SIGNAL \lcd_data~62_combout\ : std_logic;
SIGNAL \Con|TimeCount3|Equal2~0_combout\ : std_logic;
SIGNAL \lcd_data~41_combout\ : std_logic;
SIGNAL \lcd_data~61_combout\ : std_logic;
SIGNAL \lcd_data~39_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Equal2~0_combout\ : std_logic;
SIGNAL \lcd_data~38_combout\ : std_logic;
SIGNAL \lcd_data~40_combout\ : std_logic;
SIGNAL \lcd_data~42_combout\ : std_logic;
SIGNAL \LCD1|Selector5~2_combout\ : std_logic;
SIGNAL \LCD1|Selector5~1\ : std_logic;
SIGNAL \lcd_data~48_combout\ : std_logic;
SIGNAL \A4|Y[3]~10_combout\ : std_logic;
SIGNAL \A4|Y[3]~11_combout\ : std_logic;
SIGNAL \Con|TimeCount2|Count[3]~8_combout\ : std_logic;
SIGNAL \Con|TimeCount1|Equal0~9_combout\ : std_logic;
SIGNAL \lcd_data~44_combout\ : std_logic;
SIGNAL \lcd_data~45_combout\ : std_logic;
SIGNAL \lcd_data~46_combout\ : std_logic;
SIGNAL \lcd_data~47_combout\ : std_logic;
SIGNAL \LCD1|Selector8~1_combout\ : std_logic;
SIGNAL \LCD1|Selector3~0_combout\ : std_logic;
SIGNAL \LCD1|Selector4~0\ : std_logic;
SIGNAL \lcd_data~49_combout\ : std_logic;
SIGNAL \lcd_data~50_combout\ : std_logic;
SIGNAL \LCD1|lcd[5]~1_combout\ : std_logic;
SIGNAL \LCD1|Selector3~1_combout\ : std_logic;
SIGNAL \LCD1|lcd[4]~2_combout\ : std_logic;
SIGNAL \lcd_data~52_combout\ : std_logic;
SIGNAL \lcd_data~54_combout\ : std_logic;
SIGNAL \LCD1|Selector0~0_combout\ : std_logic;
SIGNAL \LCD1|Selector10~0_combout\ : std_logic;
SIGNAL \LCD1|lcd_en~regout\ : std_logic;
SIGNAL \LCD1|Selector8~2_combout\ : std_logic;
SIGNAL \LCD1|lcd_rs~regout\ : std_logic;
SIGNAL \CL|c\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Con|TimeCount4|no\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Con|TimeCount0|no\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Con|TimeCount3|no\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Con|TimeCount2|no\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD1|lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Con|Random\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \LCD1|count_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \LCD1|cmd_position\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD1|data_dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Con|Count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Con|TimeCount1|no\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CH|c\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Con|React\ : std_logic_vector(31 DOWNTO 0);
SIGNAL col : std_logic_vector(3 DOWNTO 0);
SIGNAL lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \Con|ALT_INV_state.GON~regout\ : std_logic;
SIGNAL \ALT_INV_NReset~combout\ : std_logic;
SIGNAL \Con|ALT_INV_LEDOver~regout\ : std_logic;

BEGIN

ww_NClick <= NClick;
ww_CLK <= CLK;
ww_NReset <= NReset;
LED <= ww_LED;
LEDOver <= ww_LEDOver;
LEDEnd <= ww_LEDEnd;
LCD <= ww_LCD;
en <= ww_en;
rw <= ww_rw;
rs <= ww_rs;
b11 <= ww_b11;
b12 <= ww_b12;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Con|ALT_INV_state.GON~regout\ <= NOT \Con|state.GON~regout\;
\ALT_INV_NReset~combout\ <= NOT \NReset~combout\;
\Con|ALT_INV_LEDOver~regout\ <= NOT \Con|LEDOver~regout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: LC_X5_Y6_N5
\CH|Add0~5\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~5_combout\ = (\CH|c\(1) $ ((\CH|Add0~2\)))
-- \CH|Add0~7\ = CARRY(((!\CH|Add0~2\) # (!\CH|c\(1))))
-- \CH|Add0~7COUT1_161\ = CARRY(((!\CH|Add0~2\) # (!\CH|c\(1))))

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
	datab => \CH|c\(1),
	cin => \CH|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~5_combout\,
	cout0 => \CH|Add0~7\,
	cout1 => \CH|Add0~7COUT1_161\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NReset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NReset,
	combout => \NReset~combout\);

-- Location: LC_X6_Y5_N3
\CH|c[1]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(1) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~5_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~5_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(1));

-- Location: LC_X5_Y6_N6
\CH|Add0~10\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~10_combout\ = (\CH|c\(2) $ ((!(!\CH|Add0~2\ & \CH|Add0~7\) # (\CH|Add0~2\ & \CH|Add0~7COUT1_161\))))
-- \CH|Add0~12\ = CARRY(((\CH|c\(2) & !\CH|Add0~7\)))
-- \CH|Add0~12COUT1_162\ = CARRY(((\CH|c\(2) & !\CH|Add0~7COUT1_161\)))

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
	datab => \CH|c\(2),
	cin => \CH|Add0~2\,
	cin0 => \CH|Add0~7\,
	cin1 => \CH|Add0~7COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~10_combout\,
	cout0 => \CH|Add0~12\,
	cout1 => \CH|Add0~12COUT1_162\);

-- Location: LC_X5_Y6_N2
\CH|c[2]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(2) = DFFEAS((((\CH|Add0~10_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~10_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(2));

-- Location: LC_X5_Y6_N7
\CH|Add0~15\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~15_combout\ = (\CH|c\(3) $ (((!\CH|Add0~2\ & \CH|Add0~12\) # (\CH|Add0~2\ & \CH|Add0~12COUT1_162\))))
-- \CH|Add0~17\ = CARRY(((!\CH|Add0~12\) # (!\CH|c\(3))))
-- \CH|Add0~17COUT1_163\ = CARRY(((!\CH|Add0~12COUT1_162\) # (!\CH|c\(3))))

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
	datab => \CH|c\(3),
	cin => \CH|Add0~2\,
	cin0 => \CH|Add0~12\,
	cin1 => \CH|Add0~12COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~15_combout\,
	cout0 => \CH|Add0~17\,
	cout1 => \CH|Add0~17COUT1_163\);

-- Location: LC_X6_Y5_N4
\CH|c[3]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(3) = DFFEAS((((\CH|Add0~15_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~15_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(3));

-- Location: LC_X6_Y5_N5
\CH1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~0_combout\ = \CH|c\(1) $ ((\CH|c\(0)))
-- \CH1|Add0~2\ = CARRY((\CH|c\(1) & (\CH|c\(0))))
-- \CH1|Add0~2COUT1_156\ = CARRY((\CH|c\(1) & (\CH|c\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(1),
	datab => \CH|c\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~0_combout\,
	cout0 => \CH1|Add0~2\,
	cout1 => \CH1|Add0~2COUT1_156\);

-- Location: LC_X6_Y5_N6
\CH1|Add0~5\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~5_combout\ = (\CH|c\(2) $ ((\CH1|Add0~2\)))
-- \CH1|Add0~7\ = CARRY(((!\CH1|Add0~2\) # (!\CH|c\(2))))
-- \CH1|Add0~7COUT1_157\ = CARRY(((!\CH1|Add0~2COUT1_156\) # (!\CH|c\(2))))

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
	datab => \CH|c\(2),
	cin0 => \CH1|Add0~2\,
	cin1 => \CH1|Add0~2COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~5_combout\,
	cout0 => \CH1|Add0~7\,
	cout1 => \CH1|Add0~7COUT1_157\);

-- Location: LC_X6_Y5_N7
\CH1|Add0~10\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~10_combout\ = \CH|c\(3) $ ((((!\CH1|Add0~7\))))
-- \CH1|Add0~12\ = CARRY((\CH|c\(3) & ((!\CH1|Add0~7\))))
-- \CH1|Add0~12COUT1_158\ = CARRY((\CH|c\(3) & ((!\CH1|Add0~7COUT1_157\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(3),
	cin0 => \CH1|Add0~7\,
	cin1 => \CH1|Add0~7COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~10_combout\,
	cout0 => \CH1|Add0~12\,
	cout1 => \CH1|Add0~12COUT1_158\);

-- Location: LC_X5_Y6_N4
\CH|Add0~0\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~0_combout\ = (!\CH|c\(0))
-- \CH|Add0~2\ = CARRY((\CH|c\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~0_combout\,
	cout => \CH|Add0~2\);

-- Location: LC_X5_Y6_N3
\CH|c[0]\ : maxv_lcell
-- Equation(s):
-- \CH1|Equal0~0\ = (!\CH1|Add0~10_combout\ & (!\CH1|Add0~5_combout\ & (C1_c[0] & !\CH1|Add0~0_combout\)))
-- \CH|c\(0) = DFFEAS(\CH1|Equal0~0\, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CH1|Add0~10_combout\,
	datab => \CH1|Add0~5_combout\,
	datac => \CH|Add0~0_combout\,
	datad => \CH1|Add0~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Equal0~0\,
	regout => \CH|c\(0));

-- Location: LC_X5_Y6_N8
\CH|Add0~20\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~20_combout\ = \CH|c\(4) $ ((((!(!\CH|Add0~2\ & \CH|Add0~17\) # (\CH|Add0~2\ & \CH|Add0~17COUT1_163\)))))
-- \CH|Add0~22\ = CARRY((\CH|c\(4) & ((!\CH|Add0~17\))))
-- \CH|Add0~22COUT1_164\ = CARRY((\CH|c\(4) & ((!\CH|Add0~17COUT1_163\))))

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
	dataa => \CH|c\(4),
	cin => \CH|Add0~2\,
	cin0 => \CH|Add0~17\,
	cin1 => \CH|Add0~17COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~20_combout\,
	cout0 => \CH|Add0~22\,
	cout1 => \CH|Add0~22COUT1_164\);

-- Location: LC_X5_Y6_N0
\CH|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \CH|Equal0~0_combout\ = (!\CH|Add0~5_combout\ & (!\CH|Add0~15_combout\ & (!\CH|Add0~0_combout\ & !\CH|Add0~10_combout\)))

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
	dataa => \CH|Add0~5_combout\,
	datab => \CH|Add0~15_combout\,
	datac => \CH|Add0~0_combout\,
	datad => \CH|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Equal0~0_combout\);

-- Location: LC_X6_Y7_N2
\CH|c[7]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(7) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~35_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~35_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(7));

-- Location: LC_X6_Y6_N0
\CH|Add0~25\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~25_combout\ = (\CH|c\(6) $ ((!\CH|Add0~32\)))
-- \CH|Add0~27\ = CARRY(((\CH|c\(6) & !\CH|Add0~32\)))
-- \CH|Add0~27COUT1_165\ = CARRY(((\CH|c\(6) & !\CH|Add0~32\)))

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
	datab => \CH|c\(6),
	cin => \CH|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~25_combout\,
	cout0 => \CH|Add0~27\,
	cout1 => \CH|Add0~27COUT1_165\);

-- Location: LC_X8_Y6_N9
\CH|c[16]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(16) = DFFEAS((((\CH|Add0~80_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~80_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(16));

-- Location: LC_X7_Y6_N0
\CH|Add0~80\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~80_combout\ = (\CH|c\(16) $ ((!\CH|Add0~67\)))
-- \CH|Add0~82\ = CARRY(((\CH|c\(16) & !\CH|Add0~67\)))
-- \CH|Add0~82COUT1_173\ = CARRY(((\CH|c\(16) & !\CH|Add0~67\)))

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
	datab => \CH|c\(16),
	cin => \CH|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~80_combout\,
	cout0 => \CH|Add0~82\,
	cout1 => \CH|Add0~82COUT1_173\);

-- Location: LC_X9_Y6_N7
\CH|c[18]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(18) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~90_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~90_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(18));

-- Location: LC_X7_Y6_N1
\CH|Add0~85\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~85_combout\ = \CH|c\(17) $ (((((!\CH|Add0~67\ & \CH|Add0~82\) # (\CH|Add0~67\ & \CH|Add0~82COUT1_173\)))))
-- \CH|Add0~87\ = CARRY(((!\CH|Add0~82\)) # (!\CH|c\(17)))
-- \CH|Add0~87COUT1_174\ = CARRY(((!\CH|Add0~82COUT1_173\)) # (!\CH|c\(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(17),
	cin => \CH|Add0~67\,
	cin0 => \CH|Add0~82\,
	cin1 => \CH|Add0~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~85_combout\,
	cout0 => \CH|Add0~87\,
	cout1 => \CH|Add0~87COUT1_174\);

-- Location: LC_X8_Y6_N7
\CH|c[17]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(17) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~85_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~85_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(17));

-- Location: LC_X7_Y6_N2
\CH|Add0~90\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~90_combout\ = (\CH|c\(18) $ ((!(!\CH|Add0~67\ & \CH|Add0~87\) # (\CH|Add0~67\ & \CH|Add0~87COUT1_174\))))
-- \CH|Add0~92\ = CARRY(((\CH|c\(18) & !\CH|Add0~87\)))
-- \CH|Add0~92COUT1_175\ = CARRY(((\CH|c\(18) & !\CH|Add0~87COUT1_174\)))

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
	datab => \CH|c\(18),
	cin => \CH|Add0~67\,
	cin0 => \CH|Add0~87\,
	cin1 => \CH|Add0~87COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~90_combout\,
	cout0 => \CH|Add0~92\,
	cout1 => \CH|Add0~92COUT1_175\);

-- Location: LC_X9_Y6_N6
\CH|c[19]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(19) = DFFEAS((((\CH|Add0~95_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~95_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(19));

-- Location: LC_X7_Y6_N3
\CH|Add0~95\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~95_combout\ = (\CH|c\(19) $ (((!\CH|Add0~67\ & \CH|Add0~92\) # (\CH|Add0~67\ & \CH|Add0~92COUT1_175\))))
-- \CH|Add0~97\ = CARRY(((!\CH|Add0~92\) # (!\CH|c\(19))))
-- \CH|Add0~97COUT1_176\ = CARRY(((!\CH|Add0~92COUT1_175\) # (!\CH|c\(19))))

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
	datab => \CH|c\(19),
	cin => \CH|Add0~67\,
	cin0 => \CH|Add0~92\,
	cin1 => \CH|Add0~92COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~95_combout\,
	cout0 => \CH|Add0~97\,
	cout1 => \CH|Add0~97COUT1_176\);

-- Location: LC_X7_Y8_N3
\CH|Equal0~5\ : maxv_lcell
-- Equation(s):
-- \CH|Equal0~5_combout\ = (!\CH|Add0~80_combout\ & (!\CH|Add0~90_combout\ & (!\CH|Add0~85_combout\ & !\CH|Add0~95_combout\)))

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
	dataa => \CH|Add0~80_combout\,
	datab => \CH|Add0~90_combout\,
	datac => \CH|Add0~85_combout\,
	datad => \CH|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Equal0~5_combout\);

-- Location: LC_X9_Y6_N1
\CH|c[31]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(31) = DFFEAS((((\CH|Add0~155_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~155_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(31));

-- Location: LC_X7_Y6_N5
\CH|Add0~105\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~105_combout\ = (\CH|c\(21) $ ((\CH|Add0~102\)))
-- \CH|Add0~107\ = CARRY(((!\CH|Add0~102\) # (!\CH|c\(21))))
-- \CH|Add0~107COUT1_177\ = CARRY(((!\CH|Add0~102\) # (!\CH|c\(21))))

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
	datab => \CH|c\(21),
	cin => \CH|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~105_combout\,
	cout0 => \CH|Add0~107\,
	cout1 => \CH|Add0~107COUT1_177\);

-- Location: LC_X7_Y8_N8
\CH|c[21]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(21) = DFFEAS((((\CH|Add0~105_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~105_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(21));

-- Location: LC_X7_Y6_N6
\CH|Add0~110\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~110_combout\ = \CH|c\(22) $ ((((!(!\CH|Add0~102\ & \CH|Add0~107\) # (\CH|Add0~102\ & \CH|Add0~107COUT1_177\)))))
-- \CH|Add0~112\ = CARRY((\CH|c\(22) & ((!\CH|Add0~107\))))
-- \CH|Add0~112COUT1_178\ = CARRY((\CH|c\(22) & ((!\CH|Add0~107COUT1_177\))))

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
	dataa => \CH|c\(22),
	cin => \CH|Add0~102\,
	cin0 => \CH|Add0~107\,
	cin1 => \CH|Add0~107COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~110_combout\,
	cout0 => \CH|Add0~112\,
	cout1 => \CH|Add0~112COUT1_178\);

-- Location: LC_X8_Y8_N3
\CH|c[22]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(22) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~110_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~110_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(22));

-- Location: LC_X7_Y6_N7
\CH|Add0~115\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~115_combout\ = \CH|c\(23) $ (((((!\CH|Add0~102\ & \CH|Add0~112\) # (\CH|Add0~102\ & \CH|Add0~112COUT1_178\)))))
-- \CH|Add0~117\ = CARRY(((!\CH|Add0~112\)) # (!\CH|c\(23)))
-- \CH|Add0~117COUT1_179\ = CARRY(((!\CH|Add0~112COUT1_178\)) # (!\CH|c\(23)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(23),
	cin => \CH|Add0~102\,
	cin0 => \CH|Add0~112\,
	cin1 => \CH|Add0~112COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~115_combout\,
	cout0 => \CH|Add0~117\,
	cout1 => \CH|Add0~117COUT1_179\);

-- Location: LC_X8_Y6_N6
\CH|c[23]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(23) = DFFEAS((((\CH|Add0~115_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~115_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(23));

-- Location: LC_X7_Y6_N8
\CH|Add0~120\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~120_combout\ = (\CH|c\(24) $ ((!(!\CH|Add0~102\ & \CH|Add0~117\) # (\CH|Add0~102\ & \CH|Add0~117COUT1_179\))))
-- \CH|Add0~122\ = CARRY(((\CH|c\(24) & !\CH|Add0~117\)))
-- \CH|Add0~122COUT1_180\ = CARRY(((\CH|c\(24) & !\CH|Add0~117COUT1_179\)))

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
	datab => \CH|c\(24),
	cin => \CH|Add0~102\,
	cin0 => \CH|Add0~117\,
	cin1 => \CH|Add0~117COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~120_combout\,
	cout0 => \CH|Add0~122\,
	cout1 => \CH|Add0~122COUT1_180\);

-- Location: LC_X7_Y6_N9
\CH|Add0~125\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~125_combout\ = (\CH|c\(25) $ (((!\CH|Add0~102\ & \CH|Add0~122\) # (\CH|Add0~102\ & \CH|Add0~122COUT1_180\))))
-- \CH|Add0~127\ = CARRY(((!\CH|Add0~122COUT1_180\) # (!\CH|c\(25))))

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
	datab => \CH|c\(25),
	cin => \CH|Add0~102\,
	cin0 => \CH|Add0~122\,
	cin1 => \CH|Add0~122COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~125_combout\,
	cout => \CH|Add0~127\);

-- Location: LC_X7_Y7_N2
\CH|c[25]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(25) = DFFEAS((((\CH|Add0~125_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~125_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(25));

-- Location: LC_X8_Y6_N0
\CH|Add0~130\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~130_combout\ = (\CH|c\(26) $ ((!\CH|Add0~127\)))
-- \CH|Add0~132\ = CARRY(((\CH|c\(26) & !\CH|Add0~127\)))
-- \CH|Add0~132COUT1_181\ = CARRY(((\CH|c\(26) & !\CH|Add0~127\)))

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
	datab => \CH|c\(26),
	cin => \CH|Add0~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~130_combout\,
	cout0 => \CH|Add0~132\,
	cout1 => \CH|Add0~132COUT1_181\);

-- Location: LC_X9_Y5_N6
\CH|c[26]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(26) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~130_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~130_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(26));

-- Location: LC_X8_Y6_N1
\CH|Add0~135\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~135_combout\ = \CH|c\(27) $ (((((!\CH|Add0~127\ & \CH|Add0~132\) # (\CH|Add0~127\ & \CH|Add0~132COUT1_181\)))))
-- \CH|Add0~137\ = CARRY(((!\CH|Add0~132\)) # (!\CH|c\(27)))
-- \CH|Add0~137COUT1_182\ = CARRY(((!\CH|Add0~132COUT1_181\)) # (!\CH|c\(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(27),
	cin => \CH|Add0~127\,
	cin0 => \CH|Add0~132\,
	cin1 => \CH|Add0~132COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~135_combout\,
	cout0 => \CH|Add0~137\,
	cout1 => \CH|Add0~137COUT1_182\);

-- Location: LC_X9_Y5_N8
\CH|c[27]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(27) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~135_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~135_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(27));

-- Location: LC_X8_Y6_N2
\CH|Add0~140\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~140_combout\ = (\CH|c\(28) $ ((!(!\CH|Add0~127\ & \CH|Add0~137\) # (\CH|Add0~127\ & \CH|Add0~137COUT1_182\))))
-- \CH|Add0~142\ = CARRY(((\CH|c\(28) & !\CH|Add0~137\)))
-- \CH|Add0~142COUT1_183\ = CARRY(((\CH|c\(28) & !\CH|Add0~137COUT1_182\)))

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
	datab => \CH|c\(28),
	cin => \CH|Add0~127\,
	cin0 => \CH|Add0~137\,
	cin1 => \CH|Add0~137COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~140_combout\,
	cout0 => \CH|Add0~142\,
	cout1 => \CH|Add0~142COUT1_183\);

-- Location: LC_X9_Y6_N8
\CH|c[28]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(28) = DFFEAS((((\CH|Add0~140_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~140_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(28));

-- Location: LC_X8_Y6_N3
\CH|Add0~145\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~145_combout\ = (\CH|c\(29) $ (((!\CH|Add0~127\ & \CH|Add0~142\) # (\CH|Add0~127\ & \CH|Add0~142COUT1_183\))))
-- \CH|Add0~147\ = CARRY(((!\CH|Add0~142\) # (!\CH|c\(29))))
-- \CH|Add0~147COUT1_184\ = CARRY(((!\CH|Add0~142COUT1_183\) # (!\CH|c\(29))))

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
	datab => \CH|c\(29),
	cin => \CH|Add0~127\,
	cin0 => \CH|Add0~142\,
	cin1 => \CH|Add0~142COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~145_combout\,
	cout0 => \CH|Add0~147\,
	cout1 => \CH|Add0~147COUT1_184\);

-- Location: LC_X9_Y6_N4
\CH|c[29]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(29) = DFFEAS((((\CH|Add0~145_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~145_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(29));

-- Location: LC_X8_Y6_N4
\CH|Add0~150\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~150_combout\ = (\CH|c\(30) $ ((!(!\CH|Add0~127\ & \CH|Add0~147\) # (\CH|Add0~127\ & \CH|Add0~147COUT1_184\))))
-- \CH|Add0~152\ = CARRY(((\CH|c\(30) & !\CH|Add0~147COUT1_184\)))

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
	datab => \CH|c\(30),
	cin => \CH|Add0~127\,
	cin0 => \CH|Add0~147\,
	cin1 => \CH|Add0~147COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~150_combout\,
	cout => \CH|Add0~152\);

-- Location: LC_X9_Y6_N2
\CH|c[30]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(30) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~150_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~150_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(30));

-- Location: LC_X8_Y6_N5
\CH|Add0~155\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~155_combout\ = ((\CH|Add0~152\ $ (\CH|c\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \CH|c\(31),
	cin => \CH|Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~155_combout\);

-- Location: LC_X8_Y6_N8
\CH|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \CH|Equal0~8_combout\ = (!\CH|Add0~155_combout\ & (!\CH|Add0~140_combout\ & (!\CH|Add0~150_combout\ & !\CH|Add0~145_combout\)))

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
	dataa => \CH|Add0~155_combout\,
	datab => \CH|Add0~140_combout\,
	datac => \CH|Add0~150_combout\,
	datad => \CH|Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Equal0~8_combout\);

-- Location: LC_X7_Y8_N7
\CH|Equal0~6\ : maxv_lcell
-- Equation(s):
-- \CH|Equal0~6_combout\ = (!\CH|Add0~110_combout\ & (!\CH|Add0~105_combout\ & (!\CH|Add0~115_combout\ & !\CH|Add0~100_combout\)))

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
	dataa => \CH|Add0~110_combout\,
	datab => \CH|Add0~105_combout\,
	datac => \CH|Add0~115_combout\,
	datad => \CH|Add0~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Equal0~6_combout\);

-- Location: LC_X7_Y8_N4
\CH|Equal0~7\ : maxv_lcell
-- Equation(s):
-- \CH|Equal0~7_combout\ = (!\CH|Add0~135_combout\ & (!\CH|Add0~120_combout\ & (!\CH|Add0~125_combout\ & !\CH|Add0~130_combout\)))

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
	dataa => \CH|Add0~135_combout\,
	datab => \CH|Add0~120_combout\,
	datac => \CH|Add0~125_combout\,
	datad => \CH|Add0~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Equal0~7_combout\);

-- Location: LC_X7_Y8_N5
\CH|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \CH|Equal0~9_combout\ = (\CH|Equal0~5_combout\ & (\CH|Equal0~8_combout\ & (\CH|Equal0~6_combout\ & \CH|Equal0~7_combout\)))

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
	dataa => \CH|Equal0~5_combout\,
	datab => \CH|Equal0~8_combout\,
	datac => \CH|Equal0~6_combout\,
	datad => \CH|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Equal0~9_combout\);

-- Location: LC_X7_Y8_N0
\CH|c[6]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(6) = DFFEAS((\CH|Add0~25_combout\ & (((!\CH|Equal0~9_combout\)) # (!\CH|Equal0~4_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CH|Add0~25_combout\,
	datab => \CH|Equal0~4_combout\,
	datac => \CH|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(6));

-- Location: LC_X6_Y6_N1
\CH|Add0~35\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~35_combout\ = (\CH|c\(7) $ (((!\CH|Add0~32\ & \CH|Add0~27\) # (\CH|Add0~32\ & \CH|Add0~27COUT1_165\))))
-- \CH|Add0~37\ = CARRY(((!\CH|Add0~27\) # (!\CH|c\(7))))
-- \CH|Add0~37COUT1_166\ = CARRY(((!\CH|Add0~27COUT1_165\) # (!\CH|c\(7))))

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
	datab => \CH|c\(7),
	cin => \CH|Add0~32\,
	cin0 => \CH|Add0~27\,
	cin1 => \CH|Add0~27COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~35_combout\,
	cout0 => \CH|Add0~37\,
	cout1 => \CH|Add0~37COUT1_166\);

-- Location: LC_X6_Y8_N9
\CH|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \CH|Equal0~1_combout\ = (!\CH|Add0~35_combout\ & (\CH|Add0~25_combout\ & (!\CH|Add0~30_combout\ & \CH|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|Add0~35_combout\,
	datab => \CH|Add0~25_combout\,
	datac => \CH|Add0~30_combout\,
	datad => \CH|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Equal0~1_combout\);

-- Location: LC_X7_Y8_N9
\CH|c[8]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(8) = DFFEAS((\CH|Add0~40_combout\ & (((!\CH|Equal0~9_combout\)) # (!\CH|Equal0~4_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CH|Add0~40_combout\,
	datab => \CH|Equal0~4_combout\,
	datac => \CH|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(8));

-- Location: LC_X6_Y6_N2
\CH|Add0~40\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~40_combout\ = (\CH|c\(8) $ ((!(!\CH|Add0~32\ & \CH|Add0~37\) # (\CH|Add0~32\ & \CH|Add0~37COUT1_166\))))
-- \CH|Add0~42\ = CARRY(((\CH|c\(8) & !\CH|Add0~37\)))
-- \CH|Add0~42COUT1_167\ = CARRY(((\CH|c\(8) & !\CH|Add0~37COUT1_166\)))

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
	datab => \CH|c\(8),
	cin => \CH|Add0~32\,
	cin0 => \CH|Add0~37\,
	cin1 => \CH|Add0~37COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~40_combout\,
	cout0 => \CH|Add0~42\,
	cout1 => \CH|Add0~42COUT1_167\);

-- Location: LC_X6_Y7_N7
\CH|c[11]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(11) = DFFEAS((((\CH|Add0~55_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~55_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(11));

-- Location: LC_X6_Y6_N5
\CH|Add0~55\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~55_combout\ = \CH|c\(11) $ ((((\CH|Add0~52\))))
-- \CH|Add0~57\ = CARRY(((!\CH|Add0~52\)) # (!\CH|c\(11)))
-- \CH|Add0~57COUT1_169\ = CARRY(((!\CH|Add0~52\)) # (!\CH|c\(11)))

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
	dataa => \CH|c\(11),
	cin => \CH|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~55_combout\,
	cout0 => \CH|Add0~57\,
	cout1 => \CH|Add0~57COUT1_169\);

-- Location: LC_X7_Y8_N6
\CH|c[9]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(9) = DFFEAS(((\CH|Add0~45_combout\ & ((!\CH|Equal0~9_combout\) # (!\CH|Equal0~4_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \CH|Equal0~4_combout\,
	datac => \CH|Add0~45_combout\,
	datad => \CH|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(9));

-- Location: LC_X6_Y6_N3
\CH|Add0~45\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~45_combout\ = \CH|c\(9) $ (((((!\CH|Add0~32\ & \CH|Add0~42\) # (\CH|Add0~32\ & \CH|Add0~42COUT1_167\)))))
-- \CH|Add0~47\ = CARRY(((!\CH|Add0~42\)) # (!\CH|c\(9)))
-- \CH|Add0~47COUT1_168\ = CARRY(((!\CH|Add0~42COUT1_167\)) # (!\CH|c\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(9),
	cin => \CH|Add0~32\,
	cin0 => \CH|Add0~42\,
	cin1 => \CH|Add0~42COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~45_combout\,
	cout0 => \CH|Add0~47\,
	cout1 => \CH|Add0~47COUT1_168\);

-- Location: LC_X6_Y8_N4
\CH|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \CH|Equal0~2_combout\ = (\CH|Add0~40_combout\ & (!\CH|Add0~55_combout\ & (\CH|Add0~45_combout\ & !\CH|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|Add0~40_combout\,
	datab => \CH|Add0~55_combout\,
	datac => \CH|Add0~45_combout\,
	datad => \CH|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Equal0~2_combout\);

-- Location: LC_X6_Y5_N1
\CH|c[12]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(12) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~70_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~70_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(12));

-- Location: LC_X6_Y6_N6
\CH|Add0~70\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~70_combout\ = (\CH|c\(12) $ ((!(!\CH|Add0~52\ & \CH|Add0~57\) # (\CH|Add0~52\ & \CH|Add0~57COUT1_169\))))
-- \CH|Add0~72\ = CARRY(((\CH|c\(12) & !\CH|Add0~57\)))
-- \CH|Add0~72COUT1_170\ = CARRY(((\CH|c\(12) & !\CH|Add0~57COUT1_169\)))

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
	datab => \CH|c\(12),
	cin => \CH|Add0~52\,
	cin0 => \CH|Add0~57\,
	cin1 => \CH|Add0~57COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~70_combout\,
	cout0 => \CH|Add0~72\,
	cout1 => \CH|Add0~72COUT1_170\);

-- Location: LC_X7_Y8_N2
\CH|c[14]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(14) = DFFEAS((\CH|Add0~60_combout\ & (((!\CH|Equal0~4_combout\)) # (!\CH|Equal0~9_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CH|Equal0~9_combout\,
	datab => \CH|Add0~60_combout\,
	datac => \CH|Equal0~4_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(14));

-- Location: LC_X6_Y6_N7
\CH|Add0~75\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~75_combout\ = (\CH|c\(13) $ (((!\CH|Add0~52\ & \CH|Add0~72\) # (\CH|Add0~52\ & \CH|Add0~72COUT1_170\))))
-- \CH|Add0~77\ = CARRY(((!\CH|Add0~72\) # (!\CH|c\(13))))
-- \CH|Add0~77COUT1_171\ = CARRY(((!\CH|Add0~72COUT1_170\) # (!\CH|c\(13))))

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
	datab => \CH|c\(13),
	cin => \CH|Add0~52\,
	cin0 => \CH|Add0~72\,
	cin1 => \CH|Add0~72COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~75_combout\,
	cout0 => \CH|Add0~77\,
	cout1 => \CH|Add0~77COUT1_171\);

-- Location: LC_X6_Y7_N5
\CH|c[13]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(13) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~75_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~75_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(13));

-- Location: LC_X6_Y6_N8
\CH|Add0~60\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~60_combout\ = (\CH|c\(14) $ ((!(!\CH|Add0~52\ & \CH|Add0~77\) # (\CH|Add0~52\ & \CH|Add0~77COUT1_171\))))
-- \CH|Add0~62\ = CARRY(((\CH|c\(14) & !\CH|Add0~77\)))
-- \CH|Add0~62COUT1_172\ = CARRY(((\CH|c\(14) & !\CH|Add0~77COUT1_171\)))

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
	datab => \CH|c\(14),
	cin => \CH|Add0~52\,
	cin0 => \CH|Add0~77\,
	cin1 => \CH|Add0~77COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~60_combout\,
	cout0 => \CH|Add0~62\,
	cout1 => \CH|Add0~62COUT1_172\);

-- Location: LC_X6_Y8_N5
\CH|Equal0~3\ : maxv_lcell
-- Equation(s):
-- \CH|Equal0~3_combout\ = (!\CH|Add0~70_combout\ & (\CH|Add0~60_combout\ & (!\CH|Add0~75_combout\ & \CH|Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|Add0~70_combout\,
	datab => \CH|Add0~60_combout\,
	datac => \CH|Add0~75_combout\,
	datad => \CH|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Equal0~3_combout\);

-- Location: LC_X6_Y8_N6
\CH|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \CH|Equal0~4_combout\ = (\CH|Equal0~0_combout\ & (\CH|Equal0~1_combout\ & (\CH|Equal0~2_combout\ & \CH|Equal0~3_combout\)))

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
	dataa => \CH|Equal0~0_combout\,
	datab => \CH|Equal0~1_combout\,
	datac => \CH|Equal0~2_combout\,
	datad => \CH|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Equal0~4_combout\);

-- Location: LC_X6_Y8_N7
\CH|c[4]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(4) = DFFEAS(((\CH|Add0~20_combout\ & ((!\CH|Equal0~9_combout\) # (!\CH|Equal0~4_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \CH|Add0~20_combout\,
	datac => \CH|Equal0~4_combout\,
	datad => \CH|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(4));

-- Location: LC_X5_Y6_N9
\CH|Add0~30\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~30_combout\ = (\CH|c\(5) $ (((!\CH|Add0~2\ & \CH|Add0~22\) # (\CH|Add0~2\ & \CH|Add0~22COUT1_164\))))
-- \CH|Add0~32\ = CARRY(((!\CH|Add0~22COUT1_164\) # (!\CH|c\(5))))

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
	datab => \CH|c\(5),
	cin => \CH|Add0~2\,
	cin0 => \CH|Add0~22\,
	cin1 => \CH|Add0~22COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~30_combout\,
	cout => \CH|Add0~32\);

-- Location: LC_X5_Y6_N1
\CH|c[5]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(5) = DFFEAS((((\CH|Add0~30_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~30_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(5));

-- Location: LC_X6_Y6_N4
\CH|Add0~50\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~50_combout\ = \CH|c\(10) $ ((((!(!\CH|Add0~32\ & \CH|Add0~47\) # (\CH|Add0~32\ & \CH|Add0~47COUT1_168\)))))
-- \CH|Add0~52\ = CARRY((\CH|c\(10) & ((!\CH|Add0~47COUT1_168\))))

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
	dataa => \CH|c\(10),
	cin => \CH|Add0~32\,
	cin0 => \CH|Add0~47\,
	cin1 => \CH|Add0~47COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~50_combout\,
	cout => \CH|Add0~52\);

-- Location: LC_X6_Y5_N0
\CH|c[10]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(10) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~50_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~50_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(10));

-- Location: LC_X6_Y6_N9
\CH|Add0~65\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~65_combout\ = \CH|c\(15) $ (((((!\CH|Add0~52\ & \CH|Add0~62\) # (\CH|Add0~52\ & \CH|Add0~62COUT1_172\)))))
-- \CH|Add0~67\ = CARRY(((!\CH|Add0~62COUT1_172\)) # (!\CH|c\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(15),
	cin => \CH|Add0~52\,
	cin0 => \CH|Add0~62\,
	cin1 => \CH|Add0~62COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~65_combout\,
	cout => \CH|Add0~67\);

-- Location: LC_X7_Y8_N1
\CH|c[15]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(15) = DFFEAS((\CH|Add0~65_combout\ & (((!\CH|Equal0~9_combout\)) # (!\CH|Equal0~4_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CH|Add0~65_combout\,
	datab => \CH|Equal0~4_combout\,
	datac => \CH|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(15));

-- Location: LC_X7_Y6_N4
\CH|Add0~100\ : maxv_lcell
-- Equation(s):
-- \CH|Add0~100_combout\ = \CH|c\(20) $ ((((!(!\CH|Add0~67\ & \CH|Add0~97\) # (\CH|Add0~67\ & \CH|Add0~97COUT1_176\)))))
-- \CH|Add0~102\ = CARRY((\CH|c\(20) & ((!\CH|Add0~97COUT1_176\))))

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
	dataa => \CH|c\(20),
	cin => \CH|Add0~67\,
	cin0 => \CH|Add0~97\,
	cin1 => \CH|Add0~97COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH|Add0~100_combout\,
	cout => \CH|Add0~102\);

-- Location: LC_X7_Y7_N0
\CH|c[20]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(20) = DFFEAS((((\CH|Add0~100_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CH|Add0~100_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(20));

-- Location: LC_X9_Y6_N9
\CH|c[24]\ : maxv_lcell
-- Equation(s):
-- \CH|c\(24) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CH|Add0~120_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CH|Add0~120_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|c\(24));

-- Location: LC_X6_Y5_N8
\CH1|Add0~15\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~15_combout\ = \CH|c\(4) $ ((((\CH1|Add0~12\))))
-- \CH1|Add0~17\ = CARRY(((!\CH1|Add0~12\)) # (!\CH|c\(4)))
-- \CH1|Add0~17COUT1_159\ = CARRY(((!\CH1|Add0~12COUT1_158\)) # (!\CH|c\(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(4),
	cin0 => \CH1|Add0~12\,
	cin1 => \CH1|Add0~12COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~15_combout\,
	cout0 => \CH1|Add0~17\,
	cout1 => \CH1|Add0~17COUT1_159\);

-- Location: LC_X6_Y5_N9
\CH1|Add0~25\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~25_combout\ = \CH|c\(5) $ ((((!\CH1|Add0~17\))))
-- \CH1|Add0~27\ = CARRY((\CH|c\(5) & ((!\CH1|Add0~17COUT1_159\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(5),
	cin0 => \CH1|Add0~17\,
	cin1 => \CH1|Add0~17COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~25_combout\,
	cout => \CH1|Add0~27\);

-- Location: LC_X7_Y5_N0
\CH1|Add0~20\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~20_combout\ = \CH|c\(6) $ ((((\CH1|Add0~27\))))
-- \CH1|Add0~22\ = CARRY(((!\CH1|Add0~27\)) # (!\CH|c\(6)))
-- \CH1|Add0~22COUT1_160\ = CARRY(((!\CH1|Add0~27\)) # (!\CH|c\(6)))

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
	dataa => \CH|c\(6),
	cin => \CH1|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~20_combout\,
	cout0 => \CH1|Add0~22\,
	cout1 => \CH1|Add0~22COUT1_160\);

-- Location: LC_X7_Y5_N1
\CH1|Add0~30\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~30_combout\ = (\CH|c\(7) $ ((!(!\CH1|Add0~27\ & \CH1|Add0~22\) # (\CH1|Add0~27\ & \CH1|Add0~22COUT1_160\))))
-- \CH1|Add0~32\ = CARRY(((\CH|c\(7) & !\CH1|Add0~22\)))
-- \CH1|Add0~32COUT1_161\ = CARRY(((\CH|c\(7) & !\CH1|Add0~22COUT1_160\)))

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
	datab => \CH|c\(7),
	cin => \CH1|Add0~27\,
	cin0 => \CH1|Add0~22\,
	cin1 => \CH1|Add0~22COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~30_combout\,
	cout0 => \CH1|Add0~32\,
	cout1 => \CH1|Add0~32COUT1_161\);

-- Location: LC_X7_Y5_N2
\CH1|Add0~35\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~35_combout\ = (\CH|c\(8) $ (((!\CH1|Add0~27\ & \CH1|Add0~32\) # (\CH1|Add0~27\ & \CH1|Add0~32COUT1_161\))))
-- \CH1|Add0~37\ = CARRY(((!\CH1|Add0~32\) # (!\CH|c\(8))))
-- \CH1|Add0~37COUT1_162\ = CARRY(((!\CH1|Add0~32COUT1_161\) # (!\CH|c\(8))))

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
	datab => \CH|c\(8),
	cin => \CH1|Add0~27\,
	cin0 => \CH1|Add0~32\,
	cin1 => \CH1|Add0~32COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~35_combout\,
	cout0 => \CH1|Add0~37\,
	cout1 => \CH1|Add0~37COUT1_162\);

-- Location: LC_X7_Y5_N3
\CH1|Add0~40\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~40_combout\ = (\CH|c\(9) $ ((!(!\CH1|Add0~27\ & \CH1|Add0~37\) # (\CH1|Add0~27\ & \CH1|Add0~37COUT1_162\))))
-- \CH1|Add0~42\ = CARRY(((\CH|c\(9) & !\CH1|Add0~37\)))
-- \CH1|Add0~42COUT1_163\ = CARRY(((\CH|c\(9) & !\CH1|Add0~37COUT1_162\)))

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
	datab => \CH|c\(9),
	cin => \CH1|Add0~27\,
	cin0 => \CH1|Add0~37\,
	cin1 => \CH1|Add0~37COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~40_combout\,
	cout0 => \CH1|Add0~42\,
	cout1 => \CH1|Add0~42COUT1_163\);

-- Location: LC_X7_Y5_N4
\CH1|Add0~45\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~45_combout\ = \CH|c\(10) $ (((((!\CH1|Add0~27\ & \CH1|Add0~42\) # (\CH1|Add0~27\ & \CH1|Add0~42COUT1_163\)))))
-- \CH1|Add0~47\ = CARRY(((!\CH1|Add0~42COUT1_163\)) # (!\CH|c\(10)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(10),
	cin => \CH1|Add0~27\,
	cin0 => \CH1|Add0~42\,
	cin1 => \CH1|Add0~42COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~45_combout\,
	cout => \CH1|Add0~47\);

-- Location: LC_X7_Y5_N5
\CH1|Add0~50\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~50_combout\ = (\CH|c\(11) $ ((!\CH1|Add0~47\)))
-- \CH1|Add0~52\ = CARRY(((\CH|c\(11) & !\CH1|Add0~47\)))
-- \CH1|Add0~52COUT1_164\ = CARRY(((\CH|c\(11) & !\CH1|Add0~47\)))

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
	datab => \CH|c\(11),
	cin => \CH1|Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~50_combout\,
	cout0 => \CH1|Add0~52\,
	cout1 => \CH1|Add0~52COUT1_164\);

-- Location: LC_X7_Y5_N6
\CH1|Add0~65\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~65_combout\ = \CH|c\(12) $ (((((!\CH1|Add0~47\ & \CH1|Add0~52\) # (\CH1|Add0~47\ & \CH1|Add0~52COUT1_164\)))))
-- \CH1|Add0~67\ = CARRY(((!\CH1|Add0~52\)) # (!\CH|c\(12)))
-- \CH1|Add0~67COUT1_165\ = CARRY(((!\CH1|Add0~52COUT1_164\)) # (!\CH|c\(12)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(12),
	cin => \CH1|Add0~47\,
	cin0 => \CH1|Add0~52\,
	cin1 => \CH1|Add0~52COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~65_combout\,
	cout0 => \CH1|Add0~67\,
	cout1 => \CH1|Add0~67COUT1_165\);

-- Location: LC_X7_Y5_N7
\CH1|Add0~70\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~70_combout\ = \CH|c\(13) $ ((((!(!\CH1|Add0~47\ & \CH1|Add0~67\) # (\CH1|Add0~47\ & \CH1|Add0~67COUT1_165\)))))
-- \CH1|Add0~72\ = CARRY((\CH|c\(13) & ((!\CH1|Add0~67\))))
-- \CH1|Add0~72COUT1_166\ = CARRY((\CH|c\(13) & ((!\CH1|Add0~67COUT1_165\))))

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
	dataa => \CH|c\(13),
	cin => \CH1|Add0~47\,
	cin0 => \CH1|Add0~67\,
	cin1 => \CH1|Add0~67COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~70_combout\,
	cout0 => \CH1|Add0~72\,
	cout1 => \CH1|Add0~72COUT1_166\);

-- Location: LC_X7_Y5_N8
\CH1|Add0~55\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~55_combout\ = \CH|c\(14) $ (((((!\CH1|Add0~47\ & \CH1|Add0~72\) # (\CH1|Add0~47\ & \CH1|Add0~72COUT1_166\)))))
-- \CH1|Add0~57\ = CARRY(((!\CH1|Add0~72\)) # (!\CH|c\(14)))
-- \CH1|Add0~57COUT1_167\ = CARRY(((!\CH1|Add0~72COUT1_166\)) # (!\CH|c\(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(14),
	cin => \CH1|Add0~47\,
	cin0 => \CH1|Add0~72\,
	cin1 => \CH1|Add0~72COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~55_combout\,
	cout0 => \CH1|Add0~57\,
	cout1 => \CH1|Add0~57COUT1_167\);

-- Location: LC_X7_Y5_N9
\CH1|Add0~60\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~60_combout\ = (\CH|c\(15) $ ((!(!\CH1|Add0~47\ & \CH1|Add0~57\) # (\CH1|Add0~47\ & \CH1|Add0~57COUT1_167\))))
-- \CH1|Add0~62\ = CARRY(((\CH|c\(15) & !\CH1|Add0~57COUT1_167\)))

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
	datab => \CH|c\(15),
	cin => \CH1|Add0~47\,
	cin0 => \CH1|Add0~57\,
	cin1 => \CH1|Add0~57COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~60_combout\,
	cout => \CH1|Add0~62\);

-- Location: LC_X8_Y5_N0
\CH1|Add0~75\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~75_combout\ = \CH|c\(16) $ ((((\CH1|Add0~62\))))
-- \CH1|Add0~77\ = CARRY(((!\CH1|Add0~62\)) # (!\CH|c\(16)))
-- \CH1|Add0~77COUT1_168\ = CARRY(((!\CH1|Add0~62\)) # (!\CH|c\(16)))

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
	dataa => \CH|c\(16),
	cin => \CH1|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~75_combout\,
	cout0 => \CH1|Add0~77\,
	cout1 => \CH1|Add0~77COUT1_168\);

-- Location: LC_X8_Y5_N1
\CH1|Add0~80\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~80_combout\ = \CH|c\(17) $ ((((!(!\CH1|Add0~62\ & \CH1|Add0~77\) # (\CH1|Add0~62\ & \CH1|Add0~77COUT1_168\)))))
-- \CH1|Add0~82\ = CARRY((\CH|c\(17) & ((!\CH1|Add0~77\))))
-- \CH1|Add0~82COUT1_169\ = CARRY((\CH|c\(17) & ((!\CH1|Add0~77COUT1_168\))))

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
	dataa => \CH|c\(17),
	cin => \CH1|Add0~62\,
	cin0 => \CH1|Add0~77\,
	cin1 => \CH1|Add0~77COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~80_combout\,
	cout0 => \CH1|Add0~82\,
	cout1 => \CH1|Add0~82COUT1_169\);

-- Location: LC_X8_Y5_N2
\CH1|Add0~85\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~85_combout\ = (\CH|c\(18) $ (((!\CH1|Add0~62\ & \CH1|Add0~82\) # (\CH1|Add0~62\ & \CH1|Add0~82COUT1_169\))))
-- \CH1|Add0~87\ = CARRY(((!\CH1|Add0~82\) # (!\CH|c\(18))))
-- \CH1|Add0~87COUT1_170\ = CARRY(((!\CH1|Add0~82COUT1_169\) # (!\CH|c\(18))))

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
	datab => \CH|c\(18),
	cin => \CH1|Add0~62\,
	cin0 => \CH1|Add0~82\,
	cin1 => \CH1|Add0~82COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~85_combout\,
	cout0 => \CH1|Add0~87\,
	cout1 => \CH1|Add0~87COUT1_170\);

-- Location: LC_X8_Y5_N3
\CH1|Add0~90\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~90_combout\ = \CH|c\(19) $ ((((!(!\CH1|Add0~62\ & \CH1|Add0~87\) # (\CH1|Add0~62\ & \CH1|Add0~87COUT1_170\)))))
-- \CH1|Add0~92\ = CARRY((\CH|c\(19) & ((!\CH1|Add0~87\))))
-- \CH1|Add0~92COUT1_171\ = CARRY((\CH|c\(19) & ((!\CH1|Add0~87COUT1_170\))))

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
	dataa => \CH|c\(19),
	cin => \CH1|Add0~62\,
	cin0 => \CH1|Add0~87\,
	cin1 => \CH1|Add0~87COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~90_combout\,
	cout0 => \CH1|Add0~92\,
	cout1 => \CH1|Add0~92COUT1_171\);

-- Location: LC_X8_Y5_N4
\CH1|Add0~95\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~95_combout\ = (\CH|c\(20) $ (((!\CH1|Add0~62\ & \CH1|Add0~92\) # (\CH1|Add0~62\ & \CH1|Add0~92COUT1_171\))))
-- \CH1|Add0~97\ = CARRY(((!\CH1|Add0~92COUT1_171\) # (!\CH|c\(20))))

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
	datab => \CH|c\(20),
	cin => \CH1|Add0~62\,
	cin0 => \CH1|Add0~92\,
	cin1 => \CH1|Add0~92COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~95_combout\,
	cout => \CH1|Add0~97\);

-- Location: LC_X8_Y5_N5
\CH1|Add0~100\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~100_combout\ = (\CH|c\(21) $ ((!\CH1|Add0~97\)))
-- \CH1|Add0~102\ = CARRY(((\CH|c\(21) & !\CH1|Add0~97\)))
-- \CH1|Add0~102COUT1_172\ = CARRY(((\CH|c\(21) & !\CH1|Add0~97\)))

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
	datab => \CH|c\(21),
	cin => \CH1|Add0~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~100_combout\,
	cout0 => \CH1|Add0~102\,
	cout1 => \CH1|Add0~102COUT1_172\);

-- Location: LC_X8_Y5_N6
\CH1|Add0~105\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~105_combout\ = \CH|c\(22) $ (((((!\CH1|Add0~97\ & \CH1|Add0~102\) # (\CH1|Add0~97\ & \CH1|Add0~102COUT1_172\)))))
-- \CH1|Add0~107\ = CARRY(((!\CH1|Add0~102\)) # (!\CH|c\(22)))
-- \CH1|Add0~107COUT1_173\ = CARRY(((!\CH1|Add0~102COUT1_172\)) # (!\CH|c\(22)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH|c\(22),
	cin => \CH1|Add0~97\,
	cin0 => \CH1|Add0~102\,
	cin1 => \CH1|Add0~102COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~105_combout\,
	cout0 => \CH1|Add0~107\,
	cout1 => \CH1|Add0~107COUT1_173\);

-- Location: LC_X8_Y5_N7
\CH1|Add0~110\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~110_combout\ = (\CH|c\(23) $ ((!(!\CH1|Add0~97\ & \CH1|Add0~107\) # (\CH1|Add0~97\ & \CH1|Add0~107COUT1_173\))))
-- \CH1|Add0~112\ = CARRY(((\CH|c\(23) & !\CH1|Add0~107\)))
-- \CH1|Add0~112COUT1_174\ = CARRY(((\CH|c\(23) & !\CH1|Add0~107COUT1_173\)))

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
	datab => \CH|c\(23),
	cin => \CH1|Add0~97\,
	cin0 => \CH1|Add0~107\,
	cin1 => \CH1|Add0~107COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~110_combout\,
	cout0 => \CH1|Add0~112\,
	cout1 => \CH1|Add0~112COUT1_174\);

-- Location: LC_X8_Y5_N8
\CH1|Add0~115\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~115_combout\ = (\CH|c\(24) $ (((!\CH1|Add0~97\ & \CH1|Add0~112\) # (\CH1|Add0~97\ & \CH1|Add0~112COUT1_174\))))
-- \CH1|Add0~117\ = CARRY(((!\CH1|Add0~112\) # (!\CH|c\(24))))
-- \CH1|Add0~117COUT1_175\ = CARRY(((!\CH1|Add0~112COUT1_174\) # (!\CH|c\(24))))

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
	datab => \CH|c\(24),
	cin => \CH1|Add0~97\,
	cin0 => \CH1|Add0~112\,
	cin1 => \CH1|Add0~112COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~115_combout\,
	cout0 => \CH1|Add0~117\,
	cout1 => \CH1|Add0~117COUT1_175\);

-- Location: LC_X8_Y5_N9
\CH1|Add0~120\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~120_combout\ = (\CH|c\(25) $ ((!(!\CH1|Add0~97\ & \CH1|Add0~117\) # (\CH1|Add0~97\ & \CH1|Add0~117COUT1_175\))))
-- \CH1|Add0~122\ = CARRY(((\CH|c\(25) & !\CH1|Add0~117COUT1_175\)))

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
	datab => \CH|c\(25),
	cin => \CH1|Add0~97\,
	cin0 => \CH1|Add0~117\,
	cin1 => \CH1|Add0~117COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~120_combout\,
	cout => \CH1|Add0~122\);

-- Location: LC_X9_Y5_N0
\CH1|Add0~125\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~125_combout\ = \CH|c\(26) $ ((((\CH1|Add0~122\))))
-- \CH1|Add0~127\ = CARRY(((!\CH1|Add0~122\)) # (!\CH|c\(26)))
-- \CH1|Add0~127COUT1_176\ = CARRY(((!\CH1|Add0~122\)) # (!\CH|c\(26)))

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
	dataa => \CH|c\(26),
	cin => \CH1|Add0~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~125_combout\,
	cout0 => \CH1|Add0~127\,
	cout1 => \CH1|Add0~127COUT1_176\);

-- Location: LC_X9_Y5_N1
\CH1|Add0~130\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~130_combout\ = \CH|c\(27) $ ((((!(!\CH1|Add0~122\ & \CH1|Add0~127\) # (\CH1|Add0~122\ & \CH1|Add0~127COUT1_176\)))))
-- \CH1|Add0~132\ = CARRY((\CH|c\(27) & ((!\CH1|Add0~127\))))
-- \CH1|Add0~132COUT1_177\ = CARRY((\CH|c\(27) & ((!\CH1|Add0~127COUT1_176\))))

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
	dataa => \CH|c\(27),
	cin => \CH1|Add0~122\,
	cin0 => \CH1|Add0~127\,
	cin1 => \CH1|Add0~127COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~130_combout\,
	cout0 => \CH1|Add0~132\,
	cout1 => \CH1|Add0~132COUT1_177\);

-- Location: LC_X9_Y5_N9
\CH1|Equal0~7\ : maxv_lcell
-- Equation(s):
-- \CH1|Equal0~7_combout\ = (!\CH1|Add0~115_combout\ & (!\CH1|Add0~125_combout\ & (!\CH1|Add0~120_combout\ & !\CH1|Add0~130_combout\)))

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
	dataa => \CH1|Add0~115_combout\,
	datab => \CH1|Add0~125_combout\,
	datac => \CH1|Add0~120_combout\,
	datad => \CH1|Add0~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Equal0~7_combout\);

-- Location: LC_X9_Y5_N7
\CH1|Equal0~6\ : maxv_lcell
-- Equation(s):
-- \CH1|Equal0~6_combout\ = (!\CH1|Add0~100_combout\ & (!\CH1|Add0~110_combout\ & (!\CH1|Add0~105_combout\ & !\CH1|Add0~95_combout\)))

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
	dataa => \CH1|Add0~100_combout\,
	datab => \CH1|Add0~110_combout\,
	datac => \CH1|Add0~105_combout\,
	datad => \CH1|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Equal0~6_combout\);

-- Location: LC_X10_Y5_N5
\CH1|Equal0~5\ : maxv_lcell
-- Equation(s):
-- \CH1|Equal0~5_combout\ = (!\CH1|Add0~90_combout\ & (!\CH1|Add0~75_combout\ & (!\CH1|Add0~80_combout\ & !\CH1|Add0~85_combout\)))

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
	dataa => \CH1|Add0~90_combout\,
	datab => \CH1|Add0~75_combout\,
	datac => \CH1|Add0~80_combout\,
	datad => \CH1|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Equal0~5_combout\);

-- Location: LC_X9_Y5_N2
\CH1|Add0~135\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~135_combout\ = (\CH|c\(28) $ (((!\CH1|Add0~122\ & \CH1|Add0~132\) # (\CH1|Add0~122\ & \CH1|Add0~132COUT1_177\))))
-- \CH1|Add0~137\ = CARRY(((!\CH1|Add0~132\) # (!\CH|c\(28))))
-- \CH1|Add0~137COUT1_178\ = CARRY(((!\CH1|Add0~132COUT1_177\) # (!\CH|c\(28))))

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
	datab => \CH|c\(28),
	cin => \CH1|Add0~122\,
	cin0 => \CH1|Add0~132\,
	cin1 => \CH1|Add0~132COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~135_combout\,
	cout0 => \CH1|Add0~137\,
	cout1 => \CH1|Add0~137COUT1_178\);

-- Location: LC_X9_Y5_N3
\CH1|Add0~140\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~140_combout\ = (\CH|c\(29) $ ((!(!\CH1|Add0~122\ & \CH1|Add0~137\) # (\CH1|Add0~122\ & \CH1|Add0~137COUT1_178\))))
-- \CH1|Add0~142\ = CARRY(((\CH|c\(29) & !\CH1|Add0~137\)))
-- \CH1|Add0~142COUT1_179\ = CARRY(((\CH|c\(29) & !\CH1|Add0~137COUT1_178\)))

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
	datab => \CH|c\(29),
	cin => \CH1|Add0~122\,
	cin0 => \CH1|Add0~137\,
	cin1 => \CH1|Add0~137COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~140_combout\,
	cout0 => \CH1|Add0~142\,
	cout1 => \CH1|Add0~142COUT1_179\);

-- Location: LC_X9_Y5_N4
\CH1|Add0~145\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~145_combout\ = (\CH|c\(30) $ (((!\CH1|Add0~122\ & \CH1|Add0~142\) # (\CH1|Add0~122\ & \CH1|Add0~142COUT1_179\))))
-- \CH1|Add0~147\ = CARRY(((!\CH1|Add0~142COUT1_179\) # (!\CH|c\(30))))

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
	datab => \CH|c\(30),
	cin => \CH1|Add0~122\,
	cin0 => \CH1|Add0~142\,
	cin1 => \CH1|Add0~142COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~145_combout\,
	cout => \CH1|Add0~147\);

-- Location: LC_X9_Y5_N5
\CH1|Add0~150\ : maxv_lcell
-- Equation(s):
-- \CH1|Add0~150_combout\ = ((\CH1|Add0~147\ $ (!\CH|c\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \CH|c\(31),
	cin => \CH1|Add0~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Add0~150_combout\);

-- Location: LC_X10_Y5_N1
\CH1|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \CH1|Equal0~8_combout\ = (!\CH1|Add0~150_combout\ & (!\CH1|Add0~140_combout\ & (!\CH1|Add0~145_combout\ & !\CH1|Add0~135_combout\)))

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
	dataa => \CH1|Add0~150_combout\,
	datab => \CH1|Add0~140_combout\,
	datac => \CH1|Add0~145_combout\,
	datad => \CH1|Add0~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Equal0~8_combout\);

-- Location: LC_X10_Y5_N6
\CH1|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \CH1|Equal0~9_combout\ = (\CH1|Equal0~7_combout\ & (\CH1|Equal0~6_combout\ & (\CH1|Equal0~5_combout\ & \CH1|Equal0~8_combout\)))

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
	dataa => \CH1|Equal0~7_combout\,
	datab => \CH1|Equal0~6_combout\,
	datac => \CH1|Equal0~5_combout\,
	datad => \CH1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Equal0~9_combout\);

-- Location: LC_X10_Y5_N3
\CH1|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \CH1|Equal0~1_combout\ = (!\CH1|Add0~30_combout\ & (!\CH1|Add0~25_combout\ & (\CH1|Add0~15_combout\ & \CH1|Add0~20_combout\)))

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
	dataa => \CH1|Add0~30_combout\,
	datab => \CH1|Add0~25_combout\,
	datac => \CH1|Add0~15_combout\,
	datad => \CH1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Equal0~1_combout\);

-- Location: LC_X10_Y5_N0
\CH1|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \CH1|Equal0~2_combout\ = (\CH1|Add0~40_combout\ & (!\CH1|Add0~50_combout\ & (!\CH1|Add0~45_combout\ & \CH1|Add0~35_combout\)))

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
	dataa => \CH1|Add0~40_combout\,
	datab => \CH1|Add0~50_combout\,
	datac => \CH1|Add0~45_combout\,
	datad => \CH1|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Equal0~2_combout\);

-- Location: LC_X10_Y5_N4
\CH1|Equal0~3\ : maxv_lcell
-- Equation(s):
-- \CH1|Equal0~3_combout\ = (\CH1|Add0~60_combout\ & (!\CH1|Add0~70_combout\ & (!\CH1|Add0~65_combout\ & \CH1|Add0~55_combout\)))

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
	dataa => \CH1|Add0~60_combout\,
	datab => \CH1|Add0~70_combout\,
	datac => \CH1|Add0~65_combout\,
	datad => \CH1|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Equal0~3_combout\);

-- Location: LC_X10_Y5_N8
\CH1|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \CH1|Equal0~4_combout\ = (\CH1|Equal0~1_combout\ & (\CH1|Equal0~2_combout\ & (\CH1|Equal0~3_combout\ & \CH1|Equal0~0\)))

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
	dataa => \CH1|Equal0~1_combout\,
	datab => \CH1|Equal0~2_combout\,
	datac => \CH1|Equal0~3_combout\,
	datad => \CH1|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CH1|Equal0~4_combout\);

-- Location: LC_X10_Y5_N7
\CH1|Output\ : maxv_lcell
-- Equation(s):
-- \CH1|Output~regout\ = DFFEAS((\CH1|Output~regout\ $ (((\CH1|Equal0~9_combout\ & \CH1|Equal0~4_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \CH1|Output~regout\,
	datac => \CH1|Equal0~9_combout\,
	datad => \CH1|Equal0~4_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH1|Output~regout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NClick~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NClick,
	combout => \NClick~combout\);

-- Location: LC_X5_Y10_N7
\CL|c[4]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(4) = DFFEAS((((\CL|Add0~25_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~25_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(4));

-- Location: LC_X6_Y10_N4
\CL|Add0~0\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~0_combout\ = ((!\CH|c\(0)))
-- \CL|Add0~2\ = CARRY(((\CH|c\(0))))

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
	datab => \CH|c\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~0_combout\,
	cout => \CL|Add0~2\);

-- Location: LC_X6_Y10_N5
\CL|Add0~5\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~5_combout\ = \CL|c\(1) $ ((((\CL|Add0~2\))))
-- \CL|Add0~7\ = CARRY(((!\CL|Add0~2\)) # (!\CL|c\(1)))
-- \CL|Add0~7COUT1_161\ = CARRY(((!\CL|Add0~2\)) # (!\CL|c\(1)))

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
	dataa => \CL|c\(1),
	cin => \CL|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~5_combout\,
	cout0 => \CL|Add0~7\,
	cout1 => \CL|Add0~7COUT1_161\);

-- Location: LC_X5_Y10_N0
\CL|c[1]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(1) = DFFEAS((((\CL|Add0~5_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~5_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(1));

-- Location: LC_X6_Y10_N6
\CL|Add0~10\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~10_combout\ = \CL|c\(2) $ ((((!(!\CL|Add0~2\ & \CL|Add0~7\) # (\CL|Add0~2\ & \CL|Add0~7COUT1_161\)))))
-- \CL|Add0~12\ = CARRY((\CL|c\(2) & ((!\CL|Add0~7\))))
-- \CL|Add0~12COUT1_162\ = CARRY((\CL|c\(2) & ((!\CL|Add0~7COUT1_161\))))

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
	dataa => \CL|c\(2),
	cin => \CL|Add0~2\,
	cin0 => \CL|Add0~7\,
	cin1 => \CL|Add0~7COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~10_combout\,
	cout0 => \CL|Add0~12\,
	cout1 => \CL|Add0~12COUT1_162\);

-- Location: LC_X5_Y10_N9
\CL|c[2]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(2) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~10_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~10_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(2));

-- Location: LC_X6_Y10_N7
\CL|Add0~15\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~15_combout\ = (\CL|c\(3) $ (((!\CL|Add0~2\ & \CL|Add0~12\) # (\CL|Add0~2\ & \CL|Add0~12COUT1_162\))))
-- \CL|Add0~17\ = CARRY(((!\CL|Add0~12\) # (!\CL|c\(3))))
-- \CL|Add0~17COUT1_163\ = CARRY(((!\CL|Add0~12COUT1_162\) # (!\CL|c\(3))))

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
	datab => \CL|c\(3),
	cin => \CL|Add0~2\,
	cin0 => \CL|Add0~12\,
	cin1 => \CL|Add0~12COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~15_combout\,
	cout0 => \CL|Add0~17\,
	cout1 => \CL|Add0~17COUT1_163\);

-- Location: LC_X5_Y10_N2
\CL|c[3]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(3) = DFFEAS((((\CL|Add0~15_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~15_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(3));

-- Location: LC_X6_Y10_N8
\CL|Add0~25\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~25_combout\ = (\CL|c\(4) $ ((!(!\CL|Add0~2\ & \CL|Add0~17\) # (\CL|Add0~2\ & \CL|Add0~17COUT1_163\))))
-- \CL|Add0~27\ = CARRY(((\CL|c\(4) & !\CL|Add0~17\)))
-- \CL|Add0~27COUT1_164\ = CARRY(((\CL|c\(4) & !\CL|Add0~17COUT1_163\)))

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
	datab => \CL|c\(4),
	cin => \CL|Add0~2\,
	cin0 => \CL|Add0~17\,
	cin1 => \CL|Add0~17COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~25_combout\,
	cout0 => \CL|Add0~27\,
	cout1 => \CL|Add0~27COUT1_164\);

-- Location: LC_X8_Y8_N8
\CL|c[24]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(24) = DFFEAS((((\CL|Add0~120_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~120_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(24));

-- Location: LC_X6_Y10_N9
\CL|Add0~20\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~20_combout\ = (\CL|c\(5) $ (((!\CL|Add0~2\ & \CL|Add0~27\) # (\CL|Add0~2\ & \CL|Add0~27COUT1_164\))))
-- \CL|Add0~22\ = CARRY(((!\CL|Add0~27COUT1_164\) # (!\CL|c\(5))))

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
	datab => \CL|c\(5),
	cin => \CL|Add0~2\,
	cin0 => \CL|Add0~27\,
	cin1 => \CL|Add0~27COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~20_combout\,
	cout => \CL|Add0~22\);

-- Location: LC_X7_Y10_N0
\CL|Add0~30\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~30_combout\ = (\CL|c\(6) $ ((!\CL|Add0~22\)))
-- \CL|Add0~32\ = CARRY(((\CL|c\(6) & !\CL|Add0~22\)))
-- \CL|Add0~32COUT1_165\ = CARRY(((\CL|c\(6) & !\CL|Add0~22\)))

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
	datab => \CL|c\(6),
	cin => \CL|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~30_combout\,
	cout0 => \CL|Add0~32\,
	cout1 => \CL|Add0~32COUT1_165\);

-- Location: LC_X6_Y10_N3
\CL|c[6]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(6) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~30_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~30_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(6));

-- Location: LC_X7_Y10_N1
\CL|Add0~35\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~35_combout\ = (\CL|c\(7) $ (((!\CL|Add0~22\ & \CL|Add0~32\) # (\CL|Add0~22\ & \CL|Add0~32COUT1_165\))))
-- \CL|Add0~37\ = CARRY(((!\CL|Add0~32\) # (!\CL|c\(7))))
-- \CL|Add0~37COUT1_166\ = CARRY(((!\CL|Add0~32COUT1_165\) # (!\CL|c\(7))))

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
	datab => \CL|c\(7),
	cin => \CL|Add0~22\,
	cin0 => \CL|Add0~32\,
	cin1 => \CL|Add0~32COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~35_combout\,
	cout0 => \CL|Add0~37\,
	cout1 => \CL|Add0~37COUT1_166\);

-- Location: LC_X11_Y10_N7
\CL|c[7]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(7) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~35_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~35_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(7));

-- Location: LC_X7_Y10_N2
\CL|Add0~40\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~40_combout\ = (\CL|c\(8) $ ((!(!\CL|Add0~22\ & \CL|Add0~37\) # (\CL|Add0~22\ & \CL|Add0~37COUT1_166\))))
-- \CL|Add0~42\ = CARRY(((\CL|c\(8) & !\CL|Add0~37\)))
-- \CL|Add0~42COUT1_167\ = CARRY(((\CL|c\(8) & !\CL|Add0~37COUT1_166\)))

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
	datab => \CL|c\(8),
	cin => \CL|Add0~22\,
	cin0 => \CL|Add0~37\,
	cin1 => \CL|Add0~37COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~40_combout\,
	cout0 => \CL|Add0~42\,
	cout1 => \CL|Add0~42COUT1_167\);

-- Location: LC_X10_Y10_N7
\CL|c[8]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(8) = DFFEAS(((\CL|Add0~40_combout\ & ((!\CL|Equal0~9_combout\) # (!\CL|Equal0~4_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \CL|Add0~40_combout\,
	datac => \CL|Equal0~4_combout\,
	datad => \CL|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(8));

-- Location: LC_X7_Y10_N3
\CL|Add0~45\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~45_combout\ = \CL|c\(9) $ (((((!\CL|Add0~22\ & \CL|Add0~42\) # (\CL|Add0~22\ & \CL|Add0~42COUT1_167\)))))
-- \CL|Add0~47\ = CARRY(((!\CL|Add0~42\)) # (!\CL|c\(9)))
-- \CL|Add0~47COUT1_168\ = CARRY(((!\CL|Add0~42COUT1_167\)) # (!\CL|c\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CL|c\(9),
	cin => \CL|Add0~22\,
	cin0 => \CL|Add0~42\,
	cin1 => \CL|Add0~42COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~45_combout\,
	cout0 => \CL|Add0~47\,
	cout1 => \CL|Add0~47COUT1_168\);

-- Location: LC_X6_Y10_N0
\CL|c[9]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(9) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~45_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~45_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(9));

-- Location: LC_X7_Y10_N4
\CL|Add0~50\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~50_combout\ = (\CL|c\(10) $ ((!(!\CL|Add0~22\ & \CL|Add0~47\) # (\CL|Add0~22\ & \CL|Add0~47COUT1_168\))))
-- \CL|Add0~52\ = CARRY(((\CL|c\(10) & !\CL|Add0~47COUT1_168\)))

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
	datab => \CL|c\(10),
	cin => \CL|Add0~22\,
	cin0 => \CL|Add0~47\,
	cin1 => \CL|Add0~47COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~50_combout\,
	cout => \CL|Add0~52\);

-- Location: LC_X11_Y10_N8
\CL|c[10]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(10) = DFFEAS((((\CL|Add0~50_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~50_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(10));

-- Location: LC_X7_Y10_N5
\CL|Add0~55\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~55_combout\ = \CL|c\(11) $ ((((\CL|Add0~52\))))
-- \CL|Add0~57\ = CARRY(((!\CL|Add0~52\)) # (!\CL|c\(11)))
-- \CL|Add0~57COUT1_169\ = CARRY(((!\CL|Add0~52\)) # (!\CL|c\(11)))

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
	dataa => \CL|c\(11),
	cin => \CL|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~55_combout\,
	cout0 => \CL|Add0~57\,
	cout1 => \CL|Add0~57COUT1_169\);

-- Location: LC_X6_Y10_N1
\CL|c[11]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(11) = DFFEAS((((\CL|Add0~55_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~55_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(11));

-- Location: LC_X7_Y10_N6
\CL|Add0~70\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~70_combout\ = (\CL|c\(12) $ ((!(!\CL|Add0~52\ & \CL|Add0~57\) # (\CL|Add0~52\ & \CL|Add0~57COUT1_169\))))
-- \CL|Add0~72\ = CARRY(((\CL|c\(12) & !\CL|Add0~57\)))
-- \CL|Add0~72COUT1_170\ = CARRY(((\CL|c\(12) & !\CL|Add0~57COUT1_169\)))

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
	datab => \CL|c\(12),
	cin => \CL|Add0~52\,
	cin0 => \CL|Add0~57\,
	cin1 => \CL|Add0~57COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~70_combout\,
	cout0 => \CL|Add0~72\,
	cout1 => \CL|Add0~72COUT1_170\);

-- Location: LC_X11_Y10_N9
\CL|c[12]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(12) = DFFEAS((((\CL|Add0~70_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~70_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(12));

-- Location: LC_X7_Y10_N7
\CL|Add0~60\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~60_combout\ = (\CL|c\(13) $ (((!\CL|Add0~52\ & \CL|Add0~72\) # (\CL|Add0~52\ & \CL|Add0~72COUT1_170\))))
-- \CL|Add0~62\ = CARRY(((!\CL|Add0~72\) # (!\CL|c\(13))))
-- \CL|Add0~62COUT1_171\ = CARRY(((!\CL|Add0~72COUT1_170\) # (!\CL|c\(13))))

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
	datab => \CL|c\(13),
	cin => \CL|Add0~52\,
	cin0 => \CL|Add0~72\,
	cin1 => \CL|Add0~72COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~60_combout\,
	cout0 => \CL|Add0~62\,
	cout1 => \CL|Add0~62COUT1_171\);

-- Location: LC_X11_Y10_N4
\CL|c[13]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(13) = DFFEAS((\CL|Add0~60_combout\ & (((!\CL|Equal0~4_combout\)) # (!\CL|Equal0~9_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c4c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CL|Equal0~9_combout\,
	datab => \CL|Add0~60_combout\,
	datac => \CL|Equal0~4_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(13));

-- Location: LC_X7_Y10_N8
\CL|Add0~75\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~75_combout\ = (\CL|c\(14) $ ((!(!\CL|Add0~52\ & \CL|Add0~62\) # (\CL|Add0~52\ & \CL|Add0~62COUT1_171\))))
-- \CL|Add0~77\ = CARRY(((\CL|c\(14) & !\CL|Add0~62\)))
-- \CL|Add0~77COUT1_172\ = CARRY(((\CL|c\(14) & !\CL|Add0~62COUT1_171\)))

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
	datab => \CL|c\(14),
	cin => \CL|Add0~52\,
	cin0 => \CL|Add0~62\,
	cin1 => \CL|Add0~62COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~75_combout\,
	cout0 => \CL|Add0~77\,
	cout1 => \CL|Add0~77COUT1_172\);

-- Location: LC_X6_Y10_N2
\CL|c[14]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(14) = DFFEAS((((\CL|Add0~75_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~75_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(14));

-- Location: LC_X7_Y10_N9
\CL|Add0~65\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~65_combout\ = (\CL|c\(15) $ (((!\CL|Add0~52\ & \CL|Add0~77\) # (\CL|Add0~52\ & \CL|Add0~77COUT1_172\))))
-- \CL|Add0~67\ = CARRY(((!\CL|Add0~77COUT1_172\) # (!\CL|c\(15))))

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
	datab => \CL|c\(15),
	cin => \CL|Add0~52\,
	cin0 => \CL|Add0~77\,
	cin1 => \CL|Add0~77COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~65_combout\,
	cout => \CL|Add0~67\);

-- Location: LC_X10_Y10_N2
\CL|c[15]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(15) = DFFEAS((\CL|Add0~65_combout\ & (((!\CL|Equal0~9_combout\) # (!\CL|Equal0~4_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CL|Add0~65_combout\,
	datac => \CL|Equal0~4_combout\,
	datad => \CL|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(15));

-- Location: LC_X8_Y10_N0
\CL|Add0~80\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~80_combout\ = \CL|c\(16) $ ((((!\CL|Add0~67\))))
-- \CL|Add0~82\ = CARRY((\CL|c\(16) & ((!\CL|Add0~67\))))
-- \CL|Add0~82COUT1_173\ = CARRY((\CL|c\(16) & ((!\CL|Add0~67\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CL|c\(16),
	cin => \CL|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~80_combout\,
	cout0 => \CL|Add0~82\,
	cout1 => \CL|Add0~82COUT1_173\);

-- Location: LC_X10_Y10_N8
\CL|c[16]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(16) = DFFEAS((\CL|Add0~80_combout\ & (((!\CL|Equal0~9_combout\) # (!\CL|Equal0~4_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CL|Add0~80_combout\,
	datac => \CL|Equal0~4_combout\,
	datad => \CL|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(16));

-- Location: LC_X8_Y10_N1
\CL|Add0~85\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~85_combout\ = (\CL|c\(17) $ (((!\CL|Add0~67\ & \CL|Add0~82\) # (\CL|Add0~67\ & \CL|Add0~82COUT1_173\))))
-- \CL|Add0~87\ = CARRY(((!\CL|Add0~82\) # (!\CL|c\(17))))
-- \CL|Add0~87COUT1_174\ = CARRY(((!\CL|Add0~82COUT1_173\) # (!\CL|c\(17))))

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
	datab => \CL|c\(17),
	cin => \CL|Add0~67\,
	cin0 => \CL|Add0~82\,
	cin1 => \CL|Add0~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~85_combout\,
	cout0 => \CL|Add0~87\,
	cout1 => \CL|Add0~87COUT1_174\);

-- Location: LC_X10_Y10_N5
\CL|c[17]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(17) = DFFEAS(((\CL|Add0~85_combout\ & ((!\CL|Equal0~9_combout\) # (!\CL|Equal0~4_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \CL|Add0~85_combout\,
	datac => \CL|Equal0~4_combout\,
	datad => \CL|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(17));

-- Location: LC_X8_Y10_N2
\CL|Add0~90\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~90_combout\ = (\CL|c\(18) $ ((!(!\CL|Add0~67\ & \CL|Add0~87\) # (\CL|Add0~67\ & \CL|Add0~87COUT1_174\))))
-- \CL|Add0~92\ = CARRY(((\CL|c\(18) & !\CL|Add0~87\)))
-- \CL|Add0~92COUT1_175\ = CARRY(((\CL|c\(18) & !\CL|Add0~87COUT1_174\)))

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
	datab => \CL|c\(18),
	cin => \CL|Add0~67\,
	cin0 => \CL|Add0~87\,
	cin1 => \CL|Add0~87COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~90_combout\,
	cout0 => \CL|Add0~92\,
	cout1 => \CL|Add0~92COUT1_175\);

-- Location: LC_X10_Y10_N9
\CL|c[18]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(18) = DFFEAS((\CL|Add0~90_combout\ & (((!\CL|Equal0~9_combout\) # (!\CL|Equal0~4_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CL|Add0~90_combout\,
	datac => \CL|Equal0~4_combout\,
	datad => \CL|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(18));

-- Location: LC_X8_Y10_N3
\CL|Add0~95\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~95_combout\ = (\CL|c\(19) $ (((!\CL|Add0~67\ & \CL|Add0~92\) # (\CL|Add0~67\ & \CL|Add0~92COUT1_175\))))
-- \CL|Add0~97\ = CARRY(((!\CL|Add0~92\) # (!\CL|c\(19))))
-- \CL|Add0~97COUT1_176\ = CARRY(((!\CL|Add0~92COUT1_175\) # (!\CL|c\(19))))

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
	datab => \CL|c\(19),
	cin => \CL|Add0~67\,
	cin0 => \CL|Add0~92\,
	cin1 => \CL|Add0~92COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~95_combout\,
	cout0 => \CL|Add0~97\,
	cout1 => \CL|Add0~97COUT1_176\);

-- Location: LC_X8_Y8_N0
\CL|c[19]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(19) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~95_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~95_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(19));

-- Location: LC_X8_Y10_N4
\CL|Add0~100\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~100_combout\ = (\CL|c\(20) $ ((!(!\CL|Add0~67\ & \CL|Add0~97\) # (\CL|Add0~67\ & \CL|Add0~97COUT1_176\))))
-- \CL|Add0~102\ = CARRY(((\CL|c\(20) & !\CL|Add0~97COUT1_176\)))

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
	datab => \CL|c\(20),
	cin => \CL|Add0~67\,
	cin0 => \CL|Add0~97\,
	cin1 => \CL|Add0~97COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~100_combout\,
	cout => \CL|Add0~102\);

-- Location: LC_X9_Y10_N8
\CL|c[20]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(20) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~100_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~100_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(20));

-- Location: LC_X8_Y10_N5
\CL|Add0~105\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~105_combout\ = (\CL|c\(21) $ ((\CL|Add0~102\)))
-- \CL|Add0~107\ = CARRY(((!\CL|Add0~102\) # (!\CL|c\(21))))
-- \CL|Add0~107COUT1_177\ = CARRY(((!\CL|Add0~102\) # (!\CL|c\(21))))

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
	datab => \CL|c\(21),
	cin => \CL|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~105_combout\,
	cout0 => \CL|Add0~107\,
	cout1 => \CL|Add0~107COUT1_177\);

-- Location: LC_X5_Y10_N5
\CL|c[21]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(21) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~105_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~105_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(21));

-- Location: LC_X8_Y10_N6
\CL|Add0~110\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~110_combout\ = (\CL|c\(22) $ ((!(!\CL|Add0~102\ & \CL|Add0~107\) # (\CL|Add0~102\ & \CL|Add0~107COUT1_177\))))
-- \CL|Add0~112\ = CARRY(((\CL|c\(22) & !\CL|Add0~107\)))
-- \CL|Add0~112COUT1_178\ = CARRY(((\CL|c\(22) & !\CL|Add0~107COUT1_177\)))

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
	datab => \CL|c\(22),
	cin => \CL|Add0~102\,
	cin0 => \CL|Add0~107\,
	cin1 => \CL|Add0~107COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~110_combout\,
	cout0 => \CL|Add0~112\,
	cout1 => \CL|Add0~112COUT1_178\);

-- Location: LC_X8_Y8_N5
\CL|c[22]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(22) = DFFEAS((((\CL|Add0~110_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~110_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(22));

-- Location: LC_X8_Y10_N7
\CL|Add0~115\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~115_combout\ = (\CL|c\(23) $ (((!\CL|Add0~102\ & \CL|Add0~112\) # (\CL|Add0~102\ & \CL|Add0~112COUT1_178\))))
-- \CL|Add0~117\ = CARRY(((!\CL|Add0~112\) # (!\CL|c\(23))))
-- \CL|Add0~117COUT1_179\ = CARRY(((!\CL|Add0~112COUT1_178\) # (!\CL|c\(23))))

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
	datab => \CL|c\(23),
	cin => \CL|Add0~102\,
	cin0 => \CL|Add0~112\,
	cin1 => \CL|Add0~112COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~115_combout\,
	cout0 => \CL|Add0~117\,
	cout1 => \CL|Add0~117COUT1_179\);

-- Location: LC_X8_Y8_N1
\CL|c[23]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(23) = DFFEAS((((\CL|Add0~115_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~115_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(23));

-- Location: LC_X8_Y10_N8
\CL|Add0~120\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~120_combout\ = \CL|c\(24) $ ((((!(!\CL|Add0~102\ & \CL|Add0~117\) # (\CL|Add0~102\ & \CL|Add0~117COUT1_179\)))))
-- \CL|Add0~122\ = CARRY((\CL|c\(24) & ((!\CL|Add0~117\))))
-- \CL|Add0~122COUT1_180\ = CARRY((\CL|c\(24) & ((!\CL|Add0~117COUT1_179\))))

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
	dataa => \CL|c\(24),
	cin => \CL|Add0~102\,
	cin0 => \CL|Add0~117\,
	cin1 => \CL|Add0~117COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~120_combout\,
	cout0 => \CL|Add0~122\,
	cout1 => \CL|Add0~122COUT1_180\);

-- Location: LC_X8_Y8_N2
\CL|c[27]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(27) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~135_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~135_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(27));

-- Location: LC_X8_Y10_N9
\CL|Add0~125\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~125_combout\ = \CL|c\(25) $ (((((!\CL|Add0~102\ & \CL|Add0~122\) # (\CL|Add0~102\ & \CL|Add0~122COUT1_180\)))))
-- \CL|Add0~127\ = CARRY(((!\CL|Add0~122COUT1_180\)) # (!\CL|c\(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CL|c\(25),
	cin => \CL|Add0~102\,
	cin0 => \CL|Add0~122\,
	cin1 => \CL|Add0~122COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~125_combout\,
	cout => \CL|Add0~127\);

-- Location: LC_X5_Y10_N8
\CL|c[25]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(25) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~125_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~125_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(25));

-- Location: LC_X9_Y10_N0
\CL|Add0~130\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~130_combout\ = (\CL|c\(26) $ ((!\CL|Add0~127\)))
-- \CL|Add0~132\ = CARRY(((\CL|c\(26) & !\CL|Add0~127\)))
-- \CL|Add0~132COUT1_181\ = CARRY(((\CL|c\(26) & !\CL|Add0~127\)))

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
	datab => \CL|c\(26),
	cin => \CL|Add0~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~130_combout\,
	cout0 => \CL|Add0~132\,
	cout1 => \CL|Add0~132COUT1_181\);

-- Location: LC_X9_Y8_N2
\CL|c[26]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(26) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~130_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~130_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(26));

-- Location: LC_X9_Y10_N1
\CL|Add0~135\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~135_combout\ = \CL|c\(27) $ (((((!\CL|Add0~127\ & \CL|Add0~132\) # (\CL|Add0~127\ & \CL|Add0~132COUT1_181\)))))
-- \CL|Add0~137\ = CARRY(((!\CL|Add0~132\)) # (!\CL|c\(27)))
-- \CL|Add0~137COUT1_182\ = CARRY(((!\CL|Add0~132COUT1_181\)) # (!\CL|c\(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CL|c\(27),
	cin => \CL|Add0~127\,
	cin0 => \CL|Add0~132\,
	cin1 => \CL|Add0~132COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~135_combout\,
	cout0 => \CL|Add0~137\,
	cout1 => \CL|Add0~137COUT1_182\);

-- Location: LC_X9_Y10_N9
\CL|Equal0~7\ : maxv_lcell
-- Equation(s):
-- \CL|Equal0~7_combout\ = (!\CL|Add0~120_combout\ & (!\CL|Add0~135_combout\ & (!\CL|Add0~130_combout\ & !\CL|Add0~125_combout\)))

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
	dataa => \CL|Add0~120_combout\,
	datab => \CL|Add0~135_combout\,
	datac => \CL|Add0~130_combout\,
	datad => \CL|Add0~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Equal0~7_combout\);

-- Location: LC_X9_Y10_N7
\CL|Equal0~5\ : maxv_lcell
-- Equation(s):
-- \CL|Equal0~5_combout\ = (\CL|Add0~80_combout\ & (\CL|Add0~90_combout\ & (\CL|Add0~85_combout\ & !\CL|Add0~95_combout\)))

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
	dataa => \CL|Add0~80_combout\,
	datab => \CL|Add0~90_combout\,
	datac => \CL|Add0~85_combout\,
	datad => \CL|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Equal0~5_combout\);

-- Location: LC_X9_Y10_N6
\CL|Equal0~6\ : maxv_lcell
-- Equation(s):
-- \CL|Equal0~6_combout\ = (!\CL|Add0~105_combout\ & (!\CL|Add0~110_combout\ & (!\CL|Add0~100_combout\ & !\CL|Add0~115_combout\)))

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
	dataa => \CL|Add0~105_combout\,
	datab => \CL|Add0~110_combout\,
	datac => \CL|Add0~100_combout\,
	datad => \CL|Add0~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Equal0~6_combout\);

-- Location: LC_X9_Y8_N5
\CL|c[31]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(31) = DFFEAS((((\CL|Add0~155_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~155_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(31));

-- Location: LC_X9_Y10_N2
\CL|Add0~140\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~140_combout\ = (\CL|c\(28) $ ((!(!\CL|Add0~127\ & \CL|Add0~137\) # (\CL|Add0~127\ & \CL|Add0~137COUT1_182\))))
-- \CL|Add0~142\ = CARRY(((\CL|c\(28) & !\CL|Add0~137\)))
-- \CL|Add0~142COUT1_183\ = CARRY(((\CL|c\(28) & !\CL|Add0~137COUT1_182\)))

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
	datab => \CL|c\(28),
	cin => \CL|Add0~127\,
	cin0 => \CL|Add0~137\,
	cin1 => \CL|Add0~137COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~140_combout\,
	cout0 => \CL|Add0~142\,
	cout1 => \CL|Add0~142COUT1_183\);

-- Location: LC_X10_Y10_N4
\CL|c[28]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(28) = DFFEAS((((\CL|Add0~140_combout\))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

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
	clk => \CLK~combout\,
	datad => \CL|Add0~140_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(28));

-- Location: LC_X9_Y10_N3
\CL|Add0~145\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~145_combout\ = (\CL|c\(29) $ (((!\CL|Add0~127\ & \CL|Add0~142\) # (\CL|Add0~127\ & \CL|Add0~142COUT1_183\))))
-- \CL|Add0~147\ = CARRY(((!\CL|Add0~142\) # (!\CL|c\(29))))
-- \CL|Add0~147COUT1_184\ = CARRY(((!\CL|Add0~142COUT1_183\) # (!\CL|c\(29))))

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
	datab => \CL|c\(29),
	cin => \CL|Add0~127\,
	cin0 => \CL|Add0~142\,
	cin1 => \CL|Add0~142COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~145_combout\,
	cout0 => \CL|Add0~147\,
	cout1 => \CL|Add0~147COUT1_184\);

-- Location: LC_X11_Y10_N6
\CL|c[29]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(29) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~145_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~145_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(29));

-- Location: LC_X9_Y10_N4
\CL|Add0~150\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~150_combout\ = (\CL|c\(30) $ ((!(!\CL|Add0~127\ & \CL|Add0~147\) # (\CL|Add0~127\ & \CL|Add0~147COUT1_184\))))
-- \CL|Add0~152\ = CARRY(((\CL|c\(30) & !\CL|Add0~147COUT1_184\)))

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
	datab => \CL|c\(30),
	cin => \CL|Add0~127\,
	cin0 => \CL|Add0~147\,
	cin1 => \CL|Add0~147COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~150_combout\,
	cout => \CL|Add0~152\);

-- Location: LC_X9_Y8_N0
\CL|c[30]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(30) = DFFEAS(GND, GLOBAL(\CLK~combout\), \NReset~combout\, , , \CL|Add0~150_combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \CL|Add0~150_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(30));

-- Location: LC_X9_Y10_N5
\CL|Add0~155\ : maxv_lcell
-- Equation(s):
-- \CL|Add0~155_combout\ = ((\CL|Add0~152\ $ (\CL|c\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \CL|c\(31),
	cin => \CL|Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Add0~155_combout\);

-- Location: LC_X10_Y10_N0
\CL|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \CL|Equal0~8_combout\ = (!\CL|Add0~155_combout\ & (!\CL|Add0~140_combout\ & (!\CL|Add0~150_combout\ & !\CL|Add0~145_combout\)))

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
	dataa => \CL|Add0~155_combout\,
	datab => \CL|Add0~140_combout\,
	datac => \CL|Add0~150_combout\,
	datad => \CL|Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Equal0~8_combout\);

-- Location: LC_X10_Y10_N1
\CL|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \CL|Equal0~9_combout\ = (\CL|Equal0~7_combout\ & (\CL|Equal0~5_combout\ & (\CL|Equal0~6_combout\ & \CL|Equal0~8_combout\)))

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
	dataa => \CL|Equal0~7_combout\,
	datab => \CL|Equal0~5_combout\,
	datac => \CL|Equal0~6_combout\,
	datad => \CL|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Equal0~9_combout\);

-- Location: LC_X10_Y10_N3
\CL|c[5]\ : maxv_lcell
-- Equation(s):
-- \CL|c\(5) = DFFEAS(((\CL|Add0~20_combout\ & ((!\CL|Equal0~9_combout\) # (!\CL|Equal0~4_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \CL|Add0~20_combout\,
	datac => \CL|Equal0~4_combout\,
	datad => \CL|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|c\(5));

-- Location: LC_X11_Y10_N3
\CL|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \CL|Equal0~1_combout\ = (!\CL|Add0~25_combout\ & (\CL|Add0~20_combout\ & (!\CL|Add0~35_combout\ & !\CL|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CL|Add0~25_combout\,
	datab => \CL|Add0~20_combout\,
	datac => \CL|Add0~35_combout\,
	datad => \CL|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Equal0~1_combout\);

-- Location: LC_X5_Y10_N6
\CL|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \CL|Equal0~0_combout\ = (!\CL|Add0~15_combout\ & (!\CL|Add0~0_combout\ & (!\CL|Add0~10_combout\ & !\CL|Add0~5_combout\)))

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
	dataa => \CL|Add0~15_combout\,
	datab => \CL|Add0~0_combout\,
	datac => \CL|Add0~10_combout\,
	datad => \CL|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Equal0~0_combout\);

-- Location: LC_X11_Y10_N5
\CL|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \CL|Equal0~2_combout\ = (!\CL|Add0~50_combout\ & (\CL|Add0~40_combout\ & (!\CL|Add0~55_combout\ & !\CL|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CL|Add0~50_combout\,
	datab => \CL|Add0~40_combout\,
	datac => \CL|Add0~55_combout\,
	datad => \CL|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Equal0~2_combout\);

-- Location: LC_X11_Y10_N2
\CL|Equal0~3\ : maxv_lcell
-- Equation(s):
-- \CL|Equal0~3_combout\ = (!\CL|Add0~75_combout\ & (!\CL|Add0~70_combout\ & (\CL|Add0~65_combout\ & \CL|Add0~60_combout\)))

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
	dataa => \CL|Add0~75_combout\,
	datab => \CL|Add0~70_combout\,
	datac => \CL|Add0~65_combout\,
	datad => \CL|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Equal0~3_combout\);

-- Location: LC_X11_Y10_N0
\CL|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \CL|Equal0~4_combout\ = (\CL|Equal0~1_combout\ & (\CL|Equal0~0_combout\ & (\CL|Equal0~2_combout\ & \CL|Equal0~3_combout\)))

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
	dataa => \CL|Equal0~1_combout\,
	datab => \CL|Equal0~0_combout\,
	datac => \CL|Equal0~2_combout\,
	datad => \CL|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CL|Equal0~4_combout\);

-- Location: LC_X10_Y10_N6
\CL|Output\ : maxv_lcell
-- Equation(s):
-- \CL|Output~regout\ = DFFEAS(\CL|Output~regout\ $ ((((\CL|Equal0~4_combout\ & \CL|Equal0~9_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CL|Output~regout\,
	datac => \CL|Equal0~4_combout\,
	datad => \CL|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CL|Output~regout\);

-- Location: LC_X1_Y6_N1
\Edge|current_s\ : maxv_lcell
-- Equation(s):
-- \Edge|current_s~regout\ = DFFEAS((((!\NClick~combout\))), \CL|Output~regout\, \NReset~combout\, , , , , , )

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
	clk => \CL|Output~regout\,
	datad => \NClick~combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Edge|current_s~regout\);

-- Location: LC_X1_Y6_N9
\Con|state~17\ : maxv_lcell
-- Equation(s):
-- \Con|state~17_combout\ = (\Con|LEDF~regout\ & (((!\NClick~combout\ & !\Edge|current_s~regout\)) # (!\Con|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \NClick~combout\,
	datab => \Edge|current_s~regout\,
	datac => \Con|LEDF~regout\,
	datad => \Con|LessThan1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|state~17_combout\);

-- Location: LC_X1_Y6_N0
\Con|React[31]~0\ : maxv_lcell
-- Equation(s):
-- \Con|React[31]~0_combout\ = (!\NClick~combout\ & (!\Con|state.GON~regout\ & (\Con|LEDF~regout\ & !\Edge|current_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \NClick~combout\,
	datab => \Con|state.GON~regout\,
	datac => \Con|LEDF~regout\,
	datad => \Edge|current_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|React[31]~0_combout\);

-- Location: LC_X1_Y4_N2
\Con|React[0]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(0) = DFFEAS((((!\Con|React\(0)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )

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
	clk => \CH1|Output~regout\,
	datad => \Con|React\(0),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(0));

-- Location: LC_X2_Y4_N5
\Con|React[1]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(1) = DFFEAS(\Con|React\(1) $ ((\Con|React\(0))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[1]~2\ = CARRY((\Con|React\(1) & (\Con|React\(0))))
-- \Con|React[1]~2COUT1_65\ = CARRY((\Con|React\(1) & (\Con|React\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(1),
	datab => \Con|React\(0),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(1),
	cout0 => \Con|React[1]~2\,
	cout1 => \Con|React[1]~2COUT1_65\);

-- Location: LC_X2_Y4_N6
\Con|React[2]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(2) = DFFEAS(\Con|React\(2) $ ((((\Con|React[1]~2\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[2]~4\ = CARRY(((!\Con|React[1]~2\)) # (!\Con|React\(2)))
-- \Con|React[2]~4COUT1_66\ = CARRY(((!\Con|React[1]~2COUT1_65\)) # (!\Con|React\(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(2),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin0 => \Con|React[1]~2\,
	cin1 => \Con|React[1]~2COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(2),
	cout0 => \Con|React[2]~4\,
	cout1 => \Con|React[2]~4COUT1_66\);

-- Location: LC_X2_Y4_N7
\Con|React[3]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(3) = DFFEAS((\Con|React\(3) $ ((!\Con|React[2]~4\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[3]~6\ = CARRY(((\Con|React\(3) & !\Con|React[2]~4\)))
-- \Con|React[3]~6COUT1_67\ = CARRY(((\Con|React\(3) & !\Con|React[2]~4COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(3),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin0 => \Con|React[2]~4\,
	cin1 => \Con|React[2]~4COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(3),
	cout0 => \Con|React[3]~6\,
	cout1 => \Con|React[3]~6COUT1_67\);

-- Location: LC_X2_Y4_N4
\Con|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~0_combout\ = (\Con|React\(1)) # (((\Con|React\(2)) # (\Con|React\(0))) # (!\Con|React\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|React\(1),
	datab => \Con|React\(3),
	datac => \Con|React\(2),
	datad => \Con|React\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~0_combout\);

-- Location: LC_X2_Y4_N8
\Con|React[4]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(4) = DFFEAS(\Con|React\(4) $ ((((\Con|React[3]~6\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[4]~8\ = CARRY(((!\Con|React[3]~6\)) # (!\Con|React\(4)))
-- \Con|React[4]~8COUT1_68\ = CARRY(((!\Con|React[3]~6COUT1_67\)) # (!\Con|React\(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(4),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin0 => \Con|React[3]~6\,
	cin1 => \Con|React[3]~6COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(4),
	cout0 => \Con|React[4]~8\,
	cout1 => \Con|React[4]~8COUT1_68\);

-- Location: LC_X2_Y4_N9
\Con|React[5]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(5) = DFFEAS((\Con|React\(5) $ ((!\Con|React[4]~8\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[5]~10\ = CARRY(((\Con|React\(5) & !\Con|React[4]~8COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(5),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin0 => \Con|React[4]~8\,
	cin1 => \Con|React[4]~8COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(5),
	cout => \Con|React[5]~10\);

-- Location: LC_X3_Y4_N0
\Con|React[6]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(6) = DFFEAS((\Con|React\(6) $ ((\Con|React[5]~10\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[6]~12\ = CARRY(((!\Con|React[5]~10\) # (!\Con|React\(6))))
-- \Con|React[6]~12COUT1_69\ = CARRY(((!\Con|React[5]~10\) # (!\Con|React\(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(6),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[5]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(6),
	cout0 => \Con|React[6]~12\,
	cout1 => \Con|React[6]~12COUT1_69\);

-- Location: LC_X3_Y4_N1
\Con|React[7]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(7) = DFFEAS((\Con|React\(7) $ ((!(!\Con|React[5]~10\ & \Con|React[6]~12\) # (\Con|React[5]~10\ & \Con|React[6]~12COUT1_69\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[7]~14\ = CARRY(((\Con|React\(7) & !\Con|React[6]~12\)))
-- \Con|React[7]~14COUT1_70\ = CARRY(((\Con|React\(7) & !\Con|React[6]~12COUT1_69\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(7),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[5]~10\,
	cin0 => \Con|React[6]~12\,
	cin1 => \Con|React[6]~12COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(7),
	cout0 => \Con|React[7]~14\,
	cout1 => \Con|React[7]~14COUT1_70\);

-- Location: LC_X3_Y4_N2
\Con|React[8]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(8) = DFFEAS((\Con|React\(8) $ (((!\Con|React[5]~10\ & \Con|React[7]~14\) # (\Con|React[5]~10\ & \Con|React[7]~14COUT1_70\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[8]~16\ = CARRY(((!\Con|React[7]~14\) # (!\Con|React\(8))))
-- \Con|React[8]~16COUT1_71\ = CARRY(((!\Con|React[7]~14COUT1_70\) # (!\Con|React\(8))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(8),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[5]~10\,
	cin0 => \Con|React[7]~14\,
	cin1 => \Con|React[7]~14COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(8),
	cout0 => \Con|React[8]~16\,
	cout1 => \Con|React[8]~16COUT1_71\);

-- Location: LC_X3_Y4_N3
\Con|React[9]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(9) = DFFEAS(\Con|React\(9) $ ((((!(!\Con|React[5]~10\ & \Con|React[8]~16\) # (\Con|React[5]~10\ & \Con|React[8]~16COUT1_71\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[9]~18\ = CARRY((\Con|React\(9) & ((!\Con|React[8]~16\))))
-- \Con|React[9]~18COUT1_72\ = CARRY((\Con|React\(9) & ((!\Con|React[8]~16COUT1_71\))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(9),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[5]~10\,
	cin0 => \Con|React[8]~16\,
	cin1 => \Con|React[8]~16COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(9),
	cout0 => \Con|React[9]~18\,
	cout1 => \Con|React[9]~18COUT1_72\);

-- Location: LC_X3_Y4_N4
\Con|React[10]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(10) = DFFEAS(\Con|React\(10) $ (((((!\Con|React[5]~10\ & \Con|React[9]~18\) # (\Con|React[5]~10\ & \Con|React[9]~18COUT1_72\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[10]~20\ = CARRY(((!\Con|React[9]~18COUT1_72\)) # (!\Con|React\(10)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(10),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[5]~10\,
	cin0 => \Con|React[9]~18\,
	cin1 => \Con|React[9]~18COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(10),
	cout => \Con|React[10]~20\);

-- Location: LC_X3_Y4_N5
\Con|React[11]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(11) = DFFEAS(\Con|React\(11) $ ((((!\Con|React[10]~20\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[11]~22\ = CARRY((\Con|React\(11) & ((!\Con|React[10]~20\))))
-- \Con|React[11]~22COUT1_73\ = CARRY((\Con|React\(11) & ((!\Con|React[10]~20\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(11),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[10]~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(11),
	cout0 => \Con|React[11]~22\,
	cout1 => \Con|React[11]~22COUT1_73\);

-- Location: LC_X3_Y4_N6
\Con|React[12]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(12) = DFFEAS(\Con|React\(12) $ (((((!\Con|React[10]~20\ & \Con|React[11]~22\) # (\Con|React[10]~20\ & \Con|React[11]~22COUT1_73\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[12]~24\ = CARRY(((!\Con|React[11]~22\)) # (!\Con|React\(12)))
-- \Con|React[12]~24COUT1_74\ = CARRY(((!\Con|React[11]~22COUT1_73\)) # (!\Con|React\(12)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(12),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[10]~20\,
	cin0 => \Con|React[11]~22\,
	cin1 => \Con|React[11]~22COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(12),
	cout0 => \Con|React[12]~24\,
	cout1 => \Con|React[12]~24COUT1_74\);

-- Location: LC_X3_Y4_N7
\Con|React[13]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(13) = DFFEAS((\Con|React\(13) $ ((!(!\Con|React[10]~20\ & \Con|React[12]~24\) # (\Con|React[10]~20\ & \Con|React[12]~24COUT1_74\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[13]~26\ = CARRY(((\Con|React\(13) & !\Con|React[12]~24\)))
-- \Con|React[13]~26COUT1_75\ = CARRY(((\Con|React\(13) & !\Con|React[12]~24COUT1_74\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(13),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[10]~20\,
	cin0 => \Con|React[12]~24\,
	cin1 => \Con|React[12]~24COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(13),
	cout0 => \Con|React[13]~26\,
	cout1 => \Con|React[13]~26COUT1_75\);

-- Location: LC_X3_Y4_N8
\Con|React[14]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(14) = DFFEAS(\Con|React\(14) $ (((((!\Con|React[10]~20\ & \Con|React[13]~26\) # (\Con|React[10]~20\ & \Con|React[13]~26COUT1_75\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[14]~28\ = CARRY(((!\Con|React[13]~26\)) # (!\Con|React\(14)))
-- \Con|React[14]~28COUT1_76\ = CARRY(((!\Con|React[13]~26COUT1_75\)) # (!\Con|React\(14)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(14),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[10]~20\,
	cin0 => \Con|React[13]~26\,
	cin1 => \Con|React[13]~26COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(14),
	cout0 => \Con|React[14]~28\,
	cout1 => \Con|React[14]~28COUT1_76\);

-- Location: LC_X3_Y4_N9
\Con|React[15]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(15) = DFFEAS((\Con|React\(15) $ ((!(!\Con|React[10]~20\ & \Con|React[14]~28\) # (\Con|React[10]~20\ & \Con|React[14]~28COUT1_76\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[15]~30\ = CARRY(((\Con|React\(15) & !\Con|React[14]~28COUT1_76\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(15),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[10]~20\,
	cin0 => \Con|React[14]~28\,
	cin1 => \Con|React[14]~28COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(15),
	cout => \Con|React[15]~30\);

-- Location: LC_X2_Y4_N1
\Con|Equal1~3\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~3_combout\ = (\Con|React\(12)) # ((\Con|React\(14)) # ((\Con|React\(15)) # (\Con|React\(13))))

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
	dataa => \Con|React\(12),
	datab => \Con|React\(14),
	datac => \Con|React\(15),
	datad => \Con|React\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~3_combout\);

-- Location: LC_X2_Y4_N0
\Con|Equal1~2\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~2_combout\ = (\Con|React\(9)) # ((\Con|React\(11)) # ((\Con|React\(8)) # (\Con|React\(10))))

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
	dataa => \Con|React\(9),
	datab => \Con|React\(11),
	datac => \Con|React\(8),
	datad => \Con|React\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~2_combout\);

-- Location: LC_X2_Y4_N2
\Con|Equal1~1\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~1_combout\ = (\Con|React\(4)) # ((\Con|React\(5)) # ((\Con|React\(6)) # (\Con|React\(7))))

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
	dataa => \Con|React\(4),
	datab => \Con|React\(5),
	datac => \Con|React\(6),
	datad => \Con|React\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~1_combout\);

-- Location: LC_X2_Y4_N3
\Con|Equal1~4\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~4_combout\ = (\Con|Equal1~0_combout\) # ((\Con|Equal1~3_combout\) # ((\Con|Equal1~2_combout\) # (\Con|Equal1~1_combout\)))

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
	dataa => \Con|Equal1~0_combout\,
	datab => \Con|Equal1~3_combout\,
	datac => \Con|Equal1~2_combout\,
	datad => \Con|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~4_combout\);

-- Location: LC_X4_Y4_N0
\Con|React[16]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(16) = DFFEAS((\Con|React\(16) $ ((\Con|React[15]~30\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[16]~32\ = CARRY(((!\Con|React[15]~30\) # (!\Con|React\(16))))
-- \Con|React[16]~32COUT1_77\ = CARRY(((!\Con|React[15]~30\) # (!\Con|React\(16))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(16),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[15]~30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(16),
	cout0 => \Con|React[16]~32\,
	cout1 => \Con|React[16]~32COUT1_77\);

-- Location: LC_X4_Y4_N1
\Con|React[17]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(17) = DFFEAS((\Con|React\(17) $ ((!(!\Con|React[15]~30\ & \Con|React[16]~32\) # (\Con|React[15]~30\ & \Con|React[16]~32COUT1_77\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[17]~34\ = CARRY(((\Con|React\(17) & !\Con|React[16]~32\)))
-- \Con|React[17]~34COUT1_78\ = CARRY(((\Con|React\(17) & !\Con|React[16]~32COUT1_77\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(17),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[15]~30\,
	cin0 => \Con|React[16]~32\,
	cin1 => \Con|React[16]~32COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(17),
	cout0 => \Con|React[17]~34\,
	cout1 => \Con|React[17]~34COUT1_78\);

-- Location: LC_X4_Y4_N2
\Con|React[18]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(18) = DFFEAS((\Con|React\(18) $ (((!\Con|React[15]~30\ & \Con|React[17]~34\) # (\Con|React[15]~30\ & \Con|React[17]~34COUT1_78\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[18]~36\ = CARRY(((!\Con|React[17]~34\) # (!\Con|React\(18))))
-- \Con|React[18]~36COUT1_79\ = CARRY(((!\Con|React[17]~34COUT1_78\) # (!\Con|React\(18))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(18),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[15]~30\,
	cin0 => \Con|React[17]~34\,
	cin1 => \Con|React[17]~34COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(18),
	cout0 => \Con|React[18]~36\,
	cout1 => \Con|React[18]~36COUT1_79\);

-- Location: LC_X4_Y4_N3
\Con|React[19]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(19) = DFFEAS(\Con|React\(19) $ ((((!(!\Con|React[15]~30\ & \Con|React[18]~36\) # (\Con|React[15]~30\ & \Con|React[18]~36COUT1_79\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[19]~38\ = CARRY((\Con|React\(19) & ((!\Con|React[18]~36\))))
-- \Con|React[19]~38COUT1_80\ = CARRY((\Con|React\(19) & ((!\Con|React[18]~36COUT1_79\))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(19),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[15]~30\,
	cin0 => \Con|React[18]~36\,
	cin1 => \Con|React[18]~36COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(19),
	cout0 => \Con|React[19]~38\,
	cout1 => \Con|React[19]~38COUT1_80\);

-- Location: LC_X4_Y4_N4
\Con|React[20]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(20) = DFFEAS(\Con|React\(20) $ (((((!\Con|React[15]~30\ & \Con|React[19]~38\) # (\Con|React[15]~30\ & \Con|React[19]~38COUT1_80\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[20]~40\ = CARRY(((!\Con|React[19]~38COUT1_80\)) # (!\Con|React\(20)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(20),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[15]~30\,
	cin0 => \Con|React[19]~38\,
	cin1 => \Con|React[19]~38COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(20),
	cout => \Con|React[20]~40\);

-- Location: LC_X4_Y4_N5
\Con|React[21]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(21) = DFFEAS(\Con|React\(21) $ ((((!\Con|React[20]~40\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[21]~42\ = CARRY((\Con|React\(21) & ((!\Con|React[20]~40\))))
-- \Con|React[21]~42COUT1_81\ = CARRY((\Con|React\(21) & ((!\Con|React[20]~40\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(21),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[20]~40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(21),
	cout0 => \Con|React[21]~42\,
	cout1 => \Con|React[21]~42COUT1_81\);

-- Location: LC_X4_Y4_N6
\Con|React[22]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(22) = DFFEAS(\Con|React\(22) $ (((((!\Con|React[20]~40\ & \Con|React[21]~42\) # (\Con|React[20]~40\ & \Con|React[21]~42COUT1_81\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[22]~44\ = CARRY(((!\Con|React[21]~42\)) # (!\Con|React\(22)))
-- \Con|React[22]~44COUT1_82\ = CARRY(((!\Con|React[21]~42COUT1_81\)) # (!\Con|React\(22)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(22),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[20]~40\,
	cin0 => \Con|React[21]~42\,
	cin1 => \Con|React[21]~42COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(22),
	cout0 => \Con|React[22]~44\,
	cout1 => \Con|React[22]~44COUT1_82\);

-- Location: LC_X4_Y4_N7
\Con|React[23]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(23) = DFFEAS((\Con|React\(23) $ ((!(!\Con|React[20]~40\ & \Con|React[22]~44\) # (\Con|React[20]~40\ & \Con|React[22]~44COUT1_82\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[23]~46\ = CARRY(((\Con|React\(23) & !\Con|React[22]~44\)))
-- \Con|React[23]~46COUT1_83\ = CARRY(((\Con|React\(23) & !\Con|React[22]~44COUT1_82\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(23),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[20]~40\,
	cin0 => \Con|React[22]~44\,
	cin1 => \Con|React[22]~44COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(23),
	cout0 => \Con|React[23]~46\,
	cout1 => \Con|React[23]~46COUT1_83\);

-- Location: LC_X4_Y4_N8
\Con|React[24]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(24) = DFFEAS(\Con|React\(24) $ (((((!\Con|React[20]~40\ & \Con|React[23]~46\) # (\Con|React[20]~40\ & \Con|React[23]~46COUT1_83\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[24]~48\ = CARRY(((!\Con|React[23]~46\)) # (!\Con|React\(24)))
-- \Con|React[24]~48COUT1_84\ = CARRY(((!\Con|React[23]~46COUT1_83\)) # (!\Con|React\(24)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(24),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[20]~40\,
	cin0 => \Con|React[23]~46\,
	cin1 => \Con|React[23]~46COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(24),
	cout0 => \Con|React[24]~48\,
	cout1 => \Con|React[24]~48COUT1_84\);

-- Location: LC_X4_Y4_N9
\Con|React[25]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(25) = DFFEAS((\Con|React\(25) $ ((!(!\Con|React[20]~40\ & \Con|React[24]~48\) # (\Con|React[20]~40\ & \Con|React[24]~48COUT1_84\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[25]~50\ = CARRY(((\Con|React\(25) & !\Con|React[24]~48COUT1_84\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(25),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[20]~40\,
	cin0 => \Con|React[24]~48\,
	cin1 => \Con|React[24]~48COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(25),
	cout => \Con|React[25]~50\);

-- Location: LC_X5_Y4_N0
\Con|React[26]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(26) = DFFEAS((\Con|React\(26) $ ((\Con|React[25]~50\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[26]~52\ = CARRY(((!\Con|React[25]~50\) # (!\Con|React\(26))))
-- \Con|React[26]~52COUT1_85\ = CARRY(((!\Con|React[25]~50\) # (!\Con|React\(26))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(26),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[25]~50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(26),
	cout0 => \Con|React[26]~52\,
	cout1 => \Con|React[26]~52COUT1_85\);

-- Location: LC_X5_Y4_N1
\Con|React[27]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(27) = DFFEAS((\Con|React\(27) $ ((!(!\Con|React[25]~50\ & \Con|React[26]~52\) # (\Con|React[25]~50\ & \Con|React[26]~52COUT1_85\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[27]~54\ = CARRY(((\Con|React\(27) & !\Con|React[26]~52\)))
-- \Con|React[27]~54COUT1_86\ = CARRY(((\Con|React\(27) & !\Con|React[26]~52COUT1_85\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(27),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[25]~50\,
	cin0 => \Con|React[26]~52\,
	cin1 => \Con|React[26]~52COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(27),
	cout0 => \Con|React[27]~54\,
	cout1 => \Con|React[27]~54COUT1_86\);

-- Location: LC_X4_Y5_N7
\Con|Equal1~8\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~8_combout\ = (\Con|React\(27)) # ((\Con|React\(24)) # ((\Con|React\(25)) # (\Con|React\(26))))

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
	dataa => \Con|React\(27),
	datab => \Con|React\(24),
	datac => \Con|React\(25),
	datad => \Con|React\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~8_combout\);

-- Location: LC_X4_Y5_N3
\Con|Equal1~5\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~5_combout\ = (((\Con|React\(17)) # (\Con|React\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Con|React\(17),
	datad => \Con|React\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~5_combout\);

-- Location: LC_X5_Y4_N8
\Con|Equal1~6\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~6_combout\ = (\Con|React\(21)) # ((\Con|React\(23)) # ((\Con|React\(22)) # (\Con|React\(20))))

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
	dataa => \Con|React\(21),
	datab => \Con|React\(23),
	datac => \Con|React\(22),
	datad => \Con|React\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~6_combout\);

-- Location: LC_X4_Y5_N4
\Con|Equal1~7\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~7_combout\ = (\Con|Equal1~5_combout\) # ((\Con|React\(18)) # ((\Con|React\(19)) # (\Con|Equal1~6_combout\)))

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
	dataa => \Con|Equal1~5_combout\,
	datab => \Con|React\(18),
	datac => \Con|React\(19),
	datad => \Con|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~7_combout\);

-- Location: LC_X5_Y4_N2
\Con|React[28]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(28) = DFFEAS((\Con|React\(28) $ (((!\Con|React[25]~50\ & \Con|React[27]~54\) # (\Con|React[25]~50\ & \Con|React[27]~54COUT1_86\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[28]~56\ = CARRY(((!\Con|React[27]~54\) # (!\Con|React\(28))))
-- \Con|React[28]~56COUT1_87\ = CARRY(((!\Con|React[27]~54COUT1_86\) # (!\Con|React\(28))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|React\(28),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[25]~50\,
	cin0 => \Con|React[27]~54\,
	cin1 => \Con|React[27]~54COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(28),
	cout0 => \Con|React[28]~56\,
	cout1 => \Con|React[28]~56COUT1_87\);

-- Location: LC_X5_Y4_N3
\Con|React[29]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(29) = DFFEAS(\Con|React\(29) $ ((((!(!\Con|React[25]~50\ & \Con|React[28]~56\) # (\Con|React[25]~50\ & \Con|React[28]~56COUT1_87\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[29]~58\ = CARRY((\Con|React\(29) & ((!\Con|React[28]~56\))))
-- \Con|React[29]~58COUT1_88\ = CARRY((\Con|React\(29) & ((!\Con|React[28]~56COUT1_87\))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(29),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[25]~50\,
	cin0 => \Con|React[28]~56\,
	cin1 => \Con|React[28]~56COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(29),
	cout0 => \Con|React[29]~58\,
	cout1 => \Con|React[29]~58COUT1_88\);

-- Location: LC_X5_Y4_N4
\Con|React[30]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(30) = DFFEAS(\Con|React\(30) $ (((((!\Con|React[25]~50\ & \Con|React[29]~58\) # (\Con|React[25]~50\ & \Con|React[29]~58COUT1_88\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|React[30]~60\ = CARRY(((!\Con|React[29]~58COUT1_88\)) # (!\Con|React\(30)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(30),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[25]~50\,
	cin0 => \Con|React[29]~58\,
	cin1 => \Con|React[29]~58COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(30),
	cout => \Con|React[30]~60\);

-- Location: LC_X5_Y4_N5
\Con|React[31]\ : maxv_lcell
-- Equation(s):
-- \Con|React\(31) = DFFEAS(\Con|React\(31) $ ((((!\Con|React[30]~60\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|React\(31),
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|React[30]~60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|React\(31));

-- Location: LC_X5_Y4_N7
\Con|Equal1~9\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~9_combout\ = (\Con|React\(31)) # ((\Con|React\(28)) # ((\Con|React\(30)) # (\Con|React\(29))))

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
	dataa => \Con|React\(31),
	datab => \Con|React\(28),
	datac => \Con|React\(30),
	datad => \Con|React\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~9_combout\);

-- Location: LC_X2_Y5_N2
\Con|Equal1~10\ : maxv_lcell
-- Equation(s):
-- \Con|Equal1~10_combout\ = (\Con|Equal1~4_combout\) # ((\Con|Equal1~8_combout\) # ((\Con|Equal1~7_combout\) # (\Con|Equal1~9_combout\)))

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
	dataa => \Con|Equal1~4_combout\,
	datab => \Con|Equal1~8_combout\,
	datac => \Con|Equal1~7_combout\,
	datad => \Con|Equal1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal1~10_combout\);

-- Location: LC_X3_Y6_N0
\Con|Count[31]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(31) = DFFEAS(((\Con|Add0~155_combout\ & (!\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

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
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~155_combout\,
	datac => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(31));

-- Location: LC_X1_Y8_N4
\Con|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~35_combout\ = ((!\Con|Count\(0)))
-- \Con|Add0~37\ = CARRY(((\Con|Count\(0))))

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
	datab => \Con|Count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~35_combout\,
	cout => \Con|Add0~37\);

-- Location: LC_X1_Y8_N1
\Con|Count[0]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(0) = DFFEAS((((\Con|Add0~35_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~35_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(0));

-- Location: LC_X1_Y8_N5
\Con|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~40_combout\ = (\Con|Count\(1) $ ((\Con|Add0~37\)))
-- \Con|Add0~42\ = CARRY(((!\Con|Add0~37\) # (!\Con|Count\(1))))
-- \Con|Add0~42COUT1_161\ = CARRY(((!\Con|Add0~37\) # (!\Con|Count\(1))))

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
	datab => \Con|Count\(1),
	cin => \Con|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~40_combout\,
	cout0 => \Con|Add0~42\,
	cout1 => \Con|Add0~42COUT1_161\);

-- Location: LC_X1_Y8_N2
\Con|Count[1]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(1) = DFFEAS((((\Con|Add0~40_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~40_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(1));

-- Location: LC_X1_Y8_N6
\Con|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~45_combout\ = (\Con|Count\(2) $ ((!(!\Con|Add0~37\ & \Con|Add0~42\) # (\Con|Add0~37\ & \Con|Add0~42COUT1_161\))))
-- \Con|Add0~47\ = CARRY(((\Con|Count\(2) & !\Con|Add0~42\)))
-- \Con|Add0~47COUT1_162\ = CARRY(((\Con|Count\(2) & !\Con|Add0~42COUT1_161\)))

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
	datab => \Con|Count\(2),
	cin => \Con|Add0~37\,
	cin0 => \Con|Add0~42\,
	cin1 => \Con|Add0~42COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~45_combout\,
	cout0 => \Con|Add0~47\,
	cout1 => \Con|Add0~47COUT1_162\);

-- Location: LC_X1_Y7_N8
\Con|Count[2]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(2) = DFFEAS((\Con|Add0~45_combout\ & (((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

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
	clk => \CH1|Output~regout\,
	dataa => \Con|Add0~45_combout\,
	datac => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(2));

-- Location: LC_X1_Y8_N7
\Con|Add0~50\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~50_combout\ = (\Con|Count\(3) $ (((!\Con|Add0~37\ & \Con|Add0~47\) # (\Con|Add0~37\ & \Con|Add0~47COUT1_162\))))
-- \Con|Add0~52\ = CARRY(((!\Con|Add0~47\) # (!\Con|Count\(3))))
-- \Con|Add0~52COUT1_163\ = CARRY(((!\Con|Add0~47COUT1_162\) # (!\Con|Count\(3))))

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
	datab => \Con|Count\(3),
	cin => \Con|Add0~37\,
	cin0 => \Con|Add0~47\,
	cin1 => \Con|Add0~47COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~50_combout\,
	cout0 => \Con|Add0~52\,
	cout1 => \Con|Add0~52COUT1_163\);

-- Location: LC_X1_Y8_N0
\Con|Count[3]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(3) = DFFEAS((((\Con|Add0~50_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~50_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(3));

-- Location: LC_X1_Y8_N8
\Con|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~30_combout\ = \Con|Count\(4) $ ((((!(!\Con|Add0~37\ & \Con|Add0~52\) # (\Con|Add0~37\ & \Con|Add0~52COUT1_163\)))))
-- \Con|Add0~32\ = CARRY((\Con|Count\(4) & ((!\Con|Add0~52\))))
-- \Con|Add0~32COUT1_164\ = CARRY((\Con|Count\(4) & ((!\Con|Add0~52COUT1_163\))))

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
	dataa => \Con|Count\(4),
	cin => \Con|Add0~37\,
	cin0 => \Con|Add0~52\,
	cin1 => \Con|Add0~52COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~30_combout\,
	cout0 => \Con|Add0~32\,
	cout1 => \Con|Add0~32COUT1_164\);

-- Location: LC_X1_Y8_N3
\Con|Count[4]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(4) = DFFEAS((\Con|Add0~30_combout\ & (((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add0~30_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(4));

-- Location: LC_X1_Y8_N9
\Con|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~25_combout\ = (\Con|Count\(5) $ (((!\Con|Add0~37\ & \Con|Add0~32\) # (\Con|Add0~37\ & \Con|Add0~32COUT1_164\))))
-- \Con|Add0~27\ = CARRY(((!\Con|Add0~32COUT1_164\) # (!\Con|Count\(5))))

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
	datab => \Con|Count\(5),
	cin => \Con|Add0~37\,
	cin0 => \Con|Add0~32\,
	cin1 => \Con|Add0~32COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~25_combout\,
	cout => \Con|Add0~27\);

-- Location: LC_X1_Y7_N7
\Con|Count[5]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(5) = DFFEAS((\Con|Add0~25_combout\ & (((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

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
	clk => \CH1|Output~regout\,
	dataa => \Con|Add0~25_combout\,
	datac => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(5));

-- Location: LC_X2_Y8_N0
\Con|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~5_combout\ = (\Con|Count\(6) $ ((!\Con|Add0~27\)))
-- \Con|Add0~7\ = CARRY(((\Con|Count\(6) & !\Con|Add0~27\)))
-- \Con|Add0~7COUT1_165\ = CARRY(((\Con|Count\(6) & !\Con|Add0~27\)))

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
	datab => \Con|Count\(6),
	cin => \Con|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~5_combout\,
	cout0 => \Con|Add0~7\,
	cout1 => \Con|Add0~7COUT1_165\);

-- Location: LC_X2_Y7_N1
\Con|Count[6]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(6) = DFFEAS(((\Con|Add0~5_combout\ & ((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~5_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(6));

-- Location: LC_X2_Y8_N1
\Con|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~10_combout\ = (\Con|Count\(7) $ (((!\Con|Add0~27\ & \Con|Add0~7\) # (\Con|Add0~27\ & \Con|Add0~7COUT1_165\))))
-- \Con|Add0~12\ = CARRY(((!\Con|Add0~7\) # (!\Con|Count\(7))))
-- \Con|Add0~12COUT1_166\ = CARRY(((!\Con|Add0~7COUT1_165\) # (!\Con|Count\(7))))

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
	datab => \Con|Count\(7),
	cin => \Con|Add0~27\,
	cin0 => \Con|Add0~7\,
	cin1 => \Con|Add0~7COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~10_combout\,
	cout0 => \Con|Add0~12\,
	cout1 => \Con|Add0~12COUT1_166\);

-- Location: LC_X1_Y7_N0
\Con|Count[7]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(7) = DFFEAS(((\Con|Add0~10_combout\ & (!\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

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
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~10_combout\,
	datac => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(7));

-- Location: LC_X2_Y8_N2
\Con|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~15_combout\ = (\Con|Count\(8) $ ((!(!\Con|Add0~27\ & \Con|Add0~12\) # (\Con|Add0~27\ & \Con|Add0~12COUT1_166\))))
-- \Con|Add0~17\ = CARRY(((\Con|Count\(8) & !\Con|Add0~12\)))
-- \Con|Add0~17COUT1_167\ = CARRY(((\Con|Count\(8) & !\Con|Add0~12COUT1_166\)))

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
	datab => \Con|Count\(8),
	cin => \Con|Add0~27\,
	cin0 => \Con|Add0~12\,
	cin1 => \Con|Add0~12COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~15_combout\,
	cout0 => \Con|Add0~17\,
	cout1 => \Con|Add0~17COUT1_167\);

-- Location: LC_X2_Y7_N5
\Con|Count[8]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(8) = DFFEAS((((\Con|Add0~15_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~15_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(8));

-- Location: LC_X2_Y8_N3
\Con|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~20_combout\ = (\Con|Count\(9) $ (((!\Con|Add0~27\ & \Con|Add0~17\) # (\Con|Add0~27\ & \Con|Add0~17COUT1_167\))))
-- \Con|Add0~22\ = CARRY(((!\Con|Add0~17\) # (!\Con|Count\(9))))
-- \Con|Add0~22COUT1_168\ = CARRY(((!\Con|Add0~17COUT1_167\) # (!\Con|Count\(9))))

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
	datab => \Con|Count\(9),
	cin => \Con|Add0~27\,
	cin0 => \Con|Add0~17\,
	cin1 => \Con|Add0~17COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~20_combout\,
	cout0 => \Con|Add0~22\,
	cout1 => \Con|Add0~22COUT1_168\);

-- Location: LC_X2_Y7_N0
\Con|Count[9]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(9) = DFFEAS((((\Con|Add0~20_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~20_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(9));

-- Location: LC_X2_Y8_N4
\Con|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~0_combout\ = (\Con|Count\(10) $ ((!(!\Con|Add0~27\ & \Con|Add0~22\) # (\Con|Add0~27\ & \Con|Add0~22COUT1_168\))))
-- \Con|Add0~2\ = CARRY(((\Con|Count\(10) & !\Con|Add0~22COUT1_168\)))

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
	datab => \Con|Count\(10),
	cin => \Con|Add0~27\,
	cin0 => \Con|Add0~22\,
	cin1 => \Con|Add0~22COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~0_combout\,
	cout => \Con|Add0~2\);

-- Location: LC_X2_Y8_N5
\Con|Add0~75\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~75_combout\ = (\Con|Count\(11) $ ((\Con|Add0~2\)))
-- \Con|Add0~77\ = CARRY(((!\Con|Add0~2\) # (!\Con|Count\(11))))
-- \Con|Add0~77COUT1_169\ = CARRY(((!\Con|Add0~2\) # (!\Con|Count\(11))))

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
	datab => \Con|Count\(11),
	cin => \Con|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~75_combout\,
	cout0 => \Con|Add0~77\,
	cout1 => \Con|Add0~77COUT1_169\);

-- Location: LC_X2_Y7_N8
\Con|Count[11]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(11) = DFFEAS(((\Con|Add0~75_combout\ & ((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~75_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(11));

-- Location: LC_X2_Y8_N6
\Con|Add0~80\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~80_combout\ = \Con|Count\(12) $ ((((!(!\Con|Add0~2\ & \Con|Add0~77\) # (\Con|Add0~2\ & \Con|Add0~77COUT1_169\)))))
-- \Con|Add0~82\ = CARRY((\Con|Count\(12) & ((!\Con|Add0~77\))))
-- \Con|Add0~82COUT1_170\ = CARRY((\Con|Count\(12) & ((!\Con|Add0~77COUT1_169\))))

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
	dataa => \Con|Count\(12),
	cin => \Con|Add0~2\,
	cin0 => \Con|Add0~77\,
	cin1 => \Con|Add0~77COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~80_combout\,
	cout0 => \Con|Add0~82\,
	cout1 => \Con|Add0~82COUT1_170\);

-- Location: LC_X3_Y6_N7
\Con|Count[12]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(12) = DFFEAS(((\Con|Add0~80_combout\ & (!\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

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
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~80_combout\,
	datac => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(12));

-- Location: LC_X2_Y8_N7
\Con|Add0~85\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~85_combout\ = (\Con|Count\(13) $ (((!\Con|Add0~2\ & \Con|Add0~82\) # (\Con|Add0~2\ & \Con|Add0~82COUT1_170\))))
-- \Con|Add0~87\ = CARRY(((!\Con|Add0~82\) # (!\Con|Count\(13))))
-- \Con|Add0~87COUT1_171\ = CARRY(((!\Con|Add0~82COUT1_170\) # (!\Con|Count\(13))))

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
	datab => \Con|Count\(13),
	cin => \Con|Add0~2\,
	cin0 => \Con|Add0~82\,
	cin1 => \Con|Add0~82COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~85_combout\,
	cout0 => \Con|Add0~87\,
	cout1 => \Con|Add0~87COUT1_171\);

-- Location: LC_X2_Y7_N2
\Con|Count[13]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(13) = DFFEAS((((\Con|Add0~85_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~85_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(13));

-- Location: LC_X2_Y8_N8
\Con|Add0~90\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~90_combout\ = \Con|Count\(14) $ ((((!(!\Con|Add0~2\ & \Con|Add0~87\) # (\Con|Add0~2\ & \Con|Add0~87COUT1_171\)))))
-- \Con|Add0~92\ = CARRY((\Con|Count\(14) & ((!\Con|Add0~87\))))
-- \Con|Add0~92COUT1_172\ = CARRY((\Con|Count\(14) & ((!\Con|Add0~87COUT1_171\))))

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
	dataa => \Con|Count\(14),
	cin => \Con|Add0~2\,
	cin0 => \Con|Add0~87\,
	cin1 => \Con|Add0~87COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~90_combout\,
	cout0 => \Con|Add0~92\,
	cout1 => \Con|Add0~92COUT1_172\);

-- Location: LC_X2_Y6_N3
\Con|Count[14]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(14) = DFFEAS(((!\Con|Count[14]~0_combout\ & (\Con|Add0~90_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Count[14]~0_combout\,
	datac => \Con|Add0~90_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(14));

-- Location: LC_X2_Y8_N9
\Con|Add0~95\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~95_combout\ = (\Con|Count\(15) $ (((!\Con|Add0~2\ & \Con|Add0~92\) # (\Con|Add0~2\ & \Con|Add0~92COUT1_172\))))
-- \Con|Add0~97\ = CARRY(((!\Con|Add0~92COUT1_172\) # (!\Con|Count\(15))))

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
	datab => \Con|Count\(15),
	cin => \Con|Add0~2\,
	cin0 => \Con|Add0~92\,
	cin1 => \Con|Add0~92COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~95_combout\,
	cout => \Con|Add0~97\);

-- Location: LC_X2_Y7_N3
\Con|Count[15]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(15) = DFFEAS(((\Con|Add0~95_combout\ & ((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~95_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(15));

-- Location: LC_X3_Y8_N0
\Con|Add0~100\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~100_combout\ = (\Con|Count\(16) $ ((!\Con|Add0~97\)))
-- \Con|Add0~102\ = CARRY(((\Con|Count\(16) & !\Con|Add0~97\)))
-- \Con|Add0~102COUT1_173\ = CARRY(((\Con|Count\(16) & !\Con|Add0~97\)))

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
	datab => \Con|Count\(16),
	cin => \Con|Add0~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~100_combout\,
	cout0 => \Con|Add0~102\,
	cout1 => \Con|Add0~102COUT1_173\);

-- Location: LC_X3_Y8_N1
\Con|Add0~105\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~105_combout\ = (\Con|Count\(17) $ (((!\Con|Add0~97\ & \Con|Add0~102\) # (\Con|Add0~97\ & \Con|Add0~102COUT1_173\))))
-- \Con|Add0~107\ = CARRY(((!\Con|Add0~102\) # (!\Con|Count\(17))))
-- \Con|Add0~107COUT1_174\ = CARRY(((!\Con|Add0~102COUT1_173\) # (!\Con|Count\(17))))

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
	datab => \Con|Count\(17),
	cin => \Con|Add0~97\,
	cin0 => \Con|Add0~102\,
	cin1 => \Con|Add0~102COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~105_combout\,
	cout0 => \Con|Add0~107\,
	cout1 => \Con|Add0~107COUT1_174\);

-- Location: LC_X3_Y7_N2
\Con|Count[17]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(17) = DFFEAS(((\Con|Add0~105_combout\ & ((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~105_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(17));

-- Location: LC_X3_Y8_N2
\Con|Add0~110\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~110_combout\ = (\Con|Count\(18) $ ((!(!\Con|Add0~97\ & \Con|Add0~107\) # (\Con|Add0~97\ & \Con|Add0~107COUT1_174\))))
-- \Con|Add0~112\ = CARRY(((\Con|Count\(18) & !\Con|Add0~107\)))
-- \Con|Add0~112COUT1_175\ = CARRY(((\Con|Count\(18) & !\Con|Add0~107COUT1_174\)))

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
	datab => \Con|Count\(18),
	cin => \Con|Add0~97\,
	cin0 => \Con|Add0~107\,
	cin1 => \Con|Add0~107COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~110_combout\,
	cout0 => \Con|Add0~112\,
	cout1 => \Con|Add0~112COUT1_175\);

-- Location: LC_X2_Y6_N2
\Con|Count[18]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(18) = DFFEAS(((\Con|Add0~110_combout\ & (!\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

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
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~110_combout\,
	datac => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(18));

-- Location: LC_X3_Y8_N3
\Con|Add0~115\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~115_combout\ = (\Con|Count\(19) $ (((!\Con|Add0~97\ & \Con|Add0~112\) # (\Con|Add0~97\ & \Con|Add0~112COUT1_175\))))
-- \Con|Add0~117\ = CARRY(((!\Con|Add0~112\) # (!\Con|Count\(19))))
-- \Con|Add0~117COUT1_176\ = CARRY(((!\Con|Add0~112COUT1_175\) # (!\Con|Count\(19))))

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
	datab => \Con|Count\(19),
	cin => \Con|Add0~97\,
	cin0 => \Con|Add0~112\,
	cin1 => \Con|Add0~112COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~115_combout\,
	cout0 => \Con|Add0~117\,
	cout1 => \Con|Add0~117COUT1_176\);

-- Location: LC_X2_Y6_N1
\Con|Count[19]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(19) = DFFEAS(((!\Con|Count[14]~0_combout\ & (\Con|Add0~115_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Count[14]~0_combout\,
	datac => \Con|Add0~115_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(19));

-- Location: LC_X3_Y8_N4
\Con|Add0~120\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~120_combout\ = (\Con|Count\(20) $ ((!(!\Con|Add0~97\ & \Con|Add0~117\) # (\Con|Add0~97\ & \Con|Add0~117COUT1_176\))))
-- \Con|Add0~122\ = CARRY(((\Con|Count\(20) & !\Con|Add0~117COUT1_176\)))

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
	datab => \Con|Count\(20),
	cin => \Con|Add0~97\,
	cin0 => \Con|Add0~117\,
	cin1 => \Con|Add0~117COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~120_combout\,
	cout => \Con|Add0~122\);

-- Location: LC_X2_Y7_N4
\Con|Count[20]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(20) = DFFEAS((((\Con|Add0~120_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~120_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(20));

-- Location: LC_X3_Y8_N5
\Con|Add0~125\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~125_combout\ = (\Con|Count\(21) $ ((\Con|Add0~122\)))
-- \Con|Add0~127\ = CARRY(((!\Con|Add0~122\) # (!\Con|Count\(21))))
-- \Con|Add0~127COUT1_177\ = CARRY(((!\Con|Add0~122\) # (!\Con|Count\(21))))

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
	datab => \Con|Count\(21),
	cin => \Con|Add0~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~125_combout\,
	cout0 => \Con|Add0~127\,
	cout1 => \Con|Add0~127COUT1_177\);

-- Location: LC_X2_Y7_N6
\Con|Count[21]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(21) = DFFEAS(((\Con|Add0~125_combout\ & ((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~125_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(21));

-- Location: LC_X3_Y8_N6
\Con|Add0~130\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~130_combout\ = (\Con|Count\(22) $ ((!(!\Con|Add0~122\ & \Con|Add0~127\) # (\Con|Add0~122\ & \Con|Add0~127COUT1_177\))))
-- \Con|Add0~132\ = CARRY(((\Con|Count\(22) & !\Con|Add0~127\)))
-- \Con|Add0~132COUT1_178\ = CARRY(((\Con|Count\(22) & !\Con|Add0~127COUT1_177\)))

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
	datab => \Con|Count\(22),
	cin => \Con|Add0~122\,
	cin0 => \Con|Add0~127\,
	cin1 => \Con|Add0~127COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~130_combout\,
	cout0 => \Con|Add0~132\,
	cout1 => \Con|Add0~132COUT1_178\);

-- Location: LC_X3_Y5_N0
\Con|Count[22]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(22) = DFFEAS((((\Con|Add0~130_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~130_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(22));

-- Location: LC_X3_Y8_N7
\Con|Add0~135\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~135_combout\ = \Con|Count\(23) $ (((((!\Con|Add0~122\ & \Con|Add0~132\) # (\Con|Add0~122\ & \Con|Add0~132COUT1_178\)))))
-- \Con|Add0~137\ = CARRY(((!\Con|Add0~132\)) # (!\Con|Count\(23)))
-- \Con|Add0~137COUT1_179\ = CARRY(((!\Con|Add0~132COUT1_178\)) # (!\Con|Count\(23)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Count\(23),
	cin => \Con|Add0~122\,
	cin0 => \Con|Add0~132\,
	cin1 => \Con|Add0~132COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~135_combout\,
	cout0 => \Con|Add0~137\,
	cout1 => \Con|Add0~137COUT1_179\);

-- Location: LC_X3_Y7_N0
\Con|Count[23]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(23) = DFFEAS((\Con|Add0~135_combout\ & (((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add0~135_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(23));

-- Location: LC_X3_Y8_N8
\Con|Add0~140\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~140_combout\ = (\Con|Count\(24) $ ((!(!\Con|Add0~122\ & \Con|Add0~137\) # (\Con|Add0~122\ & \Con|Add0~137COUT1_179\))))
-- \Con|Add0~142\ = CARRY(((\Con|Count\(24) & !\Con|Add0~137\)))
-- \Con|Add0~142COUT1_180\ = CARRY(((\Con|Count\(24) & !\Con|Add0~137COUT1_179\)))

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
	datab => \Con|Count\(24),
	cin => \Con|Add0~122\,
	cin0 => \Con|Add0~137\,
	cin1 => \Con|Add0~137COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~140_combout\,
	cout0 => \Con|Add0~142\,
	cout1 => \Con|Add0~142COUT1_180\);

-- Location: LC_X3_Y7_N3
\Con|Count[24]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(24) = DFFEAS((((\Con|Add0~140_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~140_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(24));

-- Location: LC_X3_Y8_N9
\Con|Add0~145\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~145_combout\ = (\Con|Count\(25) $ (((!\Con|Add0~122\ & \Con|Add0~142\) # (\Con|Add0~122\ & \Con|Add0~142COUT1_180\))))
-- \Con|Add0~147\ = CARRY(((!\Con|Add0~142COUT1_180\) # (!\Con|Count\(25))))

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
	datab => \Con|Count\(25),
	cin => \Con|Add0~122\,
	cin0 => \Con|Add0~142\,
	cin1 => \Con|Add0~142COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~145_combout\,
	cout => \Con|Add0~147\);

-- Location: LC_X3_Y7_N5
\Con|Count[25]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(25) = DFFEAS((((\Con|Add0~145_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~145_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(25));

-- Location: LC_X4_Y8_N0
\Con|Add0~150\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~150_combout\ = (\Con|Count\(26) $ ((!\Con|Add0~147\)))
-- \Con|Add0~152\ = CARRY(((\Con|Count\(26) & !\Con|Add0~147\)))
-- \Con|Add0~152COUT1_181\ = CARRY(((\Con|Count\(26) & !\Con|Add0~147\)))

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
	datab => \Con|Count\(26),
	cin => \Con|Add0~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~150_combout\,
	cout0 => \Con|Add0~152\,
	cout1 => \Con|Add0~152COUT1_181\);

-- Location: LC_X4_Y8_N9
\Con|Count[26]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(26) = DFFEAS(((\Con|Add0~150_combout\ & (!\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

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
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~150_combout\,
	datac => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(26));

-- Location: LC_X4_Y8_N1
\Con|Add0~55\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~55_combout\ = (\Con|Count\(27) $ (((!\Con|Add0~147\ & \Con|Add0~152\) # (\Con|Add0~147\ & \Con|Add0~152COUT1_181\))))
-- \Con|Add0~57\ = CARRY(((!\Con|Add0~152\) # (!\Con|Count\(27))))
-- \Con|Add0~57COUT1_182\ = CARRY(((!\Con|Add0~152COUT1_181\) # (!\Con|Count\(27))))

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
	datab => \Con|Count\(27),
	cin => \Con|Add0~147\,
	cin0 => \Con|Add0~152\,
	cin1 => \Con|Add0~152COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~55_combout\,
	cout0 => \Con|Add0~57\,
	cout1 => \Con|Add0~57COUT1_182\);

-- Location: LC_X4_Y8_N7
\Con|Count[27]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(27) = DFFEAS(((\Con|Add0~55_combout\ & (!\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

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
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~55_combout\,
	datac => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(27));

-- Location: LC_X4_Y8_N2
\Con|Add0~60\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~60_combout\ = \Con|Count\(28) $ ((((!(!\Con|Add0~147\ & \Con|Add0~57\) # (\Con|Add0~147\ & \Con|Add0~57COUT1_182\)))))
-- \Con|Add0~62\ = CARRY((\Con|Count\(28) & ((!\Con|Add0~57\))))
-- \Con|Add0~62COUT1_183\ = CARRY((\Con|Count\(28) & ((!\Con|Add0~57COUT1_182\))))

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
	dataa => \Con|Count\(28),
	cin => \Con|Add0~147\,
	cin0 => \Con|Add0~57\,
	cin1 => \Con|Add0~57COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~60_combout\,
	cout0 => \Con|Add0~62\,
	cout1 => \Con|Add0~62COUT1_183\);

-- Location: LC_X4_Y8_N6
\Con|Count[28]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(28) = DFFEAS(((\Con|Add0~60_combout\ & (!\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

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
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~60_combout\,
	datac => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(28));

-- Location: LC_X4_Y8_N3
\Con|Add0~65\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~65_combout\ = \Con|Count\(29) $ (((((!\Con|Add0~147\ & \Con|Add0~62\) # (\Con|Add0~147\ & \Con|Add0~62COUT1_183\)))))
-- \Con|Add0~67\ = CARRY(((!\Con|Add0~62\)) # (!\Con|Count\(29)))
-- \Con|Add0~67COUT1_184\ = CARRY(((!\Con|Add0~62COUT1_183\)) # (!\Con|Count\(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Count\(29),
	cin => \Con|Add0~147\,
	cin0 => \Con|Add0~62\,
	cin1 => \Con|Add0~62COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~65_combout\,
	cout0 => \Con|Add0~67\,
	cout1 => \Con|Add0~67COUT1_184\);

-- Location: LC_X4_Y8_N8
\Con|Count[29]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(29) = DFFEAS((((!\Con|Count[14]~0_combout\ & \Con|Add0~65_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

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
	clk => \CH1|Output~regout\,
	datac => \Con|Count[14]~0_combout\,
	datad => \Con|Add0~65_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(29));

-- Location: LC_X4_Y8_N4
\Con|Add0~70\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~70_combout\ = (\Con|Count\(30) $ ((!(!\Con|Add0~147\ & \Con|Add0~67\) # (\Con|Add0~147\ & \Con|Add0~67COUT1_184\))))
-- \Con|Add0~72\ = CARRY(((\Con|Count\(30) & !\Con|Add0~67COUT1_184\)))

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
	datab => \Con|Count\(30),
	cin => \Con|Add0~147\,
	cin0 => \Con|Add0~67\,
	cin1 => \Con|Add0~67COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~70_combout\,
	cout => \Con|Add0~72\);

-- Location: LC_X3_Y7_N4
\Con|Count[30]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(30) = DFFEAS((\Con|Add0~70_combout\ & (((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add0~70_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(30));

-- Location: LC_X4_Y8_N5
\Con|Add0~155\ : maxv_lcell
-- Equation(s):
-- \Con|Add0~155_combout\ = ((\Con|Add0~72\ $ (\Con|Count\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Con|Count\(31),
	cin => \Con|Add0~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add0~155_combout\);

-- Location: LC_X1_Y7_N6
\Con|LessThan1~4\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan1~4_combout\ = ((!\Con|Add0~35_combout\ & ((!\Con|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|Add0~35_combout\,
	datad => \Con|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan1~4_combout\);

-- Location: LC_X1_Y7_N1
\Con|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan0~7_combout\ = (\Con|Add0~25_combout\) # ((\Con|Add0~30_combout\) # ((\Con|Add0~5_combout\) # (\Con|Add0~10_combout\)))

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
	dataa => \Con|Add0~25_combout\,
	datab => \Con|Add0~30_combout\,
	datac => \Con|Add0~5_combout\,
	datad => \Con|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan0~7_combout\);

-- Location: LC_X1_Y7_N2
\Con|LessThan0~8\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan0~8_combout\ = (\Con|Add0~15_combout\) # ((\Con|Add0~20_combout\) # ((\Con|Add0~0_combout\) # (\Con|LessThan0~7_combout\)))

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
	dataa => \Con|Add0~15_combout\,
	datab => \Con|Add0~20_combout\,
	datac => \Con|Add0~0_combout\,
	datad => \Con|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan0~8_combout\);

-- Location: LC_X1_Y7_N3
\Con|LessThan0~9\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan0~9_combout\ = (\Con|LessThan0~8_combout\) # ((\Con|Add0~45_combout\ & (\Con|Add0~50_combout\ & !\Con|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Add0~45_combout\,
	datab => \Con|Add0~50_combout\,
	datac => \Con|LessThan1~4_combout\,
	datad => \Con|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan0~9_combout\);

-- Location: LC_X4_Y6_N5
\Con|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan0~4_combout\ = (!\Con|Add0~125_combout\ & (!\Con|Add0~130_combout\ & (!\Con|Add0~115_combout\ & !\Con|Add0~120_combout\)))

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
	dataa => \Con|Add0~125_combout\,
	datab => \Con|Add0~130_combout\,
	datac => \Con|Add0~115_combout\,
	datad => \Con|Add0~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan0~4_combout\);

-- Location: LC_X4_Y6_N9
\Con|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan0~5_combout\ = (!\Con|Add0~150_combout\ & (!\Con|Add0~140_combout\ & (!\Con|Add0~135_combout\ & !\Con|Add0~145_combout\)))

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
	dataa => \Con|Add0~150_combout\,
	datab => \Con|Add0~140_combout\,
	datac => \Con|Add0~135_combout\,
	datad => \Con|Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan0~5_combout\);

-- Location: LC_X4_Y6_N7
\Con|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan0~0_combout\ = (!\Con|Add0~65_combout\ & (!\Con|Add0~55_combout\ & (!\Con|Add0~60_combout\ & !\Con|Add0~70_combout\)))

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
	dataa => \Con|Add0~65_combout\,
	datab => \Con|Add0~55_combout\,
	datac => \Con|Add0~60_combout\,
	datad => \Con|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan0~0_combout\);

-- Location: LC_X3_Y6_N6
\Con|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan0~1_combout\ = (!\Con|Add0~75_combout\ & (!\Con|Add0~85_combout\ & (!\Con|Add0~80_combout\ & !\Con|Add0~90_combout\)))

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
	dataa => \Con|Add0~75_combout\,
	datab => \Con|Add0~85_combout\,
	datac => \Con|Add0~80_combout\,
	datad => \Con|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan0~1_combout\);

-- Location: LC_X3_Y6_N9
\Con|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan0~2_combout\ = (((!\Con|Add0~100_combout\ & !\Con|Add0~95_combout\)))

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
	datac => \Con|Add0~100_combout\,
	datad => \Con|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan0~2_combout\);

-- Location: LC_X4_Y6_N1
\Con|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan0~3_combout\ = (!\Con|Add0~110_combout\ & (!\Con|Add0~105_combout\ & (\Con|LessThan0~1_combout\ & \Con|LessThan0~2_combout\)))

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
	dataa => \Con|Add0~110_combout\,
	datab => \Con|Add0~105_combout\,
	datac => \Con|LessThan0~1_combout\,
	datad => \Con|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan0~3_combout\);

-- Location: LC_X4_Y6_N2
\Con|LessThan0~6\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan0~6_combout\ = (\Con|LessThan0~4_combout\ & (\Con|LessThan0~5_combout\ & (\Con|LessThan0~0_combout\ & \Con|LessThan0~3_combout\)))

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
	dataa => \Con|LessThan0~4_combout\,
	datab => \Con|LessThan0~5_combout\,
	datac => \Con|LessThan0~0_combout\,
	datad => \Con|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan0~6_combout\);

-- Location: LC_X1_Y6_N2
\Edge|W~0\ : maxv_lcell
-- Equation(s):
-- \Edge|W~0_combout\ = (\NClick~combout\) # (((\Edge|current_s~regout\)))

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
	dataa => \NClick~combout\,
	datad => \Edge|current_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Edge|W~0_combout\);

-- Location: LC_X1_Y6_N3
\Con|process_1~0\ : maxv_lcell
-- Equation(s):
-- \Con|process_1~0_combout\ = (!\Con|Add0~155_combout\ & (!\Edge|W~0_combout\ & ((\Con|LessThan0~9_combout\) # (!\Con|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0045",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Add0~155_combout\,
	datab => \Con|LessThan0~9_combout\,
	datac => \Con|LessThan0~6_combout\,
	datad => \Edge|W~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|process_1~0_combout\);

-- Location: LC_X2_Y6_N8
\Con|state~12\ : maxv_lcell
-- Equation(s):
-- \Con|state~12_combout\ = ((\Con|Equal0~20_combout\) # ((\Con|Equal1~10_combout\ & !\Con|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|Equal1~10_combout\,
	datac => \Con|Equal0~20_combout\,
	datad => \Con|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|state~12_combout\);

-- Location: LC_X2_Y6_N9
\Con|state.GON\ : maxv_lcell
-- Equation(s):
-- \Con|state.GON~regout\ = DFFEAS((\Con|state.GON~regout\) # ((!\Con|state~17_combout\ & ((\Con|LEDF~regout\) # (!\Con|state~12_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|LEDF~regout\,
	datab => \Con|state.GON~regout\,
	datac => \Con|state~17_combout\,
	datad => \Con|state~12_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|state.GON~regout\);

-- Location: LC_X1_Y7_N5
\Con|Count[10]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(10) = DFFEAS((((\Con|Add0~0_combout\ & !\Con|Count[14]~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|Add0~0_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(10));

-- Location: LC_X2_Y7_N9
\Con|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan1~1_combout\ = (\Con|Add0~40_combout\) # ((\Con|Add0~45_combout\) # ((\Con|Add0~35_combout\) # (\Con|Add0~50_combout\)))

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
	dataa => \Con|Add0~40_combout\,
	datab => \Con|Add0~45_combout\,
	datac => \Con|Add0~35_combout\,
	datad => \Con|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan1~1_combout\);

-- Location: LC_X3_Y7_N6
\Con|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan1~0_combout\ = (\Con|Add0~10_combout\ & (\Con|Add0~15_combout\ & (\Con|Add0~20_combout\ & \Con|Add0~5_combout\)))

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
	dataa => \Con|Add0~10_combout\,
	datab => \Con|Add0~15_combout\,
	datac => \Con|Add0~20_combout\,
	datad => \Con|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan1~0_combout\);

-- Location: LC_X3_Y7_N7
\Con|LessThan1~2\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan1~2_combout\ = (\Con|LessThan1~0_combout\ & ((\Con|Add0~25_combout\) # ((\Con|Add0~30_combout\ & \Con|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Add0~25_combout\,
	datab => \Con|Add0~30_combout\,
	datac => \Con|LessThan1~1_combout\,
	datad => \Con|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan1~2_combout\);

-- Location: LC_X4_Y6_N3
\Con|LessThan1~3\ : maxv_lcell
-- Equation(s):
-- \Con|LessThan1~3_combout\ = (!\Con|Add0~155_combout\ & (((\Con|Add0~0_combout\ & \Con|LessThan1~2_combout\)) # (!\Con|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Add0~0_combout\,
	datab => \Con|Add0~155_combout\,
	datac => \Con|LessThan1~2_combout\,
	datad => \Con|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|LessThan1~3_combout\);

-- Location: LC_X2_Y6_N7
\Con|Count[14]~0\ : maxv_lcell
-- Equation(s):
-- \Con|Count[14]~0_combout\ = (\Con|LEDF~regout\ & ((\Con|LessThan1~3_combout\) # ((!\Edge|W~0_combout\)))) # (!\Con|LEDF~regout\ & (((\Con|Equal0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|LEDF~regout\,
	datab => \Con|LessThan1~3_combout\,
	datac => \Con|Equal0~20_combout\,
	datad => \Edge|W~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Count[14]~0_combout\);

-- Location: LC_X3_Y7_N8
\Con|Count[16]\ : maxv_lcell
-- Equation(s):
-- \Con|Count\(16) = DFFEAS((\Con|Add0~100_combout\ & (((!\Con|Count[14]~0_combout\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , !\Con|state.GON~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add0~100_combout\,
	datad => \Con|Count[14]~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|ALT_INV_state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Count\(16));

-- Location: LC_X1_Y9_N4
\Con|Add1~17\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~17_cout\ = CARRY((\Con|Add0~35_combout\ & (\Con|Add0~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Add0~35_combout\,
	datab => \Con|Add0~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~15\,
	cout => \Con|Add1~17_cout\);

-- Location: LC_X1_Y9_N5
\Con|Random[0]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(0) = DFFEAS((\Con|Add0~40_combout\ $ ((\Con|Add1~17_cout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add1~7\ = CARRY(((!\Con|Add1~17_cout\) # (!\Con|Add0~40_combout\)))
-- \Con|Add1~7COUT1_166\ = CARRY(((!\Con|Add1~17_cout\) # (!\Con|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add0~40_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add1~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(0),
	cout0 => \Con|Add1~7\,
	cout1 => \Con|Add1~7COUT1_166\);

-- Location: LC_X1_Y9_N6
\Con|Random[1]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(1) = DFFEAS(\Con|Add0~45_combout\ $ ((((!(!\Con|Add1~17_cout\ & \Con|Add1~7\) # (\Con|Add1~17_cout\ & \Con|Add1~7COUT1_166\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add1~2\ = CARRY((\Con|Add0~45_combout\ & ((!\Con|Add1~7\))))
-- \Con|Add1~2COUT1_167\ = CARRY((\Con|Add0~45_combout\ & ((!\Con|Add1~7COUT1_166\))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add0~45_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add1~17_cout\,
	cin0 => \Con|Add1~7\,
	cin1 => \Con|Add1~7COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(1),
	cout0 => \Con|Add1~2\,
	cout1 => \Con|Add1~2COUT1_167\);

-- Location: LC_X1_Y9_N7
\Con|Random[2]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(2) = DFFEAS(\Con|Add0~50_combout\ $ (((((!\Con|Add1~17_cout\ & \Con|Add1~2\) # (\Con|Add1~17_cout\ & \Con|Add1~2COUT1_167\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add1~12\ = CARRY(((!\Con|Add1~2\)) # (!\Con|Add0~50_combout\))
-- \Con|Add1~12COUT1_168\ = CARRY(((!\Con|Add1~2COUT1_167\)) # (!\Con|Add0~50_combout\))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add0~50_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add1~17_cout\,
	cin0 => \Con|Add1~2\,
	cin1 => \Con|Add1~2COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(2),
	cout0 => \Con|Add1~12\,
	cout1 => \Con|Add1~12COUT1_168\);

-- Location: LC_X1_Y9_N8
\Con|Add1~20\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~20_combout\ = (\Con|Add0~30_combout\ $ ((!(!\Con|Add1~17_cout\ & \Con|Add1~12\) # (\Con|Add1~17_cout\ & \Con|Add1~12COUT1_168\))))
-- \Con|Add1~22\ = CARRY(((\Con|Add0~30_combout\ & !\Con|Add1~12\)))
-- \Con|Add1~22COUT1_169\ = CARRY(((\Con|Add0~30_combout\ & !\Con|Add1~12COUT1_168\)))

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
	datab => \Con|Add0~30_combout\,
	cin => \Con|Add1~17_cout\,
	cin0 => \Con|Add1~12\,
	cin1 => \Con|Add1~12COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~20_combout\,
	cout0 => \Con|Add1~22\,
	cout1 => \Con|Add1~22COUT1_169\);

-- Location: LC_X1_Y9_N9
\Con|Add1~25\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~25_combout\ = (\Con|Add0~25_combout\ $ (((!\Con|Add1~17_cout\ & \Con|Add1~22\) # (\Con|Add1~17_cout\ & \Con|Add1~22COUT1_169\))))
-- \Con|Add1~27\ = CARRY(((!\Con|Add1~22COUT1_169\) # (!\Con|Add0~25_combout\)))

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
	datab => \Con|Add0~25_combout\,
	cin => \Con|Add1~17_cout\,
	cin0 => \Con|Add1~22\,
	cin1 => \Con|Add1~22COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~25_combout\,
	cout => \Con|Add1~27\);

-- Location: LC_X2_Y9_N0
\Con|Add1~30\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~30_combout\ = (\Con|Add0~5_combout\ $ ((!\Con|Add1~27\)))
-- \Con|Add1~32\ = CARRY(((\Con|Add0~5_combout\ & !\Con|Add1~27\)))
-- \Con|Add1~32COUT1_170\ = CARRY(((\Con|Add0~5_combout\ & !\Con|Add1~27\)))

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
	datab => \Con|Add0~5_combout\,
	cin => \Con|Add1~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~30_combout\,
	cout0 => \Con|Add1~32\,
	cout1 => \Con|Add1~32COUT1_170\);

-- Location: LC_X2_Y9_N1
\Con|Add1~35\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~35_combout\ = (\Con|Add0~10_combout\ $ (((!\Con|Add1~27\ & \Con|Add1~32\) # (\Con|Add1~27\ & \Con|Add1~32COUT1_170\))))
-- \Con|Add1~37\ = CARRY(((!\Con|Add1~32\) # (!\Con|Add0~10_combout\)))
-- \Con|Add1~37COUT1_171\ = CARRY(((!\Con|Add1~32COUT1_170\) # (!\Con|Add0~10_combout\)))

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
	datab => \Con|Add0~10_combout\,
	cin => \Con|Add1~27\,
	cin0 => \Con|Add1~32\,
	cin1 => \Con|Add1~32COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~35_combout\,
	cout0 => \Con|Add1~37\,
	cout1 => \Con|Add1~37COUT1_171\);

-- Location: LC_X2_Y9_N2
\Con|Add1~40\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~40_combout\ = (\Con|Add0~15_combout\ $ ((!(!\Con|Add1~27\ & \Con|Add1~37\) # (\Con|Add1~27\ & \Con|Add1~37COUT1_171\))))
-- \Con|Add1~42\ = CARRY(((\Con|Add0~15_combout\ & !\Con|Add1~37\)))
-- \Con|Add1~42COUT1_172\ = CARRY(((\Con|Add0~15_combout\ & !\Con|Add1~37COUT1_171\)))

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
	datab => \Con|Add0~15_combout\,
	cin => \Con|Add1~27\,
	cin0 => \Con|Add1~37\,
	cin1 => \Con|Add1~37COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~40_combout\,
	cout0 => \Con|Add1~42\,
	cout1 => \Con|Add1~42COUT1_172\);

-- Location: LC_X2_Y9_N3
\Con|Add1~45\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~45_combout\ = (\Con|Add0~20_combout\ $ (((!\Con|Add1~27\ & \Con|Add1~42\) # (\Con|Add1~27\ & \Con|Add1~42COUT1_172\))))
-- \Con|Add1~47\ = CARRY(((!\Con|Add1~42\) # (!\Con|Add0~20_combout\)))
-- \Con|Add1~47COUT1_173\ = CARRY(((!\Con|Add1~42COUT1_172\) # (!\Con|Add0~20_combout\)))

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
	datab => \Con|Add0~20_combout\,
	cin => \Con|Add1~27\,
	cin0 => \Con|Add1~42\,
	cin1 => \Con|Add1~42COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~45_combout\,
	cout0 => \Con|Add1~47\,
	cout1 => \Con|Add1~47COUT1_173\);

-- Location: LC_X2_Y9_N4
\Con|Add1~50\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~50_combout\ = \Con|Add0~0_combout\ $ ((((!(!\Con|Add1~27\ & \Con|Add1~47\) # (\Con|Add1~27\ & \Con|Add1~47COUT1_173\)))))
-- \Con|Add1~52\ = CARRY((\Con|Add0~0_combout\ & ((!\Con|Add1~47COUT1_173\))))

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
	dataa => \Con|Add0~0_combout\,
	cin => \Con|Add1~27\,
	cin0 => \Con|Add1~47\,
	cin1 => \Con|Add1~47COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~50_combout\,
	cout => \Con|Add1~52\);

-- Location: LC_X2_Y9_N5
\Con|Add1~60\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~60_combout\ = (\Con|Add0~75_combout\ $ ((\Con|Add1~52\)))
-- \Con|Add1~62\ = CARRY(((!\Con|Add1~52\) # (!\Con|Add0~75_combout\)))
-- \Con|Add1~62COUT1_174\ = CARRY(((!\Con|Add1~52\) # (!\Con|Add0~75_combout\)))

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
	datab => \Con|Add0~75_combout\,
	cin => \Con|Add1~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~60_combout\,
	cout0 => \Con|Add1~62\,
	cout1 => \Con|Add1~62COUT1_174\);

-- Location: LC_X2_Y9_N6
\Con|Add1~55\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~55_combout\ = (\Con|Add0~80_combout\ $ ((!(!\Con|Add1~52\ & \Con|Add1~62\) # (\Con|Add1~52\ & \Con|Add1~62COUT1_174\))))
-- \Con|Add1~57\ = CARRY(((\Con|Add0~80_combout\ & !\Con|Add1~62\)))
-- \Con|Add1~57COUT1_175\ = CARRY(((\Con|Add0~80_combout\ & !\Con|Add1~62COUT1_174\)))

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
	datab => \Con|Add0~80_combout\,
	cin => \Con|Add1~52\,
	cin0 => \Con|Add1~62\,
	cin1 => \Con|Add1~62COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~55_combout\,
	cout0 => \Con|Add1~57\,
	cout1 => \Con|Add1~57COUT1_175\);

-- Location: LC_X2_Y9_N7
\Con|Add1~70\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~70_combout\ = (\Con|Add0~85_combout\ $ (((!\Con|Add1~52\ & \Con|Add1~57\) # (\Con|Add1~52\ & \Con|Add1~57COUT1_175\))))
-- \Con|Add1~72\ = CARRY(((!\Con|Add1~57\) # (!\Con|Add0~85_combout\)))
-- \Con|Add1~72COUT1_176\ = CARRY(((!\Con|Add1~57COUT1_175\) # (!\Con|Add0~85_combout\)))

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
	datab => \Con|Add0~85_combout\,
	cin => \Con|Add1~52\,
	cin0 => \Con|Add1~57\,
	cin1 => \Con|Add1~57COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~70_combout\,
	cout0 => \Con|Add1~72\,
	cout1 => \Con|Add1~72COUT1_176\);

-- Location: LC_X2_Y9_N8
\Con|Add1~65\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~65_combout\ = (\Con|Add0~90_combout\ $ ((!(!\Con|Add1~52\ & \Con|Add1~72\) # (\Con|Add1~52\ & \Con|Add1~72COUT1_176\))))
-- \Con|Add1~67\ = CARRY(((\Con|Add0~90_combout\ & !\Con|Add1~72\)))
-- \Con|Add1~67COUT1_177\ = CARRY(((\Con|Add0~90_combout\ & !\Con|Add1~72COUT1_176\)))

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
	datab => \Con|Add0~90_combout\,
	cin => \Con|Add1~52\,
	cin0 => \Con|Add1~72\,
	cin1 => \Con|Add1~72COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~65_combout\,
	cout0 => \Con|Add1~67\,
	cout1 => \Con|Add1~67COUT1_177\);

-- Location: LC_X2_Y9_N9
\Con|Add1~80\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~80_combout\ = (\Con|Add0~95_combout\ $ (((!\Con|Add1~52\ & \Con|Add1~67\) # (\Con|Add1~52\ & \Con|Add1~67COUT1_177\))))
-- \Con|Add1~82\ = CARRY(((!\Con|Add1~67COUT1_177\) # (!\Con|Add0~95_combout\)))

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
	datab => \Con|Add0~95_combout\,
	cin => \Con|Add1~52\,
	cin0 => \Con|Add1~67\,
	cin1 => \Con|Add1~67COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~80_combout\,
	cout => \Con|Add1~82\);

-- Location: LC_X3_Y9_N0
\Con|Add1~75\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~75_combout\ = \Con|Add0~100_combout\ $ ((((!\Con|Add1~82\))))
-- \Con|Add1~77\ = CARRY((\Con|Add0~100_combout\ & ((!\Con|Add1~82\))))
-- \Con|Add1~77COUT1_178\ = CARRY((\Con|Add0~100_combout\ & ((!\Con|Add1~82\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Add0~100_combout\,
	cin => \Con|Add1~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~75_combout\,
	cout0 => \Con|Add1~77\,
	cout1 => \Con|Add1~77COUT1_178\);

-- Location: LC_X2_Y10_N1
\Con|Add2~0\ : maxv_lcell
-- Equation(s):
-- \Con|Add2~0_combout\ = ((!\Con|Add1~20_combout\))
-- \Con|Add2~2\ = CARRY(((\Con|Add1~20_combout\)))
-- \Con|Add2~2COUT1_146\ = CARRY(((\Con|Add1~20_combout\)))

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
	datab => \Con|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add2~0_combout\,
	cout0 => \Con|Add2~2\,
	cout1 => \Con|Add2~2COUT1_146\);

-- Location: LC_X2_Y10_N2
\Con|Random[4]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(4) = DFFEAS(\Con|Add1~25_combout\ $ ((((\Con|Add2~2\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~7\ = CARRY(((!\Con|Add2~2\)) # (!\Con|Add1~25_combout\))
-- \Con|Add2~7COUT1_147\ = CARRY(((!\Con|Add2~2COUT1_146\)) # (!\Con|Add1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add1~25_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin0 => \Con|Add2~2\,
	cin1 => \Con|Add2~2COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(4),
	cout0 => \Con|Add2~7\,
	cout1 => \Con|Add2~7COUT1_147\);

-- Location: LC_X2_Y10_N3
\Con|Add2~10\ : maxv_lcell
-- Equation(s):
-- \Con|Add2~10_combout\ = (\Con|Add1~30_combout\ $ ((\Con|Add2~7\)))
-- \Con|Add2~12\ = CARRY(((\Con|Add1~30_combout\) # (!\Con|Add2~7\)))
-- \Con|Add2~12COUT1_148\ = CARRY(((\Con|Add1~30_combout\) # (!\Con|Add2~7COUT1_147\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|Add1~30_combout\,
	cin0 => \Con|Add2~7\,
	cin1 => \Con|Add2~7COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add2~10_combout\,
	cout0 => \Con|Add2~12\,
	cout1 => \Con|Add2~12COUT1_148\);

-- Location: LC_X2_Y10_N4
\Con|Add2~15\ : maxv_lcell
-- Equation(s):
-- \Con|Add2~15_combout\ = (\Con|Add1~35_combout\ $ ((!\Con|Add2~12\)))
-- \Con|Add2~17\ = CARRY(((!\Con|Add1~35_combout\ & !\Con|Add2~12COUT1_148\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|Add1~35_combout\,
	cin0 => \Con|Add2~12\,
	cin1 => \Con|Add2~12COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add2~15_combout\,
	cout => \Con|Add2~17\);

-- Location: LC_X2_Y10_N5
\Con|Add2~20\ : maxv_lcell
-- Equation(s):
-- \Con|Add2~20_combout\ = (\Con|Add1~40_combout\ $ ((\Con|Add2~17\)))
-- \Con|Add2~22\ = CARRY(((\Con|Add1~40_combout\) # (!\Con|Add2~17\)))
-- \Con|Add2~22COUT1_149\ = CARRY(((\Con|Add1~40_combout\) # (!\Con|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|Add1~40_combout\,
	cin => \Con|Add2~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add2~20_combout\,
	cout0 => \Con|Add2~22\,
	cout1 => \Con|Add2~22COUT1_149\);

-- Location: LC_X2_Y10_N6
\Con|Add2~25\ : maxv_lcell
-- Equation(s):
-- \Con|Add2~25_combout\ = (\Con|Add1~45_combout\ $ ((!(!\Con|Add2~17\ & \Con|Add2~22\) # (\Con|Add2~17\ & \Con|Add2~22COUT1_149\))))
-- \Con|Add2~27\ = CARRY(((!\Con|Add1~45_combout\ & !\Con|Add2~22\)))
-- \Con|Add2~27COUT1_150\ = CARRY(((!\Con|Add1~45_combout\ & !\Con|Add2~22COUT1_149\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|Add1~45_combout\,
	cin => \Con|Add2~17\,
	cin0 => \Con|Add2~22\,
	cin1 => \Con|Add2~22COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add2~25_combout\,
	cout0 => \Con|Add2~27\,
	cout1 => \Con|Add2~27COUT1_150\);

-- Location: LC_X2_Y10_N7
\Con|Add2~30\ : maxv_lcell
-- Equation(s):
-- \Con|Add2~30_combout\ = \Con|Add1~50_combout\ $ (((((!\Con|Add2~17\ & \Con|Add2~27\) # (\Con|Add2~17\ & \Con|Add2~27COUT1_150\)))))
-- \Con|Add2~32\ = CARRY((\Con|Add1~50_combout\) # ((!\Con|Add2~27\)))
-- \Con|Add2~32COUT1_151\ = CARRY((\Con|Add1~50_combout\) # ((!\Con|Add2~27COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Add1~50_combout\,
	cin => \Con|Add2~17\,
	cin0 => \Con|Add2~27\,
	cin1 => \Con|Add2~27COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add2~30_combout\,
	cout0 => \Con|Add2~32\,
	cout1 => \Con|Add2~32COUT1_151\);

-- Location: LC_X2_Y10_N8
\Con|Random[10]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(10) = DFFEAS(\Con|Add1~60_combout\ $ (((((!\Con|Add2~17\ & \Con|Add2~32\) # (\Con|Add2~17\ & \Con|Add2~32COUT1_151\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~42\ = CARRY(((!\Con|Add2~32\)) # (!\Con|Add1~60_combout\))
-- \Con|Add2~42COUT1_152\ = CARRY(((!\Con|Add2~32COUT1_151\)) # (!\Con|Add1~60_combout\))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add1~60_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~17\,
	cin0 => \Con|Add2~32\,
	cin1 => \Con|Add2~32COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(10),
	cout0 => \Con|Add2~42\,
	cout1 => \Con|Add2~42COUT1_152\);

-- Location: LC_X2_Y10_N9
\Con|Random[11]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(11) = DFFEAS(\Con|Add1~55_combout\ $ ((((!(!\Con|Add2~17\ & \Con|Add2~42\) # (\Con|Add2~17\ & \Con|Add2~42COUT1_152\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~37\ = CARRY((\Con|Add1~55_combout\ & ((!\Con|Add2~42COUT1_152\))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add1~55_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~17\,
	cin0 => \Con|Add2~42\,
	cin1 => \Con|Add2~42COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(11),
	cout => \Con|Add2~37\);

-- Location: LC_X3_Y10_N0
\Con|Random[12]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(12) = DFFEAS((\Con|Add1~70_combout\ $ ((\Con|Add2~37\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~52\ = CARRY(((!\Con|Add2~37\) # (!\Con|Add1~70_combout\)))
-- \Con|Add2~52COUT1_153\ = CARRY(((!\Con|Add2~37\) # (!\Con|Add1~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~70_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(12),
	cout0 => \Con|Add2~52\,
	cout1 => \Con|Add2~52COUT1_153\);

-- Location: LC_X3_Y10_N1
\Con|Random[13]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(13) = DFFEAS((\Con|Add1~65_combout\ $ ((!(!\Con|Add2~37\ & \Con|Add2~52\) # (\Con|Add2~37\ & \Con|Add2~52COUT1_153\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~47\ = CARRY(((\Con|Add1~65_combout\ & !\Con|Add2~52\)))
-- \Con|Add2~47COUT1_154\ = CARRY(((\Con|Add1~65_combout\ & !\Con|Add2~52COUT1_153\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~65_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~37\,
	cin0 => \Con|Add2~52\,
	cin1 => \Con|Add2~52COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(13),
	cout0 => \Con|Add2~47\,
	cout1 => \Con|Add2~47COUT1_154\);

-- Location: LC_X3_Y10_N2
\Con|Random[14]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(14) = DFFEAS((\Con|Add1~80_combout\ $ (((!\Con|Add2~37\ & \Con|Add2~47\) # (\Con|Add2~37\ & \Con|Add2~47COUT1_154\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~62\ = CARRY(((!\Con|Add2~47\) # (!\Con|Add1~80_combout\)))
-- \Con|Add2~62COUT1_155\ = CARRY(((!\Con|Add2~47COUT1_154\) # (!\Con|Add1~80_combout\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~80_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~37\,
	cin0 => \Con|Add2~47\,
	cin1 => \Con|Add2~47COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(14),
	cout0 => \Con|Add2~62\,
	cout1 => \Con|Add2~62COUT1_155\);

-- Location: LC_X3_Y10_N3
\Con|Random[15]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(15) = DFFEAS((\Con|Add1~75_combout\ $ ((!(!\Con|Add2~37\ & \Con|Add2~62\) # (\Con|Add2~37\ & \Con|Add2~62COUT1_155\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~57\ = CARRY(((\Con|Add1~75_combout\ & !\Con|Add2~62\)))
-- \Con|Add2~57COUT1_156\ = CARRY(((\Con|Add1~75_combout\ & !\Con|Add2~62COUT1_155\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~75_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~37\,
	cin0 => \Con|Add2~62\,
	cin1 => \Con|Add2~62COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(15),
	cout0 => \Con|Add2~57\,
	cout1 => \Con|Add2~57COUT1_156\);

-- Location: LC_X3_Y6_N3
\Con|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~8_combout\ = (\Con|Random\(15) & (\Con|Add0~95_combout\ & (\Con|Random\(14) $ (!\Con|Add0~90_combout\)))) # (!\Con|Random\(15) & (!\Con|Add0~95_combout\ & (\Con|Random\(14) $ (!\Con|Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Random\(15),
	datab => \Con|Add0~95_combout\,
	datac => \Con|Random\(14),
	datad => \Con|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~8_combout\);

-- Location: LC_X3_Y6_N4
\Con|Equal0~7\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~7_combout\ = (\Con|Random\(12) & (\Con|Add0~80_combout\ & (\Con|Random\(13) $ (!\Con|Add0~85_combout\)))) # (!\Con|Random\(12) & (!\Con|Add0~80_combout\ & (\Con|Random\(13) $ (!\Con|Add0~85_combout\))))

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
	dataa => \Con|Random\(12),
	datab => \Con|Random\(13),
	datac => \Con|Add0~80_combout\,
	datad => \Con|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~7_combout\);

-- Location: LC_X3_Y6_N5
\Con|Equal0~6\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~6_combout\ = (\Con|Add0~75_combout\ & (\Con|Random\(11) & (\Con|Random\(10) $ (!\Con|Add0~0_combout\)))) # (!\Con|Add0~75_combout\ & (!\Con|Random\(11) & (\Con|Random\(10) $ (!\Con|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Add0~75_combout\,
	datab => \Con|Random\(11),
	datac => \Con|Random\(10),
	datad => \Con|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~6_combout\);

-- Location: LC_X1_Y10_N2
\Con|Random[9]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(9) = DFFEAS((((!\Con|Add2~30_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )

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
	clk => \CH1|Output~regout\,
	datad => \Con|Add2~30_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(9));

-- Location: LC_X2_Y10_N0
\Con|Random[8]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(8) = DFFEAS((((!\Con|Add2~25_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )

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
	clk => \CH1|Output~regout\,
	datac => \Con|Add2~25_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(8));

-- Location: LC_X3_Y6_N2
\Con|Equal0~5\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~5_combout\ = (\Con|Random\(9) & (!\Con|Add0~20_combout\ & (\Con|Random\(8) $ (\Con|Add0~15_combout\)))) # (!\Con|Random\(9) & (\Con|Add0~20_combout\ & (\Con|Random\(8) $ (\Con|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Random\(9),
	datab => \Con|Random\(8),
	datac => \Con|Add0~20_combout\,
	datad => \Con|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~5_combout\);

-- Location: LC_X3_Y6_N1
\Con|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~9_combout\ = (\Con|Equal0~8_combout\ & (\Con|Equal0~7_combout\ & (\Con|Equal0~6_combout\ & \Con|Equal0~5_combout\)))

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
	dataa => \Con|Equal0~8_combout\,
	datab => \Con|Equal0~7_combout\,
	datac => \Con|Equal0~6_combout\,
	datad => \Con|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~9_combout\);

-- Location: LC_X1_Y10_N8
\Con|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~0_combout\ = (\Con|Add0~40_combout\ & (\Con|Random\(1) & (\Con|Random\(0) $ (!\Con|Add0~35_combout\)))) # (!\Con|Add0~40_combout\ & (!\Con|Random\(1) & (\Con|Random\(0) $ (!\Con|Add0~35_combout\))))

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
	dataa => \Con|Add0~40_combout\,
	datab => \Con|Random\(0),
	datac => \Con|Random\(1),
	datad => \Con|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~0_combout\);

-- Location: LC_X1_Y10_N7
\Con|Random[3]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(3) = DFFEAS((((!\Con|Add2~0_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )

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
	clk => \CH1|Output~regout\,
	datad => \Con|Add2~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(3));

-- Location: LC_X1_Y10_N0
\Con|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~1_combout\ = (\Con|Random\(2) & (\Con|Add0~45_combout\ & (\Con|Random\(3) $ (\Con|Add0~50_combout\)))) # (!\Con|Random\(2) & (!\Con|Add0~45_combout\ & (\Con|Random\(3) $ (\Con|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2814",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Random\(2),
	datab => \Con|Random\(3),
	datac => \Con|Add0~50_combout\,
	datad => \Con|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~1_combout\);

-- Location: LC_X1_Y10_N3
\Con|Random[5]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(5) = DFFEAS((((!\Con|Add2~10_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )

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
	clk => \CH1|Output~regout\,
	datac => \Con|Add2~10_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(5));

-- Location: LC_X1_Y10_N4
\Con|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~2_combout\ = (\Con|Random\(5) & (!\Con|Add0~25_combout\ & (\Con|Random\(4) $ (!\Con|Add0~30_combout\)))) # (!\Con|Random\(5) & (\Con|Add0~25_combout\ & (\Con|Random\(4) $ (!\Con|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6006",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Random\(5),
	datab => \Con|Add0~25_combout\,
	datac => \Con|Random\(4),
	datad => \Con|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~2_combout\);

-- Location: LC_X1_Y10_N6
\Con|Random[6]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(6) = DFFEAS((((!\Con|Add2~15_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )

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
	clk => \CH1|Output~regout\,
	datad => \Con|Add2~15_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(6));

-- Location: LC_X1_Y10_N1
\Con|Random[7]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(7) = DFFEAS((((!\Con|Add2~20_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )

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
	clk => \CH1|Output~regout\,
	datad => \Con|Add2~20_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(7));

-- Location: LC_X1_Y10_N9
\Con|Equal0~3\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~3_combout\ = (\Con|Random\(6) & (!\Con|Add0~5_combout\ & (\Con|Random\(7) $ (\Con|Add0~10_combout\)))) # (!\Con|Random\(6) & (\Con|Add0~5_combout\ & (\Con|Random\(7) $ (\Con|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Random\(6),
	datab => \Con|Random\(7),
	datac => \Con|Add0~10_combout\,
	datad => \Con|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~3_combout\);

-- Location: LC_X1_Y10_N5
\Con|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~4_combout\ = (\Con|Equal0~0_combout\ & (\Con|Equal0~1_combout\ & (\Con|Equal0~2_combout\ & \Con|Equal0~3_combout\)))

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
	dataa => \Con|Equal0~0_combout\,
	datab => \Con|Equal0~1_combout\,
	datac => \Con|Equal0~2_combout\,
	datad => \Con|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~4_combout\);

-- Location: LC_X3_Y9_N1
\Con|Add1~90\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~90_combout\ = (\Con|Add0~105_combout\ $ (((!\Con|Add1~82\ & \Con|Add1~77\) # (\Con|Add1~82\ & \Con|Add1~77COUT1_178\))))
-- \Con|Add1~92\ = CARRY(((!\Con|Add1~77\) # (!\Con|Add0~105_combout\)))
-- \Con|Add1~92COUT1_179\ = CARRY(((!\Con|Add1~77COUT1_178\) # (!\Con|Add0~105_combout\)))

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
	datab => \Con|Add0~105_combout\,
	cin => \Con|Add1~82\,
	cin0 => \Con|Add1~77\,
	cin1 => \Con|Add1~77COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~90_combout\,
	cout0 => \Con|Add1~92\,
	cout1 => \Con|Add1~92COUT1_179\);

-- Location: LC_X3_Y9_N2
\Con|Add1~85\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~85_combout\ = (\Con|Add0~110_combout\ $ ((!(!\Con|Add1~82\ & \Con|Add1~92\) # (\Con|Add1~82\ & \Con|Add1~92COUT1_179\))))
-- \Con|Add1~87\ = CARRY(((\Con|Add0~110_combout\ & !\Con|Add1~92\)))
-- \Con|Add1~87COUT1_180\ = CARRY(((\Con|Add0~110_combout\ & !\Con|Add1~92COUT1_179\)))

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
	datab => \Con|Add0~110_combout\,
	cin => \Con|Add1~82\,
	cin0 => \Con|Add1~92\,
	cin1 => \Con|Add1~92COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~85_combout\,
	cout0 => \Con|Add1~87\,
	cout1 => \Con|Add1~87COUT1_180\);

-- Location: LC_X3_Y9_N3
\Con|Add1~100\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~100_combout\ = (\Con|Add0~115_combout\ $ (((!\Con|Add1~82\ & \Con|Add1~87\) # (\Con|Add1~82\ & \Con|Add1~87COUT1_180\))))
-- \Con|Add1~102\ = CARRY(((!\Con|Add1~87\) # (!\Con|Add0~115_combout\)))
-- \Con|Add1~102COUT1_181\ = CARRY(((!\Con|Add1~87COUT1_180\) # (!\Con|Add0~115_combout\)))

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
	datab => \Con|Add0~115_combout\,
	cin => \Con|Add1~82\,
	cin0 => \Con|Add1~87\,
	cin1 => \Con|Add1~87COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~100_combout\,
	cout0 => \Con|Add1~102\,
	cout1 => \Con|Add1~102COUT1_181\);

-- Location: LC_X3_Y9_N4
\Con|Add1~95\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~95_combout\ = \Con|Add0~120_combout\ $ ((((!(!\Con|Add1~82\ & \Con|Add1~102\) # (\Con|Add1~82\ & \Con|Add1~102COUT1_181\)))))
-- \Con|Add1~97\ = CARRY((\Con|Add0~120_combout\ & ((!\Con|Add1~102COUT1_181\))))

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
	dataa => \Con|Add0~120_combout\,
	cin => \Con|Add1~82\,
	cin0 => \Con|Add1~102\,
	cin1 => \Con|Add1~102COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~95_combout\,
	cout => \Con|Add1~97\);

-- Location: LC_X3_Y9_N5
\Con|Add1~110\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~110_combout\ = (\Con|Add0~125_combout\ $ ((\Con|Add1~97\)))
-- \Con|Add1~112\ = CARRY(((!\Con|Add1~97\) # (!\Con|Add0~125_combout\)))
-- \Con|Add1~112COUT1_182\ = CARRY(((!\Con|Add1~97\) # (!\Con|Add0~125_combout\)))

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
	datab => \Con|Add0~125_combout\,
	cin => \Con|Add1~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~110_combout\,
	cout0 => \Con|Add1~112\,
	cout1 => \Con|Add1~112COUT1_182\);

-- Location: LC_X3_Y9_N6
\Con|Add1~105\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~105_combout\ = \Con|Add0~130_combout\ $ ((((!(!\Con|Add1~97\ & \Con|Add1~112\) # (\Con|Add1~97\ & \Con|Add1~112COUT1_182\)))))
-- \Con|Add1~107\ = CARRY((\Con|Add0~130_combout\ & ((!\Con|Add1~112\))))
-- \Con|Add1~107COUT1_183\ = CARRY((\Con|Add0~130_combout\ & ((!\Con|Add1~112COUT1_182\))))

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
	dataa => \Con|Add0~130_combout\,
	cin => \Con|Add1~97\,
	cin0 => \Con|Add1~112\,
	cin1 => \Con|Add1~112COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~105_combout\,
	cout0 => \Con|Add1~107\,
	cout1 => \Con|Add1~107COUT1_183\);

-- Location: LC_X3_Y9_N7
\Con|Add1~120\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~120_combout\ = \Con|Add0~135_combout\ $ (((((!\Con|Add1~97\ & \Con|Add1~107\) # (\Con|Add1~97\ & \Con|Add1~107COUT1_183\)))))
-- \Con|Add1~122\ = CARRY(((!\Con|Add1~107\)) # (!\Con|Add0~135_combout\))
-- \Con|Add1~122COUT1_184\ = CARRY(((!\Con|Add1~107COUT1_183\)) # (!\Con|Add0~135_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Add0~135_combout\,
	cin => \Con|Add1~97\,
	cin0 => \Con|Add1~107\,
	cin1 => \Con|Add1~107COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~120_combout\,
	cout0 => \Con|Add1~122\,
	cout1 => \Con|Add1~122COUT1_184\);

-- Location: LC_X3_Y9_N8
\Con|Add1~115\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~115_combout\ = (\Con|Add0~140_combout\ $ ((!(!\Con|Add1~97\ & \Con|Add1~122\) # (\Con|Add1~97\ & \Con|Add1~122COUT1_184\))))
-- \Con|Add1~117\ = CARRY(((\Con|Add0~140_combout\ & !\Con|Add1~122\)))
-- \Con|Add1~117COUT1_185\ = CARRY(((\Con|Add0~140_combout\ & !\Con|Add1~122COUT1_184\)))

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
	datab => \Con|Add0~140_combout\,
	cin => \Con|Add1~97\,
	cin0 => \Con|Add1~122\,
	cin1 => \Con|Add1~122COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~115_combout\,
	cout0 => \Con|Add1~117\,
	cout1 => \Con|Add1~117COUT1_185\);

-- Location: LC_X3_Y10_N4
\Con|Random[16]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(16) = DFFEAS((\Con|Add1~90_combout\ $ (((!\Con|Add2~37\ & \Con|Add2~57\) # (\Con|Add2~37\ & \Con|Add2~57COUT1_156\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~72\ = CARRY(((!\Con|Add2~57COUT1_156\) # (!\Con|Add1~90_combout\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~90_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~37\,
	cin0 => \Con|Add2~57\,
	cin1 => \Con|Add2~57COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(16),
	cout => \Con|Add2~72\);

-- Location: LC_X3_Y10_N5
\Con|Random[17]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(17) = DFFEAS((\Con|Add1~85_combout\ $ ((!\Con|Add2~72\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~67\ = CARRY(((\Con|Add1~85_combout\ & !\Con|Add2~72\)))
-- \Con|Add2~67COUT1_157\ = CARRY(((\Con|Add1~85_combout\ & !\Con|Add2~72\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~85_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(17),
	cout0 => \Con|Add2~67\,
	cout1 => \Con|Add2~67COUT1_157\);

-- Location: LC_X3_Y10_N6
\Con|Random[18]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(18) = DFFEAS((\Con|Add1~100_combout\ $ (((!\Con|Add2~72\ & \Con|Add2~67\) # (\Con|Add2~72\ & \Con|Add2~67COUT1_157\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~82\ = CARRY(((!\Con|Add2~67\) # (!\Con|Add1~100_combout\)))
-- \Con|Add2~82COUT1_158\ = CARRY(((!\Con|Add2~67COUT1_157\) # (!\Con|Add1~100_combout\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~100_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~72\,
	cin0 => \Con|Add2~67\,
	cin1 => \Con|Add2~67COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(18),
	cout0 => \Con|Add2~82\,
	cout1 => \Con|Add2~82COUT1_158\);

-- Location: LC_X3_Y10_N7
\Con|Random[19]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(19) = DFFEAS((\Con|Add1~95_combout\ $ ((!(!\Con|Add2~72\ & \Con|Add2~82\) # (\Con|Add2~72\ & \Con|Add2~82COUT1_158\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~77\ = CARRY(((\Con|Add1~95_combout\ & !\Con|Add2~82\)))
-- \Con|Add2~77COUT1_159\ = CARRY(((\Con|Add1~95_combout\ & !\Con|Add2~82COUT1_158\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~95_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~72\,
	cin0 => \Con|Add2~82\,
	cin1 => \Con|Add2~82COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(19),
	cout0 => \Con|Add2~77\,
	cout1 => \Con|Add2~77COUT1_159\);

-- Location: LC_X3_Y10_N8
\Con|Random[20]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(20) = DFFEAS(\Con|Add1~110_combout\ $ (((((!\Con|Add2~72\ & \Con|Add2~77\) # (\Con|Add2~72\ & \Con|Add2~77COUT1_159\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~92\ = CARRY(((!\Con|Add2~77\)) # (!\Con|Add1~110_combout\))
-- \Con|Add2~92COUT1_160\ = CARRY(((!\Con|Add2~77COUT1_159\)) # (!\Con|Add1~110_combout\))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add1~110_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~72\,
	cin0 => \Con|Add2~77\,
	cin1 => \Con|Add2~77COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(20),
	cout0 => \Con|Add2~92\,
	cout1 => \Con|Add2~92COUT1_160\);

-- Location: LC_X3_Y10_N9
\Con|Random[21]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(21) = DFFEAS(\Con|Add1~105_combout\ $ ((((!(!\Con|Add2~72\ & \Con|Add2~92\) # (\Con|Add2~72\ & \Con|Add2~92COUT1_160\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~87\ = CARRY((\Con|Add1~105_combout\ & ((!\Con|Add2~92COUT1_160\))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add1~105_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~72\,
	cin0 => \Con|Add2~92\,
	cin1 => \Con|Add2~92COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(21),
	cout => \Con|Add2~87\);

-- Location: LC_X4_Y10_N0
\Con|Random[22]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(22) = DFFEAS((\Con|Add1~120_combout\ $ ((\Con|Add2~87\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~102\ = CARRY(((!\Con|Add2~87\) # (!\Con|Add1~120_combout\)))
-- \Con|Add2~102COUT1_161\ = CARRY(((!\Con|Add2~87\) # (!\Con|Add1~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~120_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(22),
	cout0 => \Con|Add2~102\,
	cout1 => \Con|Add2~102COUT1_161\);

-- Location: LC_X4_Y10_N1
\Con|Random[23]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(23) = DFFEAS(\Con|Add1~115_combout\ $ ((((!(!\Con|Add2~87\ & \Con|Add2~102\) # (\Con|Add2~87\ & \Con|Add2~102COUT1_161\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~97\ = CARRY((\Con|Add1~115_combout\ & ((!\Con|Add2~102\))))
-- \Con|Add2~97COUT1_162\ = CARRY((\Con|Add1~115_combout\ & ((!\Con|Add2~102COUT1_161\))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add1~115_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~87\,
	cin0 => \Con|Add2~102\,
	cin1 => \Con|Add2~102COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(23),
	cout0 => \Con|Add2~97\,
	cout1 => \Con|Add2~97COUT1_162\);

-- Location: LC_X4_Y6_N6
\Con|Equal0~13\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~13_combout\ = (\Con|Random\(23) & (\Con|Add0~135_combout\ & (\Con|Random\(22) $ (!\Con|Add0~130_combout\)))) # (!\Con|Random\(23) & (!\Con|Add0~135_combout\ & (\Con|Random\(22) $ (!\Con|Add0~130_combout\))))

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
	dataa => \Con|Random\(23),
	datab => \Con|Random\(22),
	datac => \Con|Add0~135_combout\,
	datad => \Con|Add0~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~13_combout\);

-- Location: LC_X3_Y7_N9
\Con|Equal0~10\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~10_combout\ = (\Con|Random\(16) & (\Con|Add0~100_combout\ & (\Con|Random\(17) $ (!\Con|Add0~105_combout\)))) # (!\Con|Random\(16) & (!\Con|Add0~100_combout\ & (\Con|Random\(17) $ (!\Con|Add0~105_combout\))))

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
	dataa => \Con|Random\(16),
	datab => \Con|Random\(17),
	datac => \Con|Add0~100_combout\,
	datad => \Con|Add0~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~10_combout\);

-- Location: LC_X3_Y7_N1
\Con|Equal0~11\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~11_combout\ = (\Con|Random\(18) & (\Con|Add0~110_combout\ & (\Con|Random\(19) $ (!\Con|Add0~115_combout\)))) # (!\Con|Random\(18) & (!\Con|Add0~110_combout\ & (\Con|Random\(19) $ (!\Con|Add0~115_combout\))))

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
	dataa => \Con|Random\(18),
	datab => \Con|Random\(19),
	datac => \Con|Add0~110_combout\,
	datad => \Con|Add0~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~11_combout\);

-- Location: LC_X2_Y7_N7
\Con|Equal0~12\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~12_combout\ = (\Con|Random\(20) & (\Con|Add0~120_combout\ & (\Con|Random\(21) $ (!\Con|Add0~125_combout\)))) # (!\Con|Random\(20) & (!\Con|Add0~120_combout\ & (\Con|Random\(21) $ (!\Con|Add0~125_combout\))))

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
	dataa => \Con|Random\(20),
	datab => \Con|Random\(21),
	datac => \Con|Add0~120_combout\,
	datad => \Con|Add0~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~12_combout\);

-- Location: LC_X2_Y6_N4
\Con|Equal0~14\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~14_combout\ = (\Con|Equal0~13_combout\ & (\Con|Equal0~10_combout\ & (\Con|Equal0~11_combout\ & \Con|Equal0~12_combout\)))

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
	dataa => \Con|Equal0~13_combout\,
	datab => \Con|Equal0~10_combout\,
	datac => \Con|Equal0~11_combout\,
	datad => \Con|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~14_combout\);

-- Location: LC_X3_Y9_N9
\Con|Add1~130\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~130_combout\ = (\Con|Add0~145_combout\ $ (((!\Con|Add1~97\ & \Con|Add1~117\) # (\Con|Add1~97\ & \Con|Add1~117COUT1_185\))))
-- \Con|Add1~132\ = CARRY(((!\Con|Add1~117COUT1_185\) # (!\Con|Add0~145_combout\)))

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
	datab => \Con|Add0~145_combout\,
	cin => \Con|Add1~97\,
	cin0 => \Con|Add1~117\,
	cin1 => \Con|Add1~117COUT1_185\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~130_combout\,
	cout => \Con|Add1~132\);

-- Location: LC_X4_Y9_N0
\Con|Add1~125\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~125_combout\ = (\Con|Add0~150_combout\ $ ((!\Con|Add1~132\)))
-- \Con|Add1~127\ = CARRY(((\Con|Add0~150_combout\ & !\Con|Add1~132\)))
-- \Con|Add1~127COUT1_186\ = CARRY(((\Con|Add0~150_combout\ & !\Con|Add1~132\)))

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
	datab => \Con|Add0~150_combout\,
	cin => \Con|Add1~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~125_combout\,
	cout0 => \Con|Add1~127\,
	cout1 => \Con|Add1~127COUT1_186\);

-- Location: LC_X4_Y10_N2
\Con|Random[24]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(24) = DFFEAS(\Con|Add1~130_combout\ $ (((((!\Con|Add2~87\ & \Con|Add2~97\) # (\Con|Add2~87\ & \Con|Add2~97COUT1_162\))))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~112\ = CARRY(((!\Con|Add2~97\)) # (!\Con|Add1~130_combout\))
-- \Con|Add2~112COUT1_163\ = CARRY(((!\Con|Add2~97COUT1_162\)) # (!\Con|Add1~130_combout\))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Add1~130_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~87\,
	cin0 => \Con|Add2~97\,
	cin1 => \Con|Add2~97COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(24),
	cout0 => \Con|Add2~112\,
	cout1 => \Con|Add2~112COUT1_163\);

-- Location: LC_X4_Y10_N3
\Con|Random[25]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(25) = DFFEAS((\Con|Add1~125_combout\ $ ((!(!\Con|Add2~87\ & \Con|Add2~112\) # (\Con|Add2~87\ & \Con|Add2~112COUT1_163\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~107\ = CARRY(((\Con|Add1~125_combout\ & !\Con|Add2~112\)))
-- \Con|Add2~107COUT1_164\ = CARRY(((\Con|Add1~125_combout\ & !\Con|Add2~112COUT1_163\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~125_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~87\,
	cin0 => \Con|Add2~112\,
	cin1 => \Con|Add2~112COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(25),
	cout0 => \Con|Add2~107\,
	cout1 => \Con|Add2~107COUT1_164\);

-- Location: LC_X4_Y6_N4
\Con|Equal0~15\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~15_combout\ = (\Con|Random\(25) & (\Con|Add0~145_combout\ & (\Con|Random\(24) $ (!\Con|Add0~140_combout\)))) # (!\Con|Random\(25) & (!\Con|Add0~145_combout\ & (\Con|Random\(24) $ (!\Con|Add0~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Random\(25),
	datab => \Con|Add0~145_combout\,
	datac => \Con|Random\(24),
	datad => \Con|Add0~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~15_combout\);

-- Location: LC_X4_Y9_N1
\Con|Add1~135\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~135_combout\ = \Con|Add0~55_combout\ $ (((((!\Con|Add1~132\ & \Con|Add1~127\) # (\Con|Add1~132\ & \Con|Add1~127COUT1_186\)))))
-- \Con|Add1~137\ = CARRY(((!\Con|Add1~127\)) # (!\Con|Add0~55_combout\))
-- \Con|Add1~137COUT1_187\ = CARRY(((!\Con|Add1~127COUT1_186\)) # (!\Con|Add0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Add0~55_combout\,
	cin => \Con|Add1~132\,
	cin0 => \Con|Add1~127\,
	cin1 => \Con|Add1~127COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~135_combout\,
	cout0 => \Con|Add1~137\,
	cout1 => \Con|Add1~137COUT1_187\);

-- Location: LC_X4_Y9_N2
\Con|Add1~140\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~140_combout\ = (\Con|Add0~60_combout\ $ ((!(!\Con|Add1~132\ & \Con|Add1~137\) # (\Con|Add1~132\ & \Con|Add1~137COUT1_187\))))
-- \Con|Add1~142\ = CARRY(((\Con|Add0~60_combout\ & !\Con|Add1~137\)))
-- \Con|Add1~142COUT1_188\ = CARRY(((\Con|Add0~60_combout\ & !\Con|Add1~137COUT1_187\)))

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
	datab => \Con|Add0~60_combout\,
	cin => \Con|Add1~132\,
	cin0 => \Con|Add1~137\,
	cin1 => \Con|Add1~137COUT1_187\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~140_combout\,
	cout0 => \Con|Add1~142\,
	cout1 => \Con|Add1~142COUT1_188\);

-- Location: LC_X4_Y9_N3
\Con|Add1~150\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~150_combout\ = (\Con|Add0~65_combout\ $ (((!\Con|Add1~132\ & \Con|Add1~142\) # (\Con|Add1~132\ & \Con|Add1~142COUT1_188\))))
-- \Con|Add1~152\ = CARRY(((!\Con|Add1~142\) # (!\Con|Add0~65_combout\)))
-- \Con|Add1~152COUT1_189\ = CARRY(((!\Con|Add1~142COUT1_188\) # (!\Con|Add0~65_combout\)))

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
	datab => \Con|Add0~65_combout\,
	cin => \Con|Add1~132\,
	cin0 => \Con|Add1~142\,
	cin1 => \Con|Add1~142COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~150_combout\,
	cout0 => \Con|Add1~152\,
	cout1 => \Con|Add1~152COUT1_189\);

-- Location: LC_X4_Y9_N4
\Con|Add1~145\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~145_combout\ = (\Con|Add0~70_combout\ $ ((!(!\Con|Add1~132\ & \Con|Add1~152\) # (\Con|Add1~132\ & \Con|Add1~152COUT1_189\))))
-- \Con|Add1~147\ = CARRY(((\Con|Add0~70_combout\ & !\Con|Add1~152COUT1_189\)))

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
	datab => \Con|Add0~70_combout\,
	cin => \Con|Add1~132\,
	cin0 => \Con|Add1~152\,
	cin1 => \Con|Add1~152COUT1_189\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~145_combout\,
	cout => \Con|Add1~147\);

-- Location: LC_X4_Y9_N5
\Con|Add1~160\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~160_combout\ = (\Con|Add0~155_combout\ $ ((\Con|Add1~147\)))
-- \Con|Add1~162\ = CARRY(((!\Con|Add1~147\) # (!\Con|Add0~155_combout\)))
-- \Con|Add1~162COUT1_190\ = CARRY(((!\Con|Add1~147\) # (!\Con|Add0~155_combout\)))

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
	datab => \Con|Add0~155_combout\,
	cin => \Con|Add1~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~160_combout\,
	cout0 => \Con|Add1~162\,
	cout1 => \Con|Add1~162COUT1_190\);

-- Location: LC_X4_Y10_N4
\Con|Random[26]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(26) = DFFEAS((\Con|Add1~135_combout\ $ (((!\Con|Add2~87\ & \Con|Add2~107\) # (\Con|Add2~87\ & \Con|Add2~107COUT1_164\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~117\ = CARRY(((!\Con|Add2~107COUT1_164\) # (!\Con|Add1~135_combout\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~135_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~87\,
	cin0 => \Con|Add2~107\,
	cin1 => \Con|Add2~107COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(26),
	cout => \Con|Add2~117\);

-- Location: LC_X4_Y10_N5
\Con|Random[27]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(27) = DFFEAS((\Con|Add1~140_combout\ $ ((!\Con|Add2~117\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~122\ = CARRY(((\Con|Add1~140_combout\ & !\Con|Add2~117\)))
-- \Con|Add2~122COUT1_165\ = CARRY(((\Con|Add1~140_combout\ & !\Con|Add2~117\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~140_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(27),
	cout0 => \Con|Add2~122\,
	cout1 => \Con|Add2~122COUT1_165\);

-- Location: LC_X4_Y10_N6
\Con|Random[28]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(28) = DFFEAS((\Con|Add1~150_combout\ $ (((!\Con|Add2~117\ & \Con|Add2~122\) # (\Con|Add2~117\ & \Con|Add2~122COUT1_165\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~132\ = CARRY(((!\Con|Add2~122\) # (!\Con|Add1~150_combout\)))
-- \Con|Add2~132COUT1_166\ = CARRY(((!\Con|Add2~122COUT1_165\) # (!\Con|Add1~150_combout\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~150_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~117\,
	cin0 => \Con|Add2~122\,
	cin1 => \Con|Add2~122COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(28),
	cout0 => \Con|Add2~132\,
	cout1 => \Con|Add2~132COUT1_166\);

-- Location: LC_X4_Y10_N7
\Con|Random[29]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(29) = DFFEAS((\Con|Add1~145_combout\ $ ((!(!\Con|Add2~117\ & \Con|Add2~132\) # (\Con|Add2~117\ & \Con|Add2~132COUT1_166\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~127\ = CARRY(((\Con|Add1~145_combout\ & !\Con|Add2~132\)))
-- \Con|Add2~127COUT1_167\ = CARRY(((\Con|Add1~145_combout\ & !\Con|Add2~132COUT1_166\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~145_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~117\,
	cin0 => \Con|Add2~132\,
	cin1 => \Con|Add2~132COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(29),
	cout0 => \Con|Add2~127\,
	cout1 => \Con|Add2~127COUT1_167\);

-- Location: LC_X4_Y10_N8
\Con|Random[30]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(30) = DFFEAS((\Con|Add1~160_combout\ $ (((!\Con|Add2~117\ & \Con|Add2~127\) # (\Con|Add2~117\ & \Con|Add2~127COUT1_167\)))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )
-- \Con|Add2~142\ = CARRY(((!\Con|Add2~127\) # (!\Con|Add1~160_combout\)))
-- \Con|Add2~142COUT1_168\ = CARRY(((!\Con|Add2~127COUT1_167\) # (!\Con|Add1~160_combout\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datab => \Con|Add1~160_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~117\,
	cin0 => \Con|Add2~127\,
	cin1 => \Con|Add2~127COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(30),
	cout0 => \Con|Add2~142\,
	cout1 => \Con|Add2~142COUT1_168\);

-- Location: LC_X4_Y9_N6
\Con|Add1~155\ : maxv_lcell
-- Equation(s):
-- \Con|Add1~155_combout\ = (((!\Con|Add1~147\ & \Con|Add1~162\) # (\Con|Add1~147\ & \Con|Add1~162COUT1_190\) $ (!\Con|Add0~155_combout\)))

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
	datad => \Con|Add0~155_combout\,
	cin => \Con|Add1~147\,
	cin0 => \Con|Add1~162\,
	cin1 => \Con|Add1~162COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Add1~155_combout\);

-- Location: LC_X4_Y10_N9
\Con|Random[31]\ : maxv_lcell
-- Equation(s):
-- \Con|Random\(31) = DFFEAS((((!\Con|Add2~117\ & \Con|Add2~142\) # (\Con|Add2~117\ & \Con|Add2~142COUT1_168\) $ (!\Con|Add1~155_combout\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|React[31]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datad => \Con|Add1~155_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|React[31]~0_combout\,
	cin => \Con|Add2~117\,
	cin0 => \Con|Add2~142\,
	cin1 => \Con|Add2~142COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|Random\(31));

-- Location: LC_X3_Y6_N8
\Con|Equal0~18\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~18_combout\ = (\Con|Random\(30) & (\Con|Add0~70_combout\ & (\Con|Random\(31) $ (!\Con|Add0~155_combout\)))) # (!\Con|Random\(30) & (!\Con|Add0~70_combout\ & (\Con|Random\(31) $ (!\Con|Add0~155_combout\))))

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
	dataa => \Con|Random\(30),
	datab => \Con|Random\(31),
	datac => \Con|Add0~70_combout\,
	datad => \Con|Add0~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~18_combout\);

-- Location: LC_X5_Y8_N1
\Con|Equal0~17\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~17_combout\ = (\Con|Random\(29) & (\Con|Add0~65_combout\ & (\Con|Random\(28) $ (!\Con|Add0~60_combout\)))) # (!\Con|Random\(29) & (!\Con|Add0~65_combout\ & (\Con|Random\(28) $ (!\Con|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|Random\(29),
	datab => \Con|Add0~65_combout\,
	datac => \Con|Random\(28),
	datad => \Con|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~17_combout\);

-- Location: LC_X5_Y8_N6
\Con|Equal0~16\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~16_combout\ = (\Con|Random\(27) & (\Con|Add0~55_combout\ & (\Con|Random\(26) $ (!\Con|Add0~150_combout\)))) # (!\Con|Random\(27) & (!\Con|Add0~55_combout\ & (\Con|Random\(26) $ (!\Con|Add0~150_combout\))))

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
	dataa => \Con|Random\(27),
	datab => \Con|Random\(26),
	datac => \Con|Add0~55_combout\,
	datad => \Con|Add0~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~16_combout\);

-- Location: LC_X2_Y6_N5
\Con|Equal0~19\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~19_combout\ = (\Con|Equal0~15_combout\ & (\Con|Equal0~18_combout\ & (\Con|Equal0~17_combout\ & \Con|Equal0~16_combout\)))

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
	dataa => \Con|Equal0~15_combout\,
	datab => \Con|Equal0~18_combout\,
	datac => \Con|Equal0~17_combout\,
	datad => \Con|Equal0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~19_combout\);

-- Location: LC_X2_Y6_N6
\Con|Equal0~20\ : maxv_lcell
-- Equation(s):
-- \Con|Equal0~20_combout\ = (\Con|Equal0~9_combout\ & (\Con|Equal0~4_combout\ & (\Con|Equal0~14_combout\ & \Con|Equal0~19_combout\)))

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
	dataa => \Con|Equal0~9_combout\,
	datab => \Con|Equal0~4_combout\,
	datac => \Con|Equal0~14_combout\,
	datad => \Con|Equal0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|Equal0~20_combout\);

-- Location: LC_X2_Y6_N0
\Con|LEDF\ : maxv_lcell
-- Equation(s):
-- \Con|LEDF~regout\ = DFFEAS((\Con|LEDF~regout\ & (((!\Con|LessThan1~3_combout\ & \Edge|W~0_combout\)))) # (!\Con|LEDF~regout\ & (\Con|Equal0~20_combout\)), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , , , , \Con|state.GON~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|Equal0~20_combout\,
	datab => \Con|LEDF~regout\,
	datac => \Con|LessThan1~3_combout\,
	datad => \Edge|W~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sclr => \Con|state.GON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|LEDF~regout\);

-- Location: LC_X10_Y4_N1
\Con|TimeClk\ : maxv_lcell
-- Equation(s):
-- \Con|TimeClk~combout\ = LCELL((\CH1|Output~regout\ & (((\Con|LEDF~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CH1|Output~regout\,
	datad => \Con|LEDF~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeClk~combout\);

-- Location: LC_X12_Y4_N4
\Con|TimeCount0|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~0_combout\ = ((!\Con|TimeCount0|no\(0)))
-- \Con|TimeCount0|Add0~2\ = CARRY(((\Con|TimeCount0|no\(0))))

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
	datab => \Con|TimeCount0|no\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~0_combout\,
	cout => \Con|TimeCount0|Add0~2\);

-- Location: LC_X12_Y4_N5
\Con|TimeCount0|Add0~155\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~155_combout\ = (\Con|TimeCount0|no\(1) $ ((\Con|TimeCount0|Add0~2\)))
-- \Con|TimeCount0|Add0~157\ = CARRY(((!\Con|TimeCount0|Add0~2\) # (!\Con|TimeCount0|no\(1))))
-- \Con|TimeCount0|Add0~157COUT1_161\ = CARRY(((!\Con|TimeCount0|Add0~2\) # (!\Con|TimeCount0|no\(1))))

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
	datab => \Con|TimeCount0|no\(1),
	cin => \Con|TimeCount0|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~155_combout\,
	cout0 => \Con|TimeCount0|Add0~157\,
	cout1 => \Con|TimeCount0|Add0~157COUT1_161\);

-- Location: LC_X12_Y4_N1
\Con|TimeCount0|no[1]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(1) = DFFEAS(((\Con|TimeCount0|Add0~155_combout\ & ((!\Con|TimeCount0|Equal8~1_combout\) # (!\Con|TimeCount0|no\(0))))), \Con|TimeClk~combout\, \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	dataa => \Con|TimeCount0|no\(0),
	datac => \Con|TimeCount0|Add0~155_combout\,
	datad => \Con|TimeCount0|Equal8~1_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(1));

-- Location: LC_X12_Y4_N6
\Con|TimeCount0|Add0~145\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~145_combout\ = (\Con|TimeCount0|no\(2) $ ((!(!\Con|TimeCount0|Add0~2\ & \Con|TimeCount0|Add0~157\) # (\Con|TimeCount0|Add0~2\ & \Con|TimeCount0|Add0~157COUT1_161\))))
-- \Con|TimeCount0|Add0~147\ = CARRY(((\Con|TimeCount0|no\(2) & !\Con|TimeCount0|Add0~157\)))
-- \Con|TimeCount0|Add0~147COUT1_162\ = CARRY(((\Con|TimeCount0|no\(2) & !\Con|TimeCount0|Add0~157COUT1_161\)))

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
	datab => \Con|TimeCount0|no\(2),
	cin => \Con|TimeCount0|Add0~2\,
	cin0 => \Con|TimeCount0|Add0~157\,
	cin1 => \Con|TimeCount0|Add0~157COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~145_combout\,
	cout0 => \Con|TimeCount0|Add0~147\,
	cout1 => \Con|TimeCount0|Add0~147COUT1_162\);

-- Location: LC_X12_Y4_N2
\Con|TimeCount0|no[2]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal8~0\ = (((!K1_no[2] & !\Con|TimeCount0|no\(1))))
-- \Con|TimeCount0|no\(2) = DFFEAS(\Con|TimeCount0|Equal8~0\, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~145_combout\,
	datad => \Con|TimeCount0|no\(1),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal8~0\,
	regout => \Con|TimeCount0|no\(2));

-- Location: LC_X12_Y4_N7
\Con|TimeCount0|Add0~150\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~150_combout\ = (\Con|TimeCount0|no\(3) $ (((!\Con|TimeCount0|Add0~2\ & \Con|TimeCount0|Add0~147\) # (\Con|TimeCount0|Add0~2\ & \Con|TimeCount0|Add0~147COUT1_162\))))
-- \Con|TimeCount0|Add0~152\ = CARRY(((!\Con|TimeCount0|Add0~147\) # (!\Con|TimeCount0|no\(3))))
-- \Con|TimeCount0|Add0~152COUT1_163\ = CARRY(((!\Con|TimeCount0|Add0~147COUT1_162\) # (!\Con|TimeCount0|no\(3))))

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
	datab => \Con|TimeCount0|no\(3),
	cin => \Con|TimeCount0|Add0~2\,
	cin0 => \Con|TimeCount0|Add0~147\,
	cin1 => \Con|TimeCount0|Add0~147COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~150_combout\,
	cout0 => \Con|TimeCount0|Add0~152\,
	cout1 => \Con|TimeCount0|Add0~152COUT1_163\);

-- Location: LC_X12_Y4_N0
\Con|TimeCount0|no[3]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(3) = DFFEAS(((\Con|TimeCount0|Add0~150_combout\ & ((!\Con|TimeCount0|Equal8~1_combout\) # (!\Con|TimeCount0|no\(0))))), \Con|TimeClk~combout\, \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	dataa => \Con|TimeCount0|no\(0),
	datac => \Con|TimeCount0|Add0~150_combout\,
	datad => \Con|TimeCount0|Equal8~1_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(3));

-- Location: LC_X12_Y4_N8
\Con|TimeCount0|Add0~140\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~140_combout\ = (\Con|TimeCount0|no\(4) $ ((!(!\Con|TimeCount0|Add0~2\ & \Con|TimeCount0|Add0~152\) # (\Con|TimeCount0|Add0~2\ & \Con|TimeCount0|Add0~152COUT1_163\))))
-- \Con|TimeCount0|Add0~142\ = CARRY(((\Con|TimeCount0|no\(4) & !\Con|TimeCount0|Add0~152\)))
-- \Con|TimeCount0|Add0~142COUT1_164\ = CARRY(((\Con|TimeCount0|no\(4) & !\Con|TimeCount0|Add0~152COUT1_163\)))

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
	datab => \Con|TimeCount0|no\(4),
	cin => \Con|TimeCount0|Add0~2\,
	cin0 => \Con|TimeCount0|Add0~152\,
	cin1 => \Con|TimeCount0|Add0~152COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~140_combout\,
	cout0 => \Con|TimeCount0|Add0~142\,
	cout1 => \Con|TimeCount0|Add0~142COUT1_164\);

-- Location: LC_X11_Y4_N4
\Con|TimeCount0|no[4]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(4) = DFFEAS((((\Con|TimeCount0|Add0~140_combout\))), \Con|TimeClk~combout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeClk~combout\,
	datad => \Con|TimeCount0|Add0~140_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(4));

-- Location: LC_X12_Y4_N9
\Con|TimeCount0|Add0~135\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~135_combout\ = \Con|TimeCount0|no\(5) $ (((((!\Con|TimeCount0|Add0~2\ & \Con|TimeCount0|Add0~142\) # (\Con|TimeCount0|Add0~2\ & \Con|TimeCount0|Add0~142COUT1_164\)))))
-- \Con|TimeCount0|Add0~137\ = CARRY(((!\Con|TimeCount0|Add0~142COUT1_164\)) # (!\Con|TimeCount0|no\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount0|no\(5),
	cin => \Con|TimeCount0|Add0~2\,
	cin0 => \Con|TimeCount0|Add0~142\,
	cin1 => \Con|TimeCount0|Add0~142COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~135_combout\,
	cout => \Con|TimeCount0|Add0~137\);

-- Location: LC_X12_Y4_N3
\Con|TimeCount0|no[5]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(5) = DFFEAS((((\Con|TimeCount0|Add0~135_combout\))), \Con|TimeClk~combout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeClk~combout\,
	datad => \Con|TimeCount0|Add0~135_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(5));

-- Location: LC_X13_Y4_N0
\Con|TimeCount0|Add0~130\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~130_combout\ = (\Con|TimeCount0|no\(6) $ ((!\Con|TimeCount0|Add0~137\)))
-- \Con|TimeCount0|Add0~132\ = CARRY(((\Con|TimeCount0|no\(6) & !\Con|TimeCount0|Add0~137\)))
-- \Con|TimeCount0|Add0~132COUT1_165\ = CARRY(((\Con|TimeCount0|no\(6) & !\Con|TimeCount0|Add0~137\)))

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
	datab => \Con|TimeCount0|no\(6),
	cin => \Con|TimeCount0|Add0~137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~130_combout\,
	cout0 => \Con|TimeCount0|Add0~132\,
	cout1 => \Con|TimeCount0|Add0~132COUT1_165\);

-- Location: LC_X9_Y4_N8
\Con|TimeCount0|no[6]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(6) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~130_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~130_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(6));

-- Location: LC_X13_Y4_N1
\Con|TimeCount0|Add0~125\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~125_combout\ = \Con|TimeCount0|no\(7) $ (((((!\Con|TimeCount0|Add0~137\ & \Con|TimeCount0|Add0~132\) # (\Con|TimeCount0|Add0~137\ & \Con|TimeCount0|Add0~132COUT1_165\)))))
-- \Con|TimeCount0|Add0~127\ = CARRY(((!\Con|TimeCount0|Add0~132\)) # (!\Con|TimeCount0|no\(7)))
-- \Con|TimeCount0|Add0~127COUT1_166\ = CARRY(((!\Con|TimeCount0|Add0~132COUT1_165\)) # (!\Con|TimeCount0|no\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount0|no\(7),
	cin => \Con|TimeCount0|Add0~137\,
	cin0 => \Con|TimeCount0|Add0~132\,
	cin1 => \Con|TimeCount0|Add0~132COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~125_combout\,
	cout0 => \Con|TimeCount0|Add0~127\,
	cout1 => \Con|TimeCount0|Add0~127COUT1_166\);

-- Location: LC_X10_Y4_N5
\Con|TimeCount0|no[7]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal0~7\ = (!\Con|TimeCount0|no\(6) & (!\Con|TimeCount0|no\(4) & (!K1_no[7] & !\Con|TimeCount0|no\(5))))
-- \Con|TimeCount0|no\(7) = DFFEAS(\Con|TimeCount0|Equal0~7\, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	dataa => \Con|TimeCount0|no\(6),
	datab => \Con|TimeCount0|no\(4),
	datac => \Con|TimeCount0|Add0~125_combout\,
	datad => \Con|TimeCount0|no\(5),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal0~7\,
	regout => \Con|TimeCount0|no\(7));

-- Location: LC_X13_Y4_N2
\Con|TimeCount0|Add0~120\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~120_combout\ = (\Con|TimeCount0|no\(8) $ ((!(!\Con|TimeCount0|Add0~137\ & \Con|TimeCount0|Add0~127\) # (\Con|TimeCount0|Add0~137\ & \Con|TimeCount0|Add0~127COUT1_166\))))
-- \Con|TimeCount0|Add0~122\ = CARRY(((\Con|TimeCount0|no\(8) & !\Con|TimeCount0|Add0~127\)))
-- \Con|TimeCount0|Add0~122COUT1_167\ = CARRY(((\Con|TimeCount0|no\(8) & !\Con|TimeCount0|Add0~127COUT1_166\)))

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
	datab => \Con|TimeCount0|no\(8),
	cin => \Con|TimeCount0|Add0~137\,
	cin0 => \Con|TimeCount0|Add0~127\,
	cin1 => \Con|TimeCount0|Add0~127COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~120_combout\,
	cout0 => \Con|TimeCount0|Add0~122\,
	cout1 => \Con|TimeCount0|Add0~122COUT1_167\);

-- Location: LC_X10_Y4_N9
\Con|TimeCount0|no[8]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(8) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~120_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~120_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(8));

-- Location: LC_X13_Y4_N3
\Con|TimeCount0|Add0~115\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~115_combout\ = (\Con|TimeCount0|no\(9) $ (((!\Con|TimeCount0|Add0~137\ & \Con|TimeCount0|Add0~122\) # (\Con|TimeCount0|Add0~137\ & \Con|TimeCount0|Add0~122COUT1_167\))))
-- \Con|TimeCount0|Add0~117\ = CARRY(((!\Con|TimeCount0|Add0~122\) # (!\Con|TimeCount0|no\(9))))
-- \Con|TimeCount0|Add0~117COUT1_168\ = CARRY(((!\Con|TimeCount0|Add0~122COUT1_167\) # (!\Con|TimeCount0|no\(9))))

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
	datab => \Con|TimeCount0|no\(9),
	cin => \Con|TimeCount0|Add0~137\,
	cin0 => \Con|TimeCount0|Add0~122\,
	cin1 => \Con|TimeCount0|Add0~122COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~115_combout\,
	cout0 => \Con|TimeCount0|Add0~117\,
	cout1 => \Con|TimeCount0|Add0~117COUT1_168\);

-- Location: LC_X9_Y4_N4
\Con|TimeCount0|no[9]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(9) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~115_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~115_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(9));

-- Location: LC_X13_Y4_N4
\Con|TimeCount0|Add0~110\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~110_combout\ = \Con|TimeCount0|no\(10) $ ((((!(!\Con|TimeCount0|Add0~137\ & \Con|TimeCount0|Add0~117\) # (\Con|TimeCount0|Add0~137\ & \Con|TimeCount0|Add0~117COUT1_168\)))))
-- \Con|TimeCount0|Add0~112\ = CARRY((\Con|TimeCount0|no\(10) & ((!\Con|TimeCount0|Add0~117COUT1_168\))))

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
	dataa => \Con|TimeCount0|no\(10),
	cin => \Con|TimeCount0|Add0~137\,
	cin0 => \Con|TimeCount0|Add0~117\,
	cin1 => \Con|TimeCount0|Add0~117COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~110_combout\,
	cout => \Con|TimeCount0|Add0~112\);

-- Location: LC_X9_Y4_N1
\Con|TimeCount0|no[10]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(10) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~110_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~110_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(10));

-- Location: LC_X10_Y4_N7
\Con|TimeCount0|no[11]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal0~6\ = (!\Con|TimeCount0|no\(10) & (!\Con|TimeCount0|no\(8) & (!K1_no[11] & !\Con|TimeCount0|no\(9))))
-- \Con|TimeCount0|no\(11) = DFFEAS(\Con|TimeCount0|Equal0~6\, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	dataa => \Con|TimeCount0|no\(10),
	datab => \Con|TimeCount0|no\(8),
	datac => \Con|TimeCount0|Add0~105_combout\,
	datad => \Con|TimeCount0|no\(9),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal0~6\,
	regout => \Con|TimeCount0|no\(11));

-- Location: LC_X13_Y4_N5
\Con|TimeCount0|Add0~105\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~105_combout\ = \Con|TimeCount0|no\(11) $ ((((\Con|TimeCount0|Add0~112\))))
-- \Con|TimeCount0|Add0~107\ = CARRY(((!\Con|TimeCount0|Add0~112\)) # (!\Con|TimeCount0|no\(11)))
-- \Con|TimeCount0|Add0~107COUT1_169\ = CARRY(((!\Con|TimeCount0|Add0~112\)) # (!\Con|TimeCount0|no\(11)))

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
	dataa => \Con|TimeCount0|no\(11),
	cin => \Con|TimeCount0|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~105_combout\,
	cout0 => \Con|TimeCount0|Add0~107\,
	cout1 => \Con|TimeCount0|Add0~107COUT1_169\);

-- Location: LC_X13_Y4_N6
\Con|TimeCount0|Add0~100\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~100_combout\ = \Con|TimeCount0|no\(12) $ ((((!(!\Con|TimeCount0|Add0~112\ & \Con|TimeCount0|Add0~107\) # (\Con|TimeCount0|Add0~112\ & \Con|TimeCount0|Add0~107COUT1_169\)))))
-- \Con|TimeCount0|Add0~102\ = CARRY((\Con|TimeCount0|no\(12) & ((!\Con|TimeCount0|Add0~107\))))
-- \Con|TimeCount0|Add0~102COUT1_170\ = CARRY((\Con|TimeCount0|no\(12) & ((!\Con|TimeCount0|Add0~107COUT1_169\))))

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
	dataa => \Con|TimeCount0|no\(12),
	cin => \Con|TimeCount0|Add0~112\,
	cin0 => \Con|TimeCount0|Add0~107\,
	cin1 => \Con|TimeCount0|Add0~107COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~100_combout\,
	cout0 => \Con|TimeCount0|Add0~102\,
	cout1 => \Con|TimeCount0|Add0~102COUT1_170\);

-- Location: LC_X10_Y4_N4
\Con|TimeCount0|no[12]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(12) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~100_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~100_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(12));

-- Location: LC_X13_Y4_N7
\Con|TimeCount0|Add0~95\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~95_combout\ = (\Con|TimeCount0|no\(13) $ (((!\Con|TimeCount0|Add0~112\ & \Con|TimeCount0|Add0~102\) # (\Con|TimeCount0|Add0~112\ & \Con|TimeCount0|Add0~102COUT1_170\))))
-- \Con|TimeCount0|Add0~97\ = CARRY(((!\Con|TimeCount0|Add0~102\) # (!\Con|TimeCount0|no\(13))))
-- \Con|TimeCount0|Add0~97COUT1_171\ = CARRY(((!\Con|TimeCount0|Add0~102COUT1_170\) # (!\Con|TimeCount0|no\(13))))

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
	datab => \Con|TimeCount0|no\(13),
	cin => \Con|TimeCount0|Add0~112\,
	cin0 => \Con|TimeCount0|Add0~102\,
	cin1 => \Con|TimeCount0|Add0~102COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~95_combout\,
	cout0 => \Con|TimeCount0|Add0~97\,
	cout1 => \Con|TimeCount0|Add0~97COUT1_171\);

-- Location: LC_X9_Y4_N6
\Con|TimeCount0|no[13]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(13) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~95_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~95_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(13));

-- Location: LC_X13_Y4_N8
\Con|TimeCount0|Add0~90\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~90_combout\ = (\Con|TimeCount0|no\(14) $ ((!(!\Con|TimeCount0|Add0~112\ & \Con|TimeCount0|Add0~97\) # (\Con|TimeCount0|Add0~112\ & \Con|TimeCount0|Add0~97COUT1_171\))))
-- \Con|TimeCount0|Add0~92\ = CARRY(((\Con|TimeCount0|no\(14) & !\Con|TimeCount0|Add0~97\)))
-- \Con|TimeCount0|Add0~92COUT1_172\ = CARRY(((\Con|TimeCount0|no\(14) & !\Con|TimeCount0|Add0~97COUT1_171\)))

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
	datab => \Con|TimeCount0|no\(14),
	cin => \Con|TimeCount0|Add0~112\,
	cin0 => \Con|TimeCount0|Add0~97\,
	cin1 => \Con|TimeCount0|Add0~97COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~90_combout\,
	cout0 => \Con|TimeCount0|Add0~92\,
	cout1 => \Con|TimeCount0|Add0~92COUT1_172\);

-- Location: LC_X10_Y4_N3
\Con|TimeCount0|no[14]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(14) = DFFEAS((((\Con|TimeCount0|Add0~90_combout\))), \Con|TimeClk~combout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeClk~combout\,
	datad => \Con|TimeCount0|Add0~90_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(14));

-- Location: LC_X10_Y4_N0
\Con|TimeCount0|no[15]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal0~5\ = (!\Con|TimeCount0|no\(12) & (!\Con|TimeCount0|no\(13) & (!K1_no[15] & !\Con|TimeCount0|no\(14))))
-- \Con|TimeCount0|no\(15) = DFFEAS(\Con|TimeCount0|Equal0~5\, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	dataa => \Con|TimeCount0|no\(12),
	datab => \Con|TimeCount0|no\(13),
	datac => \Con|TimeCount0|Add0~85_combout\,
	datad => \Con|TimeCount0|no\(14),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal0~5\,
	regout => \Con|TimeCount0|no\(15));

-- Location: LC_X13_Y4_N9
\Con|TimeCount0|Add0~85\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~85_combout\ = (\Con|TimeCount0|no\(15) $ (((!\Con|TimeCount0|Add0~112\ & \Con|TimeCount0|Add0~92\) # (\Con|TimeCount0|Add0~112\ & \Con|TimeCount0|Add0~92COUT1_172\))))
-- \Con|TimeCount0|Add0~87\ = CARRY(((!\Con|TimeCount0|Add0~92COUT1_172\) # (!\Con|TimeCount0|no\(15))))

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
	datab => \Con|TimeCount0|no\(15),
	cin => \Con|TimeCount0|Add0~112\,
	cin0 => \Con|TimeCount0|Add0~92\,
	cin1 => \Con|TimeCount0|Add0~92COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~85_combout\,
	cout => \Con|TimeCount0|Add0~87\);

-- Location: LC_X10_Y4_N6
\Con|TimeCount0|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal0~8_combout\ = ((\Con|TimeCount0|Equal0~6\ & (\Con|TimeCount0|Equal0~5\ & \Con|TimeCount0|Equal0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|TimeCount0|Equal0~6\,
	datac => \Con|TimeCount0|Equal0~5\,
	datad => \Con|TimeCount0|Equal0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal0~8_combout\);

-- Location: LC_X14_Y4_N0
\Con|TimeCount0|Add0~80\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~80_combout\ = (\Con|TimeCount0|no\(16) $ ((!\Con|TimeCount0|Add0~87\)))
-- \Con|TimeCount0|Add0~82\ = CARRY(((\Con|TimeCount0|no\(16) & !\Con|TimeCount0|Add0~87\)))
-- \Con|TimeCount0|Add0~82COUT1_173\ = CARRY(((\Con|TimeCount0|no\(16) & !\Con|TimeCount0|Add0~87\)))

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
	datab => \Con|TimeCount0|no\(16),
	cin => \Con|TimeCount0|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~80_combout\,
	cout0 => \Con|TimeCount0|Add0~82\,
	cout1 => \Con|TimeCount0|Add0~82COUT1_173\);

-- Location: LC_X16_Y4_N3
\Con|TimeCount0|no[16]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(16) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~80_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~80_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(16));

-- Location: LC_X14_Y4_N1
\Con|TimeCount0|Add0~75\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~75_combout\ = \Con|TimeCount0|no\(17) $ (((((!\Con|TimeCount0|Add0~87\ & \Con|TimeCount0|Add0~82\) # (\Con|TimeCount0|Add0~87\ & \Con|TimeCount0|Add0~82COUT1_173\)))))
-- \Con|TimeCount0|Add0~77\ = CARRY(((!\Con|TimeCount0|Add0~82\)) # (!\Con|TimeCount0|no\(17)))
-- \Con|TimeCount0|Add0~77COUT1_174\ = CARRY(((!\Con|TimeCount0|Add0~82COUT1_173\)) # (!\Con|TimeCount0|no\(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount0|no\(17),
	cin => \Con|TimeCount0|Add0~87\,
	cin0 => \Con|TimeCount0|Add0~82\,
	cin1 => \Con|TimeCount0|Add0~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~75_combout\,
	cout0 => \Con|TimeCount0|Add0~77\,
	cout1 => \Con|TimeCount0|Add0~77COUT1_174\);

-- Location: LC_X16_Y4_N1
\Con|TimeCount0|no[17]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(17) = DFFEAS((((\Con|TimeCount0|Add0~75_combout\))), \Con|TimeClk~combout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeClk~combout\,
	datad => \Con|TimeCount0|Add0~75_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(17));

-- Location: LC_X14_Y4_N2
\Con|TimeCount0|Add0~70\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~70_combout\ = (\Con|TimeCount0|no\(18) $ ((!(!\Con|TimeCount0|Add0~87\ & \Con|TimeCount0|Add0~77\) # (\Con|TimeCount0|Add0~87\ & \Con|TimeCount0|Add0~77COUT1_174\))))
-- \Con|TimeCount0|Add0~72\ = CARRY(((\Con|TimeCount0|no\(18) & !\Con|TimeCount0|Add0~77\)))
-- \Con|TimeCount0|Add0~72COUT1_175\ = CARRY(((\Con|TimeCount0|no\(18) & !\Con|TimeCount0|Add0~77COUT1_174\)))

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
	datab => \Con|TimeCount0|no\(18),
	cin => \Con|TimeCount0|Add0~87\,
	cin0 => \Con|TimeCount0|Add0~77\,
	cin1 => \Con|TimeCount0|Add0~77COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~70_combout\,
	cout0 => \Con|TimeCount0|Add0~72\,
	cout1 => \Con|TimeCount0|Add0~72COUT1_175\);

-- Location: LC_X16_Y4_N6
\Con|TimeCount0|no[18]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(18) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~70_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~70_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(18));

-- Location: LC_X14_Y4_N3
\Con|TimeCount0|Add0~65\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~65_combout\ = (\Con|TimeCount0|no\(19) $ (((!\Con|TimeCount0|Add0~87\ & \Con|TimeCount0|Add0~72\) # (\Con|TimeCount0|Add0~87\ & \Con|TimeCount0|Add0~72COUT1_175\))))
-- \Con|TimeCount0|Add0~67\ = CARRY(((!\Con|TimeCount0|Add0~72\) # (!\Con|TimeCount0|no\(19))))
-- \Con|TimeCount0|Add0~67COUT1_176\ = CARRY(((!\Con|TimeCount0|Add0~72COUT1_175\) # (!\Con|TimeCount0|no\(19))))

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
	datab => \Con|TimeCount0|no\(19),
	cin => \Con|TimeCount0|Add0~87\,
	cin0 => \Con|TimeCount0|Add0~72\,
	cin1 => \Con|TimeCount0|Add0~72COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~65_combout\,
	cout0 => \Con|TimeCount0|Add0~67\,
	cout1 => \Con|TimeCount0|Add0~67COUT1_176\);

-- Location: LC_X16_Y4_N9
\Con|TimeCount0|no[19]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal0~3\ = (!\Con|TimeCount0|no\(16) & (!\Con|TimeCount0|no\(17) & (!K1_no[19] & !\Con|TimeCount0|no\(18))))
-- \Con|TimeCount0|no\(19) = DFFEAS(\Con|TimeCount0|Equal0~3\, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	dataa => \Con|TimeCount0|no\(16),
	datab => \Con|TimeCount0|no\(17),
	datac => \Con|TimeCount0|Add0~65_combout\,
	datad => \Con|TimeCount0|no\(18),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal0~3\,
	regout => \Con|TimeCount0|no\(19));

-- Location: LC_X14_Y4_N4
\Con|TimeCount0|Add0~60\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~60_combout\ = (\Con|TimeCount0|no\(20) $ ((!(!\Con|TimeCount0|Add0~87\ & \Con|TimeCount0|Add0~67\) # (\Con|TimeCount0|Add0~87\ & \Con|TimeCount0|Add0~67COUT1_176\))))
-- \Con|TimeCount0|Add0~62\ = CARRY(((\Con|TimeCount0|no\(20) & !\Con|TimeCount0|Add0~67COUT1_176\)))

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
	datab => \Con|TimeCount0|no\(20),
	cin => \Con|TimeCount0|Add0~87\,
	cin0 => \Con|TimeCount0|Add0~67\,
	cin1 => \Con|TimeCount0|Add0~67COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~60_combout\,
	cout => \Con|TimeCount0|Add0~62\);

-- Location: LC_X9_Y4_N7
\Con|TimeCount0|no[20]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(20) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~60_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~60_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(20));

-- Location: LC_X14_Y4_N5
\Con|TimeCount0|Add0~55\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~55_combout\ = \Con|TimeCount0|no\(21) $ ((((\Con|TimeCount0|Add0~62\))))
-- \Con|TimeCount0|Add0~57\ = CARRY(((!\Con|TimeCount0|Add0~62\)) # (!\Con|TimeCount0|no\(21)))
-- \Con|TimeCount0|Add0~57COUT1_177\ = CARRY(((!\Con|TimeCount0|Add0~62\)) # (!\Con|TimeCount0|no\(21)))

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
	dataa => \Con|TimeCount0|no\(21),
	cin => \Con|TimeCount0|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~55_combout\,
	cout0 => \Con|TimeCount0|Add0~57\,
	cout1 => \Con|TimeCount0|Add0~57COUT1_177\);

-- Location: LC_X9_Y4_N0
\Con|TimeCount0|no[21]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(21) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~55_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~55_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(21));

-- Location: LC_X14_Y4_N6
\Con|TimeCount0|Add0~50\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~50_combout\ = (\Con|TimeCount0|no\(22) $ ((!(!\Con|TimeCount0|Add0~62\ & \Con|TimeCount0|Add0~57\) # (\Con|TimeCount0|Add0~62\ & \Con|TimeCount0|Add0~57COUT1_177\))))
-- \Con|TimeCount0|Add0~52\ = CARRY(((\Con|TimeCount0|no\(22) & !\Con|TimeCount0|Add0~57\)))
-- \Con|TimeCount0|Add0~52COUT1_178\ = CARRY(((\Con|TimeCount0|no\(22) & !\Con|TimeCount0|Add0~57COUT1_177\)))

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
	datab => \Con|TimeCount0|no\(22),
	cin => \Con|TimeCount0|Add0~62\,
	cin0 => \Con|TimeCount0|Add0~57\,
	cin1 => \Con|TimeCount0|Add0~57COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~50_combout\,
	cout0 => \Con|TimeCount0|Add0~52\,
	cout1 => \Con|TimeCount0|Add0~52COUT1_178\);

-- Location: LC_X9_Y4_N5
\Con|TimeCount0|no[22]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(22) = DFFEAS((((\Con|TimeCount0|Add0~50_combout\))), \Con|TimeClk~combout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeClk~combout\,
	datad => \Con|TimeCount0|Add0~50_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(22));

-- Location: LC_X10_Y4_N8
\Con|TimeCount0|no[23]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal0~2\ = (!\Con|TimeCount0|no\(21) & (!\Con|TimeCount0|no\(20) & (!K1_no[23] & !\Con|TimeCount0|no\(22))))
-- \Con|TimeCount0|no\(23) = DFFEAS(\Con|TimeCount0|Equal0~2\, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	dataa => \Con|TimeCount0|no\(21),
	datab => \Con|TimeCount0|no\(20),
	datac => \Con|TimeCount0|Add0~45_combout\,
	datad => \Con|TimeCount0|no\(22),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal0~2\,
	regout => \Con|TimeCount0|no\(23));

-- Location: LC_X14_Y4_N7
\Con|TimeCount0|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~45_combout\ = \Con|TimeCount0|no\(23) $ (((((!\Con|TimeCount0|Add0~62\ & \Con|TimeCount0|Add0~52\) # (\Con|TimeCount0|Add0~62\ & \Con|TimeCount0|Add0~52COUT1_178\)))))
-- \Con|TimeCount0|Add0~47\ = CARRY(((!\Con|TimeCount0|Add0~52\)) # (!\Con|TimeCount0|no\(23)))
-- \Con|TimeCount0|Add0~47COUT1_179\ = CARRY(((!\Con|TimeCount0|Add0~52COUT1_178\)) # (!\Con|TimeCount0|no\(23)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount0|no\(23),
	cin => \Con|TimeCount0|Add0~62\,
	cin0 => \Con|TimeCount0|Add0~52\,
	cin1 => \Con|TimeCount0|Add0~52COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~45_combout\,
	cout0 => \Con|TimeCount0|Add0~47\,
	cout1 => \Con|TimeCount0|Add0~47COUT1_179\);

-- Location: LC_X14_Y4_N8
\Con|TimeCount0|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~40_combout\ = (\Con|TimeCount0|no\(24) $ ((!(!\Con|TimeCount0|Add0~62\ & \Con|TimeCount0|Add0~47\) # (\Con|TimeCount0|Add0~62\ & \Con|TimeCount0|Add0~47COUT1_179\))))
-- \Con|TimeCount0|Add0~42\ = CARRY(((\Con|TimeCount0|no\(24) & !\Con|TimeCount0|Add0~47\)))
-- \Con|TimeCount0|Add0~42COUT1_180\ = CARRY(((\Con|TimeCount0|no\(24) & !\Con|TimeCount0|Add0~47COUT1_179\)))

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
	datab => \Con|TimeCount0|no\(24),
	cin => \Con|TimeCount0|Add0~62\,
	cin0 => \Con|TimeCount0|Add0~47\,
	cin1 => \Con|TimeCount0|Add0~47COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~40_combout\,
	cout0 => \Con|TimeCount0|Add0~42\,
	cout1 => \Con|TimeCount0|Add0~42COUT1_180\);

-- Location: LC_X16_Y4_N8
\Con|TimeCount0|no[24]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(24) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~40_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~40_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(24));

-- Location: LC_X14_Y4_N9
\Con|TimeCount0|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~35_combout\ = (\Con|TimeCount0|no\(25) $ (((!\Con|TimeCount0|Add0~62\ & \Con|TimeCount0|Add0~42\) # (\Con|TimeCount0|Add0~62\ & \Con|TimeCount0|Add0~42COUT1_180\))))
-- \Con|TimeCount0|Add0~37\ = CARRY(((!\Con|TimeCount0|Add0~42COUT1_180\) # (!\Con|TimeCount0|no\(25))))

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
	datab => \Con|TimeCount0|no\(25),
	cin => \Con|TimeCount0|Add0~62\,
	cin0 => \Con|TimeCount0|Add0~42\,
	cin1 => \Con|TimeCount0|Add0~42COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~35_combout\,
	cout => \Con|TimeCount0|Add0~37\);

-- Location: LC_X16_Y4_N4
\Con|TimeCount0|no[25]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(25) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~35_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~35_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(25));

-- Location: LC_X15_Y4_N0
\Con|TimeCount0|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~30_combout\ = (\Con|TimeCount0|no\(26) $ ((!\Con|TimeCount0|Add0~37\)))
-- \Con|TimeCount0|Add0~32\ = CARRY(((\Con|TimeCount0|no\(26) & !\Con|TimeCount0|Add0~37\)))
-- \Con|TimeCount0|Add0~32COUT1_181\ = CARRY(((\Con|TimeCount0|no\(26) & !\Con|TimeCount0|Add0~37\)))

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
	datab => \Con|TimeCount0|no\(26),
	cin => \Con|TimeCount0|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~30_combout\,
	cout0 => \Con|TimeCount0|Add0~32\,
	cout1 => \Con|TimeCount0|Add0~32COUT1_181\);

-- Location: LC_X15_Y4_N6
\Con|TimeCount0|no[26]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(26) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~30_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~30_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(26));

-- Location: LC_X15_Y4_N1
\Con|TimeCount0|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~25_combout\ = \Con|TimeCount0|no\(27) $ (((((!\Con|TimeCount0|Add0~37\ & \Con|TimeCount0|Add0~32\) # (\Con|TimeCount0|Add0~37\ & \Con|TimeCount0|Add0~32COUT1_181\)))))
-- \Con|TimeCount0|Add0~27\ = CARRY(((!\Con|TimeCount0|Add0~32\)) # (!\Con|TimeCount0|no\(27)))
-- \Con|TimeCount0|Add0~27COUT1_182\ = CARRY(((!\Con|TimeCount0|Add0~32COUT1_181\)) # (!\Con|TimeCount0|no\(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount0|no\(27),
	cin => \Con|TimeCount0|Add0~37\,
	cin0 => \Con|TimeCount0|Add0~32\,
	cin1 => \Con|TimeCount0|Add0~32COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~25_combout\,
	cout0 => \Con|TimeCount0|Add0~27\,
	cout1 => \Con|TimeCount0|Add0~27COUT1_182\);

-- Location: LC_X15_Y4_N8
\Con|TimeCount0|no[27]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal0~1\ = (!\Con|TimeCount0|no\(26) & (!\Con|TimeCount0|no\(25) & (!K1_no[27] & !\Con|TimeCount0|no\(24))))
-- \Con|TimeCount0|no\(27) = DFFEAS(\Con|TimeCount0|Equal0~1\, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	dataa => \Con|TimeCount0|no\(26),
	datab => \Con|TimeCount0|no\(25),
	datac => \Con|TimeCount0|Add0~25_combout\,
	datad => \Con|TimeCount0|no\(24),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal0~1\,
	regout => \Con|TimeCount0|no\(27));

-- Location: LC_X15_Y4_N2
\Con|TimeCount0|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~20_combout\ = (\Con|TimeCount0|no\(28) $ ((!(!\Con|TimeCount0|Add0~37\ & \Con|TimeCount0|Add0~27\) # (\Con|TimeCount0|Add0~37\ & \Con|TimeCount0|Add0~27COUT1_182\))))
-- \Con|TimeCount0|Add0~22\ = CARRY(((\Con|TimeCount0|no\(28) & !\Con|TimeCount0|Add0~27\)))
-- \Con|TimeCount0|Add0~22COUT1_183\ = CARRY(((\Con|TimeCount0|no\(28) & !\Con|TimeCount0|Add0~27COUT1_182\)))

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
	datab => \Con|TimeCount0|no\(28),
	cin => \Con|TimeCount0|Add0~37\,
	cin0 => \Con|TimeCount0|Add0~27\,
	cin1 => \Con|TimeCount0|Add0~27COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~20_combout\,
	cout0 => \Con|TimeCount0|Add0~22\,
	cout1 => \Con|TimeCount0|Add0~22COUT1_183\);

-- Location: LC_X16_Y4_N7
\Con|TimeCount0|no[28]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(28) = DFFEAS((((\Con|TimeCount0|Add0~20_combout\))), \Con|TimeClk~combout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeClk~combout\,
	datad => \Con|TimeCount0|Add0~20_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(28));

-- Location: LC_X15_Y4_N3
\Con|TimeCount0|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~15_combout\ = \Con|TimeCount0|no\(29) $ (((((!\Con|TimeCount0|Add0~37\ & \Con|TimeCount0|Add0~22\) # (\Con|TimeCount0|Add0~37\ & \Con|TimeCount0|Add0~22COUT1_183\)))))
-- \Con|TimeCount0|Add0~17\ = CARRY(((!\Con|TimeCount0|Add0~22\)) # (!\Con|TimeCount0|no\(29)))
-- \Con|TimeCount0|Add0~17COUT1_184\ = CARRY(((!\Con|TimeCount0|Add0~22COUT1_183\)) # (!\Con|TimeCount0|no\(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount0|no\(29),
	cin => \Con|TimeCount0|Add0~37\,
	cin0 => \Con|TimeCount0|Add0~22\,
	cin1 => \Con|TimeCount0|Add0~22COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~15_combout\,
	cout0 => \Con|TimeCount0|Add0~17\,
	cout1 => \Con|TimeCount0|Add0~17COUT1_184\);

-- Location: LC_X16_Y4_N5
\Con|TimeCount0|no[29]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(29) = DFFEAS((((\Con|TimeCount0|Add0~15_combout\))), \Con|TimeClk~combout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeClk~combout\,
	datad => \Con|TimeCount0|Add0~15_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(29));

-- Location: LC_X15_Y4_N4
\Con|TimeCount0|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~10_combout\ = (\Con|TimeCount0|no\(30) $ ((!(!\Con|TimeCount0|Add0~37\ & \Con|TimeCount0|Add0~17\) # (\Con|TimeCount0|Add0~37\ & \Con|TimeCount0|Add0~17COUT1_184\))))
-- \Con|TimeCount0|Add0~12\ = CARRY(((\Con|TimeCount0|no\(30) & !\Con|TimeCount0|Add0~17COUT1_184\)))

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
	datab => \Con|TimeCount0|no\(30),
	cin => \Con|TimeCount0|Add0~37\,
	cin0 => \Con|TimeCount0|Add0~17\,
	cin1 => \Con|TimeCount0|Add0~17COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~10_combout\,
	cout => \Con|TimeCount0|Add0~12\);

-- Location: LC_X15_Y4_N9
\Con|TimeCount0|no[30]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|no\(30) = DFFEAS(GND, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~10_combout\, , , VCC)

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
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|Add0~10_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|no\(30));

-- Location: LC_X15_Y4_N7
\Con|TimeCount0|no[31]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal0~0\ = (!\Con|TimeCount0|no\(28) & (!\Con|TimeCount0|no\(30) & (!K1_no[31] & !\Con|TimeCount0|no\(29))))
-- \Con|TimeCount0|no\(31) = DFFEAS(\Con|TimeCount0|Equal0~0\, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	dataa => \Con|TimeCount0|no\(28),
	datab => \Con|TimeCount0|no\(30),
	datac => \Con|TimeCount0|Add0~5_combout\,
	datad => \Con|TimeCount0|no\(29),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal0~0\,
	regout => \Con|TimeCount0|no\(31));

-- Location: LC_X15_Y4_N5
\Con|TimeCount0|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Add0~5_combout\ = (\Con|TimeCount0|no\(31) $ ((\Con|TimeCount0|Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|TimeCount0|no\(31),
	cin => \Con|TimeCount0|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Add0~5_combout\);

-- Location: LC_X11_Y4_N8
\Con|TimeCount0|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal0~4_combout\ = (\Con|TimeCount0|Equal0~2\ & (\Con|TimeCount0|Equal0~3\ & (\Con|TimeCount0|Equal0~0\ & \Con|TimeCount0|Equal0~1\)))

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
	dataa => \Con|TimeCount0|Equal0~2\,
	datab => \Con|TimeCount0|Equal0~3\,
	datac => \Con|TimeCount0|Equal0~0\,
	datad => \Con|TimeCount0|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal0~4_combout\);

-- Location: LC_X11_Y4_N7
\Con|TimeCount0|Equal8~1\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal8~1_combout\ = (\Con|TimeCount0|no\(3) & (\Con|TimeCount0|Equal8~0\ & (\Con|TimeCount0|Equal0~8_combout\ & \Con|TimeCount0|Equal0~4_combout\)))

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
	dataa => \Con|TimeCount0|no\(3),
	datab => \Con|TimeCount0|Equal8~0\,
	datac => \Con|TimeCount0|Equal0~8_combout\,
	datad => \Con|TimeCount0|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal8~1_combout\);

-- Location: LC_X11_Y4_N3
\Con|TimeCount0|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal0~9_combout\ = (!\Con|TimeCount0|no\(2) & (!\Con|TimeCount0|no\(3) & (\Con|TimeCount0|Equal0~8_combout\ & \Con|TimeCount0|Equal0~4_combout\)))

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
	dataa => \Con|TimeCount0|no\(2),
	datab => \Con|TimeCount0|no\(3),
	datac => \Con|TimeCount0|Equal0~8_combout\,
	datad => \Con|TimeCount0|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal0~9_combout\);

-- Location: LC_X11_Y4_N9
\Con|TimeCount0|Equal4~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|Equal4~0_combout\ = (!\Con|TimeCount0|no\(3) & (\Con|TimeCount0|no\(2) & (\Con|TimeCount0|Equal0~8_combout\ & \Con|TimeCount0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount0|no\(3),
	datab => \Con|TimeCount0|no\(2),
	datac => \Con|TimeCount0|Equal0~8_combout\,
	datad => \Con|TimeCount0|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount0|Equal4~0_combout\);

-- Location: LC_X13_Y6_N2
\Con|TimeCount0|no[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_data~63\ = (K1_no[0]) # ((!\Con|TimeCount0|Equal8~1_combout\ & (!\Con|TimeCount0|Equal0~9_combout\ & !\Con|TimeCount0|Equal4~0_combout\)))
-- \Con|TimeCount0|no\(0) = DFFEAS(\lcd_data~63\, \Con|TimeClk~combout\, \NReset~combout\, , , \Con|TimeCount0|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f1",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	dataa => \Con|TimeCount0|Equal8~1_combout\,
	datab => \Con|TimeCount0|Equal0~9_combout\,
	datac => \Con|TimeCount0|Add0~0_combout\,
	datad => \Con|TimeCount0|Equal4~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~63\,
	regout => \Con|TimeCount0|no\(0));

-- Location: LC_X10_Y4_N2
\Con|TimeCount0|car\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount0|car~regout\ = DFFEAS((((\Con|TimeCount0|no\(0) & \Con|TimeCount0|Equal8~1_combout\))), \Con|TimeClk~combout\, VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeClk~combout\,
	datac => \Con|TimeCount0|no\(0),
	datad => \Con|TimeCount0|Equal8~1_combout\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount0|car~regout\);

-- Location: LC_X7_Y4_N6
\CH|Output\ : maxv_lcell
-- Equation(s):
-- \CH|Output~regout\ = DFFEAS(\CH|Output~regout\ $ ((((\CH|Equal0~4_combout\ & \CH|Equal0~9_combout\)))), GLOBAL(\CLK~combout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \CH|Output~regout\,
	datac => \CH|Equal0~4_combout\,
	datad => \CH|Equal0~9_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CH|Output~regout\);

-- Location: LC_X11_Y6_N8
\col~16\ : maxv_lcell
-- Equation(s):
-- \col~16_combout\ = (!col(3) & (col(2) $ (((col(0)) # (col(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0306",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(0),
	datab => col(2),
	datac => col(3),
	datad => col(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~16_combout\);

-- Location: LC_X11_Y6_N5
\col~15\ : maxv_lcell
-- Equation(s):
-- \col~15_combout\ = (col(3) & ((col(1)) # ((col(0))))) # (!col(3) & (!col(1) & (!col(0) & !\col~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(3),
	datab => col(1),
	datac => col(0),
	datad => \col~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~15_combout\);

-- Location: LC_X12_Y6_N0
\col[2]~14\ : maxv_lcell
-- Equation(s):
-- \col[2]~14_combout\ = (col(2) $ (((col(0)) # (col(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => col(0),
	datac => col(2),
	datad => col(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col[2]~14_combout\);

-- Location: LC_X6_Y4_N5
\LCD1|count_cmd[2]~0\ : maxv_lcell
-- Equation(s):
-- \LCD1|count_cmd[2]~0_combout\ = (((\LCD1|state.S2~regout\) # (!\NReset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \LCD1|state.S2~regout\,
	datad => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|count_cmd[2]~0_combout\);

-- Location: LC_X6_Y5_N2
\LCD1|state.S0\ : maxv_lcell
-- Equation(s):
-- \LCD1|state.S0~regout\ = DFFEAS((((!\LCD1|count_cmd[2]~0_combout\))), GLOBAL(\CH|Output~regout\), VCC, , , , , , )

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
	clk => \CH|Output~regout\,
	datad => \LCD1|count_cmd[2]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|state.S0~regout\);

-- Location: LC_X6_Y4_N1
\LCD1|state.S1\ : maxv_lcell
-- Equation(s):
-- \LCD1|state.S1~regout\ = DFFEAS((!\LCD1|state.S0~regout\ & (\NReset~combout\ & ((\LCD1|LessThan0~0_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , , , , , )

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
	clk => \CH|Output~regout\,
	dataa => \LCD1|state.S0~regout\,
	datab => \NReset~combout\,
	datad => \LCD1|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|state.S1~regout\);

-- Location: LC_X6_Y4_N6
\LCD1|state.S2\ : maxv_lcell
-- Equation(s):
-- \LCD1|state.S2~regout\ = DFFEAS(((\LCD1|state.S1~regout\ & ((\NReset~combout\)))), GLOBAL(\CH|Output~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datab => \LCD1|state.S1~regout\,
	datad => \NReset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|state.S2~regout\);

-- Location: LC_X5_Y5_N7
\LCD1|count_cmd[0]\ : maxv_lcell
-- Equation(s):
-- \LCD1|count_cmd\(0) = DFFEAS(((\LCD1|count_cmd\(0) $ (\LCD1|state.S2~regout\))), GLOBAL(\CH|Output~regout\), VCC, , , , , !\NReset~combout\, )

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
	clk => \CH|Output~regout\,
	datac => \LCD1|count_cmd\(0),
	datad => \LCD1|state.S2~regout\,
	aclr => GND,
	sclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|count_cmd\(0));

-- Location: LC_X4_Y5_N2
\LCD1|count_cmd[1]\ : maxv_lcell
-- Equation(s):
-- \LCD1|count_cmd\(1) = DFFEAS((\LCD1|count_cmd\(0) $ (((\LCD1|count_cmd\(1))))), GLOBAL(\CH|Output~regout\), VCC, , \LCD1|count_cmd[2]~0_combout\, , , !\NReset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datab => \LCD1|count_cmd\(0),
	datad => \LCD1|count_cmd\(1),
	aclr => GND,
	sclr => \ALT_INV_NReset~combout\,
	ena => \LCD1|count_cmd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|count_cmd\(1));

-- Location: LC_X4_Y5_N8
\LCD1|count_cmd[2]\ : maxv_lcell
-- Equation(s):
-- \LCD1|count_cmd\(2) = DFFEAS((\LCD1|count_cmd\(2) $ (((\LCD1|count_cmd\(1) & \LCD1|count_cmd\(0))))), GLOBAL(\CH|Output~regout\), VCC, , \LCD1|count_cmd[2]~0_combout\, , , !\NReset~combout\, )

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
	clk => \CH|Output~regout\,
	datab => \LCD1|count_cmd\(1),
	datac => \LCD1|count_cmd\(0),
	datad => \LCD1|count_cmd\(2),
	aclr => GND,
	sclr => \ALT_INV_NReset~combout\,
	ena => \LCD1|count_cmd[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|count_cmd\(2));

-- Location: LC_X5_Y5_N1
\LCD1|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LCD1|LessThan0~0_combout\ = (((!\LCD1|count_cmd\(0) & !\LCD1|count_cmd\(1)))) # (!\LCD1|count_cmd\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "555f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD1|count_cmd\(2),
	datac => \LCD1|count_cmd\(0),
	datad => \LCD1|count_cmd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|LessThan0~0_combout\);

-- Location: LC_X4_Y5_N6
\LCD1|state.S9\ : maxv_lcell
-- Equation(s):
-- \LCD1|state.S9~regout\ = DFFEAS((((\NReset~combout\ & \LCD1|state.S8~regout\))), GLOBAL(\CH|Output~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datac => \NReset~combout\,
	datad => \LCD1|state.S8~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|state.S9~regout\);

-- Location: LC_X4_Y5_N0
\LCD1|state.S3\ : maxv_lcell
-- Equation(s):
-- \LCD1|state.S3~regout\ = DFFEAS((\NReset~combout\ & ((\LCD1|state.S9~regout\) # ((!\LCD1|state.S0~regout\ & !\LCD1|LessThan0~0_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0b0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|state.S9~regout\,
	datab => \LCD1|state.S0~regout\,
	datac => \NReset~combout\,
	datad => \LCD1|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|state.S3~regout\);

-- Location: LC_X5_Y8_N9
\LCD1|state.S4\ : maxv_lcell
-- Equation(s):
-- \LCD1|state.S4~regout\ = DFFEAS(((\NReset~combout\ & ((\LCD1|state.S3~regout\)))), GLOBAL(\CH|Output~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datab => \NReset~combout\,
	datad => \LCD1|state.S3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|state.S4~regout\);

-- Location: LC_X5_Y8_N2
\LCD1|state.S5\ : maxv_lcell
-- Equation(s):
-- \LCD1|state.S5~regout\ = DFFEAS(((\NReset~combout\ & ((\LCD1|state.S4~regout\)))), GLOBAL(\CH|Output~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datab => \NReset~combout\,
	datad => \LCD1|state.S4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|state.S5~regout\);

-- Location: LC_X5_Y8_N8
\LCD1|state.S6\ : maxv_lcell
-- Equation(s):
-- \LCD1|state.S6~regout\ = DFFEAS(((\NReset~combout\ & (\LCD1|state.S5~regout\))), GLOBAL(\CH|Output~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datab => \NReset~combout\,
	datac => \LCD1|state.S5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|state.S6~regout\);

-- Location: LC_X5_Y8_N4
\LCD1|state.S7\ : maxv_lcell
-- Equation(s):
-- \LCD1|state~32\ = ((\NReset~combout\ & ((\LCD1|state.S6~regout\))))
-- \LCD1|state.S7~regout\ = DFFEAS(\LCD1|state~32\, GLOBAL(\CH|Output~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datab => \NReset~combout\,
	datad => \LCD1|state.S6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|state~32\,
	regout => \LCD1|state.S7~regout\);

-- Location: LC_X5_Y8_N3
\LCD1|state.S8\ : maxv_lcell
-- Equation(s):
-- \LCD1|state.S8~regout\ = DFFEAS(((\NReset~combout\ & (\LCD1|state.S7~regout\))), GLOBAL(\CH|Output~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datab => \NReset~combout\,
	datac => \LCD1|state.S7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|state.S8~regout\);

-- Location: LC_X4_Y5_N9
\LCD1|ack\ : maxv_lcell
-- Equation(s):
-- \LCD1|ack~regout\ = DFFEAS((\LCD1|state.S8~regout\) # ((!\LCD1|LessThan0~0_combout\ & (J1_ack & !\LCD1|state.S0~regout\))), GLOBAL(\CH|Output~regout\), VCC, , , , , !\NReset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccdc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|LessThan0~0_combout\,
	datab => \LCD1|state.S8~regout\,
	datad => \LCD1|state.S0~regout\,
	aclr => GND,
	sclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|ack~regout\);

-- Location: LC_X4_Y5_N5
\lcd_data~16\ : maxv_lcell
-- Equation(s):
-- \lcd_data~16_combout\ = (((\LCD1|ack~regout\) # (!\NReset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \NReset~combout\,
	datad => \LCD1|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~16_combout\);

-- Location: LC_X11_Y4_N0
\col[3]\ : maxv_lcell
-- Equation(s):
-- col(3) = DFFEAS(((\col[2]~14_combout\ & ((!\col~16_combout\))) # (!\col[2]~14_combout\ & (\col~15_combout\))), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, VCC, , , !\NReset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \col~15_combout\,
	datab => \col~16_combout\,
	datac => VCC,
	datad => \col[2]~14_combout\,
	aclr => GND,
	sload => \ALT_INV_NReset~combout\,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => col(3));

-- Location: LC_X16_Y6_N7
\col~10\ : maxv_lcell
-- Equation(s):
-- \col~10_combout\ = (col(2) & (((!col(0))))) # (!col(2) & ((col(3) & ((!col(0)))) # (!col(3) & (col(1) & col(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(1),
	datab => col(2),
	datac => col(3),
	datad => col(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~10_combout\);

-- Location: LC_X16_Y6_N8
\col~11\ : maxv_lcell
-- Equation(s):
-- \col~11_combout\ = (col(0) & ((col(2) & ((!col(3)))) # (!col(2) & ((col(1)) # (col(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(1),
	datab => col(2),
	datac => col(3),
	datad => col(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~11_combout\);

-- Location: LC_X16_Y6_N9
\col[1]\ : maxv_lcell
-- Equation(s):
-- col(1) = DFFEAS(((col(1) & ((\col~11_combout\))) # (!col(1) & (\col~10_combout\))), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, , , !\NReset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datab => col(1),
	datac => \col~10_combout\,
	datad => \col~11_combout\,
	aclr => GND,
	sclr => \ALT_INV_NReset~combout\,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => col(1));

-- Location: LC_X11_Y6_N2
\col~12\ : maxv_lcell
-- Equation(s):
-- \col~12_combout\ = (col(0)) # ((col(1)) # ((!\col~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(0),
	datab => col(1),
	datad => \col~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~12_combout\);

-- Location: LC_X11_Y6_N7
\col~13\ : maxv_lcell
-- Equation(s):
-- \col~13_combout\ = ((col(3)) # ((\col~16_combout\)))

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
	datab => col(3),
	datad => \col~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~13_combout\);

-- Location: LC_X12_Y8_N6
\col[2]\ : maxv_lcell
-- Equation(s):
-- col(2) = DFFEAS(((\col[2]~14_combout\ & ((!\col~13_combout\))) # (!\col[2]~14_combout\ & (\col~12_combout\))), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, VCC, , , !\NReset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \col~12_combout\,
	datab => \col~13_combout\,
	datac => VCC,
	datad => \col[2]~14_combout\,
	aclr => GND,
	sload => \ALT_INV_NReset~combout\,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => col(2));

-- Location: LC_X16_Y6_N2
\col~8\ : maxv_lcell
-- Equation(s):
-- \col~8_combout\ = ((col(2) & ((!col(3)) # (!col(1)))) # (!col(2) & ((col(1)) # (col(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => col(2),
	datac => col(1),
	datad => col(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col~8_combout\);

-- Location: LC_X12_Y6_N7
\col[0]\ : maxv_lcell
-- Equation(s):
-- col(0) = DFFEAS(((\NReset~combout\ & (!col(0) & \col~8_combout\))), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, , , , )

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
	clk => \CH|Output~regout\,
	datab => \NReset~combout\,
	datac => col(0),
	datad => \col~8_combout\,
	aclr => GND,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => col(0));

-- Location: LC_X8_Y7_N4
\Con|TimeCount1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~0_combout\ = ((!\Con|TimeCount1|no\(0)))
-- \Con|TimeCount1|Add0~2\ = CARRY(((\Con|TimeCount1|no\(0))))

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
	datab => \Con|TimeCount1|no\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~0_combout\,
	cout => \Con|TimeCount1|Add0~2\);

-- Location: LC_X8_Y7_N5
\Con|TimeCount1|Add0~155\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~155_combout\ = (\Con|TimeCount1|no\(1) $ ((\Con|TimeCount1|Add0~2\)))
-- \Con|TimeCount1|Add0~157\ = CARRY(((!\Con|TimeCount1|Add0~2\) # (!\Con|TimeCount1|no\(1))))
-- \Con|TimeCount1|Add0~157COUT1_161\ = CARRY(((!\Con|TimeCount1|Add0~2\) # (!\Con|TimeCount1|no\(1))))

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
	datab => \Con|TimeCount1|no\(1),
	cin => \Con|TimeCount1|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~155_combout\,
	cout0 => \Con|TimeCount1|Add0~157\,
	cout1 => \Con|TimeCount1|Add0~157COUT1_161\);

-- Location: LC_X8_Y7_N2
\Con|TimeCount1|no[1]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(1) = DFFEAS(((\Con|TimeCount1|Add0~155_combout\ & ((!\Con|TimeCount1|no\(0)) # (!\Con|TimeCount1|Equal8~0_combout\)))), GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	datab => \Con|TimeCount1|Equal8~0_combout\,
	datac => \Con|TimeCount1|Add0~155_combout\,
	datad => \Con|TimeCount1|no\(0),
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(1));

-- Location: LC_X8_Y7_N6
\Con|TimeCount1|Add0~150\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~150_combout\ = (\Con|TimeCount1|no\(2) $ ((!(!\Con|TimeCount1|Add0~2\ & \Con|TimeCount1|Add0~157\) # (\Con|TimeCount1|Add0~2\ & \Con|TimeCount1|Add0~157COUT1_161\))))
-- \Con|TimeCount1|Add0~152\ = CARRY(((\Con|TimeCount1|no\(2) & !\Con|TimeCount1|Add0~157\)))
-- \Con|TimeCount1|Add0~152COUT1_162\ = CARRY(((\Con|TimeCount1|no\(2) & !\Con|TimeCount1|Add0~157COUT1_161\)))

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
	datab => \Con|TimeCount1|no\(2),
	cin => \Con|TimeCount1|Add0~2\,
	cin0 => \Con|TimeCount1|Add0~157\,
	cin1 => \Con|TimeCount1|Add0~157COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~150_combout\,
	cout0 => \Con|TimeCount1|Add0~152\,
	cout1 => \Con|TimeCount1|Add0~152COUT1_162\);

-- Location: LC_X8_Y7_N7
\Con|TimeCount1|Add0~145\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~145_combout\ = (\Con|TimeCount1|no\(3) $ (((!\Con|TimeCount1|Add0~2\ & \Con|TimeCount1|Add0~152\) # (\Con|TimeCount1|Add0~2\ & \Con|TimeCount1|Add0~152COUT1_162\))))
-- \Con|TimeCount1|Add0~147\ = CARRY(((!\Con|TimeCount1|Add0~152\) # (!\Con|TimeCount1|no\(3))))
-- \Con|TimeCount1|Add0~147COUT1_163\ = CARRY(((!\Con|TimeCount1|Add0~152COUT1_162\) # (!\Con|TimeCount1|no\(3))))

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
	datab => \Con|TimeCount1|no\(3),
	cin => \Con|TimeCount1|Add0~2\,
	cin0 => \Con|TimeCount1|Add0~152\,
	cin1 => \Con|TimeCount1|Add0~152COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~145_combout\,
	cout0 => \Con|TimeCount1|Add0~147\,
	cout1 => \Con|TimeCount1|Add0~147COUT1_163\);

-- Location: LC_X8_Y7_N8
\Con|TimeCount1|Add0~140\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~140_combout\ = \Con|TimeCount1|no\(4) $ ((((!(!\Con|TimeCount1|Add0~2\ & \Con|TimeCount1|Add0~147\) # (\Con|TimeCount1|Add0~2\ & \Con|TimeCount1|Add0~147COUT1_163\)))))
-- \Con|TimeCount1|Add0~142\ = CARRY((\Con|TimeCount1|no\(4) & ((!\Con|TimeCount1|Add0~147\))))
-- \Con|TimeCount1|Add0~142COUT1_164\ = CARRY((\Con|TimeCount1|no\(4) & ((!\Con|TimeCount1|Add0~147COUT1_163\))))

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
	dataa => \Con|TimeCount1|no\(4),
	cin => \Con|TimeCount1|Add0~2\,
	cin0 => \Con|TimeCount1|Add0~147\,
	cin1 => \Con|TimeCount1|Add0~147COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~140_combout\,
	cout0 => \Con|TimeCount1|Add0~142\,
	cout1 => \Con|TimeCount1|Add0~142COUT1_164\);

-- Location: LC_X8_Y7_N3
\Con|TimeCount1|no[4]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(4) = DFFEAS((((\Con|TimeCount1|Add0~140_combout\))), GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount0|car~regout\,
	datad => \Con|TimeCount1|Add0~140_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(4));

-- Location: LC_X8_Y7_N9
\Con|TimeCount1|Add0~135\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~135_combout\ = (\Con|TimeCount1|no\(5) $ (((!\Con|TimeCount1|Add0~2\ & \Con|TimeCount1|Add0~142\) # (\Con|TimeCount1|Add0~2\ & \Con|TimeCount1|Add0~142COUT1_164\))))
-- \Con|TimeCount1|Add0~137\ = CARRY(((!\Con|TimeCount1|Add0~142COUT1_164\) # (!\Con|TimeCount1|no\(5))))

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
	datab => \Con|TimeCount1|no\(5),
	cin => \Con|TimeCount1|Add0~2\,
	cin0 => \Con|TimeCount1|Add0~142\,
	cin1 => \Con|TimeCount1|Add0~142COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~135_combout\,
	cout => \Con|TimeCount1|Add0~137\);

-- Location: LC_X8_Y7_N0
\Con|TimeCount1|no[5]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(5) = DFFEAS((((\Con|TimeCount1|Add0~135_combout\))), GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount0|car~regout\,
	datad => \Con|TimeCount1|Add0~135_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(5));

-- Location: LC_X9_Y7_N0
\Con|TimeCount1|Add0~130\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~130_combout\ = (\Con|TimeCount1|no\(6) $ ((!\Con|TimeCount1|Add0~137\)))
-- \Con|TimeCount1|Add0~132\ = CARRY(((\Con|TimeCount1|no\(6) & !\Con|TimeCount1|Add0~137\)))
-- \Con|TimeCount1|Add0~132COUT1_165\ = CARRY(((\Con|TimeCount1|no\(6) & !\Con|TimeCount1|Add0~137\)))

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
	datab => \Con|TimeCount1|no\(6),
	cin => \Con|TimeCount1|Add0~137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~130_combout\,
	cout0 => \Con|TimeCount1|Add0~132\,
	cout1 => \Con|TimeCount1|Add0~132COUT1_165\);

-- Location: LC_X13_Y7_N1
\Con|TimeCount1|no[6]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(6) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~130_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~130_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(6));

-- Location: LC_X9_Y7_N1
\Con|TimeCount1|Add0~125\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~125_combout\ = (\Con|TimeCount1|no\(7) $ (((!\Con|TimeCount1|Add0~137\ & \Con|TimeCount1|Add0~132\) # (\Con|TimeCount1|Add0~137\ & \Con|TimeCount1|Add0~132COUT1_165\))))
-- \Con|TimeCount1|Add0~127\ = CARRY(((!\Con|TimeCount1|Add0~132\) # (!\Con|TimeCount1|no\(7))))
-- \Con|TimeCount1|Add0~127COUT1_166\ = CARRY(((!\Con|TimeCount1|Add0~132COUT1_165\) # (!\Con|TimeCount1|no\(7))))

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
	datab => \Con|TimeCount1|no\(7),
	cin => \Con|TimeCount1|Add0~137\,
	cin0 => \Con|TimeCount1|Add0~132\,
	cin1 => \Con|TimeCount1|Add0~132COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~125_combout\,
	cout0 => \Con|TimeCount1|Add0~127\,
	cout1 => \Con|TimeCount1|Add0~127COUT1_166\);

-- Location: LC_X12_Y7_N9
\Con|TimeCount1|no[7]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~7\ = (!\Con|TimeCount1|no\(6) & (!\Con|TimeCount1|no\(4) & (!K2_no[7] & !\Con|TimeCount1|no\(5))))
-- \Con|TimeCount1|no\(7) = DFFEAS(\Con|TimeCount1|Equal0~7\, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	dataa => \Con|TimeCount1|no\(6),
	datab => \Con|TimeCount1|no\(4),
	datac => \Con|TimeCount1|Add0~125_combout\,
	datad => \Con|TimeCount1|no\(5),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~7\,
	regout => \Con|TimeCount1|no\(7));

-- Location: LC_X9_Y7_N2
\Con|TimeCount1|Add0~120\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~120_combout\ = \Con|TimeCount1|no\(8) $ ((((!(!\Con|TimeCount1|Add0~137\ & \Con|TimeCount1|Add0~127\) # (\Con|TimeCount1|Add0~137\ & \Con|TimeCount1|Add0~127COUT1_166\)))))
-- \Con|TimeCount1|Add0~122\ = CARRY((\Con|TimeCount1|no\(8) & ((!\Con|TimeCount1|Add0~127\))))
-- \Con|TimeCount1|Add0~122COUT1_167\ = CARRY((\Con|TimeCount1|no\(8) & ((!\Con|TimeCount1|Add0~127COUT1_166\))))

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
	dataa => \Con|TimeCount1|no\(8),
	cin => \Con|TimeCount1|Add0~137\,
	cin0 => \Con|TimeCount1|Add0~127\,
	cin1 => \Con|TimeCount1|Add0~127COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~120_combout\,
	cout0 => \Con|TimeCount1|Add0~122\,
	cout1 => \Con|TimeCount1|Add0~122COUT1_167\);

-- Location: LC_X7_Y7_N4
\Con|TimeCount1|no[8]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(8) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~120_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~120_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(8));

-- Location: LC_X9_Y7_N3
\Con|TimeCount1|Add0~115\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~115_combout\ = (\Con|TimeCount1|no\(9) $ (((!\Con|TimeCount1|Add0~137\ & \Con|TimeCount1|Add0~122\) # (\Con|TimeCount1|Add0~137\ & \Con|TimeCount1|Add0~122COUT1_167\))))
-- \Con|TimeCount1|Add0~117\ = CARRY(((!\Con|TimeCount1|Add0~122\) # (!\Con|TimeCount1|no\(9))))
-- \Con|TimeCount1|Add0~117COUT1_168\ = CARRY(((!\Con|TimeCount1|Add0~122COUT1_167\) # (!\Con|TimeCount1|no\(9))))

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
	datab => \Con|TimeCount1|no\(9),
	cin => \Con|TimeCount1|Add0~137\,
	cin0 => \Con|TimeCount1|Add0~122\,
	cin1 => \Con|TimeCount1|Add0~122COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~115_combout\,
	cout0 => \Con|TimeCount1|Add0~117\,
	cout1 => \Con|TimeCount1|Add0~117COUT1_168\);

-- Location: LC_X7_Y7_N8
\Con|TimeCount1|no[9]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(9) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~115_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~115_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(9));

-- Location: LC_X9_Y7_N4
\Con|TimeCount1|Add0~110\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~110_combout\ = (\Con|TimeCount1|no\(10) $ ((!(!\Con|TimeCount1|Add0~137\ & \Con|TimeCount1|Add0~117\) # (\Con|TimeCount1|Add0~137\ & \Con|TimeCount1|Add0~117COUT1_168\))))
-- \Con|TimeCount1|Add0~112\ = CARRY(((\Con|TimeCount1|no\(10) & !\Con|TimeCount1|Add0~117COUT1_168\)))

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
	datab => \Con|TimeCount1|no\(10),
	cin => \Con|TimeCount1|Add0~137\,
	cin0 => \Con|TimeCount1|Add0~117\,
	cin1 => \Con|TimeCount1|Add0~117COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~110_combout\,
	cout => \Con|TimeCount1|Add0~112\);

-- Location: LC_X7_Y7_N1
\Con|TimeCount1|no[10]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(10) = DFFEAS((((\Con|TimeCount1|Add0~110_combout\))), GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount0|car~regout\,
	datad => \Con|TimeCount1|Add0~110_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(10));

-- Location: LC_X9_Y7_N5
\Con|TimeCount1|Add0~105\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~105_combout\ = (\Con|TimeCount1|no\(11) $ ((\Con|TimeCount1|Add0~112\)))
-- \Con|TimeCount1|Add0~107\ = CARRY(((!\Con|TimeCount1|Add0~112\) # (!\Con|TimeCount1|no\(11))))
-- \Con|TimeCount1|Add0~107COUT1_169\ = CARRY(((!\Con|TimeCount1|Add0~112\) # (!\Con|TimeCount1|no\(11))))

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
	datab => \Con|TimeCount1|no\(11),
	cin => \Con|TimeCount1|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~105_combout\,
	cout0 => \Con|TimeCount1|Add0~107\,
	cout1 => \Con|TimeCount1|Add0~107COUT1_169\);

-- Location: LC_X7_Y7_N9
\Con|TimeCount1|no[11]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~6\ = (!\Con|TimeCount1|no\(8) & (!\Con|TimeCount1|no\(10) & (!K2_no[11] & !\Con|TimeCount1|no\(9))))
-- \Con|TimeCount1|no\(11) = DFFEAS(\Con|TimeCount1|Equal0~6\, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	dataa => \Con|TimeCount1|no\(8),
	datab => \Con|TimeCount1|no\(10),
	datac => \Con|TimeCount1|Add0~105_combout\,
	datad => \Con|TimeCount1|no\(9),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~6\,
	regout => \Con|TimeCount1|no\(11));

-- Location: LC_X9_Y7_N6
\Con|TimeCount1|Add0~100\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~100_combout\ = (\Con|TimeCount1|no\(12) $ ((!(!\Con|TimeCount1|Add0~112\ & \Con|TimeCount1|Add0~107\) # (\Con|TimeCount1|Add0~112\ & \Con|TimeCount1|Add0~107COUT1_169\))))
-- \Con|TimeCount1|Add0~102\ = CARRY(((\Con|TimeCount1|no\(12) & !\Con|TimeCount1|Add0~107\)))
-- \Con|TimeCount1|Add0~102COUT1_170\ = CARRY(((\Con|TimeCount1|no\(12) & !\Con|TimeCount1|Add0~107COUT1_169\)))

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
	datab => \Con|TimeCount1|no\(12),
	cin => \Con|TimeCount1|Add0~112\,
	cin0 => \Con|TimeCount1|Add0~107\,
	cin1 => \Con|TimeCount1|Add0~107COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~100_combout\,
	cout0 => \Con|TimeCount1|Add0~102\,
	cout1 => \Con|TimeCount1|Add0~102COUT1_170\);

-- Location: LC_X7_Y7_N7
\Con|TimeCount1|no[12]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(12) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~100_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~100_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(12));

-- Location: LC_X9_Y7_N7
\Con|TimeCount1|Add0~95\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~95_combout\ = (\Con|TimeCount1|no\(13) $ (((!\Con|TimeCount1|Add0~112\ & \Con|TimeCount1|Add0~102\) # (\Con|TimeCount1|Add0~112\ & \Con|TimeCount1|Add0~102COUT1_170\))))
-- \Con|TimeCount1|Add0~97\ = CARRY(((!\Con|TimeCount1|Add0~102\) # (!\Con|TimeCount1|no\(13))))
-- \Con|TimeCount1|Add0~97COUT1_171\ = CARRY(((!\Con|TimeCount1|Add0~102COUT1_170\) # (!\Con|TimeCount1|no\(13))))

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
	datab => \Con|TimeCount1|no\(13),
	cin => \Con|TimeCount1|Add0~112\,
	cin0 => \Con|TimeCount1|Add0~102\,
	cin1 => \Con|TimeCount1|Add0~102COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~95_combout\,
	cout0 => \Con|TimeCount1|Add0~97\,
	cout1 => \Con|TimeCount1|Add0~97COUT1_171\);

-- Location: LC_X7_Y7_N3
\Con|TimeCount1|no[13]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(13) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~95_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~95_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(13));

-- Location: LC_X9_Y7_N8
\Con|TimeCount1|Add0~90\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~90_combout\ = (\Con|TimeCount1|no\(14) $ ((!(!\Con|TimeCount1|Add0~112\ & \Con|TimeCount1|Add0~97\) # (\Con|TimeCount1|Add0~112\ & \Con|TimeCount1|Add0~97COUT1_171\))))
-- \Con|TimeCount1|Add0~92\ = CARRY(((\Con|TimeCount1|no\(14) & !\Con|TimeCount1|Add0~97\)))
-- \Con|TimeCount1|Add0~92COUT1_172\ = CARRY(((\Con|TimeCount1|no\(14) & !\Con|TimeCount1|Add0~97COUT1_171\)))

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
	datab => \Con|TimeCount1|no\(14),
	cin => \Con|TimeCount1|Add0~112\,
	cin0 => \Con|TimeCount1|Add0~97\,
	cin1 => \Con|TimeCount1|Add0~97COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~90_combout\,
	cout0 => \Con|TimeCount1|Add0~92\,
	cout1 => \Con|TimeCount1|Add0~92COUT1_172\);

-- Location: LC_X7_Y7_N5
\Con|TimeCount1|no[14]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(14) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~90_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~90_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(14));

-- Location: LC_X9_Y7_N9
\Con|TimeCount1|Add0~85\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~85_combout\ = (\Con|TimeCount1|no\(15) $ (((!\Con|TimeCount1|Add0~112\ & \Con|TimeCount1|Add0~92\) # (\Con|TimeCount1|Add0~112\ & \Con|TimeCount1|Add0~92COUT1_172\))))
-- \Con|TimeCount1|Add0~87\ = CARRY(((!\Con|TimeCount1|Add0~92COUT1_172\) # (!\Con|TimeCount1|no\(15))))

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
	datab => \Con|TimeCount1|no\(15),
	cin => \Con|TimeCount1|Add0~112\,
	cin0 => \Con|TimeCount1|Add0~92\,
	cin1 => \Con|TimeCount1|Add0~92COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~85_combout\,
	cout => \Con|TimeCount1|Add0~87\);

-- Location: LC_X7_Y7_N6
\Con|TimeCount1|no[15]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~5\ = (!\Con|TimeCount1|no\(14) & (!\Con|TimeCount1|no\(12) & (!K2_no[15] & !\Con|TimeCount1|no\(13))))
-- \Con|TimeCount1|no\(15) = DFFEAS(\Con|TimeCount1|Equal0~5\, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	dataa => \Con|TimeCount1|no\(14),
	datab => \Con|TimeCount1|no\(12),
	datac => \Con|TimeCount1|Add0~85_combout\,
	datad => \Con|TimeCount1|no\(13),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~5\,
	regout => \Con|TimeCount1|no\(15));

-- Location: LC_X10_Y7_N0
\Con|TimeCount1|Add0~80\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~80_combout\ = (\Con|TimeCount1|no\(16) $ ((!\Con|TimeCount1|Add0~87\)))
-- \Con|TimeCount1|Add0~82\ = CARRY(((\Con|TimeCount1|no\(16) & !\Con|TimeCount1|Add0~87\)))
-- \Con|TimeCount1|Add0~82COUT1_173\ = CARRY(((\Con|TimeCount1|no\(16) & !\Con|TimeCount1|Add0~87\)))

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
	datab => \Con|TimeCount1|no\(16),
	cin => \Con|TimeCount1|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~80_combout\,
	cout0 => \Con|TimeCount1|Add0~82\,
	cout1 => \Con|TimeCount1|Add0~82COUT1_173\);

-- Location: LC_X12_Y7_N6
\Con|TimeCount1|no[16]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(16) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~80_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~80_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(16));

-- Location: LC_X10_Y7_N1
\Con|TimeCount1|Add0~75\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~75_combout\ = (\Con|TimeCount1|no\(17) $ (((!\Con|TimeCount1|Add0~87\ & \Con|TimeCount1|Add0~82\) # (\Con|TimeCount1|Add0~87\ & \Con|TimeCount1|Add0~82COUT1_173\))))
-- \Con|TimeCount1|Add0~77\ = CARRY(((!\Con|TimeCount1|Add0~82\) # (!\Con|TimeCount1|no\(17))))
-- \Con|TimeCount1|Add0~77COUT1_174\ = CARRY(((!\Con|TimeCount1|Add0~82COUT1_173\) # (!\Con|TimeCount1|no\(17))))

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
	datab => \Con|TimeCount1|no\(17),
	cin => \Con|TimeCount1|Add0~87\,
	cin0 => \Con|TimeCount1|Add0~82\,
	cin1 => \Con|TimeCount1|Add0~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~75_combout\,
	cout0 => \Con|TimeCount1|Add0~77\,
	cout1 => \Con|TimeCount1|Add0~77COUT1_174\);

-- Location: LC_X12_Y7_N3
\Con|TimeCount1|no[17]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(17) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~75_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~75_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(17));

-- Location: LC_X10_Y7_N2
\Con|TimeCount1|Add0~70\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~70_combout\ = (\Con|TimeCount1|no\(18) $ ((!(!\Con|TimeCount1|Add0~87\ & \Con|TimeCount1|Add0~77\) # (\Con|TimeCount1|Add0~87\ & \Con|TimeCount1|Add0~77COUT1_174\))))
-- \Con|TimeCount1|Add0~72\ = CARRY(((\Con|TimeCount1|no\(18) & !\Con|TimeCount1|Add0~77\)))
-- \Con|TimeCount1|Add0~72COUT1_175\ = CARRY(((\Con|TimeCount1|no\(18) & !\Con|TimeCount1|Add0~77COUT1_174\)))

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
	datab => \Con|TimeCount1|no\(18),
	cin => \Con|TimeCount1|Add0~87\,
	cin0 => \Con|TimeCount1|Add0~77\,
	cin1 => \Con|TimeCount1|Add0~77COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~70_combout\,
	cout0 => \Con|TimeCount1|Add0~72\,
	cout1 => \Con|TimeCount1|Add0~72COUT1_175\);

-- Location: LC_X13_Y7_N6
\Con|TimeCount1|no[18]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(18) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~70_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~70_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(18));

-- Location: LC_X10_Y7_N3
\Con|TimeCount1|Add0~65\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~65_combout\ = \Con|TimeCount1|no\(19) $ (((((!\Con|TimeCount1|Add0~87\ & \Con|TimeCount1|Add0~72\) # (\Con|TimeCount1|Add0~87\ & \Con|TimeCount1|Add0~72COUT1_175\)))))
-- \Con|TimeCount1|Add0~67\ = CARRY(((!\Con|TimeCount1|Add0~72\)) # (!\Con|TimeCount1|no\(19)))
-- \Con|TimeCount1|Add0~67COUT1_176\ = CARRY(((!\Con|TimeCount1|Add0~72COUT1_175\)) # (!\Con|TimeCount1|no\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount1|no\(19),
	cin => \Con|TimeCount1|Add0~87\,
	cin0 => \Con|TimeCount1|Add0~72\,
	cin1 => \Con|TimeCount1|Add0~72COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~65_combout\,
	cout0 => \Con|TimeCount1|Add0~67\,
	cout1 => \Con|TimeCount1|Add0~67COUT1_176\);

-- Location: LC_X12_Y7_N4
\Con|TimeCount1|no[19]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~3\ = (!\Con|TimeCount1|no\(17) & (!\Con|TimeCount1|no\(16) & (!K2_no[19] & !\Con|TimeCount1|no\(18))))
-- \Con|TimeCount1|no\(19) = DFFEAS(\Con|TimeCount1|Equal0~3\, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	dataa => \Con|TimeCount1|no\(17),
	datab => \Con|TimeCount1|no\(16),
	datac => \Con|TimeCount1|Add0~65_combout\,
	datad => \Con|TimeCount1|no\(18),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~3\,
	regout => \Con|TimeCount1|no\(19));

-- Location: LC_X10_Y7_N4
\Con|TimeCount1|Add0~60\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~60_combout\ = (\Con|TimeCount1|no\(20) $ ((!(!\Con|TimeCount1|Add0~87\ & \Con|TimeCount1|Add0~67\) # (\Con|TimeCount1|Add0~87\ & \Con|TimeCount1|Add0~67COUT1_176\))))
-- \Con|TimeCount1|Add0~62\ = CARRY(((\Con|TimeCount1|no\(20) & !\Con|TimeCount1|Add0~67COUT1_176\)))

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
	datab => \Con|TimeCount1|no\(20),
	cin => \Con|TimeCount1|Add0~87\,
	cin0 => \Con|TimeCount1|Add0~67\,
	cin1 => \Con|TimeCount1|Add0~67COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~60_combout\,
	cout => \Con|TimeCount1|Add0~62\);

-- Location: LC_X11_Y6_N6
\Con|TimeCount1|no[20]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(20) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~60_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~60_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(20));

-- Location: LC_X10_Y7_N5
\Con|TimeCount1|Add0~55\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~55_combout\ = (\Con|TimeCount1|no\(21) $ ((\Con|TimeCount1|Add0~62\)))
-- \Con|TimeCount1|Add0~57\ = CARRY(((!\Con|TimeCount1|Add0~62\) # (!\Con|TimeCount1|no\(21))))
-- \Con|TimeCount1|Add0~57COUT1_177\ = CARRY(((!\Con|TimeCount1|Add0~62\) # (!\Con|TimeCount1|no\(21))))

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
	datab => \Con|TimeCount1|no\(21),
	cin => \Con|TimeCount1|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~55_combout\,
	cout0 => \Con|TimeCount1|Add0~57\,
	cout1 => \Con|TimeCount1|Add0~57COUT1_177\);

-- Location: LC_X11_Y6_N3
\Con|TimeCount1|no[21]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(21) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~55_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~55_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(21));

-- Location: LC_X10_Y7_N6
\Con|TimeCount1|Add0~50\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~50_combout\ = \Con|TimeCount1|no\(22) $ ((((!(!\Con|TimeCount1|Add0~62\ & \Con|TimeCount1|Add0~57\) # (\Con|TimeCount1|Add0~62\ & \Con|TimeCount1|Add0~57COUT1_177\)))))
-- \Con|TimeCount1|Add0~52\ = CARRY((\Con|TimeCount1|no\(22) & ((!\Con|TimeCount1|Add0~57\))))
-- \Con|TimeCount1|Add0~52COUT1_178\ = CARRY((\Con|TimeCount1|no\(22) & ((!\Con|TimeCount1|Add0~57COUT1_177\))))

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
	dataa => \Con|TimeCount1|no\(22),
	cin => \Con|TimeCount1|Add0~62\,
	cin0 => \Con|TimeCount1|Add0~57\,
	cin1 => \Con|TimeCount1|Add0~57COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~50_combout\,
	cout0 => \Con|TimeCount1|Add0~52\,
	cout1 => \Con|TimeCount1|Add0~52COUT1_178\);

-- Location: LC_X11_Y6_N1
\Con|TimeCount1|no[22]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(22) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~50_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~50_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(22));

-- Location: LC_X10_Y7_N7
\Con|TimeCount1|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~45_combout\ = (\Con|TimeCount1|no\(23) $ (((!\Con|TimeCount1|Add0~62\ & \Con|TimeCount1|Add0~52\) # (\Con|TimeCount1|Add0~62\ & \Con|TimeCount1|Add0~52COUT1_178\))))
-- \Con|TimeCount1|Add0~47\ = CARRY(((!\Con|TimeCount1|Add0~52\) # (!\Con|TimeCount1|no\(23))))
-- \Con|TimeCount1|Add0~47COUT1_179\ = CARRY(((!\Con|TimeCount1|Add0~52COUT1_178\) # (!\Con|TimeCount1|no\(23))))

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
	datab => \Con|TimeCount1|no\(23),
	cin => \Con|TimeCount1|Add0~62\,
	cin0 => \Con|TimeCount1|Add0~52\,
	cin1 => \Con|TimeCount1|Add0~52COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~45_combout\,
	cout0 => \Con|TimeCount1|Add0~47\,
	cout1 => \Con|TimeCount1|Add0~47COUT1_179\);

-- Location: LC_X11_Y6_N0
\Con|TimeCount1|no[23]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~2\ = (!\Con|TimeCount1|no\(20) & (!\Con|TimeCount1|no\(22) & (!K2_no[23] & !\Con|TimeCount1|no\(21))))
-- \Con|TimeCount1|no\(23) = DFFEAS(\Con|TimeCount1|Equal0~2\, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	dataa => \Con|TimeCount1|no\(20),
	datab => \Con|TimeCount1|no\(22),
	datac => \Con|TimeCount1|Add0~45_combout\,
	datad => \Con|TimeCount1|no\(21),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~2\,
	regout => \Con|TimeCount1|no\(23));

-- Location: LC_X10_Y7_N8
\Con|TimeCount1|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~40_combout\ = \Con|TimeCount1|no\(24) $ ((((!(!\Con|TimeCount1|Add0~62\ & \Con|TimeCount1|Add0~47\) # (\Con|TimeCount1|Add0~62\ & \Con|TimeCount1|Add0~47COUT1_179\)))))
-- \Con|TimeCount1|Add0~42\ = CARRY((\Con|TimeCount1|no\(24) & ((!\Con|TimeCount1|Add0~47\))))
-- \Con|TimeCount1|Add0~42COUT1_180\ = CARRY((\Con|TimeCount1|no\(24) & ((!\Con|TimeCount1|Add0~47COUT1_179\))))

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
	dataa => \Con|TimeCount1|no\(24),
	cin => \Con|TimeCount1|Add0~62\,
	cin0 => \Con|TimeCount1|Add0~47\,
	cin1 => \Con|TimeCount1|Add0~47COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~40_combout\,
	cout0 => \Con|TimeCount1|Add0~42\,
	cout1 => \Con|TimeCount1|Add0~42COUT1_180\);

-- Location: LC_X13_Y7_N5
\Con|TimeCount1|no[24]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(24) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~40_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~40_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(24));

-- Location: LC_X10_Y7_N9
\Con|TimeCount1|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~35_combout\ = (\Con|TimeCount1|no\(25) $ (((!\Con|TimeCount1|Add0~62\ & \Con|TimeCount1|Add0~42\) # (\Con|TimeCount1|Add0~62\ & \Con|TimeCount1|Add0~42COUT1_180\))))
-- \Con|TimeCount1|Add0~37\ = CARRY(((!\Con|TimeCount1|Add0~42COUT1_180\) # (!\Con|TimeCount1|no\(25))))

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
	datab => \Con|TimeCount1|no\(25),
	cin => \Con|TimeCount1|Add0~62\,
	cin0 => \Con|TimeCount1|Add0~42\,
	cin1 => \Con|TimeCount1|Add0~42COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~35_combout\,
	cout => \Con|TimeCount1|Add0~37\);

-- Location: LC_X13_Y7_N7
\Con|TimeCount1|no[25]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(25) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~35_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~35_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(25));

-- Location: LC_X11_Y7_N0
\Con|TimeCount1|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~30_combout\ = (\Con|TimeCount1|no\(26) $ ((!\Con|TimeCount1|Add0~37\)))
-- \Con|TimeCount1|Add0~32\ = CARRY(((\Con|TimeCount1|no\(26) & !\Con|TimeCount1|Add0~37\)))
-- \Con|TimeCount1|Add0~32COUT1_181\ = CARRY(((\Con|TimeCount1|no\(26) & !\Con|TimeCount1|Add0~37\)))

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
	datab => \Con|TimeCount1|no\(26),
	cin => \Con|TimeCount1|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~30_combout\,
	cout0 => \Con|TimeCount1|Add0~32\,
	cout1 => \Con|TimeCount1|Add0~32COUT1_181\);

-- Location: LC_X13_Y7_N9
\Con|TimeCount1|no[26]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(26) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~30_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~30_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(26));

-- Location: LC_X11_Y7_N1
\Con|TimeCount1|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~25_combout\ = (\Con|TimeCount1|no\(27) $ (((!\Con|TimeCount1|Add0~37\ & \Con|TimeCount1|Add0~32\) # (\Con|TimeCount1|Add0~37\ & \Con|TimeCount1|Add0~32COUT1_181\))))
-- \Con|TimeCount1|Add0~27\ = CARRY(((!\Con|TimeCount1|Add0~32\) # (!\Con|TimeCount1|no\(27))))
-- \Con|TimeCount1|Add0~27COUT1_182\ = CARRY(((!\Con|TimeCount1|Add0~32COUT1_181\) # (!\Con|TimeCount1|no\(27))))

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
	datab => \Con|TimeCount1|no\(27),
	cin => \Con|TimeCount1|Add0~37\,
	cin0 => \Con|TimeCount1|Add0~32\,
	cin1 => \Con|TimeCount1|Add0~32COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~25_combout\,
	cout0 => \Con|TimeCount1|Add0~27\,
	cout1 => \Con|TimeCount1|Add0~27COUT1_182\);

-- Location: LC_X13_Y7_N8
\Con|TimeCount1|no[27]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~1\ = (!\Con|TimeCount1|no\(24) & (!\Con|TimeCount1|no\(25) & (!K2_no[27] & !\Con|TimeCount1|no\(26))))
-- \Con|TimeCount1|no\(27) = DFFEAS(\Con|TimeCount1|Equal0~1\, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	dataa => \Con|TimeCount1|no\(24),
	datab => \Con|TimeCount1|no\(25),
	datac => \Con|TimeCount1|Add0~25_combout\,
	datad => \Con|TimeCount1|no\(26),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~1\,
	regout => \Con|TimeCount1|no\(27));

-- Location: LC_X11_Y7_N2
\Con|TimeCount1|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~20_combout\ = \Con|TimeCount1|no\(28) $ ((((!(!\Con|TimeCount1|Add0~37\ & \Con|TimeCount1|Add0~27\) # (\Con|TimeCount1|Add0~37\ & \Con|TimeCount1|Add0~27COUT1_182\)))))
-- \Con|TimeCount1|Add0~22\ = CARRY((\Con|TimeCount1|no\(28) & ((!\Con|TimeCount1|Add0~27\))))
-- \Con|TimeCount1|Add0~22COUT1_183\ = CARRY((\Con|TimeCount1|no\(28) & ((!\Con|TimeCount1|Add0~27COUT1_182\))))

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
	dataa => \Con|TimeCount1|no\(28),
	cin => \Con|TimeCount1|Add0~37\,
	cin0 => \Con|TimeCount1|Add0~27\,
	cin1 => \Con|TimeCount1|Add0~27COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~20_combout\,
	cout0 => \Con|TimeCount1|Add0~22\,
	cout1 => \Con|TimeCount1|Add0~22COUT1_183\);

-- Location: LC_X11_Y7_N8
\Con|TimeCount1|no[28]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(28) = DFFEAS((((\Con|TimeCount1|Add0~20_combout\))), GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount0|car~regout\,
	datad => \Con|TimeCount1|Add0~20_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(28));

-- Location: LC_X11_Y7_N3
\Con|TimeCount1|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~15_combout\ = (\Con|TimeCount1|no\(29) $ (((!\Con|TimeCount1|Add0~37\ & \Con|TimeCount1|Add0~22\) # (\Con|TimeCount1|Add0~37\ & \Con|TimeCount1|Add0~22COUT1_183\))))
-- \Con|TimeCount1|Add0~17\ = CARRY(((!\Con|TimeCount1|Add0~22\) # (!\Con|TimeCount1|no\(29))))
-- \Con|TimeCount1|Add0~17COUT1_184\ = CARRY(((!\Con|TimeCount1|Add0~22COUT1_183\) # (!\Con|TimeCount1|no\(29))))

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
	datab => \Con|TimeCount1|no\(29),
	cin => \Con|TimeCount1|Add0~37\,
	cin0 => \Con|TimeCount1|Add0~22\,
	cin1 => \Con|TimeCount1|Add0~22COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~15_combout\,
	cout0 => \Con|TimeCount1|Add0~17\,
	cout1 => \Con|TimeCount1|Add0~17COUT1_184\);

-- Location: LC_X11_Y7_N7
\Con|TimeCount1|no[29]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(29) = DFFEAS((((\Con|TimeCount1|Add0~15_combout\))), GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount0|car~regout\,
	datad => \Con|TimeCount1|Add0~15_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(29));

-- Location: LC_X11_Y7_N4
\Con|TimeCount1|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~10_combout\ = (\Con|TimeCount1|no\(30) $ ((!(!\Con|TimeCount1|Add0~37\ & \Con|TimeCount1|Add0~17\) # (\Con|TimeCount1|Add0~37\ & \Con|TimeCount1|Add0~17COUT1_184\))))
-- \Con|TimeCount1|Add0~12\ = CARRY(((\Con|TimeCount1|no\(30) & !\Con|TimeCount1|Add0~17COUT1_184\)))

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
	datab => \Con|TimeCount1|no\(30),
	cin => \Con|TimeCount1|Add0~37\,
	cin0 => \Con|TimeCount1|Add0~17\,
	cin1 => \Con|TimeCount1|Add0~17COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~10_combout\,
	cout => \Con|TimeCount1|Add0~12\);

-- Location: LC_X11_Y7_N6
\Con|TimeCount1|no[30]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(30) = DFFEAS(GND, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~10_combout\, , , VCC)

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
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|Add0~10_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(30));

-- Location: LC_X11_Y7_N9
\Con|TimeCount1|no[31]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~0\ = (!\Con|TimeCount1|no\(28) & (!\Con|TimeCount1|no\(29) & (!K2_no[31] & !\Con|TimeCount1|no\(30))))
-- \Con|TimeCount1|no\(31) = DFFEAS(\Con|TimeCount1|Equal0~0\, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	dataa => \Con|TimeCount1|no\(28),
	datab => \Con|TimeCount1|no\(29),
	datac => \Con|TimeCount1|Add0~5_combout\,
	datad => \Con|TimeCount1|no\(30),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~0\,
	regout => \Con|TimeCount1|no\(31));

-- Location: LC_X11_Y7_N5
\Con|TimeCount1|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Add0~5_combout\ = ((\Con|TimeCount1|Add0~12\ $ (\Con|TimeCount1|no\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Con|TimeCount1|no\(31),
	cin => \Con|TimeCount1|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Add0~5_combout\);

-- Location: LC_X12_Y7_N5
\Con|TimeCount1|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~4_combout\ = (\Con|TimeCount1|Equal0~0\ & (\Con|TimeCount1|Equal0~1\ & (\Con|TimeCount1|Equal0~3\ & \Con|TimeCount1|Equal0~2\)))

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
	dataa => \Con|TimeCount1|Equal0~0\,
	datab => \Con|TimeCount1|Equal0~1\,
	datac => \Con|TimeCount1|Equal0~3\,
	datad => \Con|TimeCount1|Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~4_combout\);

-- Location: LC_X12_Y7_N0
\Con|TimeCount1|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~8_combout\ = (\Con|TimeCount1|Equal0~4_combout\ & (\Con|TimeCount1|Equal0~7\ & (\Con|TimeCount1|Equal0~6\ & \Con|TimeCount1|Equal0~5\)))

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
	dataa => \Con|TimeCount1|Equal0~4_combout\,
	datab => \Con|TimeCount1|Equal0~7\,
	datac => \Con|TimeCount1|Equal0~6\,
	datad => \Con|TimeCount1|Equal0~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~8_combout\);

-- Location: LC_X12_Y7_N7
\Con|TimeCount1|no[2]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~10\ = ((\Con|TimeCount1|Equal0~8_combout\ & (!K2_no[2] & !\Con|TimeCount1|no\(3))))
-- \Con|TimeCount1|no\(2) = DFFEAS(\Con|TimeCount1|Equal0~10\, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	datab => \Con|TimeCount1|Equal0~8_combout\,
	datac => \Con|TimeCount1|Add0~150_combout\,
	datad => \Con|TimeCount1|no\(3),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~10\,
	regout => \Con|TimeCount1|no\(2));

-- Location: LC_X8_Y7_N1
\Con|TimeCount1|no[3]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|no\(3) = DFFEAS(((\Con|TimeCount1|Add0~145_combout\ & ((!\Con|TimeCount1|no\(0)) # (!\Con|TimeCount1|Equal8~0_combout\)))), GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	datab => \Con|TimeCount1|Equal8~0_combout\,
	datac => \Con|TimeCount1|Add0~145_combout\,
	datad => \Con|TimeCount1|no\(0),
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|no\(3));

-- Location: LC_X12_Y7_N1
\Con|TimeCount1|Equal8~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal8~0_combout\ = (!\Con|TimeCount1|no\(1) & (\Con|TimeCount1|no\(3) & (!\Con|TimeCount1|no\(2) & \Con|TimeCount1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount1|no\(1),
	datab => \Con|TimeCount1|no\(3),
	datac => \Con|TimeCount1|no\(2),
	datad => \Con|TimeCount1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal8~0_combout\);

-- Location: LC_X12_Y7_N2
\Con|TimeCount1|no[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_data~17\ = (col(0) & (((K2_no[0]) # (!\Con|TimeCount1|Equal8~0_combout\))))
-- \Con|TimeCount1|no\(0) = DFFEAS(\lcd_data~17\, GLOBAL(\Con|TimeCount0|car~regout\), \NReset~combout\, , , \Con|TimeCount1|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	dataa => col(0),
	datac => \Con|TimeCount1|Add0~0_combout\,
	datad => \Con|TimeCount1|Equal8~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~17\,
	regout => \Con|TimeCount1|no\(0));

-- Location: LC_X15_Y3_N0
\Con|TimeCount1|car\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|car~regout\ = DFFEAS((((\Con|TimeCount1|no\(0) & \Con|TimeCount1|Equal8~0_combout\))), GLOBAL(\Con|TimeCount0|car~regout\), VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount0|car~regout\,
	datac => \Con|TimeCount1|no\(0),
	datad => \Con|TimeCount1|Equal8~0_combout\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount1|car~regout\);

-- Location: LC_X13_Y2_N4
\Con|TimeCount2|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~0_combout\ = ((!\Con|TimeCount2|no\(0)))
-- \Con|TimeCount2|Add0~2\ = CARRY(((\Con|TimeCount2|no\(0))))

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
	datab => \Con|TimeCount2|no\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~0_combout\,
	cout => \Con|TimeCount2|Add0~2\);

-- Location: LC_X13_Y2_N5
\Con|TimeCount2|Add0~155\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~155_combout\ = \Con|TimeCount2|no\(1) $ ((((\Con|TimeCount2|Add0~2\))))
-- \Con|TimeCount2|Add0~157\ = CARRY(((!\Con|TimeCount2|Add0~2\)) # (!\Con|TimeCount2|no\(1)))
-- \Con|TimeCount2|Add0~157COUT1_161\ = CARRY(((!\Con|TimeCount2|Add0~2\)) # (!\Con|TimeCount2|no\(1)))

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
	dataa => \Con|TimeCount2|no\(1),
	cin => \Con|TimeCount2|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~155_combout\,
	cout0 => \Con|TimeCount2|Add0~157\,
	cout1 => \Con|TimeCount2|Add0~157COUT1_161\);

-- Location: LC_X13_Y2_N3
\Con|TimeCount2|no[1]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(1) = DFFEAS(((\Con|TimeCount2|Add0~155_combout\ & ((!\Con|TimeCount2|Equal8~0_combout\) # (!\Con|TimeCount2|no\(0))))), \Con|TimeCount1|car~regout\, \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	datab => \Con|TimeCount2|no\(0),
	datac => \Con|TimeCount2|Add0~155_combout\,
	datad => \Con|TimeCount2|Equal8~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(1));

-- Location: LC_X13_Y2_N6
\Con|TimeCount2|Add0~150\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~150_combout\ = (\Con|TimeCount2|no\(2) $ ((!(!\Con|TimeCount2|Add0~2\ & \Con|TimeCount2|Add0~157\) # (\Con|TimeCount2|Add0~2\ & \Con|TimeCount2|Add0~157COUT1_161\))))
-- \Con|TimeCount2|Add0~152\ = CARRY(((\Con|TimeCount2|no\(2) & !\Con|TimeCount2|Add0~157\)))
-- \Con|TimeCount2|Add0~152COUT1_162\ = CARRY(((\Con|TimeCount2|no\(2) & !\Con|TimeCount2|Add0~157COUT1_161\)))

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
	datab => \Con|TimeCount2|no\(2),
	cin => \Con|TimeCount2|Add0~2\,
	cin0 => \Con|TimeCount2|Add0~157\,
	cin1 => \Con|TimeCount2|Add0~157COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~150_combout\,
	cout0 => \Con|TimeCount2|Add0~152\,
	cout1 => \Con|TimeCount2|Add0~152COUT1_162\);

-- Location: LC_X13_Y2_N7
\Con|TimeCount2|Add0~145\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~145_combout\ = (\Con|TimeCount2|no\(3) $ (((!\Con|TimeCount2|Add0~2\ & \Con|TimeCount2|Add0~152\) # (\Con|TimeCount2|Add0~2\ & \Con|TimeCount2|Add0~152COUT1_162\))))
-- \Con|TimeCount2|Add0~147\ = CARRY(((!\Con|TimeCount2|Add0~152\) # (!\Con|TimeCount2|no\(3))))
-- \Con|TimeCount2|Add0~147COUT1_163\ = CARRY(((!\Con|TimeCount2|Add0~152COUT1_162\) # (!\Con|TimeCount2|no\(3))))

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
	datab => \Con|TimeCount2|no\(3),
	cin => \Con|TimeCount2|Add0~2\,
	cin0 => \Con|TimeCount2|Add0~152\,
	cin1 => \Con|TimeCount2|Add0~152COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~145_combout\,
	cout0 => \Con|TimeCount2|Add0~147\,
	cout1 => \Con|TimeCount2|Add0~147COUT1_163\);

-- Location: LC_X13_Y2_N8
\Con|TimeCount2|Add0~140\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~140_combout\ = (\Con|TimeCount2|no\(4) $ ((!(!\Con|TimeCount2|Add0~2\ & \Con|TimeCount2|Add0~147\) # (\Con|TimeCount2|Add0~2\ & \Con|TimeCount2|Add0~147COUT1_163\))))
-- \Con|TimeCount2|Add0~142\ = CARRY(((\Con|TimeCount2|no\(4) & !\Con|TimeCount2|Add0~147\)))
-- \Con|TimeCount2|Add0~142COUT1_164\ = CARRY(((\Con|TimeCount2|no\(4) & !\Con|TimeCount2|Add0~147COUT1_163\)))

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
	datab => \Con|TimeCount2|no\(4),
	cin => \Con|TimeCount2|Add0~2\,
	cin0 => \Con|TimeCount2|Add0~147\,
	cin1 => \Con|TimeCount2|Add0~147COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~140_combout\,
	cout0 => \Con|TimeCount2|Add0~142\,
	cout1 => \Con|TimeCount2|Add0~142COUT1_164\);

-- Location: LC_X14_Y3_N9
\Con|TimeCount2|no[4]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(4) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~140_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~140_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(4));

-- Location: LC_X13_Y2_N9
\Con|TimeCount2|Add0~135\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~135_combout\ = (\Con|TimeCount2|no\(5) $ (((!\Con|TimeCount2|Add0~2\ & \Con|TimeCount2|Add0~142\) # (\Con|TimeCount2|Add0~2\ & \Con|TimeCount2|Add0~142COUT1_164\))))
-- \Con|TimeCount2|Add0~137\ = CARRY(((!\Con|TimeCount2|Add0~142COUT1_164\) # (!\Con|TimeCount2|no\(5))))

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
	datab => \Con|TimeCount2|no\(5),
	cin => \Con|TimeCount2|Add0~2\,
	cin0 => \Con|TimeCount2|Add0~142\,
	cin1 => \Con|TimeCount2|Add0~142COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~135_combout\,
	cout => \Con|TimeCount2|Add0~137\);

-- Location: LC_X13_Y2_N0
\Con|TimeCount2|no[5]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(5) = DFFEAS((((\Con|TimeCount2|Add0~135_combout\))), \Con|TimeCount1|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount1|car~regout\,
	datad => \Con|TimeCount2|Add0~135_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(5));

-- Location: LC_X14_Y2_N0
\Con|TimeCount2|Add0~130\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~130_combout\ = \Con|TimeCount2|no\(6) $ ((((!\Con|TimeCount2|Add0~137\))))
-- \Con|TimeCount2|Add0~132\ = CARRY((\Con|TimeCount2|no\(6) & ((!\Con|TimeCount2|Add0~137\))))
-- \Con|TimeCount2|Add0~132COUT1_165\ = CARRY((\Con|TimeCount2|no\(6) & ((!\Con|TimeCount2|Add0~137\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount2|no\(6),
	cin => \Con|TimeCount2|Add0~137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~130_combout\,
	cout0 => \Con|TimeCount2|Add0~132\,
	cout1 => \Con|TimeCount2|Add0~132COUT1_165\);

-- Location: LC_X14_Y3_N7
\Con|TimeCount2|no[6]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(6) = DFFEAS((((\Con|TimeCount2|Add0~130_combout\))), \Con|TimeCount1|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount1|car~regout\,
	datad => \Con|TimeCount2|Add0~130_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(6));

-- Location: LC_X14_Y2_N1
\Con|TimeCount2|Add0~125\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~125_combout\ = (\Con|TimeCount2|no\(7) $ (((!\Con|TimeCount2|Add0~137\ & \Con|TimeCount2|Add0~132\) # (\Con|TimeCount2|Add0~137\ & \Con|TimeCount2|Add0~132COUT1_165\))))
-- \Con|TimeCount2|Add0~127\ = CARRY(((!\Con|TimeCount2|Add0~132\) # (!\Con|TimeCount2|no\(7))))
-- \Con|TimeCount2|Add0~127COUT1_166\ = CARRY(((!\Con|TimeCount2|Add0~132COUT1_165\) # (!\Con|TimeCount2|no\(7))))

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
	datab => \Con|TimeCount2|no\(7),
	cin => \Con|TimeCount2|Add0~137\,
	cin0 => \Con|TimeCount2|Add0~132\,
	cin1 => \Con|TimeCount2|Add0~132COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~125_combout\,
	cout0 => \Con|TimeCount2|Add0~127\,
	cout1 => \Con|TimeCount2|Add0~127COUT1_166\);

-- Location: LC_X14_Y3_N3
\Con|TimeCount2|no[7]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal0~7\ = (!\Con|TimeCount2|no\(4) & (!\Con|TimeCount2|no\(6) & (!K3_no[7] & !\Con|TimeCount2|no\(5))))
-- \Con|TimeCount2|no\(7) = DFFEAS(\Con|TimeCount2|Equal0~7\, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	dataa => \Con|TimeCount2|no\(4),
	datab => \Con|TimeCount2|no\(6),
	datac => \Con|TimeCount2|Add0~125_combout\,
	datad => \Con|TimeCount2|no\(5),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal0~7\,
	regout => \Con|TimeCount2|no\(7));

-- Location: LC_X14_Y2_N2
\Con|TimeCount2|Add0~120\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~120_combout\ = (\Con|TimeCount2|no\(8) $ ((!(!\Con|TimeCount2|Add0~137\ & \Con|TimeCount2|Add0~127\) # (\Con|TimeCount2|Add0~137\ & \Con|TimeCount2|Add0~127COUT1_166\))))
-- \Con|TimeCount2|Add0~122\ = CARRY(((\Con|TimeCount2|no\(8) & !\Con|TimeCount2|Add0~127\)))
-- \Con|TimeCount2|Add0~122COUT1_167\ = CARRY(((\Con|TimeCount2|no\(8) & !\Con|TimeCount2|Add0~127COUT1_166\)))

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
	datab => \Con|TimeCount2|no\(8),
	cin => \Con|TimeCount2|Add0~137\,
	cin0 => \Con|TimeCount2|Add0~127\,
	cin1 => \Con|TimeCount2|Add0~127COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~120_combout\,
	cout0 => \Con|TimeCount2|Add0~122\,
	cout1 => \Con|TimeCount2|Add0~122COUT1_167\);

-- Location: LC_X14_Y3_N8
\Con|TimeCount2|no[8]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(8) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~120_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~120_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(8));

-- Location: LC_X14_Y2_N3
\Con|TimeCount2|Add0~115\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~115_combout\ = (\Con|TimeCount2|no\(9) $ (((!\Con|TimeCount2|Add0~137\ & \Con|TimeCount2|Add0~122\) # (\Con|TimeCount2|Add0~137\ & \Con|TimeCount2|Add0~122COUT1_167\))))
-- \Con|TimeCount2|Add0~117\ = CARRY(((!\Con|TimeCount2|Add0~122\) # (!\Con|TimeCount2|no\(9))))
-- \Con|TimeCount2|Add0~117COUT1_168\ = CARRY(((!\Con|TimeCount2|Add0~122COUT1_167\) # (!\Con|TimeCount2|no\(9))))

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
	datab => \Con|TimeCount2|no\(9),
	cin => \Con|TimeCount2|Add0~137\,
	cin0 => \Con|TimeCount2|Add0~122\,
	cin1 => \Con|TimeCount2|Add0~122COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~115_combout\,
	cout0 => \Con|TimeCount2|Add0~117\,
	cout1 => \Con|TimeCount2|Add0~117COUT1_168\);

-- Location: LC_X14_Y3_N2
\Con|TimeCount2|no[9]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(9) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~115_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~115_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(9));

-- Location: LC_X14_Y2_N4
\Con|TimeCount2|Add0~110\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~110_combout\ = \Con|TimeCount2|no\(10) $ ((((!(!\Con|TimeCount2|Add0~137\ & \Con|TimeCount2|Add0~117\) # (\Con|TimeCount2|Add0~137\ & \Con|TimeCount2|Add0~117COUT1_168\)))))
-- \Con|TimeCount2|Add0~112\ = CARRY((\Con|TimeCount2|no\(10) & ((!\Con|TimeCount2|Add0~117COUT1_168\))))

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
	dataa => \Con|TimeCount2|no\(10),
	cin => \Con|TimeCount2|Add0~137\,
	cin0 => \Con|TimeCount2|Add0~117\,
	cin1 => \Con|TimeCount2|Add0~117COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~110_combout\,
	cout => \Con|TimeCount2|Add0~112\);

-- Location: LC_X14_Y3_N5
\Con|TimeCount2|no[10]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(10) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~110_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~110_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(10));

-- Location: LC_X14_Y3_N6
\Con|TimeCount2|no[11]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal0~6\ = (!\Con|TimeCount2|no\(10) & (!\Con|TimeCount2|no\(9) & (!K3_no[11] & !\Con|TimeCount2|no\(8))))
-- \Con|TimeCount2|no\(11) = DFFEAS(\Con|TimeCount2|Equal0~6\, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	dataa => \Con|TimeCount2|no\(10),
	datab => \Con|TimeCount2|no\(9),
	datac => \Con|TimeCount2|Add0~105_combout\,
	datad => \Con|TimeCount2|no\(8),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal0~6\,
	regout => \Con|TimeCount2|no\(11));

-- Location: LC_X14_Y2_N5
\Con|TimeCount2|Add0~105\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~105_combout\ = (\Con|TimeCount2|no\(11) $ ((\Con|TimeCount2|Add0~112\)))
-- \Con|TimeCount2|Add0~107\ = CARRY(((!\Con|TimeCount2|Add0~112\) # (!\Con|TimeCount2|no\(11))))
-- \Con|TimeCount2|Add0~107COUT1_169\ = CARRY(((!\Con|TimeCount2|Add0~112\) # (!\Con|TimeCount2|no\(11))))

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
	datab => \Con|TimeCount2|no\(11),
	cin => \Con|TimeCount2|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~105_combout\,
	cout0 => \Con|TimeCount2|Add0~107\,
	cout1 => \Con|TimeCount2|Add0~107COUT1_169\);

-- Location: LC_X14_Y2_N6
\Con|TimeCount2|Add0~100\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~100_combout\ = (\Con|TimeCount2|no\(12) $ ((!(!\Con|TimeCount2|Add0~112\ & \Con|TimeCount2|Add0~107\) # (\Con|TimeCount2|Add0~112\ & \Con|TimeCount2|Add0~107COUT1_169\))))
-- \Con|TimeCount2|Add0~102\ = CARRY(((\Con|TimeCount2|no\(12) & !\Con|TimeCount2|Add0~107\)))
-- \Con|TimeCount2|Add0~102COUT1_170\ = CARRY(((\Con|TimeCount2|no\(12) & !\Con|TimeCount2|Add0~107COUT1_169\)))

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
	datab => \Con|TimeCount2|no\(12),
	cin => \Con|TimeCount2|Add0~112\,
	cin0 => \Con|TimeCount2|Add0~107\,
	cin1 => \Con|TimeCount2|Add0~107COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~100_combout\,
	cout0 => \Con|TimeCount2|Add0~102\,
	cout1 => \Con|TimeCount2|Add0~102COUT1_170\);

-- Location: LC_X15_Y3_N6
\Con|TimeCount2|no[12]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(12) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~100_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~100_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(12));

-- Location: LC_X14_Y2_N7
\Con|TimeCount2|Add0~95\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~95_combout\ = (\Con|TimeCount2|no\(13) $ (((!\Con|TimeCount2|Add0~112\ & \Con|TimeCount2|Add0~102\) # (\Con|TimeCount2|Add0~112\ & \Con|TimeCount2|Add0~102COUT1_170\))))
-- \Con|TimeCount2|Add0~97\ = CARRY(((!\Con|TimeCount2|Add0~102\) # (!\Con|TimeCount2|no\(13))))
-- \Con|TimeCount2|Add0~97COUT1_171\ = CARRY(((!\Con|TimeCount2|Add0~102COUT1_170\) # (!\Con|TimeCount2|no\(13))))

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
	datab => \Con|TimeCount2|no\(13),
	cin => \Con|TimeCount2|Add0~112\,
	cin0 => \Con|TimeCount2|Add0~102\,
	cin1 => \Con|TimeCount2|Add0~102COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~95_combout\,
	cout0 => \Con|TimeCount2|Add0~97\,
	cout1 => \Con|TimeCount2|Add0~97COUT1_171\);

-- Location: LC_X15_Y3_N9
\Con|TimeCount2|no[13]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(13) = DFFEAS((((\Con|TimeCount2|Add0~95_combout\))), \Con|TimeCount1|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount1|car~regout\,
	datad => \Con|TimeCount2|Add0~95_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(13));

-- Location: LC_X14_Y2_N8
\Con|TimeCount2|Add0~90\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~90_combout\ = (\Con|TimeCount2|no\(14) $ ((!(!\Con|TimeCount2|Add0~112\ & \Con|TimeCount2|Add0~97\) # (\Con|TimeCount2|Add0~112\ & \Con|TimeCount2|Add0~97COUT1_171\))))
-- \Con|TimeCount2|Add0~92\ = CARRY(((\Con|TimeCount2|no\(14) & !\Con|TimeCount2|Add0~97\)))
-- \Con|TimeCount2|Add0~92COUT1_172\ = CARRY(((\Con|TimeCount2|no\(14) & !\Con|TimeCount2|Add0~97COUT1_171\)))

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
	datab => \Con|TimeCount2|no\(14),
	cin => \Con|TimeCount2|Add0~112\,
	cin0 => \Con|TimeCount2|Add0~97\,
	cin1 => \Con|TimeCount2|Add0~97COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~90_combout\,
	cout0 => \Con|TimeCount2|Add0~92\,
	cout1 => \Con|TimeCount2|Add0~92COUT1_172\);

-- Location: LC_X15_Y3_N4
\Con|TimeCount2|no[14]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(14) = DFFEAS((((\Con|TimeCount2|Add0~90_combout\))), \Con|TimeCount1|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount1|car~regout\,
	datad => \Con|TimeCount2|Add0~90_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(14));

-- Location: LC_X15_Y3_N2
\Con|TimeCount2|no[15]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal0~5\ = (!\Con|TimeCount2|no\(12) & (!\Con|TimeCount2|no\(13) & (!K3_no[15] & !\Con|TimeCount2|no\(14))))
-- \Con|TimeCount2|no\(15) = DFFEAS(\Con|TimeCount2|Equal0~5\, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	dataa => \Con|TimeCount2|no\(12),
	datab => \Con|TimeCount2|no\(13),
	datac => \Con|TimeCount2|Add0~85_combout\,
	datad => \Con|TimeCount2|no\(14),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal0~5\,
	regout => \Con|TimeCount2|no\(15));

-- Location: LC_X14_Y2_N9
\Con|TimeCount2|Add0~85\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~85_combout\ = \Con|TimeCount2|no\(15) $ (((((!\Con|TimeCount2|Add0~112\ & \Con|TimeCount2|Add0~92\) # (\Con|TimeCount2|Add0~112\ & \Con|TimeCount2|Add0~92COUT1_172\)))))
-- \Con|TimeCount2|Add0~87\ = CARRY(((!\Con|TimeCount2|Add0~92COUT1_172\)) # (!\Con|TimeCount2|no\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount2|no\(15),
	cin => \Con|TimeCount2|Add0~112\,
	cin0 => \Con|TimeCount2|Add0~92\,
	cin1 => \Con|TimeCount2|Add0~92COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~85_combout\,
	cout => \Con|TimeCount2|Add0~87\);

-- Location: LC_X15_Y2_N0
\Con|TimeCount2|Add0~80\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~80_combout\ = (\Con|TimeCount2|no\(16) $ ((!\Con|TimeCount2|Add0~87\)))
-- \Con|TimeCount2|Add0~82\ = CARRY(((\Con|TimeCount2|no\(16) & !\Con|TimeCount2|Add0~87\)))
-- \Con|TimeCount2|Add0~82COUT1_173\ = CARRY(((\Con|TimeCount2|no\(16) & !\Con|TimeCount2|Add0~87\)))

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
	datab => \Con|TimeCount2|no\(16),
	cin => \Con|TimeCount2|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~80_combout\,
	cout0 => \Con|TimeCount2|Add0~82\,
	cout1 => \Con|TimeCount2|Add0~82COUT1_173\);

-- Location: LC_X15_Y3_N8
\Con|TimeCount2|no[16]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(16) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~80_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~80_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(16));

-- Location: LC_X15_Y2_N1
\Con|TimeCount2|Add0~75\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~75_combout\ = (\Con|TimeCount2|no\(17) $ (((!\Con|TimeCount2|Add0~87\ & \Con|TimeCount2|Add0~82\) # (\Con|TimeCount2|Add0~87\ & \Con|TimeCount2|Add0~82COUT1_173\))))
-- \Con|TimeCount2|Add0~77\ = CARRY(((!\Con|TimeCount2|Add0~82\) # (!\Con|TimeCount2|no\(17))))
-- \Con|TimeCount2|Add0~77COUT1_174\ = CARRY(((!\Con|TimeCount2|Add0~82COUT1_173\) # (!\Con|TimeCount2|no\(17))))

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
	datab => \Con|TimeCount2|no\(17),
	cin => \Con|TimeCount2|Add0~87\,
	cin0 => \Con|TimeCount2|Add0~82\,
	cin1 => \Con|TimeCount2|Add0~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~75_combout\,
	cout0 => \Con|TimeCount2|Add0~77\,
	cout1 => \Con|TimeCount2|Add0~77COUT1_174\);

-- Location: LC_X15_Y3_N3
\Con|TimeCount2|no[17]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(17) = DFFEAS((((\Con|TimeCount2|Add0~75_combout\))), \Con|TimeCount1|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount1|car~regout\,
	datad => \Con|TimeCount2|Add0~75_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(17));

-- Location: LC_X15_Y2_N2
\Con|TimeCount2|Add0~70\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~70_combout\ = (\Con|TimeCount2|no\(18) $ ((!(!\Con|TimeCount2|Add0~87\ & \Con|TimeCount2|Add0~77\) # (\Con|TimeCount2|Add0~87\ & \Con|TimeCount2|Add0~77COUT1_174\))))
-- \Con|TimeCount2|Add0~72\ = CARRY(((\Con|TimeCount2|no\(18) & !\Con|TimeCount2|Add0~77\)))
-- \Con|TimeCount2|Add0~72COUT1_175\ = CARRY(((\Con|TimeCount2|no\(18) & !\Con|TimeCount2|Add0~77COUT1_174\)))

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
	datab => \Con|TimeCount2|no\(18),
	cin => \Con|TimeCount2|Add0~87\,
	cin0 => \Con|TimeCount2|Add0~77\,
	cin1 => \Con|TimeCount2|Add0~77COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~70_combout\,
	cout0 => \Con|TimeCount2|Add0~72\,
	cout1 => \Con|TimeCount2|Add0~72COUT1_175\);

-- Location: LC_X15_Y3_N1
\Con|TimeCount2|no[18]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(18) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~70_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~70_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(18));

-- Location: LC_X15_Y2_N3
\Con|TimeCount2|Add0~65\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~65_combout\ = (\Con|TimeCount2|no\(19) $ (((!\Con|TimeCount2|Add0~87\ & \Con|TimeCount2|Add0~72\) # (\Con|TimeCount2|Add0~87\ & \Con|TimeCount2|Add0~72COUT1_175\))))
-- \Con|TimeCount2|Add0~67\ = CARRY(((!\Con|TimeCount2|Add0~72\) # (!\Con|TimeCount2|no\(19))))
-- \Con|TimeCount2|Add0~67COUT1_176\ = CARRY(((!\Con|TimeCount2|Add0~72COUT1_175\) # (!\Con|TimeCount2|no\(19))))

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
	datab => \Con|TimeCount2|no\(19),
	cin => \Con|TimeCount2|Add0~87\,
	cin0 => \Con|TimeCount2|Add0~72\,
	cin1 => \Con|TimeCount2|Add0~72COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~65_combout\,
	cout0 => \Con|TimeCount2|Add0~67\,
	cout1 => \Con|TimeCount2|Add0~67COUT1_176\);

-- Location: LC_X16_Y3_N1
\Con|TimeCount2|no[19]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal0~3\ = (!\Con|TimeCount2|no\(18) & (!\Con|TimeCount2|no\(17) & (!K3_no[19] & !\Con|TimeCount2|no\(16))))
-- \Con|TimeCount2|no\(19) = DFFEAS(\Con|TimeCount2|Equal0~3\, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	dataa => \Con|TimeCount2|no\(18),
	datab => \Con|TimeCount2|no\(17),
	datac => \Con|TimeCount2|Add0~65_combout\,
	datad => \Con|TimeCount2|no\(16),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal0~3\,
	regout => \Con|TimeCount2|no\(19));

-- Location: LC_X15_Y2_N4
\Con|TimeCount2|Add0~60\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~60_combout\ = \Con|TimeCount2|no\(20) $ ((((!(!\Con|TimeCount2|Add0~87\ & \Con|TimeCount2|Add0~67\) # (\Con|TimeCount2|Add0~87\ & \Con|TimeCount2|Add0~67COUT1_176\)))))
-- \Con|TimeCount2|Add0~62\ = CARRY((\Con|TimeCount2|no\(20) & ((!\Con|TimeCount2|Add0~67COUT1_176\))))

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
	dataa => \Con|TimeCount2|no\(20),
	cin => \Con|TimeCount2|Add0~87\,
	cin0 => \Con|TimeCount2|Add0~67\,
	cin1 => \Con|TimeCount2|Add0~67COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~60_combout\,
	cout => \Con|TimeCount2|Add0~62\);

-- Location: LC_X16_Y3_N2
\Con|TimeCount2|no[20]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(20) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~60_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~60_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(20));

-- Location: LC_X15_Y2_N5
\Con|TimeCount2|Add0~55\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~55_combout\ = (\Con|TimeCount2|no\(21) $ ((\Con|TimeCount2|Add0~62\)))
-- \Con|TimeCount2|Add0~57\ = CARRY(((!\Con|TimeCount2|Add0~62\) # (!\Con|TimeCount2|no\(21))))
-- \Con|TimeCount2|Add0~57COUT1_177\ = CARRY(((!\Con|TimeCount2|Add0~62\) # (!\Con|TimeCount2|no\(21))))

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
	datab => \Con|TimeCount2|no\(21),
	cin => \Con|TimeCount2|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~55_combout\,
	cout0 => \Con|TimeCount2|Add0~57\,
	cout1 => \Con|TimeCount2|Add0~57COUT1_177\);

-- Location: LC_X16_Y3_N6
\Con|TimeCount2|no[21]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(21) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~55_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~55_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(21));

-- Location: LC_X15_Y2_N6
\Con|TimeCount2|Add0~50\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~50_combout\ = (\Con|TimeCount2|no\(22) $ ((!(!\Con|TimeCount2|Add0~62\ & \Con|TimeCount2|Add0~57\) # (\Con|TimeCount2|Add0~62\ & \Con|TimeCount2|Add0~57COUT1_177\))))
-- \Con|TimeCount2|Add0~52\ = CARRY(((\Con|TimeCount2|no\(22) & !\Con|TimeCount2|Add0~57\)))
-- \Con|TimeCount2|Add0~52COUT1_178\ = CARRY(((\Con|TimeCount2|no\(22) & !\Con|TimeCount2|Add0~57COUT1_177\)))

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
	datab => \Con|TimeCount2|no\(22),
	cin => \Con|TimeCount2|Add0~62\,
	cin0 => \Con|TimeCount2|Add0~57\,
	cin1 => \Con|TimeCount2|Add0~57COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~50_combout\,
	cout0 => \Con|TimeCount2|Add0~52\,
	cout1 => \Con|TimeCount2|Add0~52COUT1_178\);

-- Location: LC_X16_Y3_N9
\Con|TimeCount2|no[22]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(22) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~50_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~50_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(22));

-- Location: LC_X16_Y3_N3
\Con|TimeCount2|no[23]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal0~2\ = (!\Con|TimeCount2|no\(21) & (!\Con|TimeCount2|no\(20) & (!K3_no[23] & !\Con|TimeCount2|no\(22))))
-- \Con|TimeCount2|no\(23) = DFFEAS(\Con|TimeCount2|Equal0~2\, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	dataa => \Con|TimeCount2|no\(21),
	datab => \Con|TimeCount2|no\(20),
	datac => \Con|TimeCount2|Add0~45_combout\,
	datad => \Con|TimeCount2|no\(22),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal0~2\,
	regout => \Con|TimeCount2|no\(23));

-- Location: LC_X15_Y2_N7
\Con|TimeCount2|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~45_combout\ = (\Con|TimeCount2|no\(23) $ (((!\Con|TimeCount2|Add0~62\ & \Con|TimeCount2|Add0~52\) # (\Con|TimeCount2|Add0~62\ & \Con|TimeCount2|Add0~52COUT1_178\))))
-- \Con|TimeCount2|Add0~47\ = CARRY(((!\Con|TimeCount2|Add0~52\) # (!\Con|TimeCount2|no\(23))))
-- \Con|TimeCount2|Add0~47COUT1_179\ = CARRY(((!\Con|TimeCount2|Add0~52COUT1_178\) # (!\Con|TimeCount2|no\(23))))

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
	datab => \Con|TimeCount2|no\(23),
	cin => \Con|TimeCount2|Add0~62\,
	cin0 => \Con|TimeCount2|Add0~52\,
	cin1 => \Con|TimeCount2|Add0~52COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~45_combout\,
	cout0 => \Con|TimeCount2|Add0~47\,
	cout1 => \Con|TimeCount2|Add0~47COUT1_179\);

-- Location: LC_X15_Y2_N8
\Con|TimeCount2|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~40_combout\ = \Con|TimeCount2|no\(24) $ ((((!(!\Con|TimeCount2|Add0~62\ & \Con|TimeCount2|Add0~47\) # (\Con|TimeCount2|Add0~62\ & \Con|TimeCount2|Add0~47COUT1_179\)))))
-- \Con|TimeCount2|Add0~42\ = CARRY((\Con|TimeCount2|no\(24) & ((!\Con|TimeCount2|Add0~47\))))
-- \Con|TimeCount2|Add0~42COUT1_180\ = CARRY((\Con|TimeCount2|no\(24) & ((!\Con|TimeCount2|Add0~47COUT1_179\))))

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
	dataa => \Con|TimeCount2|no\(24),
	cin => \Con|TimeCount2|Add0~62\,
	cin0 => \Con|TimeCount2|Add0~47\,
	cin1 => \Con|TimeCount2|Add0~47COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~40_combout\,
	cout0 => \Con|TimeCount2|Add0~42\,
	cout1 => \Con|TimeCount2|Add0~42COUT1_180\);

-- Location: LC_X15_Y3_N5
\Con|TimeCount2|no[24]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(24) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~40_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~40_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(24));

-- Location: LC_X15_Y2_N9
\Con|TimeCount2|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~35_combout\ = \Con|TimeCount2|no\(25) $ (((((!\Con|TimeCount2|Add0~62\ & \Con|TimeCount2|Add0~42\) # (\Con|TimeCount2|Add0~62\ & \Con|TimeCount2|Add0~42COUT1_180\)))))
-- \Con|TimeCount2|Add0~37\ = CARRY(((!\Con|TimeCount2|Add0~42COUT1_180\)) # (!\Con|TimeCount2|no\(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount2|no\(25),
	cin => \Con|TimeCount2|Add0~62\,
	cin0 => \Con|TimeCount2|Add0~42\,
	cin1 => \Con|TimeCount2|Add0~42COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~35_combout\,
	cout => \Con|TimeCount2|Add0~37\);

-- Location: LC_X15_Y3_N7
\Con|TimeCount2|no[25]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(25) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~35_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~35_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(25));

-- Location: LC_X16_Y2_N0
\Con|TimeCount2|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~30_combout\ = \Con|TimeCount2|no\(26) $ ((((!\Con|TimeCount2|Add0~37\))))
-- \Con|TimeCount2|Add0~32\ = CARRY((\Con|TimeCount2|no\(26) & ((!\Con|TimeCount2|Add0~37\))))
-- \Con|TimeCount2|Add0~32COUT1_181\ = CARRY((\Con|TimeCount2|no\(26) & ((!\Con|TimeCount2|Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount2|no\(26),
	cin => \Con|TimeCount2|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~30_combout\,
	cout0 => \Con|TimeCount2|Add0~32\,
	cout1 => \Con|TimeCount2|Add0~32COUT1_181\);

-- Location: LC_X16_Y2_N6
\Con|TimeCount2|no[26]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(26) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~30_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~30_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(26));

-- Location: LC_X16_Y2_N1
\Con|TimeCount2|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~25_combout\ = \Con|TimeCount2|no\(27) $ (((((!\Con|TimeCount2|Add0~37\ & \Con|TimeCount2|Add0~32\) # (\Con|TimeCount2|Add0~37\ & \Con|TimeCount2|Add0~32COUT1_181\)))))
-- \Con|TimeCount2|Add0~27\ = CARRY(((!\Con|TimeCount2|Add0~32\)) # (!\Con|TimeCount2|no\(27)))
-- \Con|TimeCount2|Add0~27COUT1_182\ = CARRY(((!\Con|TimeCount2|Add0~32COUT1_181\)) # (!\Con|TimeCount2|no\(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount2|no\(27),
	cin => \Con|TimeCount2|Add0~37\,
	cin0 => \Con|TimeCount2|Add0~32\,
	cin1 => \Con|TimeCount2|Add0~32COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~25_combout\,
	cout0 => \Con|TimeCount2|Add0~27\,
	cout1 => \Con|TimeCount2|Add0~27COUT1_182\);

-- Location: LC_X16_Y2_N8
\Con|TimeCount2|no[27]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal0~1\ = (!\Con|TimeCount2|no\(26) & (!\Con|TimeCount2|no\(25) & (!K3_no[27] & !\Con|TimeCount2|no\(24))))
-- \Con|TimeCount2|no\(27) = DFFEAS(\Con|TimeCount2|Equal0~1\, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	dataa => \Con|TimeCount2|no\(26),
	datab => \Con|TimeCount2|no\(25),
	datac => \Con|TimeCount2|Add0~25_combout\,
	datad => \Con|TimeCount2|no\(24),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal0~1\,
	regout => \Con|TimeCount2|no\(27));

-- Location: LC_X16_Y2_N2
\Con|TimeCount2|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~20_combout\ = (\Con|TimeCount2|no\(28) $ ((!(!\Con|TimeCount2|Add0~37\ & \Con|TimeCount2|Add0~27\) # (\Con|TimeCount2|Add0~37\ & \Con|TimeCount2|Add0~27COUT1_182\))))
-- \Con|TimeCount2|Add0~22\ = CARRY(((\Con|TimeCount2|no\(28) & !\Con|TimeCount2|Add0~27\)))
-- \Con|TimeCount2|Add0~22COUT1_183\ = CARRY(((\Con|TimeCount2|no\(28) & !\Con|TimeCount2|Add0~27COUT1_182\)))

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
	datab => \Con|TimeCount2|no\(28),
	cin => \Con|TimeCount2|Add0~37\,
	cin0 => \Con|TimeCount2|Add0~27\,
	cin1 => \Con|TimeCount2|Add0~27COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~20_combout\,
	cout0 => \Con|TimeCount2|Add0~22\,
	cout1 => \Con|TimeCount2|Add0~22COUT1_183\);

-- Location: LC_X16_Y3_N5
\Con|TimeCount2|no[28]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(28) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~20_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~20_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(28));

-- Location: LC_X16_Y2_N3
\Con|TimeCount2|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~15_combout\ = (\Con|TimeCount2|no\(29) $ (((!\Con|TimeCount2|Add0~37\ & \Con|TimeCount2|Add0~22\) # (\Con|TimeCount2|Add0~37\ & \Con|TimeCount2|Add0~22COUT1_183\))))
-- \Con|TimeCount2|Add0~17\ = CARRY(((!\Con|TimeCount2|Add0~22\) # (!\Con|TimeCount2|no\(29))))
-- \Con|TimeCount2|Add0~17COUT1_184\ = CARRY(((!\Con|TimeCount2|Add0~22COUT1_183\) # (!\Con|TimeCount2|no\(29))))

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
	datab => \Con|TimeCount2|no\(29),
	cin => \Con|TimeCount2|Add0~37\,
	cin0 => \Con|TimeCount2|Add0~22\,
	cin1 => \Con|TimeCount2|Add0~22COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~15_combout\,
	cout0 => \Con|TimeCount2|Add0~17\,
	cout1 => \Con|TimeCount2|Add0~17COUT1_184\);

-- Location: LC_X16_Y2_N9
\Con|TimeCount2|no[29]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(29) = DFFEAS((((\Con|TimeCount2|Add0~15_combout\))), \Con|TimeCount1|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount1|car~regout\,
	datad => \Con|TimeCount2|Add0~15_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(29));

-- Location: LC_X16_Y2_N4
\Con|TimeCount2|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~10_combout\ = (\Con|TimeCount2|no\(30) $ ((!(!\Con|TimeCount2|Add0~37\ & \Con|TimeCount2|Add0~17\) # (\Con|TimeCount2|Add0~37\ & \Con|TimeCount2|Add0~17COUT1_184\))))
-- \Con|TimeCount2|Add0~12\ = CARRY(((\Con|TimeCount2|no\(30) & !\Con|TimeCount2|Add0~17COUT1_184\)))

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
	datab => \Con|TimeCount2|no\(30),
	cin => \Con|TimeCount2|Add0~37\,
	cin0 => \Con|TimeCount2|Add0~17\,
	cin1 => \Con|TimeCount2|Add0~17COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~10_combout\,
	cout => \Con|TimeCount2|Add0~12\);

-- Location: LC_X16_Y2_N7
\Con|TimeCount2|no[30]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(30) = DFFEAS(GND, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~10_combout\, , , VCC)

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
	clk => \Con|TimeCount1|car~regout\,
	datac => \Con|TimeCount2|Add0~10_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(30));

-- Location: LC_X16_Y3_N4
\Con|TimeCount2|no[31]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal0~0\ = (!\Con|TimeCount2|no\(28) & (!\Con|TimeCount2|no\(29) & (!K3_no[31] & !\Con|TimeCount2|no\(30))))
-- \Con|TimeCount2|no\(31) = DFFEAS(\Con|TimeCount2|Equal0~0\, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	dataa => \Con|TimeCount2|no\(28),
	datab => \Con|TimeCount2|no\(29),
	datac => \Con|TimeCount2|Add0~5_combout\,
	datad => \Con|TimeCount2|no\(30),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal0~0\,
	regout => \Con|TimeCount2|no\(31));

-- Location: LC_X16_Y2_N5
\Con|TimeCount2|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Add0~5_combout\ = ((\Con|TimeCount2|Add0~12\ $ (\Con|TimeCount2|no\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Con|TimeCount2|no\(31),
	cin => \Con|TimeCount2|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Add0~5_combout\);

-- Location: LC_X16_Y3_N7
\Con|TimeCount2|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal0~4_combout\ = (\Con|TimeCount2|Equal0~2\ & (\Con|TimeCount2|Equal0~3\ & (\Con|TimeCount2|Equal0~0\ & \Con|TimeCount2|Equal0~1\)))

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
	dataa => \Con|TimeCount2|Equal0~2\,
	datab => \Con|TimeCount2|Equal0~3\,
	datac => \Con|TimeCount2|Equal0~0\,
	datad => \Con|TimeCount2|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal0~4_combout\);

-- Location: LC_X16_Y3_N8
\Con|TimeCount2|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal0~8_combout\ = (\Con|TimeCount2|Equal0~6\ & (\Con|TimeCount2|Equal0~5\ & (\Con|TimeCount2|Equal0~7\ & \Con|TimeCount2|Equal0~4_combout\)))

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
	dataa => \Con|TimeCount2|Equal0~6\,
	datab => \Con|TimeCount2|Equal0~5\,
	datac => \Con|TimeCount2|Equal0~7\,
	datad => \Con|TimeCount2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal0~8_combout\);

-- Location: LC_X16_Y3_N0
\Con|TimeCount2|no[2]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal0~9\ = ((!\Con|TimeCount2|no\(3) & (!K3_no[2] & \Con|TimeCount2|Equal0~8_combout\)))
-- \Con|TimeCount2|no\(2) = DFFEAS(\Con|TimeCount2|Equal0~9\, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	datab => \Con|TimeCount2|no\(3),
	datac => \Con|TimeCount2|Add0~150_combout\,
	datad => \Con|TimeCount2|Equal0~8_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal0~9\,
	regout => \Con|TimeCount2|no\(2));

-- Location: LC_X13_Y2_N1
\Con|TimeCount2|no[3]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|no\(3) = DFFEAS(((\Con|TimeCount2|Add0~145_combout\ & ((!\Con|TimeCount2|Equal8~0_combout\) # (!\Con|TimeCount2|no\(0))))), \Con|TimeCount1|car~regout\, \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	datab => \Con|TimeCount2|no\(0),
	datac => \Con|TimeCount2|Add0~145_combout\,
	datad => \Con|TimeCount2|Equal8~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|no\(3));

-- Location: LC_X12_Y3_N2
\Con|TimeCount2|Equal8~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal8~0_combout\ = (\Con|TimeCount2|no\(3) & (\Con|TimeCount2|Equal0~8_combout\ & (!\Con|TimeCount2|no\(2) & !\Con|TimeCount2|no\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount2|no\(3),
	datab => \Con|TimeCount2|Equal0~8_combout\,
	datac => \Con|TimeCount2|no\(2),
	datad => \Con|TimeCount2|no\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal8~0_combout\);

-- Location: LC_X13_Y2_N2
\Con|TimeCount2|no[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_data~18\ = ((!col(0) & ((K3_no[0]) # (!\Con|TimeCount2|Equal8~0_combout\))))
-- \Con|TimeCount2|no\(0) = DFFEAS(\lcd_data~18\, \Con|TimeCount1|car~regout\, \NReset~combout\, , , \Con|TimeCount2|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3033",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	datab => col(0),
	datac => \Con|TimeCount2|Add0~0_combout\,
	datad => \Con|TimeCount2|Equal8~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~18\,
	regout => \Con|TimeCount2|no\(0));

-- Location: LC_X11_Y5_N0
\Con|TimeCount2|car\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|car~regout\ = DFFEAS(((\Con|TimeCount2|no\(0) & (\Con|TimeCount2|Equal8~0_combout\))), \Con|TimeCount1|car~regout\, VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount1|car~regout\,
	datab => \Con|TimeCount2|no\(0),
	datac => \Con|TimeCount2|Equal8~0_combout\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount2|car~regout\);

-- Location: LC_X13_Y5_N4
\Con|TimeCount3|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~0_combout\ = ((!\Con|TimeCount3|no\(0)))
-- \Con|TimeCount3|Add0~2\ = CARRY(((\Con|TimeCount3|no\(0))))

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
	datab => \Con|TimeCount3|no\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~0_combout\,
	cout => \Con|TimeCount3|Add0~2\);

-- Location: LC_X13_Y5_N5
\Con|TimeCount3|Add0~155\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~155_combout\ = (\Con|TimeCount3|no\(1) $ ((\Con|TimeCount3|Add0~2\)))
-- \Con|TimeCount3|Add0~157\ = CARRY(((!\Con|TimeCount3|Add0~2\) # (!\Con|TimeCount3|no\(1))))
-- \Con|TimeCount3|Add0~157COUT1_161\ = CARRY(((!\Con|TimeCount3|Add0~2\) # (!\Con|TimeCount3|no\(1))))

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
	datab => \Con|TimeCount3|no\(1),
	cin => \Con|TimeCount3|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~155_combout\,
	cout0 => \Con|TimeCount3|Add0~157\,
	cout1 => \Con|TimeCount3|Add0~157COUT1_161\);

-- Location: LC_X13_Y5_N6
\Con|TimeCount3|Add0~145\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~145_combout\ = (\Con|TimeCount3|no\(2) $ ((!(!\Con|TimeCount3|Add0~2\ & \Con|TimeCount3|Add0~157\) # (\Con|TimeCount3|Add0~2\ & \Con|TimeCount3|Add0~157COUT1_161\))))
-- \Con|TimeCount3|Add0~147\ = CARRY(((\Con|TimeCount3|no\(2) & !\Con|TimeCount3|Add0~157\)))
-- \Con|TimeCount3|Add0~147COUT1_162\ = CARRY(((\Con|TimeCount3|no\(2) & !\Con|TimeCount3|Add0~157COUT1_161\)))

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
	datab => \Con|TimeCount3|no\(2),
	cin => \Con|TimeCount3|Add0~2\,
	cin0 => \Con|TimeCount3|Add0~157\,
	cin1 => \Con|TimeCount3|Add0~157COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~145_combout\,
	cout0 => \Con|TimeCount3|Add0~147\,
	cout1 => \Con|TimeCount3|Add0~147COUT1_162\);

-- Location: LC_X13_Y5_N7
\Con|TimeCount3|Add0~150\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~150_combout\ = \Con|TimeCount3|no\(3) $ (((((!\Con|TimeCount3|Add0~2\ & \Con|TimeCount3|Add0~147\) # (\Con|TimeCount3|Add0~2\ & \Con|TimeCount3|Add0~147COUT1_162\)))))
-- \Con|TimeCount3|Add0~152\ = CARRY(((!\Con|TimeCount3|Add0~147\)) # (!\Con|TimeCount3|no\(3)))
-- \Con|TimeCount3|Add0~152COUT1_163\ = CARRY(((!\Con|TimeCount3|Add0~147COUT1_162\)) # (!\Con|TimeCount3|no\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(3),
	cin => \Con|TimeCount3|Add0~2\,
	cin0 => \Con|TimeCount3|Add0~147\,
	cin1 => \Con|TimeCount3|Add0~147COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~150_combout\,
	cout0 => \Con|TimeCount3|Add0~152\,
	cout1 => \Con|TimeCount3|Add0~152COUT1_163\);

-- Location: LC_X13_Y5_N8
\Con|TimeCount3|Add0~140\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~140_combout\ = (\Con|TimeCount3|no\(4) $ ((!(!\Con|TimeCount3|Add0~2\ & \Con|TimeCount3|Add0~152\) # (\Con|TimeCount3|Add0~2\ & \Con|TimeCount3|Add0~152COUT1_163\))))
-- \Con|TimeCount3|Add0~142\ = CARRY(((\Con|TimeCount3|no\(4) & !\Con|TimeCount3|Add0~152\)))
-- \Con|TimeCount3|Add0~142COUT1_164\ = CARRY(((\Con|TimeCount3|no\(4) & !\Con|TimeCount3|Add0~152COUT1_163\)))

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
	datab => \Con|TimeCount3|no\(4),
	cin => \Con|TimeCount3|Add0~2\,
	cin0 => \Con|TimeCount3|Add0~152\,
	cin1 => \Con|TimeCount3|Add0~152COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~140_combout\,
	cout0 => \Con|TimeCount3|Add0~142\,
	cout1 => \Con|TimeCount3|Add0~142COUT1_164\);

-- Location: LC_X13_Y5_N2
\Con|TimeCount3|no[4]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(4) = DFFEAS((((\Con|TimeCount3|Add0~140_combout\))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount2|car~regout\,
	datad => \Con|TimeCount3|Add0~140_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(4));

-- Location: LC_X13_Y5_N9
\Con|TimeCount3|Add0~135\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~135_combout\ = (\Con|TimeCount3|no\(5) $ (((!\Con|TimeCount3|Add0~2\ & \Con|TimeCount3|Add0~142\) # (\Con|TimeCount3|Add0~2\ & \Con|TimeCount3|Add0~142COUT1_164\))))
-- \Con|TimeCount3|Add0~137\ = CARRY(((!\Con|TimeCount3|Add0~142COUT1_164\) # (!\Con|TimeCount3|no\(5))))

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
	datab => \Con|TimeCount3|no\(5),
	cin => \Con|TimeCount3|Add0~2\,
	cin0 => \Con|TimeCount3|Add0~142\,
	cin1 => \Con|TimeCount3|Add0~142COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~135_combout\,
	cout => \Con|TimeCount3|Add0~137\);

-- Location: LC_X13_Y5_N1
\Con|TimeCount3|no[5]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(5) = DFFEAS((((\Con|TimeCount3|Add0~135_combout\))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount2|car~regout\,
	datad => \Con|TimeCount3|Add0~135_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(5));

-- Location: LC_X14_Y5_N0
\Con|TimeCount3|Add0~130\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~130_combout\ = (\Con|TimeCount3|no\(6) $ ((!\Con|TimeCount3|Add0~137\)))
-- \Con|TimeCount3|Add0~132\ = CARRY(((\Con|TimeCount3|no\(6) & !\Con|TimeCount3|Add0~137\)))
-- \Con|TimeCount3|Add0~132COUT1_165\ = CARRY(((\Con|TimeCount3|no\(6) & !\Con|TimeCount3|Add0~137\)))

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
	datab => \Con|TimeCount3|no\(6),
	cin => \Con|TimeCount3|Add0~137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~130_combout\,
	cout0 => \Con|TimeCount3|Add0~132\,
	cout1 => \Con|TimeCount3|Add0~132COUT1_165\);

-- Location: LC_X15_Y6_N3
\Con|TimeCount3|no[6]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(6) = DFFEAS((((\Con|TimeCount3|Add0~130_combout\))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount2|car~regout\,
	datad => \Con|TimeCount3|Add0~130_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(6));

-- Location: LC_X14_Y5_N1
\Con|TimeCount3|Add0~125\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~125_combout\ = \Con|TimeCount3|no\(7) $ (((((!\Con|TimeCount3|Add0~137\ & \Con|TimeCount3|Add0~132\) # (\Con|TimeCount3|Add0~137\ & \Con|TimeCount3|Add0~132COUT1_165\)))))
-- \Con|TimeCount3|Add0~127\ = CARRY(((!\Con|TimeCount3|Add0~132\)) # (!\Con|TimeCount3|no\(7)))
-- \Con|TimeCount3|Add0~127COUT1_166\ = CARRY(((!\Con|TimeCount3|Add0~132COUT1_165\)) # (!\Con|TimeCount3|no\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(7),
	cin => \Con|TimeCount3|Add0~137\,
	cin0 => \Con|TimeCount3|Add0~132\,
	cin1 => \Con|TimeCount3|Add0~132COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~125_combout\,
	cout0 => \Con|TimeCount3|Add0~127\,
	cout1 => \Con|TimeCount3|Add0~127COUT1_166\);

-- Location: LC_X14_Y6_N6
\Con|TimeCount3|no[7]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal0~7\ = (!\Con|TimeCount3|no\(6) & (!\Con|TimeCount3|no\(4) & (!K4_no[7] & !\Con|TimeCount3|no\(5))))
-- \Con|TimeCount3|no\(7) = DFFEAS(\Con|TimeCount3|Equal0~7\, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	dataa => \Con|TimeCount3|no\(6),
	datab => \Con|TimeCount3|no\(4),
	datac => \Con|TimeCount3|Add0~125_combout\,
	datad => \Con|TimeCount3|no\(5),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal0~7\,
	regout => \Con|TimeCount3|no\(7));

-- Location: LC_X14_Y5_N2
\Con|TimeCount3|Add0~120\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~120_combout\ = \Con|TimeCount3|no\(8) $ ((((!(!\Con|TimeCount3|Add0~137\ & \Con|TimeCount3|Add0~127\) # (\Con|TimeCount3|Add0~137\ & \Con|TimeCount3|Add0~127COUT1_166\)))))
-- \Con|TimeCount3|Add0~122\ = CARRY((\Con|TimeCount3|no\(8) & ((!\Con|TimeCount3|Add0~127\))))
-- \Con|TimeCount3|Add0~122COUT1_167\ = CARRY((\Con|TimeCount3|no\(8) & ((!\Con|TimeCount3|Add0~127COUT1_166\))))

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
	dataa => \Con|TimeCount3|no\(8),
	cin => \Con|TimeCount3|Add0~137\,
	cin0 => \Con|TimeCount3|Add0~127\,
	cin1 => \Con|TimeCount3|Add0~127COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~120_combout\,
	cout0 => \Con|TimeCount3|Add0~122\,
	cout1 => \Con|TimeCount3|Add0~122COUT1_167\);

-- Location: LC_X15_Y6_N2
\Con|TimeCount3|no[8]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(8) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~120_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~120_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(8));

-- Location: LC_X14_Y5_N3
\Con|TimeCount3|Add0~115\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~115_combout\ = (\Con|TimeCount3|no\(9) $ (((!\Con|TimeCount3|Add0~137\ & \Con|TimeCount3|Add0~122\) # (\Con|TimeCount3|Add0~137\ & \Con|TimeCount3|Add0~122COUT1_167\))))
-- \Con|TimeCount3|Add0~117\ = CARRY(((!\Con|TimeCount3|Add0~122\) # (!\Con|TimeCount3|no\(9))))
-- \Con|TimeCount3|Add0~117COUT1_168\ = CARRY(((!\Con|TimeCount3|Add0~122COUT1_167\) # (!\Con|TimeCount3|no\(9))))

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
	datab => \Con|TimeCount3|no\(9),
	cin => \Con|TimeCount3|Add0~137\,
	cin0 => \Con|TimeCount3|Add0~122\,
	cin1 => \Con|TimeCount3|Add0~122COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~115_combout\,
	cout0 => \Con|TimeCount3|Add0~117\,
	cout1 => \Con|TimeCount3|Add0~117COUT1_168\);

-- Location: LC_X15_Y6_N6
\Con|TimeCount3|no[9]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(9) = DFFEAS((((\Con|TimeCount3|Add0~115_combout\))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount2|car~regout\,
	datad => \Con|TimeCount3|Add0~115_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(9));

-- Location: LC_X14_Y5_N4
\Con|TimeCount3|Add0~110\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~110_combout\ = \Con|TimeCount3|no\(10) $ ((((!(!\Con|TimeCount3|Add0~137\ & \Con|TimeCount3|Add0~117\) # (\Con|TimeCount3|Add0~137\ & \Con|TimeCount3|Add0~117COUT1_168\)))))
-- \Con|TimeCount3|Add0~112\ = CARRY((\Con|TimeCount3|no\(10) & ((!\Con|TimeCount3|Add0~117COUT1_168\))))

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
	dataa => \Con|TimeCount3|no\(10),
	cin => \Con|TimeCount3|Add0~137\,
	cin0 => \Con|TimeCount3|Add0~117\,
	cin1 => \Con|TimeCount3|Add0~117COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~110_combout\,
	cout => \Con|TimeCount3|Add0~112\);

-- Location: LC_X15_Y6_N8
\Con|TimeCount3|no[10]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(10) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~110_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~110_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(10));

-- Location: LC_X15_Y6_N1
\Con|TimeCount3|no[11]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal0~6\ = (!\Con|TimeCount3|no\(9) & (!\Con|TimeCount3|no\(10) & (!K4_no[11] & !\Con|TimeCount3|no\(8))))
-- \Con|TimeCount3|no\(11) = DFFEAS(\Con|TimeCount3|Equal0~6\, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	dataa => \Con|TimeCount3|no\(9),
	datab => \Con|TimeCount3|no\(10),
	datac => \Con|TimeCount3|Add0~105_combout\,
	datad => \Con|TimeCount3|no\(8),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal0~6\,
	regout => \Con|TimeCount3|no\(11));

-- Location: LC_X14_Y5_N5
\Con|TimeCount3|Add0~105\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~105_combout\ = \Con|TimeCount3|no\(11) $ ((((\Con|TimeCount3|Add0~112\))))
-- \Con|TimeCount3|Add0~107\ = CARRY(((!\Con|TimeCount3|Add0~112\)) # (!\Con|TimeCount3|no\(11)))
-- \Con|TimeCount3|Add0~107COUT1_169\ = CARRY(((!\Con|TimeCount3|Add0~112\)) # (!\Con|TimeCount3|no\(11)))

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
	dataa => \Con|TimeCount3|no\(11),
	cin => \Con|TimeCount3|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~105_combout\,
	cout0 => \Con|TimeCount3|Add0~107\,
	cout1 => \Con|TimeCount3|Add0~107COUT1_169\);

-- Location: LC_X14_Y5_N6
\Con|TimeCount3|Add0~100\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~100_combout\ = \Con|TimeCount3|no\(12) $ ((((!(!\Con|TimeCount3|Add0~112\ & \Con|TimeCount3|Add0~107\) # (\Con|TimeCount3|Add0~112\ & \Con|TimeCount3|Add0~107COUT1_169\)))))
-- \Con|TimeCount3|Add0~102\ = CARRY((\Con|TimeCount3|no\(12) & ((!\Con|TimeCount3|Add0~107\))))
-- \Con|TimeCount3|Add0~102COUT1_170\ = CARRY((\Con|TimeCount3|no\(12) & ((!\Con|TimeCount3|Add0~107COUT1_169\))))

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
	dataa => \Con|TimeCount3|no\(12),
	cin => \Con|TimeCount3|Add0~112\,
	cin0 => \Con|TimeCount3|Add0~107\,
	cin1 => \Con|TimeCount3|Add0~107COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~100_combout\,
	cout0 => \Con|TimeCount3|Add0~102\,
	cout1 => \Con|TimeCount3|Add0~102COUT1_170\);

-- Location: LC_X14_Y6_N0
\Con|TimeCount3|no[12]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(12) = DFFEAS((((\Con|TimeCount3|Add0~100_combout\))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount2|car~regout\,
	datad => \Con|TimeCount3|Add0~100_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(12));

-- Location: LC_X14_Y5_N7
\Con|TimeCount3|Add0~95\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~95_combout\ = (\Con|TimeCount3|no\(13) $ (((!\Con|TimeCount3|Add0~112\ & \Con|TimeCount3|Add0~102\) # (\Con|TimeCount3|Add0~112\ & \Con|TimeCount3|Add0~102COUT1_170\))))
-- \Con|TimeCount3|Add0~97\ = CARRY(((!\Con|TimeCount3|Add0~102\) # (!\Con|TimeCount3|no\(13))))
-- \Con|TimeCount3|Add0~97COUT1_171\ = CARRY(((!\Con|TimeCount3|Add0~102COUT1_170\) # (!\Con|TimeCount3|no\(13))))

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
	datab => \Con|TimeCount3|no\(13),
	cin => \Con|TimeCount3|Add0~112\,
	cin0 => \Con|TimeCount3|Add0~102\,
	cin1 => \Con|TimeCount3|Add0~102COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~95_combout\,
	cout0 => \Con|TimeCount3|Add0~97\,
	cout1 => \Con|TimeCount3|Add0~97COUT1_171\);

-- Location: LC_X14_Y6_N3
\Con|TimeCount3|no[13]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(13) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~95_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~95_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(13));

-- Location: LC_X14_Y5_N8
\Con|TimeCount3|Add0~90\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~90_combout\ = (\Con|TimeCount3|no\(14) $ ((!(!\Con|TimeCount3|Add0~112\ & \Con|TimeCount3|Add0~97\) # (\Con|TimeCount3|Add0~112\ & \Con|TimeCount3|Add0~97COUT1_171\))))
-- \Con|TimeCount3|Add0~92\ = CARRY(((\Con|TimeCount3|no\(14) & !\Con|TimeCount3|Add0~97\)))
-- \Con|TimeCount3|Add0~92COUT1_172\ = CARRY(((\Con|TimeCount3|no\(14) & !\Con|TimeCount3|Add0~97COUT1_171\)))

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
	datab => \Con|TimeCount3|no\(14),
	cin => \Con|TimeCount3|Add0~112\,
	cin0 => \Con|TimeCount3|Add0~97\,
	cin1 => \Con|TimeCount3|Add0~97COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~90_combout\,
	cout0 => \Con|TimeCount3|Add0~92\,
	cout1 => \Con|TimeCount3|Add0~92COUT1_172\);

-- Location: LC_X15_Y6_N9
\Con|TimeCount3|no[14]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(14) = DFFEAS((((\Con|TimeCount3|Add0~90_combout\))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount2|car~regout\,
	datad => \Con|TimeCount3|Add0~90_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(14));

-- Location: LC_X14_Y6_N2
\Con|TimeCount3|no[15]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal0~5\ = (!\Con|TimeCount3|no\(13) & (!\Con|TimeCount3|no\(12) & (!K4_no[15] & !\Con|TimeCount3|no\(14))))
-- \Con|TimeCount3|no\(15) = DFFEAS(\Con|TimeCount3|Equal0~5\, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	dataa => \Con|TimeCount3|no\(13),
	datab => \Con|TimeCount3|no\(12),
	datac => \Con|TimeCount3|Add0~85_combout\,
	datad => \Con|TimeCount3|no\(14),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal0~5\,
	regout => \Con|TimeCount3|no\(15));

-- Location: LC_X14_Y5_N9
\Con|TimeCount3|Add0~85\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~85_combout\ = \Con|TimeCount3|no\(15) $ (((((!\Con|TimeCount3|Add0~112\ & \Con|TimeCount3|Add0~92\) # (\Con|TimeCount3|Add0~112\ & \Con|TimeCount3|Add0~92COUT1_172\)))))
-- \Con|TimeCount3|Add0~87\ = CARRY(((!\Con|TimeCount3|Add0~92COUT1_172\)) # (!\Con|TimeCount3|no\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(15),
	cin => \Con|TimeCount3|Add0~112\,
	cin0 => \Con|TimeCount3|Add0~92\,
	cin1 => \Con|TimeCount3|Add0~92COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~85_combout\,
	cout => \Con|TimeCount3|Add0~87\);

-- Location: LC_X15_Y5_N0
\Con|TimeCount3|Add0~80\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~80_combout\ = \Con|TimeCount3|no\(16) $ ((((!\Con|TimeCount3|Add0~87\))))
-- \Con|TimeCount3|Add0~82\ = CARRY((\Con|TimeCount3|no\(16) & ((!\Con|TimeCount3|Add0~87\))))
-- \Con|TimeCount3|Add0~82COUT1_173\ = CARRY((\Con|TimeCount3|no\(16) & ((!\Con|TimeCount3|Add0~87\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(16),
	cin => \Con|TimeCount3|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~80_combout\,
	cout0 => \Con|TimeCount3|Add0~82\,
	cout1 => \Con|TimeCount3|Add0~82COUT1_173\);

-- Location: LC_X14_Y6_N5
\Con|TimeCount3|no[16]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(16) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~80_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~80_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(16));

-- Location: LC_X15_Y5_N1
\Con|TimeCount3|Add0~75\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~75_combout\ = \Con|TimeCount3|no\(17) $ (((((!\Con|TimeCount3|Add0~87\ & \Con|TimeCount3|Add0~82\) # (\Con|TimeCount3|Add0~87\ & \Con|TimeCount3|Add0~82COUT1_173\)))))
-- \Con|TimeCount3|Add0~77\ = CARRY(((!\Con|TimeCount3|Add0~82\)) # (!\Con|TimeCount3|no\(17)))
-- \Con|TimeCount3|Add0~77COUT1_174\ = CARRY(((!\Con|TimeCount3|Add0~82COUT1_173\)) # (!\Con|TimeCount3|no\(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(17),
	cin => \Con|TimeCount3|Add0~87\,
	cin0 => \Con|TimeCount3|Add0~82\,
	cin1 => \Con|TimeCount3|Add0~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~75_combout\,
	cout0 => \Con|TimeCount3|Add0~77\,
	cout1 => \Con|TimeCount3|Add0~77COUT1_174\);

-- Location: LC_X14_Y6_N4
\Con|TimeCount3|no[17]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(17) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~75_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~75_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(17));

-- Location: LC_X15_Y5_N2
\Con|TimeCount3|Add0~70\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~70_combout\ = \Con|TimeCount3|no\(18) $ ((((!(!\Con|TimeCount3|Add0~87\ & \Con|TimeCount3|Add0~77\) # (\Con|TimeCount3|Add0~87\ & \Con|TimeCount3|Add0~77COUT1_174\)))))
-- \Con|TimeCount3|Add0~72\ = CARRY((\Con|TimeCount3|no\(18) & ((!\Con|TimeCount3|Add0~77\))))
-- \Con|TimeCount3|Add0~72COUT1_175\ = CARRY((\Con|TimeCount3|no\(18) & ((!\Con|TimeCount3|Add0~77COUT1_174\))))

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
	dataa => \Con|TimeCount3|no\(18),
	cin => \Con|TimeCount3|Add0~87\,
	cin0 => \Con|TimeCount3|Add0~77\,
	cin1 => \Con|TimeCount3|Add0~77COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~70_combout\,
	cout0 => \Con|TimeCount3|Add0~72\,
	cout1 => \Con|TimeCount3|Add0~72COUT1_175\);

-- Location: LC_X15_Y6_N7
\Con|TimeCount3|no[18]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(18) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~70_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~70_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(18));

-- Location: LC_X15_Y5_N3
\Con|TimeCount3|Add0~65\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~65_combout\ = (\Con|TimeCount3|no\(19) $ (((!\Con|TimeCount3|Add0~87\ & \Con|TimeCount3|Add0~72\) # (\Con|TimeCount3|Add0~87\ & \Con|TimeCount3|Add0~72COUT1_175\))))
-- \Con|TimeCount3|Add0~67\ = CARRY(((!\Con|TimeCount3|Add0~72\) # (!\Con|TimeCount3|no\(19))))
-- \Con|TimeCount3|Add0~67COUT1_176\ = CARRY(((!\Con|TimeCount3|Add0~72COUT1_175\) # (!\Con|TimeCount3|no\(19))))

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
	datab => \Con|TimeCount3|no\(19),
	cin => \Con|TimeCount3|Add0~87\,
	cin0 => \Con|TimeCount3|Add0~72\,
	cin1 => \Con|TimeCount3|Add0~72COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~65_combout\,
	cout0 => \Con|TimeCount3|Add0~67\,
	cout1 => \Con|TimeCount3|Add0~67COUT1_176\);

-- Location: LC_X14_Y6_N1
\Con|TimeCount3|no[19]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal0~3\ = (!\Con|TimeCount3|no\(17) & (!\Con|TimeCount3|no\(18) & (!K4_no[19] & !\Con|TimeCount3|no\(16))))
-- \Con|TimeCount3|no\(19) = DFFEAS(\Con|TimeCount3|Equal0~3\, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	dataa => \Con|TimeCount3|no\(17),
	datab => \Con|TimeCount3|no\(18),
	datac => \Con|TimeCount3|Add0~65_combout\,
	datad => \Con|TimeCount3|no\(16),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal0~3\,
	regout => \Con|TimeCount3|no\(19));

-- Location: LC_X15_Y5_N4
\Con|TimeCount3|Add0~60\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~60_combout\ = (\Con|TimeCount3|no\(20) $ ((!(!\Con|TimeCount3|Add0~87\ & \Con|TimeCount3|Add0~67\) # (\Con|TimeCount3|Add0~87\ & \Con|TimeCount3|Add0~67COUT1_176\))))
-- \Con|TimeCount3|Add0~62\ = CARRY(((\Con|TimeCount3|no\(20) & !\Con|TimeCount3|Add0~67COUT1_176\)))

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
	datab => \Con|TimeCount3|no\(20),
	cin => \Con|TimeCount3|Add0~87\,
	cin0 => \Con|TimeCount3|Add0~67\,
	cin1 => \Con|TimeCount3|Add0~67COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~60_combout\,
	cout => \Con|TimeCount3|Add0~62\);

-- Location: LC_X11_Y5_N6
\Con|TimeCount3|no[20]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(20) = DFFEAS((((\Con|TimeCount3|Add0~60_combout\))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount2|car~regout\,
	datad => \Con|TimeCount3|Add0~60_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(20));

-- Location: LC_X15_Y5_N5
\Con|TimeCount3|Add0~55\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~55_combout\ = (\Con|TimeCount3|no\(21) $ ((\Con|TimeCount3|Add0~62\)))
-- \Con|TimeCount3|Add0~57\ = CARRY(((!\Con|TimeCount3|Add0~62\) # (!\Con|TimeCount3|no\(21))))
-- \Con|TimeCount3|Add0~57COUT1_177\ = CARRY(((!\Con|TimeCount3|Add0~62\) # (!\Con|TimeCount3|no\(21))))

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
	datab => \Con|TimeCount3|no\(21),
	cin => \Con|TimeCount3|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~55_combout\,
	cout0 => \Con|TimeCount3|Add0~57\,
	cout1 => \Con|TimeCount3|Add0~57COUT1_177\);

-- Location: LC_X11_Y5_N3
\Con|TimeCount3|no[21]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(21) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~55_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~55_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(21));

-- Location: LC_X15_Y5_N6
\Con|TimeCount3|Add0~50\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~50_combout\ = (\Con|TimeCount3|no\(22) $ ((!(!\Con|TimeCount3|Add0~62\ & \Con|TimeCount3|Add0~57\) # (\Con|TimeCount3|Add0~62\ & \Con|TimeCount3|Add0~57COUT1_177\))))
-- \Con|TimeCount3|Add0~52\ = CARRY(((\Con|TimeCount3|no\(22) & !\Con|TimeCount3|Add0~57\)))
-- \Con|TimeCount3|Add0~52COUT1_178\ = CARRY(((\Con|TimeCount3|no\(22) & !\Con|TimeCount3|Add0~57COUT1_177\)))

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
	datab => \Con|TimeCount3|no\(22),
	cin => \Con|TimeCount3|Add0~62\,
	cin0 => \Con|TimeCount3|Add0~57\,
	cin1 => \Con|TimeCount3|Add0~57COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~50_combout\,
	cout0 => \Con|TimeCount3|Add0~52\,
	cout1 => \Con|TimeCount3|Add0~52COUT1_178\);

-- Location: LC_X11_Y5_N2
\Con|TimeCount3|no[22]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(22) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~50_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~50_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(22));

-- Location: LC_X15_Y5_N7
\Con|TimeCount3|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~45_combout\ = (\Con|TimeCount3|no\(23) $ (((!\Con|TimeCount3|Add0~62\ & \Con|TimeCount3|Add0~52\) # (\Con|TimeCount3|Add0~62\ & \Con|TimeCount3|Add0~52COUT1_178\))))
-- \Con|TimeCount3|Add0~47\ = CARRY(((!\Con|TimeCount3|Add0~52\) # (!\Con|TimeCount3|no\(23))))
-- \Con|TimeCount3|Add0~47COUT1_179\ = CARRY(((!\Con|TimeCount3|Add0~52COUT1_178\) # (!\Con|TimeCount3|no\(23))))

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
	datab => \Con|TimeCount3|no\(23),
	cin => \Con|TimeCount3|Add0~62\,
	cin0 => \Con|TimeCount3|Add0~52\,
	cin1 => \Con|TimeCount3|Add0~52COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~45_combout\,
	cout0 => \Con|TimeCount3|Add0~47\,
	cout1 => \Con|TimeCount3|Add0~47COUT1_179\);

-- Location: LC_X11_Y5_N9
\Con|TimeCount3|no[23]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal0~2\ = (!\Con|TimeCount3|no\(20) & (!\Con|TimeCount3|no\(22) & (!K4_no[23] & !\Con|TimeCount3|no\(21))))
-- \Con|TimeCount3|no\(23) = DFFEAS(\Con|TimeCount3|Equal0~2\, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	dataa => \Con|TimeCount3|no\(20),
	datab => \Con|TimeCount3|no\(22),
	datac => \Con|TimeCount3|Add0~45_combout\,
	datad => \Con|TimeCount3|no\(21),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal0~2\,
	regout => \Con|TimeCount3|no\(23));

-- Location: LC_X15_Y5_N8
\Con|TimeCount3|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~40_combout\ = (\Con|TimeCount3|no\(24) $ ((!(!\Con|TimeCount3|Add0~62\ & \Con|TimeCount3|Add0~47\) # (\Con|TimeCount3|Add0~62\ & \Con|TimeCount3|Add0~47COUT1_179\))))
-- \Con|TimeCount3|Add0~42\ = CARRY(((\Con|TimeCount3|no\(24) & !\Con|TimeCount3|Add0~47\)))
-- \Con|TimeCount3|Add0~42COUT1_180\ = CARRY(((\Con|TimeCount3|no\(24) & !\Con|TimeCount3|Add0~47COUT1_179\)))

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
	datab => \Con|TimeCount3|no\(24),
	cin => \Con|TimeCount3|Add0~62\,
	cin0 => \Con|TimeCount3|Add0~47\,
	cin1 => \Con|TimeCount3|Add0~47COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~40_combout\,
	cout0 => \Con|TimeCount3|Add0~42\,
	cout1 => \Con|TimeCount3|Add0~42COUT1_180\);

-- Location: LC_X11_Y5_N7
\Con|TimeCount3|no[24]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(24) = DFFEAS((((\Con|TimeCount3|Add0~40_combout\))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount2|car~regout\,
	datad => \Con|TimeCount3|Add0~40_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(24));

-- Location: LC_X15_Y5_N9
\Con|TimeCount3|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~35_combout\ = \Con|TimeCount3|no\(25) $ (((((!\Con|TimeCount3|Add0~62\ & \Con|TimeCount3|Add0~42\) # (\Con|TimeCount3|Add0~62\ & \Con|TimeCount3|Add0~42COUT1_180\)))))
-- \Con|TimeCount3|Add0~37\ = CARRY(((!\Con|TimeCount3|Add0~42COUT1_180\)) # (!\Con|TimeCount3|no\(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(25),
	cin => \Con|TimeCount3|Add0~62\,
	cin0 => \Con|TimeCount3|Add0~42\,
	cin1 => \Con|TimeCount3|Add0~42COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~35_combout\,
	cout => \Con|TimeCount3|Add0~37\);

-- Location: LC_X11_Y5_N4
\Con|TimeCount3|no[25]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(25) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~35_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~35_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(25));

-- Location: LC_X16_Y5_N0
\Con|TimeCount3|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~30_combout\ = \Con|TimeCount3|no\(26) $ ((((!\Con|TimeCount3|Add0~37\))))
-- \Con|TimeCount3|Add0~32\ = CARRY((\Con|TimeCount3|no\(26) & ((!\Con|TimeCount3|Add0~37\))))
-- \Con|TimeCount3|Add0~32COUT1_181\ = CARRY((\Con|TimeCount3|no\(26) & ((!\Con|TimeCount3|Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(26),
	cin => \Con|TimeCount3|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~30_combout\,
	cout0 => \Con|TimeCount3|Add0~32\,
	cout1 => \Con|TimeCount3|Add0~32COUT1_181\);

-- Location: LC_X11_Y5_N8
\Con|TimeCount3|no[26]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(26) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~30_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~30_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(26));

-- Location: LC_X11_Y5_N5
\Con|TimeCount3|no[27]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal0~1\ = (!\Con|TimeCount3|no\(25) & (!\Con|TimeCount3|no\(24) & (!K4_no[27] & !\Con|TimeCount3|no\(26))))
-- \Con|TimeCount3|no\(27) = DFFEAS(\Con|TimeCount3|Equal0~1\, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	dataa => \Con|TimeCount3|no\(25),
	datab => \Con|TimeCount3|no\(24),
	datac => \Con|TimeCount3|Add0~25_combout\,
	datad => \Con|TimeCount3|no\(26),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal0~1\,
	regout => \Con|TimeCount3|no\(27));

-- Location: LC_X16_Y5_N1
\Con|TimeCount3|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~25_combout\ = (\Con|TimeCount3|no\(27) $ (((!\Con|TimeCount3|Add0~37\ & \Con|TimeCount3|Add0~32\) # (\Con|TimeCount3|Add0~37\ & \Con|TimeCount3|Add0~32COUT1_181\))))
-- \Con|TimeCount3|Add0~27\ = CARRY(((!\Con|TimeCount3|Add0~32\) # (!\Con|TimeCount3|no\(27))))
-- \Con|TimeCount3|Add0~27COUT1_182\ = CARRY(((!\Con|TimeCount3|Add0~32COUT1_181\) # (!\Con|TimeCount3|no\(27))))

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
	datab => \Con|TimeCount3|no\(27),
	cin => \Con|TimeCount3|Add0~37\,
	cin0 => \Con|TimeCount3|Add0~32\,
	cin1 => \Con|TimeCount3|Add0~32COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~25_combout\,
	cout0 => \Con|TimeCount3|Add0~27\,
	cout1 => \Con|TimeCount3|Add0~27COUT1_182\);

-- Location: LC_X16_Y5_N2
\Con|TimeCount3|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~20_combout\ = (\Con|TimeCount3|no\(28) $ ((!(!\Con|TimeCount3|Add0~37\ & \Con|TimeCount3|Add0~27\) # (\Con|TimeCount3|Add0~37\ & \Con|TimeCount3|Add0~27COUT1_182\))))
-- \Con|TimeCount3|Add0~22\ = CARRY(((\Con|TimeCount3|no\(28) & !\Con|TimeCount3|Add0~27\)))
-- \Con|TimeCount3|Add0~22COUT1_183\ = CARRY(((\Con|TimeCount3|no\(28) & !\Con|TimeCount3|Add0~27COUT1_182\)))

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
	datab => \Con|TimeCount3|no\(28),
	cin => \Con|TimeCount3|Add0~37\,
	cin0 => \Con|TimeCount3|Add0~27\,
	cin1 => \Con|TimeCount3|Add0~27COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~20_combout\,
	cout0 => \Con|TimeCount3|Add0~22\,
	cout1 => \Con|TimeCount3|Add0~22COUT1_183\);

-- Location: LC_X16_Y5_N6
\Con|TimeCount3|no[28]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(28) = DFFEAS((((\Con|TimeCount3|Add0~20_combout\))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount2|car~regout\,
	datad => \Con|TimeCount3|Add0~20_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(28));

-- Location: LC_X16_Y5_N3
\Con|TimeCount3|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~15_combout\ = (\Con|TimeCount3|no\(29) $ (((!\Con|TimeCount3|Add0~37\ & \Con|TimeCount3|Add0~22\) # (\Con|TimeCount3|Add0~37\ & \Con|TimeCount3|Add0~22COUT1_183\))))
-- \Con|TimeCount3|Add0~17\ = CARRY(((!\Con|TimeCount3|Add0~22\) # (!\Con|TimeCount3|no\(29))))
-- \Con|TimeCount3|Add0~17COUT1_184\ = CARRY(((!\Con|TimeCount3|Add0~22COUT1_183\) # (!\Con|TimeCount3|no\(29))))

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
	datab => \Con|TimeCount3|no\(29),
	cin => \Con|TimeCount3|Add0~37\,
	cin0 => \Con|TimeCount3|Add0~22\,
	cin1 => \Con|TimeCount3|Add0~22COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~15_combout\,
	cout0 => \Con|TimeCount3|Add0~17\,
	cout1 => \Con|TimeCount3|Add0~17COUT1_184\);

-- Location: LC_X16_Y5_N9
\Con|TimeCount3|no[29]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(29) = DFFEAS((((\Con|TimeCount3|Add0~15_combout\))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount2|car~regout\,
	datad => \Con|TimeCount3|Add0~15_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(29));

-- Location: LC_X16_Y5_N4
\Con|TimeCount3|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~10_combout\ = (\Con|TimeCount3|no\(30) $ ((!(!\Con|TimeCount3|Add0~37\ & \Con|TimeCount3|Add0~17\) # (\Con|TimeCount3|Add0~37\ & \Con|TimeCount3|Add0~17COUT1_184\))))
-- \Con|TimeCount3|Add0~12\ = CARRY(((\Con|TimeCount3|no\(30) & !\Con|TimeCount3|Add0~17COUT1_184\)))

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
	datab => \Con|TimeCount3|no\(30),
	cin => \Con|TimeCount3|Add0~37\,
	cin0 => \Con|TimeCount3|Add0~17\,
	cin1 => \Con|TimeCount3|Add0~17COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~10_combout\,
	cout => \Con|TimeCount3|Add0~12\);

-- Location: LC_X16_Y5_N8
\Con|TimeCount3|no[30]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(30) = DFFEAS(GND, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~10_combout\, , , VCC)

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
	clk => \Con|TimeCount2|car~regout\,
	datac => \Con|TimeCount3|Add0~10_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(30));

-- Location: LC_X16_Y5_N7
\Con|TimeCount3|no[31]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal0~0\ = (!\Con|TimeCount3|no\(28) & (!\Con|TimeCount3|no\(29) & (!K4_no[31] & !\Con|TimeCount3|no\(30))))
-- \Con|TimeCount3|no\(31) = DFFEAS(\Con|TimeCount3|Equal0~0\, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	dataa => \Con|TimeCount3|no\(28),
	datab => \Con|TimeCount3|no\(29),
	datac => \Con|TimeCount3|Add0~5_combout\,
	datad => \Con|TimeCount3|no\(30),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal0~0\,
	regout => \Con|TimeCount3|no\(31));

-- Location: LC_X16_Y5_N5
\Con|TimeCount3|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Add0~5_combout\ = (\Con|TimeCount3|no\(31) $ ((\Con|TimeCount3|Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|TimeCount3|no\(31),
	cin => \Con|TimeCount3|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Add0~5_combout\);

-- Location: LC_X14_Y6_N7
\Con|TimeCount3|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal0~4_combout\ = (\Con|TimeCount3|Equal0~1\ & (\Con|TimeCount3|Equal0~3\ & (\Con|TimeCount3|Equal0~2\ & \Con|TimeCount3|Equal0~0\)))

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
	dataa => \Con|TimeCount3|Equal0~1\,
	datab => \Con|TimeCount3|Equal0~3\,
	datac => \Con|TimeCount3|Equal0~2\,
	datad => \Con|TimeCount3|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal0~4_combout\);

-- Location: LC_X14_Y6_N8
\Con|TimeCount3|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal0~8_combout\ = (\Con|TimeCount3|Equal0~6\ & (\Con|TimeCount3|Equal0~5\ & (\Con|TimeCount3|Equal0~7\ & \Con|TimeCount3|Equal0~4_combout\)))

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
	dataa => \Con|TimeCount3|Equal0~6\,
	datab => \Con|TimeCount3|Equal0~5\,
	datac => \Con|TimeCount3|Equal0~7\,
	datad => \Con|TimeCount3|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal0~8_combout\);

-- Location: LC_X14_Y6_N9
\Con|TimeCount3|Equal8~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal8~0_combout\ = (!\Con|TimeCount3|no\(2) & (!\Con|TimeCount3|no\(1) & (\Con|TimeCount3|no\(3) & \Con|TimeCount3|Equal0~8_combout\)))

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
	dataa => \Con|TimeCount3|no\(2),
	datab => \Con|TimeCount3|no\(1),
	datac => \Con|TimeCount3|no\(3),
	datad => \Con|TimeCount3|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal8~0_combout\);

-- Location: LC_X13_Y5_N0
\Con|TimeCount3|no[1]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(1) = DFFEAS(((\Con|TimeCount3|Add0~155_combout\ & ((!\Con|TimeCount3|Equal8~0_combout\) # (!\Con|TimeCount3|no\(0))))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	datab => \Con|TimeCount3|no\(0),
	datac => \Con|TimeCount3|Add0~155_combout\,
	datad => \Con|TimeCount3|Equal8~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(1));

-- Location: LC_X13_Y6_N6
\Con|TimeCount3|no[2]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal0~9\ = ((!\Con|TimeCount3|no\(3) & (!K4_no[2] & \Con|TimeCount3|Equal0~8_combout\)))
-- \Con|TimeCount3|no\(2) = DFFEAS(\Con|TimeCount3|Equal0~9\, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	datab => \Con|TimeCount3|no\(3),
	datac => \Con|TimeCount3|Add0~145_combout\,
	datad => \Con|TimeCount3|Equal0~8_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal0~9\,
	regout => \Con|TimeCount3|no\(2));

-- Location: LC_X13_Y5_N3
\Con|TimeCount3|no[3]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|no\(3) = DFFEAS(((\Con|TimeCount3|Add0~150_combout\ & ((!\Con|TimeCount3|Equal8~0_combout\) # (!\Con|TimeCount3|no\(0))))), \Con|TimeCount2|car~regout\, \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	datab => \Con|TimeCount3|no\(0),
	datac => \Con|TimeCount3|Add0~150_combout\,
	datad => \Con|TimeCount3|Equal8~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|no\(3));

-- Location: LC_X13_Y6_N3
\Con|TimeCount3|Equal4~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal4~0_combout\ = (\Con|TimeCount3|no\(2) & (!\Con|TimeCount3|no\(3) & ((\Con|TimeCount3|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(2),
	datab => \Con|TimeCount3|no\(3),
	datad => \Con|TimeCount3|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal4~0_combout\);

-- Location: LC_X13_Y6_N4
\Con|TimeCount3|no[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_data~23\ = ((K4_no[0]) # ((!\Con|TimeCount3|Equal0~9\ & !\Con|TimeCount3|Equal4~0_combout\)))
-- \Con|TimeCount3|no\(0) = DFFEAS(\lcd_data~23\, \Con|TimeCount2|car~regout\, \NReset~combout\, , , \Con|TimeCount3|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f5",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	dataa => \Con|TimeCount3|Equal0~9\,
	datac => \Con|TimeCount3|Add0~0_combout\,
	datad => \Con|TimeCount3|Equal4~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~23\,
	regout => \Con|TimeCount3|no\(0));

-- Location: LC_X10_Y9_N3
\Con|TimeCount3|car\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|car~regout\ = DFFEAS((\Con|TimeCount3|no\(0) & (((\Con|TimeCount3|Equal8~0_combout\)))), \Con|TimeCount2|car~regout\, VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount2|car~regout\,
	dataa => \Con|TimeCount3|no\(0),
	datad => \Con|TimeCount3|Equal8~0_combout\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount3|car~regout\);

-- Location: LC_X6_Y9_N4
\Con|TimeCount4|Add0~155\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~155_combout\ = ((!\Con|TimeCount4|no\(0)))
-- \Con|TimeCount4|Add0~157\ = CARRY(((\Con|TimeCount4|no\(0))))

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
	datab => \Con|TimeCount4|no\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~155_combout\,
	cout => \Con|TimeCount4|Add0~157\);

-- Location: LC_X6_Y9_N5
\Con|TimeCount4|Add0~150\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~150_combout\ = \Con|TimeCount4|no\(1) $ ((((\Con|TimeCount4|Add0~157\))))
-- \Con|TimeCount4|Add0~152\ = CARRY(((!\Con|TimeCount4|Add0~157\)) # (!\Con|TimeCount4|no\(1)))
-- \Con|TimeCount4|Add0~152COUT1_161\ = CARRY(((!\Con|TimeCount4|Add0~157\)) # (!\Con|TimeCount4|no\(1)))

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
	dataa => \Con|TimeCount4|no\(1),
	cin => \Con|TimeCount4|Add0~157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~150_combout\,
	cout0 => \Con|TimeCount4|Add0~152\,
	cout1 => \Con|TimeCount4|Add0~152COUT1_161\);

-- Location: LC_X6_Y9_N6
\Con|TimeCount4|Add0~145\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~145_combout\ = (\Con|TimeCount4|no\(2) $ ((!(!\Con|TimeCount4|Add0~157\ & \Con|TimeCount4|Add0~152\) # (\Con|TimeCount4|Add0~157\ & \Con|TimeCount4|Add0~152COUT1_161\))))
-- \Con|TimeCount4|Add0~147\ = CARRY(((\Con|TimeCount4|no\(2) & !\Con|TimeCount4|Add0~152\)))
-- \Con|TimeCount4|Add0~147COUT1_162\ = CARRY(((\Con|TimeCount4|no\(2) & !\Con|TimeCount4|Add0~152COUT1_161\)))

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
	datab => \Con|TimeCount4|no\(2),
	cin => \Con|TimeCount4|Add0~157\,
	cin0 => \Con|TimeCount4|Add0~152\,
	cin1 => \Con|TimeCount4|Add0~152COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~145_combout\,
	cout0 => \Con|TimeCount4|Add0~147\,
	cout1 => \Con|TimeCount4|Add0~147COUT1_162\);

-- Location: LC_X6_Y9_N1
\Con|TimeCount4|no[2]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal8~0\ = (((!K5_no[2] & !\Con|TimeCount4|no\(1))))
-- \Con|TimeCount4|no\(2) = DFFEAS(\Con|TimeCount4|Equal8~0\, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~145_combout\,
	datad => \Con|TimeCount4|no\(1),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal8~0\,
	regout => \Con|TimeCount4|no\(2));

-- Location: LC_X6_Y9_N7
\Con|TimeCount4|Add0~140\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~140_combout\ = (\Con|TimeCount4|no\(3) $ (((!\Con|TimeCount4|Add0~157\ & \Con|TimeCount4|Add0~147\) # (\Con|TimeCount4|Add0~157\ & \Con|TimeCount4|Add0~147COUT1_162\))))
-- \Con|TimeCount4|Add0~142\ = CARRY(((!\Con|TimeCount4|Add0~147\) # (!\Con|TimeCount4|no\(3))))
-- \Con|TimeCount4|Add0~142COUT1_163\ = CARRY(((!\Con|TimeCount4|Add0~147COUT1_162\) # (!\Con|TimeCount4|no\(3))))

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
	datab => \Con|TimeCount4|no\(3),
	cin => \Con|TimeCount4|Add0~157\,
	cin0 => \Con|TimeCount4|Add0~147\,
	cin1 => \Con|TimeCount4|Add0~147COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~140_combout\,
	cout0 => \Con|TimeCount4|Add0~142\,
	cout1 => \Con|TimeCount4|Add0~142COUT1_163\);

-- Location: LC_X6_Y9_N8
\Con|TimeCount4|Add0~135\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~135_combout\ = \Con|TimeCount4|no\(4) $ ((((!(!\Con|TimeCount4|Add0~157\ & \Con|TimeCount4|Add0~142\) # (\Con|TimeCount4|Add0~157\ & \Con|TimeCount4|Add0~142COUT1_163\)))))
-- \Con|TimeCount4|Add0~137\ = CARRY((\Con|TimeCount4|no\(4) & ((!\Con|TimeCount4|Add0~142\))))
-- \Con|TimeCount4|Add0~137COUT1_164\ = CARRY((\Con|TimeCount4|no\(4) & ((!\Con|TimeCount4|Add0~142COUT1_163\))))

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
	dataa => \Con|TimeCount4|no\(4),
	cin => \Con|TimeCount4|Add0~157\,
	cin0 => \Con|TimeCount4|Add0~142\,
	cin1 => \Con|TimeCount4|Add0~142COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~135_combout\,
	cout0 => \Con|TimeCount4|Add0~137\,
	cout1 => \Con|TimeCount4|Add0~137COUT1_164\);

-- Location: LC_X11_Y9_N3
\Con|TimeCount4|no[4]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(4) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~135_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~135_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(4));

-- Location: LC_X6_Y9_N9
\Con|TimeCount4|Add0~130\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~130_combout\ = (\Con|TimeCount4|no\(5) $ (((!\Con|TimeCount4|Add0~157\ & \Con|TimeCount4|Add0~137\) # (\Con|TimeCount4|Add0~157\ & \Con|TimeCount4|Add0~137COUT1_164\))))
-- \Con|TimeCount4|Add0~132\ = CARRY(((!\Con|TimeCount4|Add0~137COUT1_164\) # (!\Con|TimeCount4|no\(5))))

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
	datab => \Con|TimeCount4|no\(5),
	cin => \Con|TimeCount4|Add0~157\,
	cin0 => \Con|TimeCount4|Add0~137\,
	cin1 => \Con|TimeCount4|Add0~137COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~130_combout\,
	cout => \Con|TimeCount4|Add0~132\);

-- Location: LC_X11_Y9_N0
\Con|TimeCount4|no[5]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(5) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~130_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~130_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(5));

-- Location: LC_X7_Y9_N0
\Con|TimeCount4|Add0~125\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~125_combout\ = \Con|TimeCount4|no\(6) $ ((((!\Con|TimeCount4|Add0~132\))))
-- \Con|TimeCount4|Add0~127\ = CARRY((\Con|TimeCount4|no\(6) & ((!\Con|TimeCount4|Add0~132\))))
-- \Con|TimeCount4|Add0~127COUT1_165\ = CARRY((\Con|TimeCount4|no\(6) & ((!\Con|TimeCount4|Add0~132\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount4|no\(6),
	cin => \Con|TimeCount4|Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~125_combout\,
	cout0 => \Con|TimeCount4|Add0~127\,
	cout1 => \Con|TimeCount4|Add0~127COUT1_165\);

-- Location: LC_X11_Y9_N2
\Con|TimeCount4|no[6]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(6) = DFFEAS((((\Con|TimeCount4|Add0~125_combout\))), \Con|TimeCount3|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount3|car~regout\,
	datad => \Con|TimeCount4|Add0~125_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(6));

-- Location: LC_X11_Y9_N4
\Con|TimeCount4|no[7]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal0~7\ = (!\Con|TimeCount4|no\(4) & (!\Con|TimeCount4|no\(5) & (!K5_no[7] & !\Con|TimeCount4|no\(6))))
-- \Con|TimeCount4|no\(7) = DFFEAS(\Con|TimeCount4|Equal0~7\, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	dataa => \Con|TimeCount4|no\(4),
	datab => \Con|TimeCount4|no\(5),
	datac => \Con|TimeCount4|Add0~120_combout\,
	datad => \Con|TimeCount4|no\(6),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal0~7\,
	regout => \Con|TimeCount4|no\(7));

-- Location: LC_X7_Y9_N1
\Con|TimeCount4|Add0~120\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~120_combout\ = (\Con|TimeCount4|no\(7) $ (((!\Con|TimeCount4|Add0~132\ & \Con|TimeCount4|Add0~127\) # (\Con|TimeCount4|Add0~132\ & \Con|TimeCount4|Add0~127COUT1_165\))))
-- \Con|TimeCount4|Add0~122\ = CARRY(((!\Con|TimeCount4|Add0~127\) # (!\Con|TimeCount4|no\(7))))
-- \Con|TimeCount4|Add0~122COUT1_166\ = CARRY(((!\Con|TimeCount4|Add0~127COUT1_165\) # (!\Con|TimeCount4|no\(7))))

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
	datab => \Con|TimeCount4|no\(7),
	cin => \Con|TimeCount4|Add0~132\,
	cin0 => \Con|TimeCount4|Add0~127\,
	cin1 => \Con|TimeCount4|Add0~127COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~120_combout\,
	cout0 => \Con|TimeCount4|Add0~122\,
	cout1 => \Con|TimeCount4|Add0~122COUT1_166\);

-- Location: LC_X7_Y9_N2
\Con|TimeCount4|Add0~115\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~115_combout\ = (\Con|TimeCount4|no\(8) $ ((!(!\Con|TimeCount4|Add0~132\ & \Con|TimeCount4|Add0~122\) # (\Con|TimeCount4|Add0~132\ & \Con|TimeCount4|Add0~122COUT1_166\))))
-- \Con|TimeCount4|Add0~117\ = CARRY(((\Con|TimeCount4|no\(8) & !\Con|TimeCount4|Add0~122\)))
-- \Con|TimeCount4|Add0~117COUT1_167\ = CARRY(((\Con|TimeCount4|no\(8) & !\Con|TimeCount4|Add0~122COUT1_166\)))

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
	datab => \Con|TimeCount4|no\(8),
	cin => \Con|TimeCount4|Add0~132\,
	cin0 => \Con|TimeCount4|Add0~122\,
	cin1 => \Con|TimeCount4|Add0~122COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~115_combout\,
	cout0 => \Con|TimeCount4|Add0~117\,
	cout1 => \Con|TimeCount4|Add0~117COUT1_167\);

-- Location: LC_X11_Y9_N1
\Con|TimeCount4|no[8]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(8) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~115_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~115_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(8));

-- Location: LC_X7_Y9_N3
\Con|TimeCount4|Add0~110\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~110_combout\ = (\Con|TimeCount4|no\(9) $ (((!\Con|TimeCount4|Add0~132\ & \Con|TimeCount4|Add0~117\) # (\Con|TimeCount4|Add0~132\ & \Con|TimeCount4|Add0~117COUT1_167\))))
-- \Con|TimeCount4|Add0~112\ = CARRY(((!\Con|TimeCount4|Add0~117\) # (!\Con|TimeCount4|no\(9))))
-- \Con|TimeCount4|Add0~112COUT1_168\ = CARRY(((!\Con|TimeCount4|Add0~117COUT1_167\) # (!\Con|TimeCount4|no\(9))))

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
	datab => \Con|TimeCount4|no\(9),
	cin => \Con|TimeCount4|Add0~132\,
	cin0 => \Con|TimeCount4|Add0~117\,
	cin1 => \Con|TimeCount4|Add0~117COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~110_combout\,
	cout0 => \Con|TimeCount4|Add0~112\,
	cout1 => \Con|TimeCount4|Add0~112COUT1_168\);

-- Location: LC_X11_Y9_N7
\Con|TimeCount4|no[9]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(9) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~110_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~110_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(9));

-- Location: LC_X7_Y9_N4
\Con|TimeCount4|Add0~105\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~105_combout\ = \Con|TimeCount4|no\(10) $ ((((!(!\Con|TimeCount4|Add0~132\ & \Con|TimeCount4|Add0~112\) # (\Con|TimeCount4|Add0~132\ & \Con|TimeCount4|Add0~112COUT1_168\)))))
-- \Con|TimeCount4|Add0~107\ = CARRY((\Con|TimeCount4|no\(10) & ((!\Con|TimeCount4|Add0~112COUT1_168\))))

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
	dataa => \Con|TimeCount4|no\(10),
	cin => \Con|TimeCount4|Add0~132\,
	cin0 => \Con|TimeCount4|Add0~112\,
	cin1 => \Con|TimeCount4|Add0~112COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~105_combout\,
	cout => \Con|TimeCount4|Add0~107\);

-- Location: LC_X10_Y9_N8
\Con|TimeCount4|no[10]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(10) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~105_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~105_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(10));

-- Location: LC_X7_Y9_N5
\Con|TimeCount4|Add0~100\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~100_combout\ = (\Con|TimeCount4|no\(11) $ ((\Con|TimeCount4|Add0~107\)))
-- \Con|TimeCount4|Add0~102\ = CARRY(((!\Con|TimeCount4|Add0~107\) # (!\Con|TimeCount4|no\(11))))
-- \Con|TimeCount4|Add0~102COUT1_169\ = CARRY(((!\Con|TimeCount4|Add0~107\) # (!\Con|TimeCount4|no\(11))))

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
	datab => \Con|TimeCount4|no\(11),
	cin => \Con|TimeCount4|Add0~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~100_combout\,
	cout0 => \Con|TimeCount4|Add0~102\,
	cout1 => \Con|TimeCount4|Add0~102COUT1_169\);

-- Location: LC_X11_Y9_N8
\Con|TimeCount4|no[11]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal0~6\ = (!\Con|TimeCount4|no\(10) & (!\Con|TimeCount4|no\(9) & (!K5_no[11] & !\Con|TimeCount4|no\(8))))
-- \Con|TimeCount4|no\(11) = DFFEAS(\Con|TimeCount4|Equal0~6\, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	dataa => \Con|TimeCount4|no\(10),
	datab => \Con|TimeCount4|no\(9),
	datac => \Con|TimeCount4|Add0~100_combout\,
	datad => \Con|TimeCount4|no\(8),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal0~6\,
	regout => \Con|TimeCount4|no\(11));

-- Location: LC_X7_Y9_N6
\Con|TimeCount4|Add0~95\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~95_combout\ = (\Con|TimeCount4|no\(12) $ ((!(!\Con|TimeCount4|Add0~107\ & \Con|TimeCount4|Add0~102\) # (\Con|TimeCount4|Add0~107\ & \Con|TimeCount4|Add0~102COUT1_169\))))
-- \Con|TimeCount4|Add0~97\ = CARRY(((\Con|TimeCount4|no\(12) & !\Con|TimeCount4|Add0~102\)))
-- \Con|TimeCount4|Add0~97COUT1_170\ = CARRY(((\Con|TimeCount4|no\(12) & !\Con|TimeCount4|Add0~102COUT1_169\)))

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
	datab => \Con|TimeCount4|no\(12),
	cin => \Con|TimeCount4|Add0~107\,
	cin0 => \Con|TimeCount4|Add0~102\,
	cin1 => \Con|TimeCount4|Add0~102COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~95_combout\,
	cout0 => \Con|TimeCount4|Add0~97\,
	cout1 => \Con|TimeCount4|Add0~97COUT1_170\);

-- Location: LC_X10_Y9_N2
\Con|TimeCount4|no[12]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(12) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~95_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~95_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(12));

-- Location: LC_X7_Y9_N7
\Con|TimeCount4|Add0~90\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~90_combout\ = (\Con|TimeCount4|no\(13) $ (((!\Con|TimeCount4|Add0~107\ & \Con|TimeCount4|Add0~97\) # (\Con|TimeCount4|Add0~107\ & \Con|TimeCount4|Add0~97COUT1_170\))))
-- \Con|TimeCount4|Add0~92\ = CARRY(((!\Con|TimeCount4|Add0~97\) # (!\Con|TimeCount4|no\(13))))
-- \Con|TimeCount4|Add0~92COUT1_171\ = CARRY(((!\Con|TimeCount4|Add0~97COUT1_170\) # (!\Con|TimeCount4|no\(13))))

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
	datab => \Con|TimeCount4|no\(13),
	cin => \Con|TimeCount4|Add0~107\,
	cin0 => \Con|TimeCount4|Add0~97\,
	cin1 => \Con|TimeCount4|Add0~97COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~90_combout\,
	cout0 => \Con|TimeCount4|Add0~92\,
	cout1 => \Con|TimeCount4|Add0~92COUT1_171\);

-- Location: LC_X10_Y9_N5
\Con|TimeCount4|no[13]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(13) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~90_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~90_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(13));

-- Location: LC_X7_Y9_N8
\Con|TimeCount4|Add0~85\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~85_combout\ = (\Con|TimeCount4|no\(14) $ ((!(!\Con|TimeCount4|Add0~107\ & \Con|TimeCount4|Add0~92\) # (\Con|TimeCount4|Add0~107\ & \Con|TimeCount4|Add0~92COUT1_171\))))
-- \Con|TimeCount4|Add0~87\ = CARRY(((\Con|TimeCount4|no\(14) & !\Con|TimeCount4|Add0~92\)))
-- \Con|TimeCount4|Add0~87COUT1_172\ = CARRY(((\Con|TimeCount4|no\(14) & !\Con|TimeCount4|Add0~92COUT1_171\)))

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
	datab => \Con|TimeCount4|no\(14),
	cin => \Con|TimeCount4|Add0~107\,
	cin0 => \Con|TimeCount4|Add0~92\,
	cin1 => \Con|TimeCount4|Add0~92COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~85_combout\,
	cout0 => \Con|TimeCount4|Add0~87\,
	cout1 => \Con|TimeCount4|Add0~87COUT1_172\);

-- Location: LC_X11_Y9_N6
\Con|TimeCount4|no[14]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(14) = DFFEAS((((\Con|TimeCount4|Add0~85_combout\))), \Con|TimeCount3|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount3|car~regout\,
	datad => \Con|TimeCount4|Add0~85_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(14));

-- Location: LC_X11_Y9_N5
\Con|TimeCount4|no[15]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal0~5\ = (!\Con|TimeCount4|no\(14) & (!\Con|TimeCount4|no\(12) & (!K5_no[15] & !\Con|TimeCount4|no\(13))))
-- \Con|TimeCount4|no\(15) = DFFEAS(\Con|TimeCount4|Equal0~5\, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	dataa => \Con|TimeCount4|no\(14),
	datab => \Con|TimeCount4|no\(12),
	datac => \Con|TimeCount4|Add0~80_combout\,
	datad => \Con|TimeCount4|no\(13),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal0~5\,
	regout => \Con|TimeCount4|no\(15));

-- Location: LC_X7_Y9_N9
\Con|TimeCount4|Add0~80\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~80_combout\ = (\Con|TimeCount4|no\(15) $ (((!\Con|TimeCount4|Add0~107\ & \Con|TimeCount4|Add0~87\) # (\Con|TimeCount4|Add0~107\ & \Con|TimeCount4|Add0~87COUT1_172\))))
-- \Con|TimeCount4|Add0~82\ = CARRY(((!\Con|TimeCount4|Add0~87COUT1_172\) # (!\Con|TimeCount4|no\(15))))

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
	datab => \Con|TimeCount4|no\(15),
	cin => \Con|TimeCount4|Add0~107\,
	cin0 => \Con|TimeCount4|Add0~87\,
	cin1 => \Con|TimeCount4|Add0~87COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~80_combout\,
	cout => \Con|TimeCount4|Add0~82\);

-- Location: LC_X11_Y9_N9
\Con|TimeCount4|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal0~8_combout\ = (\Con|TimeCount4|Equal0~7\ & (((\Con|TimeCount4|Equal0~5\ & \Con|TimeCount4|Equal0~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount4|Equal0~7\,
	datac => \Con|TimeCount4|Equal0~5\,
	datad => \Con|TimeCount4|Equal0~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal0~8_combout\);

-- Location: LC_X8_Y9_N0
\Con|TimeCount4|Add0~75\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~75_combout\ = (\Con|TimeCount4|no\(16) $ ((!\Con|TimeCount4|Add0~82\)))
-- \Con|TimeCount4|Add0~77\ = CARRY(((\Con|TimeCount4|no\(16) & !\Con|TimeCount4|Add0~82\)))
-- \Con|TimeCount4|Add0~77COUT1_173\ = CARRY(((\Con|TimeCount4|no\(16) & !\Con|TimeCount4|Add0~82\)))

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
	datab => \Con|TimeCount4|no\(16),
	cin => \Con|TimeCount4|Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~75_combout\,
	cout0 => \Con|TimeCount4|Add0~77\,
	cout1 => \Con|TimeCount4|Add0~77COUT1_173\);

-- Location: LC_X13_Y9_N4
\Con|TimeCount4|no[16]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(16) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~75_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~75_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(16));

-- Location: LC_X8_Y9_N1
\Con|TimeCount4|Add0~70\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~70_combout\ = (\Con|TimeCount4|no\(17) $ (((!\Con|TimeCount4|Add0~82\ & \Con|TimeCount4|Add0~77\) # (\Con|TimeCount4|Add0~82\ & \Con|TimeCount4|Add0~77COUT1_173\))))
-- \Con|TimeCount4|Add0~72\ = CARRY(((!\Con|TimeCount4|Add0~77\) # (!\Con|TimeCount4|no\(17))))
-- \Con|TimeCount4|Add0~72COUT1_174\ = CARRY(((!\Con|TimeCount4|Add0~77COUT1_173\) # (!\Con|TimeCount4|no\(17))))

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
	datab => \Con|TimeCount4|no\(17),
	cin => \Con|TimeCount4|Add0~82\,
	cin0 => \Con|TimeCount4|Add0~77\,
	cin1 => \Con|TimeCount4|Add0~77COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~70_combout\,
	cout0 => \Con|TimeCount4|Add0~72\,
	cout1 => \Con|TimeCount4|Add0~72COUT1_174\);

-- Location: LC_X13_Y9_N7
\Con|TimeCount4|no[17]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(17) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~70_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~70_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(17));

-- Location: LC_X8_Y9_N2
\Con|TimeCount4|Add0~65\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~65_combout\ = (\Con|TimeCount4|no\(18) $ ((!(!\Con|TimeCount4|Add0~82\ & \Con|TimeCount4|Add0~72\) # (\Con|TimeCount4|Add0~82\ & \Con|TimeCount4|Add0~72COUT1_174\))))
-- \Con|TimeCount4|Add0~67\ = CARRY(((\Con|TimeCount4|no\(18) & !\Con|TimeCount4|Add0~72\)))
-- \Con|TimeCount4|Add0~67COUT1_175\ = CARRY(((\Con|TimeCount4|no\(18) & !\Con|TimeCount4|Add0~72COUT1_174\)))

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
	datab => \Con|TimeCount4|no\(18),
	cin => \Con|TimeCount4|Add0~82\,
	cin0 => \Con|TimeCount4|Add0~72\,
	cin1 => \Con|TimeCount4|Add0~72COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~65_combout\,
	cout0 => \Con|TimeCount4|Add0~67\,
	cout1 => \Con|TimeCount4|Add0~67COUT1_175\);

-- Location: LC_X13_Y9_N8
\Con|TimeCount4|no[18]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(18) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~65_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~65_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(18));

-- Location: LC_X8_Y9_N3
\Con|TimeCount4|Add0~60\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~60_combout\ = (\Con|TimeCount4|no\(19) $ (((!\Con|TimeCount4|Add0~82\ & \Con|TimeCount4|Add0~67\) # (\Con|TimeCount4|Add0~82\ & \Con|TimeCount4|Add0~67COUT1_175\))))
-- \Con|TimeCount4|Add0~62\ = CARRY(((!\Con|TimeCount4|Add0~67\) # (!\Con|TimeCount4|no\(19))))
-- \Con|TimeCount4|Add0~62COUT1_176\ = CARRY(((!\Con|TimeCount4|Add0~67COUT1_175\) # (!\Con|TimeCount4|no\(19))))

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
	datab => \Con|TimeCount4|no\(19),
	cin => \Con|TimeCount4|Add0~82\,
	cin0 => \Con|TimeCount4|Add0~67\,
	cin1 => \Con|TimeCount4|Add0~67COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~60_combout\,
	cout0 => \Con|TimeCount4|Add0~62\,
	cout1 => \Con|TimeCount4|Add0~62COUT1_176\);

-- Location: LC_X13_Y9_N9
\Con|TimeCount4|no[19]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal0~3\ = (!\Con|TimeCount4|no\(16) & (!\Con|TimeCount4|no\(17) & (!K5_no[19] & !\Con|TimeCount4|no\(18))))
-- \Con|TimeCount4|no\(19) = DFFEAS(\Con|TimeCount4|Equal0~3\, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	dataa => \Con|TimeCount4|no\(16),
	datab => \Con|TimeCount4|no\(17),
	datac => \Con|TimeCount4|Add0~60_combout\,
	datad => \Con|TimeCount4|no\(18),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal0~3\,
	regout => \Con|TimeCount4|no\(19));

-- Location: LC_X8_Y9_N4
\Con|TimeCount4|Add0~55\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~55_combout\ = \Con|TimeCount4|no\(20) $ ((((!(!\Con|TimeCount4|Add0~82\ & \Con|TimeCount4|Add0~62\) # (\Con|TimeCount4|Add0~82\ & \Con|TimeCount4|Add0~62COUT1_176\)))))
-- \Con|TimeCount4|Add0~57\ = CARRY((\Con|TimeCount4|no\(20) & ((!\Con|TimeCount4|Add0~62COUT1_176\))))

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
	dataa => \Con|TimeCount4|no\(20),
	cin => \Con|TimeCount4|Add0~82\,
	cin0 => \Con|TimeCount4|Add0~62\,
	cin1 => \Con|TimeCount4|Add0~62COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~55_combout\,
	cout => \Con|TimeCount4|Add0~57\);

-- Location: LC_X13_Y9_N1
\Con|TimeCount4|no[20]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(20) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~55_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~55_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(20));

-- Location: LC_X8_Y9_N5
\Con|TimeCount4|Add0~50\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~50_combout\ = (\Con|TimeCount4|no\(21) $ ((\Con|TimeCount4|Add0~57\)))
-- \Con|TimeCount4|Add0~52\ = CARRY(((!\Con|TimeCount4|Add0~57\) # (!\Con|TimeCount4|no\(21))))
-- \Con|TimeCount4|Add0~52COUT1_177\ = CARRY(((!\Con|TimeCount4|Add0~57\) # (!\Con|TimeCount4|no\(21))))

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
	datab => \Con|TimeCount4|no\(21),
	cin => \Con|TimeCount4|Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~50_combout\,
	cout0 => \Con|TimeCount4|Add0~52\,
	cout1 => \Con|TimeCount4|Add0~52COUT1_177\);

-- Location: LC_X13_Y9_N3
\Con|TimeCount4|no[21]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(21) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~50_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~50_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(21));

-- Location: LC_X8_Y9_N6
\Con|TimeCount4|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~45_combout\ = \Con|TimeCount4|no\(22) $ ((((!(!\Con|TimeCount4|Add0~57\ & \Con|TimeCount4|Add0~52\) # (\Con|TimeCount4|Add0~57\ & \Con|TimeCount4|Add0~52COUT1_177\)))))
-- \Con|TimeCount4|Add0~47\ = CARRY((\Con|TimeCount4|no\(22) & ((!\Con|TimeCount4|Add0~52\))))
-- \Con|TimeCount4|Add0~47COUT1_178\ = CARRY((\Con|TimeCount4|no\(22) & ((!\Con|TimeCount4|Add0~52COUT1_177\))))

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
	dataa => \Con|TimeCount4|no\(22),
	cin => \Con|TimeCount4|Add0~57\,
	cin0 => \Con|TimeCount4|Add0~52\,
	cin1 => \Con|TimeCount4|Add0~52COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~45_combout\,
	cout0 => \Con|TimeCount4|Add0~47\,
	cout1 => \Con|TimeCount4|Add0~47COUT1_178\);

-- Location: LC_X13_Y9_N6
\Con|TimeCount4|no[22]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(22) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~45_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~45_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(22));

-- Location: LC_X8_Y9_N7
\Con|TimeCount4|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~40_combout\ = (\Con|TimeCount4|no\(23) $ (((!\Con|TimeCount4|Add0~57\ & \Con|TimeCount4|Add0~47\) # (\Con|TimeCount4|Add0~57\ & \Con|TimeCount4|Add0~47COUT1_178\))))
-- \Con|TimeCount4|Add0~42\ = CARRY(((!\Con|TimeCount4|Add0~47\) # (!\Con|TimeCount4|no\(23))))
-- \Con|TimeCount4|Add0~42COUT1_179\ = CARRY(((!\Con|TimeCount4|Add0~47COUT1_178\) # (!\Con|TimeCount4|no\(23))))

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
	datab => \Con|TimeCount4|no\(23),
	cin => \Con|TimeCount4|Add0~57\,
	cin0 => \Con|TimeCount4|Add0~47\,
	cin1 => \Con|TimeCount4|Add0~47COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~40_combout\,
	cout0 => \Con|TimeCount4|Add0~42\,
	cout1 => \Con|TimeCount4|Add0~42COUT1_179\);

-- Location: LC_X13_Y9_N5
\Con|TimeCount4|no[23]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal0~2\ = (!\Con|TimeCount4|no\(22) & (!\Con|TimeCount4|no\(20) & (!K5_no[23] & !\Con|TimeCount4|no\(21))))
-- \Con|TimeCount4|no\(23) = DFFEAS(\Con|TimeCount4|Equal0~2\, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	dataa => \Con|TimeCount4|no\(22),
	datab => \Con|TimeCount4|no\(20),
	datac => \Con|TimeCount4|Add0~40_combout\,
	datad => \Con|TimeCount4|no\(21),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal0~2\,
	regout => \Con|TimeCount4|no\(23));

-- Location: LC_X8_Y9_N8
\Con|TimeCount4|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~35_combout\ = (\Con|TimeCount4|no\(24) $ ((!(!\Con|TimeCount4|Add0~57\ & \Con|TimeCount4|Add0~42\) # (\Con|TimeCount4|Add0~57\ & \Con|TimeCount4|Add0~42COUT1_179\))))
-- \Con|TimeCount4|Add0~37\ = CARRY(((\Con|TimeCount4|no\(24) & !\Con|TimeCount4|Add0~42\)))
-- \Con|TimeCount4|Add0~37COUT1_180\ = CARRY(((\Con|TimeCount4|no\(24) & !\Con|TimeCount4|Add0~42COUT1_179\)))

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
	datab => \Con|TimeCount4|no\(24),
	cin => \Con|TimeCount4|Add0~57\,
	cin0 => \Con|TimeCount4|Add0~42\,
	cin1 => \Con|TimeCount4|Add0~42COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~35_combout\,
	cout0 => \Con|TimeCount4|Add0~37\,
	cout1 => \Con|TimeCount4|Add0~37COUT1_180\);

-- Location: LC_X10_Y9_N9
\Con|TimeCount4|no[24]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(24) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~35_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~35_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(24));

-- Location: LC_X8_Y9_N9
\Con|TimeCount4|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~30_combout\ = \Con|TimeCount4|no\(25) $ (((((!\Con|TimeCount4|Add0~57\ & \Con|TimeCount4|Add0~37\) # (\Con|TimeCount4|Add0~57\ & \Con|TimeCount4|Add0~37COUT1_180\)))))
-- \Con|TimeCount4|Add0~32\ = CARRY(((!\Con|TimeCount4|Add0~37COUT1_180\)) # (!\Con|TimeCount4|no\(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount4|no\(25),
	cin => \Con|TimeCount4|Add0~57\,
	cin0 => \Con|TimeCount4|Add0~37\,
	cin1 => \Con|TimeCount4|Add0~37COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~30_combout\,
	cout => \Con|TimeCount4|Add0~32\);

-- Location: LC_X10_Y9_N6
\Con|TimeCount4|no[25]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(25) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~30_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~30_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(25));

-- Location: LC_X9_Y9_N0
\Con|TimeCount4|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~25_combout\ = (\Con|TimeCount4|no\(26) $ ((!\Con|TimeCount4|Add0~32\)))
-- \Con|TimeCount4|Add0~27\ = CARRY(((\Con|TimeCount4|no\(26) & !\Con|TimeCount4|Add0~32\)))
-- \Con|TimeCount4|Add0~27COUT1_181\ = CARRY(((\Con|TimeCount4|no\(26) & !\Con|TimeCount4|Add0~32\)))

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
	datab => \Con|TimeCount4|no\(26),
	cin => \Con|TimeCount4|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~25_combout\,
	cout0 => \Con|TimeCount4|Add0~27\,
	cout1 => \Con|TimeCount4|Add0~27COUT1_181\);

-- Location: LC_X10_Y9_N7
\Con|TimeCount4|no[26]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(26) = DFFEAS((((\Con|TimeCount4|Add0~25_combout\))), \Con|TimeCount3|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount3|car~regout\,
	datad => \Con|TimeCount4|Add0~25_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(26));

-- Location: LC_X10_Y9_N4
\Con|TimeCount4|no[27]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal0~1\ = (!\Con|TimeCount4|no\(25) & (!\Con|TimeCount4|no\(26) & (!K5_no[27] & !\Con|TimeCount4|no\(24))))
-- \Con|TimeCount4|no\(27) = DFFEAS(\Con|TimeCount4|Equal0~1\, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	dataa => \Con|TimeCount4|no\(25),
	datab => \Con|TimeCount4|no\(26),
	datac => \Con|TimeCount4|Add0~20_combout\,
	datad => \Con|TimeCount4|no\(24),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal0~1\,
	regout => \Con|TimeCount4|no\(27));

-- Location: LC_X9_Y9_N1
\Con|TimeCount4|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~20_combout\ = (\Con|TimeCount4|no\(27) $ (((!\Con|TimeCount4|Add0~32\ & \Con|TimeCount4|Add0~27\) # (\Con|TimeCount4|Add0~32\ & \Con|TimeCount4|Add0~27COUT1_181\))))
-- \Con|TimeCount4|Add0~22\ = CARRY(((!\Con|TimeCount4|Add0~27\) # (!\Con|TimeCount4|no\(27))))
-- \Con|TimeCount4|Add0~22COUT1_182\ = CARRY(((!\Con|TimeCount4|Add0~27COUT1_181\) # (!\Con|TimeCount4|no\(27))))

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
	datab => \Con|TimeCount4|no\(27),
	cin => \Con|TimeCount4|Add0~32\,
	cin0 => \Con|TimeCount4|Add0~27\,
	cin1 => \Con|TimeCount4|Add0~27COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~20_combout\,
	cout0 => \Con|TimeCount4|Add0~22\,
	cout1 => \Con|TimeCount4|Add0~22COUT1_182\);

-- Location: LC_X9_Y9_N2
\Con|TimeCount4|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~15_combout\ = \Con|TimeCount4|no\(28) $ ((((!(!\Con|TimeCount4|Add0~32\ & \Con|TimeCount4|Add0~22\) # (\Con|TimeCount4|Add0~32\ & \Con|TimeCount4|Add0~22COUT1_182\)))))
-- \Con|TimeCount4|Add0~17\ = CARRY((\Con|TimeCount4|no\(28) & ((!\Con|TimeCount4|Add0~22\))))
-- \Con|TimeCount4|Add0~17COUT1_183\ = CARRY((\Con|TimeCount4|no\(28) & ((!\Con|TimeCount4|Add0~22COUT1_182\))))

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
	dataa => \Con|TimeCount4|no\(28),
	cin => \Con|TimeCount4|Add0~32\,
	cin0 => \Con|TimeCount4|Add0~22\,
	cin1 => \Con|TimeCount4|Add0~22COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~15_combout\,
	cout0 => \Con|TimeCount4|Add0~17\,
	cout1 => \Con|TimeCount4|Add0~17COUT1_183\);

-- Location: LC_X9_Y9_N6
\Con|TimeCount4|no[28]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(28) = DFFEAS((((\Con|TimeCount4|Add0~15_combout\))), \Con|TimeCount3|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount3|car~regout\,
	datad => \Con|TimeCount4|Add0~15_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(28));

-- Location: LC_X9_Y9_N3
\Con|TimeCount4|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~10_combout\ = (\Con|TimeCount4|no\(29) $ (((!\Con|TimeCount4|Add0~32\ & \Con|TimeCount4|Add0~17\) # (\Con|TimeCount4|Add0~32\ & \Con|TimeCount4|Add0~17COUT1_183\))))
-- \Con|TimeCount4|Add0~12\ = CARRY(((!\Con|TimeCount4|Add0~17\) # (!\Con|TimeCount4|no\(29))))
-- \Con|TimeCount4|Add0~12COUT1_184\ = CARRY(((!\Con|TimeCount4|Add0~17COUT1_183\) # (!\Con|TimeCount4|no\(29))))

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
	datab => \Con|TimeCount4|no\(29),
	cin => \Con|TimeCount4|Add0~32\,
	cin0 => \Con|TimeCount4|Add0~17\,
	cin1 => \Con|TimeCount4|Add0~17COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~10_combout\,
	cout0 => \Con|TimeCount4|Add0~12\,
	cout1 => \Con|TimeCount4|Add0~12COUT1_184\);

-- Location: LC_X9_Y9_N9
\Con|TimeCount4|no[29]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(29) = DFFEAS((((\Con|TimeCount4|Add0~10_combout\))), \Con|TimeCount3|car~regout\, \NReset~combout\, , , , , , )

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
	clk => \Con|TimeCount3|car~regout\,
	datad => \Con|TimeCount4|Add0~10_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(29));

-- Location: LC_X9_Y9_N4
\Con|TimeCount4|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~5_combout\ = (\Con|TimeCount4|no\(30) $ ((!(!\Con|TimeCount4|Add0~32\ & \Con|TimeCount4|Add0~12\) # (\Con|TimeCount4|Add0~32\ & \Con|TimeCount4|Add0~12COUT1_184\))))
-- \Con|TimeCount4|Add0~7\ = CARRY(((\Con|TimeCount4|no\(30) & !\Con|TimeCount4|Add0~12COUT1_184\)))

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
	datab => \Con|TimeCount4|no\(30),
	cin => \Con|TimeCount4|Add0~32\,
	cin0 => \Con|TimeCount4|Add0~12\,
	cin1 => \Con|TimeCount4|Add0~12COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~5_combout\,
	cout => \Con|TimeCount4|Add0~7\);

-- Location: LC_X9_Y9_N8
\Con|TimeCount4|no[30]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(30) = DFFEAS(GND, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~5_combout\, , , VCC)

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
	clk => \Con|TimeCount3|car~regout\,
	datac => \Con|TimeCount4|Add0~5_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(30));

-- Location: LC_X9_Y9_N7
\Con|TimeCount4|no[31]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal0~0\ = (!\Con|TimeCount4|no\(28) & (!\Con|TimeCount4|no\(29) & (!K5_no[31] & !\Con|TimeCount4|no\(30))))
-- \Con|TimeCount4|no\(31) = DFFEAS(\Con|TimeCount4|Equal0~0\, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	dataa => \Con|TimeCount4|no\(28),
	datab => \Con|TimeCount4|no\(29),
	datac => \Con|TimeCount4|Add0~0_combout\,
	datad => \Con|TimeCount4|no\(30),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal0~0\,
	regout => \Con|TimeCount4|no\(31));

-- Location: LC_X9_Y9_N5
\Con|TimeCount4|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Add0~0_combout\ = (\Con|TimeCount4|no\(31) $ ((\Con|TimeCount4|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|TimeCount4|no\(31),
	cin => \Con|TimeCount4|Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Add0~0_combout\);

-- Location: LC_X12_Y9_N2
\Con|TimeCount4|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal0~4_combout\ = (\Con|TimeCount4|Equal0~1\ & (\Con|TimeCount4|Equal0~0\ & (\Con|TimeCount4|Equal0~3\ & \Con|TimeCount4|Equal0~2\)))

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
	dataa => \Con|TimeCount4|Equal0~1\,
	datab => \Con|TimeCount4|Equal0~0\,
	datac => \Con|TimeCount4|Equal0~3\,
	datad => \Con|TimeCount4|Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal0~4_combout\);

-- Location: LC_X12_Y9_N6
\Con|TimeCount4|Equal8~1\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal8~1_combout\ = (\Con|TimeCount4|Equal0~8_combout\ & (\Con|TimeCount4|Equal0~4_combout\ & (\Con|TimeCount4|no\(3) & \Con|TimeCount4|Equal8~0\)))

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
	dataa => \Con|TimeCount4|Equal0~8_combout\,
	datab => \Con|TimeCount4|Equal0~4_combout\,
	datac => \Con|TimeCount4|no\(3),
	datad => \Con|TimeCount4|Equal8~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal8~1_combout\);

-- Location: LC_X6_Y9_N0
\Con|TimeCount4|no[3]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(3) = DFFEAS(((\Con|TimeCount4|Add0~140_combout\ & ((!\Con|TimeCount4|Equal8~1_combout\) # (!\Con|TimeCount4|no\(0))))), \Con|TimeCount3|car~regout\, \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	datab => \Con|TimeCount4|no\(0),
	datac => \Con|TimeCount4|Add0~140_combout\,
	datad => \Con|TimeCount4|Equal8~1_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(3));

-- Location: LC_X12_Y9_N7
\Con|TimeCount4|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal0~9_combout\ = (!\Con|TimeCount4|no\(2) & (!\Con|TimeCount4|no\(3) & (\Con|TimeCount4|Equal0~8_combout\ & \Con|TimeCount4|Equal0~4_combout\)))

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
	dataa => \Con|TimeCount4|no\(2),
	datab => \Con|TimeCount4|no\(3),
	datac => \Con|TimeCount4|Equal0~8_combout\,
	datad => \Con|TimeCount4|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal0~9_combout\);

-- Location: LC_X12_Y9_N0
\Con|TimeCount4|no[0]\ : maxv_lcell
-- Equation(s):
-- \A4|Y[1]~6\ = (!\Con|LEDOver~regout\ & (((K5_no[0]) # (\Con|TimeCount4|no\(1))) # (!\Con|TimeCount4|Equal0~9_combout\)))
-- \Con|TimeCount4|no\(0) = DFFEAS(\A4|Y[1]~6\, \Con|TimeCount3|car~regout\, \NReset~combout\, , , \Con|TimeCount4|Add0~155_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5551",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	dataa => \Con|LEDOver~regout\,
	datab => \Con|TimeCount4|Equal0~9_combout\,
	datac => \Con|TimeCount4|Add0~155_combout\,
	datad => \Con|TimeCount4|no\(1),
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Y[1]~6\,
	regout => \Con|TimeCount4|no\(0));

-- Location: LC_X6_Y9_N3
\Con|TimeCount4|no[1]\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|no\(1) = DFFEAS(((\Con|TimeCount4|Add0~150_combout\ & ((!\Con|TimeCount4|Equal8~1_combout\) # (!\Con|TimeCount4|no\(0))))), \Con|TimeCount3|car~regout\, \NReset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Con|TimeCount3|car~regout\,
	datab => \Con|TimeCount4|no\(0),
	datac => \Con|TimeCount4|Add0~150_combout\,
	datad => \Con|TimeCount4|Equal8~1_combout\,
	aclr => \ALT_INV_NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|TimeCount4|no\(1));

-- Location: LC_X1_Y6_N4
\Con|state~15\ : maxv_lcell
-- Equation(s):
-- \Con|state~15_combout\ = (!\Con|LEDF~regout\ & ((\Con|Equal0~20_combout\) # ((\Con|Equal1~10_combout\ & !\Con|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|LEDF~regout\,
	datab => \Con|Equal1~10_combout\,
	datac => \Con|Equal0~20_combout\,
	datad => \Con|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|state~15_combout\);

-- Location: LC_X1_Y6_N8
\Con|state~16\ : maxv_lcell
-- Equation(s):
-- \Con|state~16_combout\ = ((!\Con|state.GON~regout\ & (!\Con|state~15_combout\ & !\Con|state~17_combout\)))

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
	datab => \Con|state.GON~regout\,
	datac => \Con|state~15_combout\,
	datad => \Con|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|state~16_combout\);

-- Location: LC_X1_Y6_N5
\Con|state.GOVER\ : maxv_lcell
-- Equation(s):
-- \Con|state~14\ = (((\Con|LEDF~regout\) # (\Con|process_1~0_combout\)))
-- \Con|state.GOVER~regout\ = DFFEAS(\Con|state~14\, GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|state~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	datac => \Con|LEDF~regout\,
	datad => \Con|process_1~0_combout\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|state~14\,
	regout => \Con|state.GOVER~regout\);

-- Location: LC_X12_Y9_N1
\Con|LEDOver\ : maxv_lcell
-- Equation(s):
-- \A4|Y[1]~12\ = (!F1_LEDOver & (!\Con|TimeCount4|Equal8~1_combout\ & ((\Con|TimeCount4|no\(1)) # (!\Con|TimeCount4|Equal0~9_combout\))))
-- \Con|LEDOver~regout\ = DFFEAS(\A4|Y[1]~12\, GLOBAL(\CH1|Output~regout\), \NReset~combout\, , , \Con|state.GOVER~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000b",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH1|Output~regout\,
	dataa => \Con|TimeCount4|no\(1),
	datab => \Con|TimeCount4|Equal0~9_combout\,
	datac => \Con|state.GOVER~regout\,
	datad => \Con|TimeCount4|Equal8~1_combout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Y[1]~12\,
	regout => \Con|LEDOver~regout\);

-- Location: LC_X1_Y6_N7
\Con|state.GEND\ : maxv_lcell
-- Equation(s):
-- \Con|state.GEND~regout\ = DFFEAS((((!\Con|state~14\))), GLOBAL(\CH1|Output~regout\), \NReset~combout\, , \Con|state~16_combout\, , , , )

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
	clk => \CH1|Output~regout\,
	datac => \Con|state~14\,
	aclr => \ALT_INV_NReset~combout\,
	ena => \Con|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|state.GEND~regout\);

-- Location: LC_X7_Y4_N7
\Con|LEDEnd\ : maxv_lcell
-- Equation(s):
-- \Con|LEDEnd~regout\ = DFFEAS(GND, GLOBAL(\CH1|Output~regout\), \NReset~combout\, , , \Con|state.GEND~regout\, , , VCC)

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
	clk => \CH1|Output~regout\,
	datac => \Con|state.GEND~regout\,
	aclr => \ALT_INV_NReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Con|LEDEnd~regout\);

-- Location: LC_X5_Y8_N5
\LCD1|Selector6~0\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector6~0_combout\ = (\LCD1|state.S6~regout\) # (((\LCD1|state.S7~regout\) # (\LCD1|state.S8~regout\)))

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
	dataa => \LCD1|state.S6~regout\,
	datac => \LCD1|state.S7~regout\,
	datad => \LCD1|state.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector6~0_combout\);

-- Location: LC_X13_Y6_N0
\lcd_data~24\ : maxv_lcell
-- Equation(s):
-- \lcd_data~24_combout\ = (col(0) & (!col(3) & ((\Con|TimeCount3|no\(0)) # (!\Con|TimeCount3|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "008a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(0),
	datab => \Con|TimeCount3|no\(0),
	datac => \Con|TimeCount3|Equal8~0_combout\,
	datad => col(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~24_combout\);

-- Location: LC_X13_Y6_N5
\lcd_data~25\ : maxv_lcell
-- Equation(s):
-- \lcd_data~25_combout\ = (!col(2) & ((\Con|LEDOver~regout\) # ((\lcd_data~24_combout\ & \lcd_data~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|LEDOver~regout\,
	datab => col(2),
	datac => \lcd_data~24_combout\,
	datad => \lcd_data~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~25_combout\);

-- Location: LC_X12_Y9_N3
\Con|TimeCount4|Equal4~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount4|Equal4~0_combout\ = (\Con|TimeCount4|no\(2) & (!\Con|TimeCount4|no\(3) & (\Con|TimeCount4|Equal0~8_combout\ & \Con|TimeCount4|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount4|no\(2),
	datab => \Con|TimeCount4|no\(3),
	datac => \Con|TimeCount4|Equal0~8_combout\,
	datad => \Con|TimeCount4|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount4|Equal4~0_combout\);

-- Location: LC_X12_Y9_N4
\A4|Y[3]~7\ : maxv_lcell
-- Equation(s):
-- \A4|Y[3]~7_combout\ = (\Con|TimeCount4|no\(0)) # ((!\Con|TimeCount4|Equal4~0_combout\ & ((!\Con|TimeCount4|Equal0~9_combout\) # (!\Con|TimeCount4|no\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aabf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount4|no\(0),
	datab => \Con|TimeCount4|no\(1),
	datac => \Con|TimeCount4|Equal0~9_combout\,
	datad => \Con|TimeCount4|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Y[3]~7_combout\);

-- Location: LC_X12_Y9_N5
\A4|Y[0]~8\ : maxv_lcell
-- Equation(s):
-- \A4|Y[0]~8_combout\ = (\A4|Y[1]~6\ & (\A4|Y[3]~7_combout\ & ((\Con|TimeCount4|no\(0)) # (!\Con|TimeCount4|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount4|no\(0),
	datab => \A4|Y[1]~6\,
	datac => \A4|Y[3]~7_combout\,
	datad => \Con|TimeCount4|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Y[0]~8_combout\);

-- Location: LC_X13_Y6_N9
\lcd_data~64\ : maxv_lcell
-- Equation(s):
-- \lcd_data~64_combout\ = (\Con|LEDOver~regout\) # ((col(2) & ((\lcd_data~63\))) # (!col(2) & (\A4|Y[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|LEDOver~regout\,
	datab => col(2),
	datac => \A4|Y[0]~8_combout\,
	datad => \lcd_data~63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~64_combout\);

-- Location: LC_X13_Y6_N8
\lcd_data~26\ : maxv_lcell
-- Equation(s):
-- \lcd_data~26_combout\ = (\lcd_data~25_combout\) # ((!col(3) & (!col(0) & \lcd_data~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(3),
	datab => col(0),
	datac => \lcd_data~25_combout\,
	datad => \lcd_data~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~26_combout\);

-- Location: LC_X12_Y6_N9
\lcd_data~21\ : maxv_lcell
-- Equation(s):
-- \lcd_data~21_combout\ = ((col(3) & (\Con|LEDOver~regout\ & !col(2))) # (!col(3) & (!\Con|LEDOver~regout\ & col(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => col(3),
	datac => \Con|LEDOver~regout\,
	datad => col(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~21_combout\);

-- Location: LC_X12_Y6_N2
\Con|TimeCount2|Equal4~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Equal4~0_combout\ = ((!\Con|TimeCount2|no\(3) & (\Con|TimeCount2|no\(2) & \Con|TimeCount2|Equal0~8_combout\)))

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
	datab => \Con|TimeCount2|no\(3),
	datac => \Con|TimeCount2|no\(2),
	datad => \Con|TimeCount2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Equal4~0_combout\);

-- Location: LC_X12_Y6_N8
\lcd_data~19\ : maxv_lcell
-- Equation(s):
-- \lcd_data~19_combout\ = (\Con|TimeCount2|no\(0)) # (((!\Con|TimeCount2|Equal0~9\ & !\Con|TimeCount2|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount2|no\(0),
	datac => \Con|TimeCount2|Equal0~9\,
	datad => \Con|TimeCount2|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~19_combout\);

-- Location: LC_X12_Y6_N3
\lcd_data~55\ : maxv_lcell
-- Equation(s):
-- \lcd_data~55_combout\ = ((\Con|TimeCount1|no\(3)) # ((\Con|TimeCount1|no\(0)) # (!\Con|TimeCount1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|TimeCount1|no\(3),
	datac => \Con|TimeCount1|no\(0),
	datad => \Con|TimeCount1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~55_combout\);

-- Location: LC_X12_Y6_N4
\lcd_data~20\ : maxv_lcell
-- Equation(s):
-- \lcd_data~20_combout\ = (\lcd_data~19_combout\ & ((\lcd_data~18\) # ((\lcd_data~17\ & \lcd_data~55_combout\)))) # (!\lcd_data~19_combout\ & (\lcd_data~17\ & ((\lcd_data~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~19_combout\,
	datab => \lcd_data~17\,
	datac => \lcd_data~18\,
	datad => \lcd_data~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~20_combout\);

-- Location: LC_X12_Y6_N5
\lcd_data~22\ : maxv_lcell
-- Equation(s):
-- \lcd_data~22_combout\ = (\lcd_data~21_combout\ & ((\Con|LEDOver~regout\ & (col(0))) # (!\Con|LEDOver~regout\ & ((\lcd_data~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|LEDOver~regout\,
	datab => col(0),
	datac => \lcd_data~21_combout\,
	datad => \lcd_data~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~22_combout\);

-- Location: LC_X12_Y6_N6
\lcd_data[0]\ : maxv_lcell
-- Equation(s):
-- lcd_data(0) = DFFEAS((col(1) & (\lcd_data~26_combout\)) # (!col(1) & (((\lcd_data~22_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, \A4|Y[0]~8_combout\, , , !\NReset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => col(1),
	datab => \lcd_data~26_combout\,
	datac => \A4|Y[0]~8_combout\,
	datad => \lcd_data~22_combout\,
	aclr => GND,
	sload => \ALT_INV_NReset~combout\,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_data(0));

-- Location: LC_X9_Y8_N6
\LCD1|data_dis[0]\ : maxv_lcell
-- Equation(s):
-- \LCD1|data_dis\(0) = DFFEAS(GND, GLOBAL(\CH|Output~regout\), VCC, , \LCD1|state~32\, lcd_data(0), , , VCC)

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
	clk => \CH|Output~regout\,
	datac => lcd_data(0),
	aclr => GND,
	sload => VCC,
	ena => \LCD1|state~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|data_dis\(0));

-- Location: LC_X5_Y5_N3
\LCD1|Selector5~0\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector5~0_combout\ = (\LCD1|state.S1~regout\) # ((\LCD1|state.S2~regout\) # ((!\LCD1|state.S0~regout\ & \LCD1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD1|state.S1~regout\,
	datab => \LCD1|state.S2~regout\,
	datac => \LCD1|state.S0~regout\,
	datad => \LCD1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector5~0_combout\);

-- Location: LC_X5_Y5_N4
\LCD1|Selector7~0\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector7~0_combout\ = ((!\LCD1|count_cmd\(1) & (\LCD1|count_cmd\(0) & \LCD1|Selector5~0_combout\)))

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
	datab => \LCD1|count_cmd\(1),
	datac => \LCD1|count_cmd\(0),
	datad => \LCD1|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector7~0_combout\);

-- Location: LC_X5_Y8_N0
\LCD1|Selector8~0\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector8~0_combout\ = ((!\LCD1|state.S4~regout\ & (!\LCD1|state.S5~regout\ & !\LCD1|state.S3~regout\)))

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
	datab => \LCD1|state.S4~regout\,
	datac => \LCD1|state.S5~regout\,
	datad => \LCD1|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector8~0_combout\);

-- Location: LC_X5_Y5_N9
\LCD1|lcd[4]~0\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd[4]~0_combout\ = ((!\LCD1|state.S9~regout\ & ((\LCD1|state.S0~regout\) # (\LCD1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LCD1|state.S9~regout\,
	datac => \LCD1|state.S0~regout\,
	datad => \LCD1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|lcd[4]~0_combout\);

-- Location: LC_X10_Y6_N1
\LCD1|cmd_position[0]\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector7~1\ = (\LCD1|lcd\(0) & (((!\LCD1|Selector8~0_combout\ & J1_cmd_position[0])) # (!\LCD1|lcd[4]~0_combout\))) # (!\LCD1|lcd\(0) & (!\LCD1|Selector8~0_combout\ & (J1_cmd_position[0])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|lcd\(0),
	datab => \LCD1|Selector8~0_combout\,
	datac => col(0),
	datad => \LCD1|lcd[4]~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector7~1\,
	regout => \LCD1|cmd_position\(0));

-- Location: LC_X10_Y6_N2
\LCD1|lcd[0]\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd\(0) = DFFEAS((\LCD1|Selector7~0_combout\) # ((\LCD1|Selector7~1\) # ((\LCD1|Selector6~0_combout\ & \LCD1|data_dis\(0)))), GLOBAL(\CH|Output~regout\), VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|Selector6~0_combout\,
	datab => \LCD1|data_dis\(0),
	datac => \LCD1|Selector7~0_combout\,
	datad => \LCD1|Selector7~1\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|lcd\(0));

-- Location: LC_X12_Y8_N9
\lcd_data~37\ : maxv_lcell
-- Equation(s):
-- \lcd_data~37_combout\ = (col(2) & (!col(1) & ((!col(3)) # (!col(0))))) # (!col(2) & (col(1) $ (((col(0) & col(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "165a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(2),
	datab => col(0),
	datac => col(1),
	datad => col(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~37_combout\);

-- Location: LC_X11_Y8_N5
\A4|Y[1]~9\ : maxv_lcell
-- Equation(s):
-- \A4|Y[1]~9_combout\ = ((!\Con|LEDOver~regout\ & ((\Con|TimeCount4|no\(1)) # (!\Con|TimeCount4|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|TimeCount4|no\(1),
	datac => \Con|LEDOver~regout\,
	datad => \Con|TimeCount4|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Y[1]~9_combout\);

-- Location: LC_X11_Y8_N6
\A4|Y[1]~13\ : maxv_lcell
-- Equation(s):
-- \A4|Y[1]~13_combout\ = (!\Con|TimeCount4|Equal8~1_combout\ & (\A4|Y[1]~9_combout\ & ((\Con|TimeCount4|no\(1)) # (!\Con|TimeCount4|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount4|Equal4~0_combout\,
	datab => \Con|TimeCount4|no\(1),
	datac => \Con|TimeCount4|Equal8~1_combout\,
	datad => \A4|Y[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Y[1]~13_combout\);

-- Location: LC_X12_Y8_N7
\lcd_data~27\ : maxv_lcell
-- Equation(s):
-- \lcd_data~27_combout\ = (!col(2) & (!col(3) & (col(1) & !col(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(2),
	datab => col(3),
	datac => col(1),
	datad => col(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~27_combout\);

-- Location: LC_X12_Y8_N4
\lcd_data~56\ : maxv_lcell
-- Equation(s):
-- \lcd_data~56_combout\ = (\lcd_data~27_combout\ & (\A4|Y[1]~12\ & ((\Con|TimeCount4|no\(1)) # (!\Con|TimeCount4|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount4|no\(1),
	datab => \lcd_data~27_combout\,
	datac => \Con|TimeCount4|Equal4~0_combout\,
	datad => \A4|Y[1]~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~56_combout\);

-- Location: LC_X12_Y5_N8
\Equal4~1\ : maxv_lcell
-- Equation(s):
-- \Equal4~1_combout\ = (col(2) & (!col(3) & ((!col(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(2),
	datab => col(3),
	datad => col(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~1_combout\);

-- Location: LC_X13_Y6_N1
\lcd_data~59\ : maxv_lcell
-- Equation(s):
-- \lcd_data~59_combout\ = ((\Con|TimeCount3|no\(1)) # ((\Con|TimeCount3|no\(3)) # (!\Con|TimeCount3|Equal0~8_combout\))) # (!\Con|TimeCount3|no\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(2),
	datab => \Con|TimeCount3|no\(1),
	datac => \Con|TimeCount3|no\(3),
	datad => \Con|TimeCount3|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~59_combout\);

-- Location: LC_X11_Y4_N1
\lcd_data~29\ : maxv_lcell
-- Equation(s):
-- \lcd_data~29_combout\ = (((\Con|TimeCount0|no\(1)) # (!\Con|TimeCount0|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Con|TimeCount0|no\(1),
	datad => \Con|TimeCount0|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~29_combout\);

-- Location: LC_X11_Y4_N2
\lcd_data~28\ : maxv_lcell
-- Equation(s):
-- \lcd_data~28_combout\ = (!col(3) & (col(2) & (!col(0) & col(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(3),
	datab => col(2),
	datac => col(0),
	datad => col(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~28_combout\);

-- Location: LC_X11_Y4_N5
\lcd_data~58\ : maxv_lcell
-- Equation(s):
-- \lcd_data~58_combout\ = (!\Con|TimeCount0|Equal8~1_combout\ & (\lcd_data~28_combout\ & ((\Con|TimeCount0|no\(1)) # (!\Con|TimeCount0|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount0|no\(1),
	datab => \Con|TimeCount0|Equal8~1_combout\,
	datac => \Con|TimeCount0|Equal0~9_combout\,
	datad => \lcd_data~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~58_combout\);

-- Location: LC_X12_Y6_N1
\Equal4~0\ : maxv_lcell
-- Equation(s):
-- \Equal4~0_combout\ = (col(0) & (col(1) & (!col(2) & !col(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(0),
	datab => col(1),
	datac => col(2),
	datad => col(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~0_combout\);

-- Location: LC_X13_Y6_N7
\lcd_data~57\ : maxv_lcell
-- Equation(s):
-- \lcd_data~57_combout\ = (!\Con|TimeCount3|Equal8~0_combout\ & (\Equal4~0_combout\ & ((\Con|TimeCount3|no\(1)) # (!\Con|TimeCount3|Equal0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(1),
	datab => \Con|TimeCount3|Equal8~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \Con|TimeCount3|Equal0~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~57_combout\);

-- Location: LC_X12_Y8_N5
\lcd_data~30\ : maxv_lcell
-- Equation(s):
-- \lcd_data~30_combout\ = (\lcd_data~59_combout\ & ((\lcd_data~57_combout\) # ((\lcd_data~29_combout\ & \lcd_data~58_combout\)))) # (!\lcd_data~59_combout\ & (\lcd_data~29_combout\ & (\lcd_data~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~59_combout\,
	datab => \lcd_data~29_combout\,
	datac => \lcd_data~58_combout\,
	datad => \lcd_data~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~30_combout\);

-- Location: LC_X12_Y7_N8
\lcd_data~34\ : maxv_lcell
-- Equation(s):
-- \lcd_data~34_combout\ = (\Con|TimeCount1|no\(1) & (((!\Con|TimeCount1|Equal8~0_combout\)) # (!\Con|TimeCount1|no\(0)))) # (!\Con|TimeCount1|no\(1) & (!\Con|TimeCount1|Equal0~10\ & ((!\Con|TimeCount1|Equal8~0_combout\) # (!\Con|TimeCount1|no\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "23af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount1|no\(1),
	datab => \Con|TimeCount1|no\(0),
	datac => \Con|TimeCount1|Equal0~10\,
	datad => \Con|TimeCount1|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~34_combout\);

-- Location: LC_X13_Y7_N4
\lcd_data~60\ : maxv_lcell
-- Equation(s):
-- \lcd_data~60_combout\ = ((\Con|TimeCount1|no\(3)) # ((\Con|TimeCount1|no\(1)) # (!\Con|TimeCount1|Equal0~8_combout\))) # (!\Con|TimeCount1|no\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount1|no\(2),
	datab => \Con|TimeCount1|no\(3),
	datac => \Con|TimeCount1|no\(1),
	datad => \Con|TimeCount1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~60_combout\);

-- Location: LC_X13_Y3_N5
\lcd_data~32\ : maxv_lcell
-- Equation(s):
-- \lcd_data~32_combout\ = ((!\Con|TimeCount2|no\(1) & (\Con|TimeCount2|no\(2) & !\Con|TimeCount2|no\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|TimeCount2|no\(1),
	datac => \Con|TimeCount2|no\(2),
	datad => \Con|TimeCount2|no\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~32_combout\);

-- Location: LC_X12_Y3_N3
\lcd_data~31\ : maxv_lcell
-- Equation(s):
-- \lcd_data~31_combout\ = (\Con|TimeCount2|no\(1) & (((!\Con|TimeCount2|Equal8~0_combout\)) # (!\Con|TimeCount2|no\(0)))) # (!\Con|TimeCount2|no\(1) & (!\Con|TimeCount2|Equal0~9\ & ((!\Con|TimeCount2|Equal8~0_combout\) # (!\Con|TimeCount2|no\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "23af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount2|no\(1),
	datab => \Con|TimeCount2|no\(0),
	datac => \Con|TimeCount2|Equal0~9\,
	datad => \Con|TimeCount2|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~31_combout\);

-- Location: LC_X12_Y8_N0
\lcd_data~33\ : maxv_lcell
-- Equation(s):
-- \lcd_data~33_combout\ = (\lcd_data~31_combout\ & (\lcd_data~18\ & ((!\Con|TimeCount2|Equal0~8_combout\) # (!\lcd_data~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~32_combout\,
	datab => \lcd_data~31_combout\,
	datac => \lcd_data~18\,
	datad => \Con|TimeCount2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~33_combout\);

-- Location: LC_X12_Y8_N1
\lcd_data~35\ : maxv_lcell
-- Equation(s):
-- \lcd_data~35_combout\ = (\lcd_data~33_combout\) # ((\lcd_data~17\ & (\lcd_data~34_combout\ & \lcd_data~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~17\,
	datab => \lcd_data~34_combout\,
	datac => \lcd_data~60_combout\,
	datad => \lcd_data~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~35_combout\);

-- Location: LC_X12_Y8_N2
\lcd_data~36\ : maxv_lcell
-- Equation(s):
-- \lcd_data~36_combout\ = (\lcd_data~56_combout\) # ((\lcd_data~30_combout\) # ((\Equal4~1_combout\ & \lcd_data~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~56_combout\,
	datab => \Equal4~1_combout\,
	datac => \lcd_data~30_combout\,
	datad => \lcd_data~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~36_combout\);

-- Location: LC_X12_Y8_N3
\lcd_data[1]\ : maxv_lcell
-- Equation(s):
-- lcd_data(1) = DFFEAS((\Con|LEDOver~regout\ & (\lcd_data~37_combout\)) # (!\Con|LEDOver~regout\ & (((\lcd_data~36_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, \A4|Y[1]~13_combout\, , , !\NReset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \lcd_data~37_combout\,
	datab => \Con|LEDOver~regout\,
	datac => \A4|Y[1]~13_combout\,
	datad => \lcd_data~36_combout\,
	aclr => GND,
	sload => \ALT_INV_NReset~combout\,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_data(1));

-- Location: LC_X10_Y8_N1
\LCD1|data_dis[1]\ : maxv_lcell
-- Equation(s):
-- \LCD1|data_dis\(1) = DFFEAS((((lcd_data(1)))), GLOBAL(\CH|Output~regout\), VCC, , \LCD1|state~32\, , , , )

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
	clk => \CH|Output~regout\,
	datad => lcd_data(1),
	aclr => GND,
	ena => \LCD1|state~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|data_dis\(1));

-- Location: LC_X10_Y6_N7
\LCD1|cmd_position[1]\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector6~1\ = (\LCD1|lcd\(1) & (((!\LCD1|Selector8~0_combout\ & J1_cmd_position[1])) # (!\LCD1|lcd[4]~0_combout\))) # (!\LCD1|lcd\(1) & (!\LCD1|Selector8~0_combout\ & (J1_cmd_position[1])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|lcd\(1),
	datab => \LCD1|Selector8~0_combout\,
	datac => col(1),
	datad => \LCD1|lcd[4]~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector6~1\,
	regout => \LCD1|cmd_position\(1));

-- Location: LC_X10_Y6_N8
\LCD1|lcd[1]\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd\(1) = DFFEAS(((\LCD1|Selector6~1\) # ((\LCD1|Selector6~0_combout\ & \LCD1|data_dis\(1)))), GLOBAL(\CH|Output~regout\), VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datab => \LCD1|Selector6~0_combout\,
	datac => \LCD1|data_dis\(1),
	datad => \LCD1|Selector6~1\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|lcd\(1));

-- Location: LC_X12_Y5_N6
\lcd_data~43\ : maxv_lcell
-- Equation(s):
-- \lcd_data~43_combout\ = (!col(2) & ((col(1) & ((col(0)))) # (!col(1) & (col(3)))))

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
	dataa => col(2),
	datab => col(1),
	datac => col(3),
	datad => col(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~43_combout\);

-- Location: LC_X12_Y3_N1
\A4|Y[2]~14\ : maxv_lcell
-- Equation(s):
-- \A4|Y[2]~14_combout\ = (!\Con|LEDOver~regout\ & (((!\Con|TimeCount4|Equal0~9_combout\ & !\Con|TimeCount4|Equal8~1_combout\))))

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
	dataa => \Con|LEDOver~regout\,
	datac => \Con|TimeCount4|Equal0~9_combout\,
	datad => \Con|TimeCount4|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Y[2]~14_combout\);

-- Location: LC_X11_Y4_N6
\lcd_data~62\ : maxv_lcell
-- Equation(s):
-- \lcd_data~62_combout\ = (!\Con|TimeCount0|Equal0~9_combout\ & (((!\Con|TimeCount0|Equal8~1_combout\ & \lcd_data~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount0|Equal0~9_combout\,
	datac => \Con|TimeCount0|Equal8~1_combout\,
	datad => \lcd_data~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~62_combout\);

-- Location: LC_X13_Y3_N2
\Con|TimeCount3|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount3|Equal2~0_combout\ = (!\Con|TimeCount3|no\(3) & (\Con|TimeCount3|no\(1) & (!\Con|TimeCount3|no\(2) & \Con|TimeCount3|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount3|no\(3),
	datab => \Con|TimeCount3|no\(1),
	datac => \Con|TimeCount3|no\(2),
	datad => \Con|TimeCount3|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount3|Equal2~0_combout\);

-- Location: LC_X12_Y3_N0
\lcd_data~41\ : maxv_lcell
-- Equation(s):
-- \lcd_data~41_combout\ = (\lcd_data~62_combout\) # ((!\Con|TimeCount3|Equal2~0_combout\ & (\lcd_data~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~62_combout\,
	datab => \Con|TimeCount3|Equal2~0_combout\,
	datac => \lcd_data~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~41_combout\);

-- Location: LC_X13_Y3_N6
\lcd_data~61\ : maxv_lcell
-- Equation(s):
-- \lcd_data~61_combout\ = (\Con|TimeCount2|no\(3)) # (((\Con|TimeCount2|no\(2)) # (!\Con|TimeCount2|Equal0~8_combout\)) # (!\Con|TimeCount2|no\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount2|no\(3),
	datab => \Con|TimeCount2|no\(1),
	datac => \Con|TimeCount2|no\(2),
	datad => \Con|TimeCount2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~61_combout\);

-- Location: LC_X12_Y3_N4
\lcd_data~39\ : maxv_lcell
-- Equation(s):
-- \lcd_data~39_combout\ = (\lcd_data~31_combout\ & (!col(0) & ((\Con|TimeCount2|no\(0)) # (!\Con|TimeCount2|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "080a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~31_combout\,
	datab => \Con|TimeCount2|no\(0),
	datac => col(0),
	datad => \Con|TimeCount2|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~39_combout\);

-- Location: LC_X12_Y3_N5
\Con|TimeCount1|Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal2~0_combout\ = (\Con|TimeCount1|no\(1) & (!\Con|TimeCount1|no\(3) & (!\Con|TimeCount1|no\(2) & \Con|TimeCount1|Equal0~8_combout\)))

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
	dataa => \Con|TimeCount1|no\(1),
	datab => \Con|TimeCount1|no\(3),
	datac => \Con|TimeCount1|no\(2),
	datad => \Con|TimeCount1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal2~0_combout\);

-- Location: LC_X12_Y3_N6
\lcd_data~38\ : maxv_lcell
-- Equation(s):
-- \lcd_data~38_combout\ = ((\lcd_data~34_combout\ & (\lcd_data~17\ & !\Con|TimeCount1|Equal2~0_combout\)))

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
	datab => \lcd_data~34_combout\,
	datac => \lcd_data~17\,
	datad => \Con|TimeCount1|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~38_combout\);

-- Location: LC_X12_Y3_N7
\lcd_data~40\ : maxv_lcell
-- Equation(s):
-- \lcd_data~40_combout\ = (\Equal4~1_combout\ & ((\lcd_data~38_combout\) # ((\lcd_data~61_combout\ & \lcd_data~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~61_combout\,
	datab => \Equal4~1_combout\,
	datac => \lcd_data~39_combout\,
	datad => \lcd_data~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~40_combout\);

-- Location: LC_X12_Y3_N8
\lcd_data~42\ : maxv_lcell
-- Equation(s):
-- \lcd_data~42_combout\ = (\lcd_data~41_combout\) # ((\lcd_data~40_combout\) # ((\lcd_data~27_combout\ & \A4|Y[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~27_combout\,
	datab => \A4|Y[2]~14_combout\,
	datac => \lcd_data~41_combout\,
	datad => \lcd_data~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~42_combout\);

-- Location: LC_X12_Y3_N9
\lcd_data[2]\ : maxv_lcell
-- Equation(s):
-- lcd_data(2) = DFFEAS((\Con|LEDOver~regout\ & (\lcd_data~43_combout\)) # (!\Con|LEDOver~regout\ & (((\lcd_data~42_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, \A4|Y[2]~14_combout\, , , !\NReset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \Con|LEDOver~regout\,
	datab => \lcd_data~43_combout\,
	datac => \A4|Y[2]~14_combout\,
	datad => \lcd_data~42_combout\,
	aclr => GND,
	sload => \ALT_INV_NReset~combout\,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_data(2));

-- Location: LC_X9_Y6_N0
\LCD1|data_dis[2]\ : maxv_lcell
-- Equation(s):
-- \LCD1|data_dis\(2) = DFFEAS(GND, GLOBAL(\CH|Output~regout\), VCC, , \LCD1|state~32\, lcd_data(2), , , VCC)

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
	clk => \CH|Output~regout\,
	datac => lcd_data(2),
	aclr => GND,
	sload => VCC,
	ena => \LCD1|state~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|data_dis\(2));

-- Location: LC_X5_Y5_N5
\LCD1|Selector5~2\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector5~2_combout\ = (!\LCD1|count_cmd\(0) & (\LCD1|Selector5~0_combout\ & (\LCD1|count_cmd\(1) $ (\LCD1|count_cmd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD1|count_cmd\(1),
	datab => \LCD1|count_cmd\(2),
	datac => \LCD1|count_cmd\(0),
	datad => \LCD1|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector5~2_combout\);

-- Location: LC_X10_Y6_N5
\LCD1|cmd_position[2]\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector5~1\ = (\LCD1|lcd\(2) & (((!\LCD1|Selector8~0_combout\ & J1_cmd_position[2])) # (!\LCD1|lcd[4]~0_combout\))) # (!\LCD1|lcd\(2) & (!\LCD1|Selector8~0_combout\ & (J1_cmd_position[2])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|lcd\(2),
	datab => \LCD1|Selector8~0_combout\,
	datac => col(2),
	datad => \LCD1|lcd[4]~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector5~1\,
	regout => \LCD1|cmd_position\(2));

-- Location: LC_X10_Y6_N6
\LCD1|lcd[2]\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd\(2) = DFFEAS((\LCD1|Selector5~2_combout\) # ((\LCD1|Selector5~1\) # ((\LCD1|data_dis\(2) & \LCD1|Selector6~0_combout\))), GLOBAL(\CH|Output~regout\), VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|data_dis\(2),
	datab => \LCD1|Selector6~0_combout\,
	datac => \LCD1|Selector5~2_combout\,
	datad => \LCD1|Selector5~1\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|lcd\(2));

-- Location: LC_X12_Y5_N9
\lcd_data~48\ : maxv_lcell
-- Equation(s):
-- \lcd_data~48_combout\ = (col(1) & (!col(3) & (col(2) $ (col(0))))) # (!col(1) & (!col(2) & (col(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1418",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(2),
	datab => col(1),
	datac => col(3),
	datad => col(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~48_combout\);

-- Location: LC_X12_Y9_N9
\A4|Y[3]~10\ : maxv_lcell
-- Equation(s):
-- \A4|Y[3]~10_combout\ = ((\Con|TimeCount4|no\(0) & ((\Con|TimeCount4|Equal0~9_combout\) # (\Con|TimeCount4|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|TimeCount4|no\(0),
	datac => \Con|TimeCount4|Equal0~9_combout\,
	datad => \Con|TimeCount4|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Y[3]~10_combout\);

-- Location: LC_X12_Y9_N8
\A4|Y[3]~11\ : maxv_lcell
-- Equation(s):
-- \A4|Y[3]~11_combout\ = ((\A4|Y[1]~6\ & (\A4|Y[3]~7_combout\ & !\A4|Y[3]~10_combout\)))

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
	datab => \A4|Y[1]~6\,
	datac => \A4|Y[3]~7_combout\,
	datad => \A4|Y[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A4|Y[3]~11_combout\);

-- Location: LC_X12_Y5_N7
\Con|TimeCount2|Count[3]~8\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount2|Count[3]~8_combout\ = (!\Con|TimeCount2|no\(3) & (((\Con|TimeCount2|Equal0~8_combout\))))

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
	dataa => \Con|TimeCount2|no\(3),
	datad => \Con|TimeCount2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount2|Count[3]~8_combout\);

-- Location: LC_X12_Y5_N1
\Con|TimeCount1|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \Con|TimeCount1|Equal0~9_combout\ = ((!\Con|TimeCount1|no\(3) & (\Con|TimeCount1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con|TimeCount1|no\(3),
	datac => \Con|TimeCount1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Con|TimeCount1|Equal0~9_combout\);

-- Location: LC_X12_Y5_N0
\lcd_data~44\ : maxv_lcell
-- Equation(s):
-- \lcd_data~44_combout\ = (\Equal4~1_combout\ & ((col(0) & ((!\Con|TimeCount1|Equal0~9_combout\))) # (!col(0) & (!\Con|TimeCount2|Count[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "028a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => col(0),
	datac => \Con|TimeCount2|Count[3]~8_combout\,
	datad => \Con|TimeCount1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~44_combout\);

-- Location: LC_X12_Y5_N2
\lcd_data~45\ : maxv_lcell
-- Equation(s):
-- \lcd_data~45_combout\ = (!\Con|TimeCount0|Equal4~0_combout\ & (((!\Con|TimeCount0|Equal0~9_combout\ & \lcd_data~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con|TimeCount0|Equal4~0_combout\,
	datac => \Con|TimeCount0|Equal0~9_combout\,
	datad => \lcd_data~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~45_combout\);

-- Location: LC_X12_Y5_N3
\lcd_data~46\ : maxv_lcell
-- Equation(s):
-- \lcd_data~46_combout\ = (\lcd_data~45_combout\) # ((\Equal4~0_combout\ & (!\Con|TimeCount3|Equal0~9\ & !\Con|TimeCount3|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Con|TimeCount3|Equal0~9\,
	datac => \Con|TimeCount3|Equal4~0_combout\,
	datad => \lcd_data~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~46_combout\);

-- Location: LC_X12_Y5_N4
\lcd_data~47\ : maxv_lcell
-- Equation(s):
-- \lcd_data~47_combout\ = (\lcd_data~44_combout\) # ((\lcd_data~46_combout\) # ((\lcd_data~27_combout\ & \A4|Y[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_data~27_combout\,
	datab => \A4|Y[3]~11_combout\,
	datac => \lcd_data~44_combout\,
	datad => \lcd_data~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~47_combout\);

-- Location: LC_X12_Y5_N5
\lcd_data[3]\ : maxv_lcell
-- Equation(s):
-- lcd_data(3) = DFFEAS((\Con|LEDOver~regout\ & (\lcd_data~48_combout\)) # (!\Con|LEDOver~regout\ & (((\lcd_data~47_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, \A4|Y[3]~11_combout\, , , !\NReset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \Con|LEDOver~regout\,
	datab => \lcd_data~48_combout\,
	datac => \A4|Y[3]~11_combout\,
	datad => \lcd_data~47_combout\,
	aclr => GND,
	sload => \ALT_INV_NReset~combout\,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_data(3));

-- Location: LC_X9_Y6_N5
\LCD1|data_dis[3]\ : maxv_lcell
-- Equation(s):
-- \LCD1|data_dis\(3) = DFFEAS(GND, GLOBAL(\CH|Output~regout\), VCC, , \LCD1|state~32\, lcd_data(3), , , VCC)

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
	clk => \CH|Output~regout\,
	datac => lcd_data(3),
	aclr => GND,
	sload => VCC,
	ena => \LCD1|state~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|data_dis\(3));

-- Location: LC_X6_Y4_N4
\LCD1|Selector8~1\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector8~1_combout\ = (((!\LCD1|state.S2~regout\ & !\LCD1|state.S1~regout\)))

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
	datac => \LCD1|state.S2~regout\,
	datad => \LCD1|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector8~1_combout\);

-- Location: LC_X5_Y5_N0
\LCD1|Selector3~0\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector3~0_combout\ = (!\LCD1|count_cmd\(2) & (!\LCD1|count_cmd\(0) & ((!\LCD1|Selector8~1_combout\) # (!\LCD1|state.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD1|count_cmd\(2),
	datab => \LCD1|count_cmd\(0),
	datac => \LCD1|state.S0~regout\,
	datad => \LCD1|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector3~0_combout\);

-- Location: LC_X10_Y6_N3
\LCD1|cmd_position[3]\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector4~0\ = (\LCD1|lcd\(3) & (((!\LCD1|Selector8~0_combout\ & J1_cmd_position[3])) # (!\LCD1|lcd[4]~0_combout\))) # (!\LCD1|lcd\(3) & (!\LCD1|Selector8~0_combout\ & (J1_cmd_position[3])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|lcd\(3),
	datab => \LCD1|Selector8~0_combout\,
	datac => col(3),
	datad => \LCD1|lcd[4]~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector4~0\,
	regout => \LCD1|cmd_position\(3));

-- Location: LC_X10_Y6_N4
\LCD1|lcd[3]\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd\(3) = DFFEAS((\LCD1|Selector3~0_combout\) # ((\LCD1|Selector4~0\) # ((\LCD1|data_dis\(3) & \LCD1|Selector6~0_combout\))), GLOBAL(\CH|Output~regout\), VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|data_dis\(3),
	datab => \LCD1|Selector6~0_combout\,
	datac => \LCD1|Selector3~0_combout\,
	datad => \LCD1|Selector4~0\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|lcd\(3));

-- Location: LC_X10_Y8_N7
\lcd_data~49\ : maxv_lcell
-- Equation(s):
-- \lcd_data~49_combout\ = (!col(3) & ((col(2) & ((!col(0)) # (!col(1)))) # (!col(2) & (col(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1454",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(3),
	datab => col(2),
	datac => col(1),
	datad => col(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~49_combout\);

-- Location: LC_X10_Y8_N5
\lcd_data~50\ : maxv_lcell
-- Equation(s):
-- \lcd_data~50_combout\ = (col(3) & (!col(0) & (col(2) $ (col(1))))) # (!col(3) & (!col(2) & (col(1) & col(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1028",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(3),
	datab => col(2),
	datac => col(1),
	datad => col(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~50_combout\);

-- Location: LC_X10_Y8_N6
\lcd_data[4]\ : maxv_lcell
-- Equation(s):
-- lcd_data(4) = DFFEAS((\lcd_data~49_combout\ $ (((\Con|LEDOver~regout\ & \lcd_data~50_combout\)))) # (!\NReset~combout\), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \lcd_data~49_combout\,
	datab => \NReset~combout\,
	datac => \Con|LEDOver~regout\,
	datad => \lcd_data~50_combout\,
	aclr => GND,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_data(4));

-- Location: LC_X10_Y8_N9
\LCD1|data_dis[4]\ : maxv_lcell
-- Equation(s):
-- \LCD1|data_dis\(4) = DFFEAS((((lcd_data(4)))), GLOBAL(\CH|Output~regout\), VCC, , \LCD1|state~32\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datac => lcd_data(4),
	aclr => GND,
	ena => \LCD1|state~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|data_dis\(4));

-- Location: LC_X6_Y4_N8
\LCD1|lcd[5]~1\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd[5]~1_combout\ = (\LCD1|state.S2~regout\) # ((\LCD1|state.S1~regout\) # ((!\LCD1|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD1|state.S2~regout\,
	datab => \LCD1|state.S1~regout\,
	datac => \LCD1|state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|lcd[5]~1_combout\);

-- Location: LC_X6_Y4_N9
\LCD1|Selector3~1\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector3~1_combout\ = (!\LCD1|count_cmd\(1) & (!\LCD1|count_cmd\(0) & (!\LCD1|count_cmd\(2) & \LCD1|lcd[5]~1_combout\)))

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
	dataa => \LCD1|count_cmd\(1),
	datab => \LCD1|count_cmd\(0),
	datac => \LCD1|count_cmd\(2),
	datad => \LCD1|lcd[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector3~1_combout\);

-- Location: LC_X5_Y5_N6
\LCD1|lcd[4]~2\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd[4]~2_combout\ = (\NReset~combout\ & (!\LCD1|state.S9~regout\ & ((\LCD1|state.S0~regout\) # (\LCD1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \NReset~combout\,
	datab => \LCD1|state.S0~regout\,
	datac => \LCD1|state.S9~regout\,
	datad => \LCD1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|lcd[4]~2_combout\);

-- Location: LC_X8_Y4_N0
\LCD1|lcd[4]\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd\(4) = DFFEAS((\LCD1|Selector8~0_combout\ & ((\LCD1|Selector3~1_combout\) # ((\LCD1|data_dis\(4) & !\LCD1|lcd[5]~1_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , \LCD1|lcd[4]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|Selector8~0_combout\,
	datab => \LCD1|data_dis\(4),
	datac => \LCD1|lcd[5]~1_combout\,
	datad => \LCD1|Selector3~1_combout\,
	aclr => GND,
	ena => \LCD1|lcd[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|lcd\(4));

-- Location: LC_X10_Y8_N4
\lcd_data~52\ : maxv_lcell
-- Equation(s):
-- \lcd_data~52_combout\ = (col(3) & (((!col(1) & !col(0))) # (!col(2)))) # (!col(3) & ((col(2) & ((!col(0)) # (!col(1)))) # (!col(2) & (col(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "367e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(3),
	datab => col(2),
	datac => col(1),
	datad => col(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~52_combout\);

-- Location: LC_X10_Y8_N0
\lcd_data[5]\ : maxv_lcell
-- Equation(s):
-- lcd_data(5) = DFFEAS((((!\NReset~combout\) # (!\lcd_data~52_combout\))) # (!\Con|LEDOver~regout\), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \Con|LEDOver~regout\,
	datac => \lcd_data~52_combout\,
	datad => \NReset~combout\,
	aclr => GND,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_data(5));

-- Location: LC_X9_Y6_N3
\LCD1|data_dis[5]\ : maxv_lcell
-- Equation(s):
-- \LCD1|data_dis\(5) = DFFEAS((((lcd_data(5)))), GLOBAL(\CH|Output~regout\), VCC, , \LCD1|state~32\, , , , )

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
	clk => \CH|Output~regout\,
	datad => lcd_data(5),
	aclr => GND,
	ena => \LCD1|state~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|data_dis\(5));

-- Location: LC_X8_Y4_N4
\LCD1|lcd[5]\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd\(5) = DFFEAS((\LCD1|Selector8~0_combout\ & ((\LCD1|Selector3~1_combout\) # ((\LCD1|data_dis\(5) & !\LCD1|lcd[5]~1_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , \LCD1|lcd[4]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|Selector8~0_combout\,
	datab => \LCD1|data_dis\(5),
	datac => \LCD1|lcd[5]~1_combout\,
	datad => \LCD1|Selector3~1_combout\,
	aclr => GND,
	ena => \LCD1|lcd[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|lcd\(5));

-- Location: LC_X10_Y8_N3
\lcd_data~54\ : maxv_lcell
-- Equation(s):
-- \lcd_data~54_combout\ = (col(3) & (((!col(1) & !col(0))) # (!col(2)))) # (!col(3) & ((col(2) & ((!col(0)) # (!col(1)))) # (!col(2) & (col(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "367e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => col(3),
	datab => col(2),
	datac => col(1),
	datad => col(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_data~54_combout\);

-- Location: LC_X10_Y8_N8
\lcd_data[6]\ : maxv_lcell
-- Equation(s):
-- lcd_data(6) = DFFEAS(((\NReset~combout\ & ((\lcd_data~54_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , \lcd_data~16_combout\, , , !\Con|LEDOver~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	datab => \NReset~combout\,
	datad => \lcd_data~54_combout\,
	aclr => GND,
	sclr => \Con|ALT_INV_LEDOver~regout\,
	ena => \lcd_data~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_data(6));

-- Location: LC_X10_Y8_N2
\LCD1|data_dis[6]\ : maxv_lcell
-- Equation(s):
-- \LCD1|data_dis\(6) = DFFEAS((((lcd_data(6)))), GLOBAL(\CH|Output~regout\), VCC, , \LCD1|state~32\, , , , )

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
	clk => \CH|Output~regout\,
	datad => lcd_data(6),
	aclr => GND,
	ena => \LCD1|state~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|data_dis\(6));

-- Location: LC_X10_Y6_N9
\LCD1|lcd[6]\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd\(6) = DFFEAS((\LCD1|data_dis\(6) & ((\LCD1|Selector6~0_combout\) # ((\LCD1|lcd\(6) & !\LCD1|lcd[4]~0_combout\)))) # (!\LCD1|data_dis\(6) & (((\LCD1|lcd\(6) & !\LCD1|lcd[4]~0_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , \NReset~combout\, , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|data_dis\(6),
	datab => \LCD1|Selector6~0_combout\,
	datac => \LCD1|lcd\(6),
	datad => \LCD1|lcd[4]~0_combout\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|lcd\(6));

-- Location: LC_X6_Y4_N2
\LCD1|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector0~0_combout\ = (\LCD1|count_cmd\(1) & (\LCD1|count_cmd\(0) & (\LCD1|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD1|count_cmd\(1),
	datab => \LCD1|count_cmd\(0),
	datac => \LCD1|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector0~0_combout\);

-- Location: LC_X6_Y4_N3
\LCD1|lcd[7]\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd\(7) = DFFEAS(((\LCD1|Selector0~0_combout\) # ((\LCD1|lcd\(7) & !\LCD1|lcd[4]~0_combout\))) # (!\LCD1|Selector8~0_combout\), GLOBAL(\CH|Output~regout\), VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|lcd\(7),
	datab => \LCD1|Selector8~0_combout\,
	datac => \LCD1|lcd[4]~0_combout\,
	datad => \LCD1|Selector0~0_combout\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|lcd\(7));

-- Location: LC_X5_Y8_N7
\LCD1|Selector10~0\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector10~0_combout\ = (((\LCD1|state.S7~regout\) # (\LCD1|state.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \LCD1|state.S7~regout\,
	datad => \LCD1|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector10~0_combout\);

-- Location: LC_X6_Y4_N7
\LCD1|lcd_en\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd_en~regout\ = DFFEAS((\LCD1|Selector10~0_combout\) # ((\LCD1|state.S1~regout\) # ((!\LCD1|lcd[4]~0_combout\ & \LCD1|lcd_en~regout\))), GLOBAL(\CH|Output~regout\), VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|lcd[4]~0_combout\,
	datab => \LCD1|lcd_en~regout\,
	datac => \LCD1|Selector10~0_combout\,
	datad => \LCD1|state.S1~regout\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|lcd_en~regout\);

-- Location: LC_X5_Y5_N2
\LCD1|Selector8~2\ : maxv_lcell
-- Equation(s):
-- \LCD1|Selector8~2_combout\ = (\LCD1|Selector8~0_combout\ & (\LCD1|Selector8~1_combout\ & ((\LCD1|lcd_rs~regout\) # (!\LCD1|state.S9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LCD1|lcd_rs~regout\,
	datab => \LCD1|state.S9~regout\,
	datac => \LCD1|Selector8~0_combout\,
	datad => \LCD1|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LCD1|Selector8~2_combout\);

-- Location: LC_X5_Y5_N8
\LCD1|lcd_rs\ : maxv_lcell
-- Equation(s):
-- \LCD1|lcd_rs~regout\ = DFFEAS((\LCD1|Selector8~2_combout\ & ((\LCD1|state.S0~regout\) # ((\LCD1|lcd_rs~regout\ & !\LCD1|LessThan0~0_combout\)))), GLOBAL(\CH|Output~regout\), VCC, , \NReset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CH|Output~regout\,
	dataa => \LCD1|lcd_rs~regout\,
	datab => \LCD1|state.S0~regout\,
	datac => \LCD1|LessThan0~0_combout\,
	datad => \LCD1|Selector8~2_combout\,
	aclr => GND,
	ena => \NReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD1|lcd_rs~regout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Con|LEDF~regout\,
	oe => VCC,
	padio => ww_LED);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LEDOver~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Con|LEDOver~regout\,
	oe => VCC,
	padio => ww_LEDOver);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LEDEnd~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Con|LEDEnd~regout\,
	oe => VCC,
	padio => ww_LEDEnd);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD1|lcd\(0),
	oe => VCC,
	padio => ww_LCD(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD1|lcd\(1),
	oe => VCC,
	padio => ww_LCD(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD1|lcd\(2),
	oe => VCC,
	padio => ww_LCD(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD1|lcd\(3),
	oe => VCC,
	padio => ww_LCD(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD1|lcd\(4),
	oe => VCC,
	padio => ww_LCD(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD1|lcd\(5),
	oe => VCC,
	padio => ww_LCD(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD1|lcd\(6),
	oe => VCC,
	padio => ww_LCD(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LCD[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD1|lcd\(7),
	oe => VCC,
	padio => ww_LCD(7));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\en~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD1|lcd_en~regout\,
	oe => VCC,
	padio => ww_en);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rw~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_rw);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LCD1|lcd_rs~regout\,
	oe => VCC,
	padio => ww_rs);

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
END structure;


