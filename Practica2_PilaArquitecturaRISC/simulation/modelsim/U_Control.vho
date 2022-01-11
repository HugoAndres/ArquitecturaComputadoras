-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "11/19/2021 23:28:31"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	U_Control IS
    PORT (
	\global.bp.work.ALU_UC.aux_7__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_6__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_5__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_4__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_3__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_2__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_1__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_0__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_14__gl_input\ : IN std_logic;
	\global.bp.work.ALU_UC.aux_13__gl_input\ : IN std_logic;
	\global.bp.work.ALU_UC.aux_12__gl_input\ : IN std_logic;
	\global.bp.work.ALU_UC.aux_11__gl_input\ : IN std_logic;
	\global.bp.work.ALU_UC.aux_10__gl_input\ : IN std_logic;
	\global.bp.work.ALU_UC.aux_9__gl_input\ : IN std_logic;
	\global.bp.work.ALU_UC.aux_8__gl_input\ : IN std_logic;
	\global.bp.work.ALU_UC.aux_15__gl_input\ : IN std_logic;
	clk : IN std_logic;
	clr : IN std_logic;
	exe : IN std_logic;
	ent_datos : IN std_logic_vector(7 DOWNTO 0);
	ent_inst : IN std_logic_vector(3 DOWNTO 0);
	bus_datos : INOUT std_logic_vector(7 DOWNTO 0);
	flag : OUT std_logic_vector(2 DOWNTO 0);
	bus_dir : OUT std_logic_vector(19 DOWNTO 0);
	bus_ctrl : OUT std_logic_vector(4 DOWNTO 0);
	Disp_7sg : OUT std_logic_vector(55 DOWNTO 0)
	);
END U_Control;

-- Design Ports Information
-- flag[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_dir[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_ctrl[0]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_ctrl[1]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_ctrl[2]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_ctrl[3]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_ctrl[4]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[7]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[11]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[12]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[13]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[14]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[15]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[16]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[17]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[18]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[19]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[20]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[21]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[22]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[23]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[24]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[25]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[26]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[27]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[28]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[29]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[30]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[31]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[32]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[33]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[34]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[35]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[36]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[37]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[38]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[39]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[40]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[41]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[42]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[43]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[44]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[45]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[46]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[47]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[48]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[49]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[50]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[51]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[52]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[53]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[54]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp_7sg[55]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_datos[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_datos[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_datos[2]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_datos[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_datos[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_datos[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_datos[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_datos[7]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exe	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_inst[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_inst[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_inst[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_inst[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF U_Control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_14__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_13__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_12__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_11__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_10__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_9__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_8__gl_input\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_15__gl_input\ : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_exe : std_logic;
SIGNAL ww_ent_datos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ent_inst : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flag : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_bus_dir : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_bus_ctrl : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Disp_7sg : std_logic_vector(55 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \aux~1_combout\ : std_logic;
SIGNAL \bus_datos[0]~input_o\ : std_logic;
SIGNAL \bus_datos[1]~input_o\ : std_logic;
SIGNAL \bus_datos[2]~input_o\ : std_logic;
SIGNAL \bus_datos[3]~input_o\ : std_logic;
SIGNAL \bus_datos[4]~input_o\ : std_logic;
SIGNAL \bus_datos[5]~input_o\ : std_logic;
SIGNAL \bus_datos[6]~input_o\ : std_logic;
SIGNAL \bus_datos[7]~input_o\ : std_logic;
SIGNAL \ent_datos[5]~input_o\ : std_logic;
SIGNAL \ent_datos[4]~input_o\ : std_logic;
SIGNAL \ent_inst[2]~input_o\ : std_logic;
SIGNAL \aux[6]~feeder_combout\ : std_logic;
SIGNAL \bus_datos[0]~output_o\ : std_logic;
SIGNAL \bus_datos[1]~output_o\ : std_logic;
SIGNAL \bus_datos[2]~output_o\ : std_logic;
SIGNAL \bus_datos[3]~output_o\ : std_logic;
SIGNAL \bus_datos[4]~output_o\ : std_logic;
SIGNAL \bus_datos[5]~output_o\ : std_logic;
SIGNAL \bus_datos[6]~output_o\ : std_logic;
SIGNAL \bus_datos[7]~output_o\ : std_logic;
SIGNAL \flag[0]~output_o\ : std_logic;
SIGNAL \flag[1]~output_o\ : std_logic;
SIGNAL \flag[2]~output_o\ : std_logic;
SIGNAL \bus_dir[0]~output_o\ : std_logic;
SIGNAL \bus_dir[1]~output_o\ : std_logic;
SIGNAL \bus_dir[2]~output_o\ : std_logic;
SIGNAL \bus_dir[3]~output_o\ : std_logic;
SIGNAL \bus_dir[4]~output_o\ : std_logic;
SIGNAL \bus_dir[5]~output_o\ : std_logic;
SIGNAL \bus_dir[6]~output_o\ : std_logic;
SIGNAL \bus_dir[7]~output_o\ : std_logic;
SIGNAL \bus_dir[8]~output_o\ : std_logic;
SIGNAL \bus_dir[9]~output_o\ : std_logic;
SIGNAL \bus_dir[10]~output_o\ : std_logic;
SIGNAL \bus_dir[11]~output_o\ : std_logic;
SIGNAL \bus_dir[12]~output_o\ : std_logic;
SIGNAL \bus_dir[13]~output_o\ : std_logic;
SIGNAL \bus_dir[14]~output_o\ : std_logic;
SIGNAL \bus_dir[15]~output_o\ : std_logic;
SIGNAL \bus_dir[16]~output_o\ : std_logic;
SIGNAL \bus_dir[17]~output_o\ : std_logic;
SIGNAL \bus_dir[18]~output_o\ : std_logic;
SIGNAL \bus_dir[19]~output_o\ : std_logic;
SIGNAL \bus_ctrl[0]~output_o\ : std_logic;
SIGNAL \bus_ctrl[1]~output_o\ : std_logic;
SIGNAL \bus_ctrl[2]~output_o\ : std_logic;
SIGNAL \bus_ctrl[3]~output_o\ : std_logic;
SIGNAL \bus_ctrl[4]~output_o\ : std_logic;
SIGNAL \Disp_7sg[0]~output_o\ : std_logic;
SIGNAL \Disp_7sg[1]~output_o\ : std_logic;
SIGNAL \Disp_7sg[2]~output_o\ : std_logic;
SIGNAL \Disp_7sg[3]~output_o\ : std_logic;
SIGNAL \Disp_7sg[4]~output_o\ : std_logic;
SIGNAL \Disp_7sg[5]~output_o\ : std_logic;
SIGNAL \Disp_7sg[6]~output_o\ : std_logic;
SIGNAL \Disp_7sg[7]~output_o\ : std_logic;
SIGNAL \Disp_7sg[8]~output_o\ : std_logic;
SIGNAL \Disp_7sg[9]~output_o\ : std_logic;
SIGNAL \Disp_7sg[10]~output_o\ : std_logic;
SIGNAL \Disp_7sg[11]~output_o\ : std_logic;
SIGNAL \Disp_7sg[12]~output_o\ : std_logic;
SIGNAL \Disp_7sg[13]~output_o\ : std_logic;
SIGNAL \Disp_7sg[14]~output_o\ : std_logic;
SIGNAL \Disp_7sg[15]~output_o\ : std_logic;
SIGNAL \Disp_7sg[16]~output_o\ : std_logic;
SIGNAL \Disp_7sg[17]~output_o\ : std_logic;
SIGNAL \Disp_7sg[18]~output_o\ : std_logic;
SIGNAL \Disp_7sg[19]~output_o\ : std_logic;
SIGNAL \Disp_7sg[20]~output_o\ : std_logic;
SIGNAL \Disp_7sg[21]~output_o\ : std_logic;
SIGNAL \Disp_7sg[22]~output_o\ : std_logic;
SIGNAL \Disp_7sg[23]~output_o\ : std_logic;
SIGNAL \Disp_7sg[24]~output_o\ : std_logic;
SIGNAL \Disp_7sg[25]~output_o\ : std_logic;
SIGNAL \Disp_7sg[26]~output_o\ : std_logic;
SIGNAL \Disp_7sg[27]~output_o\ : std_logic;
SIGNAL \Disp_7sg[28]~output_o\ : std_logic;
SIGNAL \Disp_7sg[29]~output_o\ : std_logic;
SIGNAL \Disp_7sg[30]~output_o\ : std_logic;
SIGNAL \Disp_7sg[31]~output_o\ : std_logic;
SIGNAL \Disp_7sg[32]~output_o\ : std_logic;
SIGNAL \Disp_7sg[33]~output_o\ : std_logic;
SIGNAL \Disp_7sg[34]~output_o\ : std_logic;
SIGNAL \Disp_7sg[35]~output_o\ : std_logic;
SIGNAL \Disp_7sg[36]~output_o\ : std_logic;
SIGNAL \Disp_7sg[37]~output_o\ : std_logic;
SIGNAL \Disp_7sg[38]~output_o\ : std_logic;
SIGNAL \Disp_7sg[39]~output_o\ : std_logic;
SIGNAL \Disp_7sg[40]~output_o\ : std_logic;
SIGNAL \Disp_7sg[41]~output_o\ : std_logic;
SIGNAL \Disp_7sg[42]~output_o\ : std_logic;
SIGNAL \Disp_7sg[43]~output_o\ : std_logic;
SIGNAL \Disp_7sg[44]~output_o\ : std_logic;
SIGNAL \Disp_7sg[45]~output_o\ : std_logic;
SIGNAL \Disp_7sg[46]~output_o\ : std_logic;
SIGNAL \Disp_7sg[47]~output_o\ : std_logic;
SIGNAL \Disp_7sg[48]~output_o\ : std_logic;
SIGNAL \Disp_7sg[49]~output_o\ : std_logic;
SIGNAL \Disp_7sg[50]~output_o\ : std_logic;
SIGNAL \Disp_7sg[51]~output_o\ : std_logic;
SIGNAL \Disp_7sg[52]~output_o\ : std_logic;
SIGNAL \Disp_7sg[53]~output_o\ : std_logic;
SIGNAL \Disp_7sg[54]~output_o\ : std_logic;
SIGNAL \Disp_7sg[55]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ent_inst[1]~input_o\ : std_logic;
SIGNAL \ent_inst[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \exe~input_o\ : std_logic;
SIGNAL \ent_datos[3]~input_o\ : std_logic;
SIGNAL \ent_datos[2]~input_o\ : std_logic;
SIGNAL \ent_datos[1]~input_o\ : std_logic;
SIGNAL \ent_inst[0]~input_o\ : std_logic;
SIGNAL \ent_datos[0]~input_o\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_cout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \aux_1_~0_combout\ : std_logic;
SIGNAL \aux_1_~feeder_combout\ : std_logic;
SIGNAL \flag[2]~0_combout\ : std_logic;
SIGNAL \aux_1_~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \aux_2_~0_combout\ : std_logic;
SIGNAL \aux_2_~feeder_combout\ : std_logic;
SIGNAL \aux_2_~q\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \aux_3_~0_combout\ : std_logic;
SIGNAL \aux_3_~feeder_combout\ : std_logic;
SIGNAL \aux_3_~q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \aux_4_~0_combout\ : std_logic;
SIGNAL \aux_4_~feeder_combout\ : std_logic;
SIGNAL \aux_4_~q\ : std_logic;
SIGNAL \ent_datos[6]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \aux_5_~0_combout\ : std_logic;
SIGNAL \aux_5_~feeder_combout\ : std_logic;
SIGNAL \aux_5_~q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \aux_6_~0_combout\ : std_logic;
SIGNAL \aux_6_~feeder_combout\ : std_logic;
SIGNAL \aux_6_~q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \aux_0_~0_combout\ : std_logic;
SIGNAL \aux_0_~q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \flag[0]~reg0_q\ : std_logic;
SIGNAL \Equal0~1GND_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \flag[1]~reg0_q\ : std_logic;
SIGNAL \flag[2]~reg0feeder_combout\ : std_logic;
SIGNAL \flag[2]~reg0_q\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \aux[7]~0_combout\ : std_logic;
SIGNAL \Disp_7sg[0]~reg0_q\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Disp_7sg[1]~reg0_q\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Disp_7sg[2]~reg0_q\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Disp_7sg[3]~reg0_q\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Disp_7sg[4]~reg0_q\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Disp_7sg[5]~reg0_q\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Disp_7sg[6]~reg0_q\ : std_logic;
SIGNAL \ent_datos[7]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \aux_7_~0_combout\ : std_logic;
SIGNAL \aux_7_~feeder_combout\ : std_logic;
SIGNAL \aux_7_~q\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Disp_7sg[7]~reg0_q\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Disp_7sg[8]~reg0_q\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Disp_7sg[9]~reg0_q\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Disp_7sg[10]~reg0_q\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Disp_7sg[11]~reg0_q\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Disp_7sg[12]~reg0_q\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Disp_7sg[13]~reg0_q\ : std_logic;
SIGNAL \PC[1]~7_combout\ : std_logic;
SIGNAL \PC[1]~8\ : std_logic;
SIGNAL \PC[2]~10\ : std_logic;
SIGNAL \PC[3]~11_combout\ : std_logic;
SIGNAL \aux[3]~feeder_combout\ : std_logic;
SIGNAL \PC[0]~21_combout\ : std_logic;
SIGNAL \aux[0]~feeder_combout\ : std_logic;
SIGNAL \aux[1]~feeder_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Disp_7sg[42]~reg0_q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Disp_7sg[43]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Disp_7sg[44]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Disp_7sg[45]~reg0_q\ : std_logic;
SIGNAL \PC[2]~9_combout\ : std_logic;
SIGNAL \aux[2]~feeder_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Disp_7sg[46]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Disp_7sg[47]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Disp_7sg[48]~reg0_q\ : std_logic;
SIGNAL \PC[3]~12\ : std_logic;
SIGNAL \PC[4]~13_combout\ : std_logic;
SIGNAL \PC[4]~14\ : std_logic;
SIGNAL \PC[5]~15_combout\ : std_logic;
SIGNAL \PC[5]~16\ : std_logic;
SIGNAL \PC[6]~17_combout\ : std_logic;
SIGNAL \PC[6]~18\ : std_logic;
SIGNAL \PC[7]~19_combout\ : std_logic;
SIGNAL \aux[7]~feeder_combout\ : std_logic;
SIGNAL \aux[4]~feeder_combout\ : std_logic;
SIGNAL \aux[5]~feeder_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Disp_7sg[49]~reg0_q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Disp_7sg[50]~reg0_q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Disp_7sg[51]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Disp_7sg[52]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Disp_7sg[53]~reg0_q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Disp_7sg[54]~reg0_q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Disp_7sg[55]~reg0_q\ : std_logic;
SIGNAL aux : std_logic_vector(7 DOWNTO 0);
SIGNAL PC : std_logic_vector(7 DOWNTO 0);
SIGNAL AX : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_flag[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_exe~input_o\ : std_logic;

BEGIN

\global.bp.work.ALU_UC.aux_7__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_7__gl_output\;
\global.bp.work.ALU_UC.aux_6__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_6__gl_output\;
\global.bp.work.ALU_UC.aux_5__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_5__gl_output\;
\global.bp.work.ALU_UC.aux_4__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_4__gl_output\;
\global.bp.work.ALU_UC.aux_3__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_3__gl_output\;
\global.bp.work.ALU_UC.aux_2__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_2__gl_output\;
\global.bp.work.ALU_UC.aux_1__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_1__gl_output\;
\global.bp.work.ALU_UC.aux_0__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_0__gl_output\;
\ww_global.bp.work.ALU_UC.aux_14__gl_input\ <= \global.bp.work.ALU_UC.aux_14__gl_input\;
\ww_global.bp.work.ALU_UC.aux_13__gl_input\ <= \global.bp.work.ALU_UC.aux_13__gl_input\;
\ww_global.bp.work.ALU_UC.aux_12__gl_input\ <= \global.bp.work.ALU_UC.aux_12__gl_input\;
\ww_global.bp.work.ALU_UC.aux_11__gl_input\ <= \global.bp.work.ALU_UC.aux_11__gl_input\;
\ww_global.bp.work.ALU_UC.aux_10__gl_input\ <= \global.bp.work.ALU_UC.aux_10__gl_input\;
\ww_global.bp.work.ALU_UC.aux_9__gl_input\ <= \global.bp.work.ALU_UC.aux_9__gl_input\;
\ww_global.bp.work.ALU_UC.aux_8__gl_input\ <= \global.bp.work.ALU_UC.aux_8__gl_input\;
\ww_global.bp.work.ALU_UC.aux_15__gl_input\ <= \global.bp.work.ALU_UC.aux_15__gl_input\;
ww_clk <= clk;
ww_clr <= clr;
ww_exe <= exe;
ww_ent_datos <= ent_datos;
ww_ent_inst <= ent_inst;
flag <= ww_flag;
bus_dir <= ww_bus_dir;
bus_ctrl <= ww_bus_ctrl;
Disp_7sg <= ww_Disp_7sg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_flag[2]~0_combout\ <= NOT \flag[2]~0_combout\;
\ALT_INV_exe~input_o\ <= NOT \exe~input_o\;

-- Location: LCCOMB_X111_Y15_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Equal0~1GND_combout\ & (!\aux_7_~q\ & (!\Equal0~1GND_combout\ & !\Equal0~1GND_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1GND_combout\,
	datab => \aux_7_~q\,
	datac => \Equal0~1GND_combout\,
	datad => \Equal0~1GND_combout\,
	combout => \Equal0~1_combout\);

-- Location: FF_X112_Y15_N27
\AX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aux_6_~q\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(6));

-- Location: FF_X103_Y15_N13
\aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[6]~feeder_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(6));

-- Location: LCCOMB_X112_Y15_N30
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datad => \ent_datos[5]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X111_Y15_N2
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[4]~input_o\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X112_Y15_N0
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datad => \ent_datos[3]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X113_Y15_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \ent_datos[2]~input_o\ $ (\ent_inst[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_datos[2]~input_o\,
	datac => \ent_inst[0]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X112_Y15_N26
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datad => \ent_datos[1]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X111_Y15_N30
\aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~1_combout\ = (\ent_datos[0]~input_o\ & AX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_datos[0]~input_o\,
	datac => AX(0),
	combout => \aux~1_combout\);

-- Location: IOIBUF_X115_Y11_N8
\ent_datos[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_datos(5),
	o => \ent_datos[5]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\ent_datos[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_datos(4),
	o => \ent_datos[4]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\ent_inst[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_inst(2),
	o => \ent_inst[2]~input_o\);

-- Location: LCCOMB_X103_Y15_N12
\aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[6]~feeder_combout\ = PC(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(6),
	combout => \aux[6]~feeder_combout\);

-- Location: IOOBUF_X5_Y0_N9
\bus_datos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bus_datos[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\bus_datos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bus_datos[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\bus_datos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bus_datos[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\bus_datos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bus_datos[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\bus_datos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bus_datos[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\bus_datos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bus_datos[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\bus_datos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bus_datos[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\bus_datos[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bus_datos[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\flag[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag[0]~reg0_q\,
	devoe => ww_devoe,
	o => \flag[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\flag[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag[1]~reg0_q\,
	devoe => ww_devoe,
	o => \flag[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\flag[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag[2]~reg0_q\,
	devoe => ww_devoe,
	o => \flag[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\bus_dir[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\bus_dir[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\bus_dir[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\bus_dir[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\bus_dir[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\bus_dir[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\bus_dir[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\bus_dir[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\bus_dir[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\bus_dir[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\bus_dir[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\bus_dir[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\bus_dir[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\bus_dir[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\bus_dir[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\bus_dir[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\bus_dir[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\bus_dir[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\bus_dir[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\bus_dir[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_dir[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\bus_ctrl[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_ctrl[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\bus_ctrl[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_ctrl[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\bus_ctrl[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_ctrl[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\bus_ctrl[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_ctrl[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\bus_ctrl[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bus_ctrl[4]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Disp_7sg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\Disp_7sg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Disp_7sg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\Disp_7sg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\Disp_7sg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\Disp_7sg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\Disp_7sg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\Disp_7sg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[7]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\Disp_7sg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[8]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\Disp_7sg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[9]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\Disp_7sg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[10]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[10]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\Disp_7sg[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[11]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[11]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\Disp_7sg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[12]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[12]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\Disp_7sg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[13]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[13]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\Disp_7sg[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[14]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\Disp_7sg[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[15]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\Disp_7sg[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[16]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\Disp_7sg[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[17]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\Disp_7sg[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[18]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\Disp_7sg[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[19]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\Disp_7sg[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Disp_7sg[20]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\Disp_7sg[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[21]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\Disp_7sg[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[22]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\Disp_7sg[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[23]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\Disp_7sg[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[24]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\Disp_7sg[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[25]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\Disp_7sg[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[26]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\Disp_7sg[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Disp_7sg[27]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\Disp_7sg[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[28]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\Disp_7sg[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[29]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\Disp_7sg[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[30]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\Disp_7sg[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[31]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Disp_7sg[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[32]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Disp_7sg[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[33]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Disp_7sg[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Disp_7sg[34]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\Disp_7sg[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[35]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\Disp_7sg[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[36]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\Disp_7sg[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[37]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\Disp_7sg[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[38]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Disp_7sg[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[39]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\Disp_7sg[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp_7sg[40]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\Disp_7sg[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Disp_7sg[41]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\Disp_7sg[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[42]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[42]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\Disp_7sg[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[43]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[43]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Disp_7sg[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[44]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[44]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\Disp_7sg[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[45]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[45]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\Disp_7sg[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[46]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[46]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\Disp_7sg[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[47]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[47]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Disp_7sg[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[48]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[48]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Disp_7sg[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[49]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[49]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\Disp_7sg[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[50]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[50]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Disp_7sg[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[51]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[51]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\Disp_7sg[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[52]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[52]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Disp_7sg[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[53]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[53]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\Disp_7sg[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[54]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[54]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Disp_7sg[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Disp_7sg[55]~reg0_q\,
	devoe => ww_devoe,
	o => \Disp_7sg[55]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y6_N15
\ent_inst[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_inst(1),
	o => \ent_inst[1]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\ent_inst[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_inst(3),
	o => \ent_inst[3]~input_o\);

-- Location: LCCOMB_X114_Y14_N0
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\ent_inst[2]~input_o\ & (!\ent_inst[1]~input_o\ & !\ent_inst[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[2]~input_o\,
	datac => \ent_inst[1]~input_o\,
	datad => \ent_inst[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\exe~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exe,
	o => \exe~input_o\);

-- Location: FF_X112_Y15_N1
\AX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aux_4_~q\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(4));

-- Location: IOIBUF_X115_Y13_N8
\ent_datos[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_datos(3),
	o => \ent_datos[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\ent_datos[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_datos(2),
	o => \ent_datos[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\ent_datos[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_datos(1),
	o => \ent_datos[1]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\ent_inst[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_inst(0),
	o => \ent_inst[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\ent_datos[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_datos(0),
	o => \ent_datos[0]~input_o\);

-- Location: LCCOMB_X111_Y15_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[0]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X112_Y15_N6
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_cout\ = CARRY(\ent_inst[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datad => VCC,
	cout => \Add0~10_cout\);

-- Location: LCCOMB_X112_Y15_N8
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (AX(0) & ((\Add0~8_combout\ & (\Add0~10_cout\ & VCC)) # (!\Add0~8_combout\ & (!\Add0~10_cout\)))) # (!AX(0) & ((\Add0~8_combout\ & (!\Add0~10_cout\)) # (!\Add0~8_combout\ & ((\Add0~10_cout\) # (GND)))))
-- \Add0~12\ = CARRY((AX(0) & (!\Add0~8_combout\ & !\Add0~10_cout\)) # (!AX(0) & ((!\Add0~10_cout\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AX(0),
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~10_cout\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X112_Y15_N10
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = ((\Add0~7_combout\ $ (AX(1) $ (!\Add0~12\)))) # (GND)
-- \Add0~14\ = CARRY((\Add0~7_combout\ & ((AX(1)) # (!\Add0~12\))) # (!\Add0~7_combout\ & (AX(1) & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => AX(1),
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X112_Y15_N28
\aux_1_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~0_combout\ = (\Mux0~0_combout\ & (((\Add0~13_combout\)))) # (!\Mux0~0_combout\ & (\ent_datos[1]~input_o\ & (AX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \ent_datos[1]~input_o\,
	datac => AX(1),
	datad => \Add0~13_combout\,
	combout => \aux_1_~0_combout\);

-- Location: LCCOMB_X113_Y15_N8
\aux_1_~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~feeder_combout\ = \aux_1_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aux_1_~0_combout\,
	combout => \aux_1_~feeder_combout\);

-- Location: LCCOMB_X107_Y15_N26
\flag[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag[2]~0_combout\ = (\exe~input_o\) # (!\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exe~input_o\,
	datad => \clr~input_o\,
	combout => \flag[2]~0_combout\);

-- Location: FF_X113_Y15_N9
\aux_1_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_1_~feeder_combout\,
	asdata => \aux_1_~q\,
	sload => \flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_1_~q\);

-- Location: FF_X112_Y15_N29
\AX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aux_1_~q\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(1));

-- Location: LCCOMB_X112_Y15_N12
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~6_combout\ & ((AX(2) & (\Add0~14\ & VCC)) # (!AX(2) & (!\Add0~14\)))) # (!\Add0~6_combout\ & ((AX(2) & (!\Add0~14\)) # (!AX(2) & ((\Add0~14\) # (GND)))))
-- \Add0~16\ = CARRY((\Add0~6_combout\ & (!AX(2) & !\Add0~14\)) # (!\Add0~6_combout\ & ((!\Add0~14\) # (!AX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => AX(2),
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X113_Y15_N18
\aux_2_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_2_~0_combout\ = (\Mux0~0_combout\ & (((\Add0~15_combout\)))) # (!\Mux0~0_combout\ & (\ent_datos[2]~input_o\ & (AX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \ent_datos[2]~input_o\,
	datac => AX(2),
	datad => \Add0~15_combout\,
	combout => \aux_2_~0_combout\);

-- Location: LCCOMB_X113_Y15_N10
\aux_2_~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_2_~feeder_combout\ = \aux_2_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aux_2_~0_combout\,
	combout => \aux_2_~feeder_combout\);

-- Location: FF_X113_Y15_N11
\aux_2_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_2_~feeder_combout\,
	asdata => \aux_2_~q\,
	sload => \flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_2_~q\);

-- Location: FF_X112_Y15_N5
\AX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aux_2_~q\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(2));

-- Location: LCCOMB_X112_Y15_N14
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = ((\Add0~5_combout\ $ (AX(3) $ (!\Add0~16\)))) # (GND)
-- \Add0~18\ = CARRY((\Add0~5_combout\ & ((AX(3)) # (!\Add0~16\))) # (!\Add0~5_combout\ & (AX(3) & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => AX(3),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X112_Y15_N2
\aux_3_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_3_~0_combout\ = (\Mux0~0_combout\ & (((\Add0~17_combout\)))) # (!\Mux0~0_combout\ & (\ent_datos[3]~input_o\ & (AX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \ent_datos[3]~input_o\,
	datac => AX(3),
	datad => \Add0~17_combout\,
	combout => \aux_3_~0_combout\);

-- Location: LCCOMB_X113_Y15_N28
\aux_3_~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_3_~feeder_combout\ = \aux_3_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aux_3_~0_combout\,
	combout => \aux_3_~feeder_combout\);

-- Location: FF_X113_Y15_N29
\aux_3_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_3_~feeder_combout\,
	asdata => \aux_3_~q\,
	sload => \flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_3_~q\);

-- Location: FF_X112_Y15_N3
\AX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aux_3_~q\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(3));

-- Location: LCCOMB_X112_Y15_N16
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~4_combout\ & ((AX(4) & (\Add0~18\ & VCC)) # (!AX(4) & (!\Add0~18\)))) # (!\Add0~4_combout\ & ((AX(4) & (!\Add0~18\)) # (!AX(4) & ((\Add0~18\) # (GND)))))
-- \Add0~20\ = CARRY((\Add0~4_combout\ & (!AX(4) & !\Add0~18\)) # (!\Add0~4_combout\ & ((!\Add0~18\) # (!AX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => AX(4),
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X111_Y15_N6
\aux_4_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_4_~0_combout\ = (\Mux0~0_combout\ & (((\Add0~19_combout\)))) # (!\Mux0~0_combout\ & (\ent_datos[4]~input_o\ & (AX(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_datos[4]~input_o\,
	datab => \Mux0~0_combout\,
	datac => AX(4),
	datad => \Add0~19_combout\,
	combout => \aux_4_~0_combout\);

-- Location: LCCOMB_X111_Y15_N14
\aux_4_~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_4_~feeder_combout\ = \aux_4_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aux_4_~0_combout\,
	combout => \aux_4_~feeder_combout\);

-- Location: FF_X111_Y15_N15
\aux_4_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_4_~feeder_combout\,
	asdata => \aux_4_~q\,
	sload => \flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_4_~q\);

-- Location: IOIBUF_X115_Y10_N1
\ent_datos[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_datos(6),
	o => \ent_datos[6]~input_o\);

-- Location: LCCOMB_X111_Y15_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datac => \ent_datos[6]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X112_Y15_N18
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = ((\Add0~3_combout\ $ (AX(5) $ (!\Add0~20\)))) # (GND)
-- \Add0~22\ = CARRY((\Add0~3_combout\ & ((AX(5)) # (!\Add0~20\))) # (!\Add0~3_combout\ & (AX(5) & !\Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => AX(5),
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X112_Y15_N24
\aux_5_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_5_~0_combout\ = (\Mux0~0_combout\ & (((\Add0~21_combout\)))) # (!\Mux0~0_combout\ & (\ent_datos[5]~input_o\ & (AX(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_datos[5]~input_o\,
	datab => \Mux0~0_combout\,
	datac => AX(5),
	datad => \Add0~21_combout\,
	combout => \aux_5_~0_combout\);

-- Location: LCCOMB_X111_Y15_N12
\aux_5_~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_5_~feeder_combout\ = \aux_5_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aux_5_~0_combout\,
	combout => \aux_5_~feeder_combout\);

-- Location: FF_X111_Y15_N13
\aux_5_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_5_~feeder_combout\,
	asdata => \aux_5_~q\,
	sload => \flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_5_~q\);

-- Location: FF_X112_Y15_N25
\AX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aux_5_~q\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(5));

-- Location: LCCOMB_X112_Y15_N20
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (AX(6) & ((\Add0~2_combout\ & (\Add0~22\ & VCC)) # (!\Add0~2_combout\ & (!\Add0~22\)))) # (!AX(6) & ((\Add0~2_combout\ & (!\Add0~22\)) # (!\Add0~2_combout\ & ((\Add0~22\) # (GND)))))
-- \Add0~24\ = CARRY((AX(6) & (!\Add0~2_combout\ & !\Add0~22\)) # (!AX(6) & ((!\Add0~22\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X111_Y15_N0
\aux_6_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_6_~0_combout\ = (\Mux0~0_combout\ & (((\Add0~23_combout\)))) # (!\Mux0~0_combout\ & (AX(6) & (\ent_datos[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => \ent_datos[6]~input_o\,
	datac => \Add0~23_combout\,
	datad => \Mux0~0_combout\,
	combout => \aux_6_~0_combout\);

-- Location: LCCOMB_X111_Y15_N26
\aux_6_~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_6_~feeder_combout\ = \aux_6_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aux_6_~0_combout\,
	combout => \aux_6_~feeder_combout\);

-- Location: FF_X111_Y15_N27
\aux_6_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_6_~feeder_combout\,
	asdata => \aux_6_~q\,
	sload => \flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_6_~q\);

-- Location: LCCOMB_X111_Y15_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (!\aux_4_~q\ & (!\aux_6_~q\ & !\aux_5_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \aux_4_~q\,
	datac => \aux_6_~q\,
	datad => \aux_5_~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X111_Y15_N4
\aux_0_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_0_~0_combout\ = (\Mux0~0_combout\ & ((\Add0~11_combout\))) # (!\Mux0~0_combout\ & (\aux~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux~1_combout\,
	datab => \Add0~11_combout\,
	datad => \Mux0~0_combout\,
	combout => \aux_0_~0_combout\);

-- Location: FF_X111_Y15_N5
\aux_0_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_0_~0_combout\,
	asdata => \aux_0_~q\,
	sload => \flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_0_~q\);

-- Location: LCCOMB_X112_Y15_N4
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Equal0~1GND_combout\ & (!\aux_1_~q\ & (!\aux_2_~q\ & !\aux_3_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1GND_combout\,
	datab => \aux_1_~q\,
	datac => \aux_2_~q\,
	datad => \aux_3_~q\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X111_Y15_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (!\aux_0_~q\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \aux_0_~q\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X111_Y15_N25
\flag[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~4_combout\,
	ena => \ALT_INV_flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag[0]~reg0_q\);

-- Location: LCCOMB_X110_Y15_N0
\Equal0~1GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1GND_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Equal0~1GND_combout\);

-- Location: LCCOMB_X110_Y15_N14
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Equal0~1GND_combout\ & (!\Equal0~1GND_combout\ & (!\Equal0~1GND_combout\ & !\Equal0~1GND_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1GND_combout\,
	datab => \Equal0~1GND_combout\,
	datac => \Equal0~1GND_combout\,
	datad => \Equal0~1GND_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X110_Y15_N24
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\Equal0~1GND_combout\ & ((!\Equal0~2_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1GND_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \LessThan0~0_combout\);

-- Location: FF_X110_Y15_N25
\flag[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~0_combout\,
	ena => \ALT_INV_flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag[1]~reg0_q\);

-- Location: LCCOMB_X110_Y15_N26
\flag[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag[2]~reg0feeder_combout\ = \Equal0~1GND_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~1GND_combout\,
	combout => \flag[2]~reg0feeder_combout\);

-- Location: FF_X110_Y15_N27
\flag[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flag[2]~reg0feeder_combout\,
	ena => \ALT_INV_flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag[2]~reg0_q\);

-- Location: FF_X112_Y15_N31
\AX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aux_0_~q\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(0));

-- Location: LCCOMB_X110_Y15_N12
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (AX(2) & (!AX(1) & (AX(3) $ (!AX(0))))) # (!AX(2) & (AX(0) & (AX(3) $ (!AX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(2),
	datab => AX(3),
	datac => AX(1),
	datad => AX(0),
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X107_Y15_N6
\aux[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[7]~0_combout\ = (\exe~input_o\ & \clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exe~input_o\,
	datad => \clr~input_o\,
	combout => \aux[7]~0_combout\);

-- Location: FF_X110_Y15_N13
\Disp_7sg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux49~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[0]~reg0_q\);

-- Location: LCCOMB_X110_Y15_N10
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (AX(3) & ((AX(0) & ((AX(1)))) # (!AX(0) & (AX(2))))) # (!AX(3) & (AX(2) & (AX(1) $ (AX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(2),
	datab => AX(3),
	datac => AX(1),
	datad => AX(0),
	combout => \Mux48~0_combout\);

-- Location: FF_X110_Y15_N11
\Disp_7sg[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux48~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[1]~reg0_q\);

-- Location: LCCOMB_X110_Y15_N4
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (AX(2) & (AX(3) & ((AX(1)) # (!AX(0))))) # (!AX(2) & (!AX(3) & (AX(1) & !AX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(2),
	datab => AX(3),
	datac => AX(1),
	datad => AX(0),
	combout => \Mux47~0_combout\);

-- Location: FF_X110_Y15_N5
\Disp_7sg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux47~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[2]~reg0_q\);

-- Location: LCCOMB_X110_Y15_N2
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (AX(1) & ((AX(2) & ((AX(0)))) # (!AX(2) & (AX(3) & !AX(0))))) # (!AX(1) & (!AX(3) & (AX(2) $ (AX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(2),
	datab => AX(3),
	datac => AX(1),
	datad => AX(0),
	combout => \Mux46~0_combout\);

-- Location: FF_X110_Y15_N3
\Disp_7sg[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux46~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[3]~reg0_q\);

-- Location: LCCOMB_X110_Y15_N8
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (AX(1) & (((!AX(3) & AX(0))))) # (!AX(1) & ((AX(2) & (!AX(3))) # (!AX(2) & ((AX(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(2),
	datab => AX(3),
	datac => AX(1),
	datad => AX(0),
	combout => \Mux45~0_combout\);

-- Location: FF_X110_Y15_N9
\Disp_7sg[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux45~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[4]~reg0_q\);

-- Location: LCCOMB_X110_Y15_N22
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (AX(2) & (AX(0) & (AX(3) $ (AX(1))))) # (!AX(2) & (!AX(3) & ((AX(1)) # (AX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(2),
	datab => AX(3),
	datac => AX(1),
	datad => AX(0),
	combout => \Mux44~0_combout\);

-- Location: FF_X110_Y15_N23
\Disp_7sg[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux44~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[5]~reg0_q\);

-- Location: LCCOMB_X110_Y15_N20
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (AX(0) & (!AX(3) & (AX(2) $ (!AX(1))))) # (!AX(0) & (!AX(1) & (AX(2) $ (!AX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(2),
	datab => AX(3),
	datac => AX(1),
	datad => AX(0),
	combout => \Mux43~0_combout\);

-- Location: FF_X110_Y15_N21
\Disp_7sg[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux43~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[6]~reg0_q\);

-- Location: IOIBUF_X115_Y15_N1
\ent_datos[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent_datos(7),
	o => \ent_datos[7]~input_o\);

-- Location: LCCOMB_X111_Y15_N10
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[7]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X112_Y15_N22
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = AX(7) $ (\Add0~24\ $ (!\Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AX(7),
	datad => \Add0~1_combout\,
	cin => \Add0~24\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X111_Y15_N18
\aux_7_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_7_~0_combout\ = (\Mux0~0_combout\ & (((\Add0~25_combout\)))) # (!\Mux0~0_combout\ & (\ent_datos[7]~input_o\ & (AX(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_datos[7]~input_o\,
	datab => \Mux0~0_combout\,
	datac => AX(7),
	datad => \Add0~25_combout\,
	combout => \aux_7_~0_combout\);

-- Location: LCCOMB_X111_Y15_N8
\aux_7_~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_7_~feeder_combout\ = \aux_7_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aux_7_~0_combout\,
	combout => \aux_7_~feeder_combout\);

-- Location: FF_X111_Y15_N9
\aux_7_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_7_~feeder_combout\,
	asdata => \aux_7_~q\,
	sload => \flag[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_7_~q\);

-- Location: FF_X112_Y15_N23
\AX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aux_7_~q\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(7));

-- Location: LCCOMB_X108_Y15_N0
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (AX(6) & (!AX(5) & (AX(7) $ (!AX(4))))) # (!AX(6) & (AX(4) & (AX(7) $ (!AX(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(7),
	datac => AX(5),
	datad => AX(4),
	combout => \Mux56~0_combout\);

-- Location: FF_X108_Y15_N1
\Disp_7sg[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux56~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[7]~reg0_q\);

-- Location: LCCOMB_X108_Y15_N26
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (AX(7) & ((AX(4) & ((AX(5)))) # (!AX(4) & (AX(6))))) # (!AX(7) & (AX(6) & (AX(5) $ (AX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(7),
	datac => AX(5),
	datad => AX(4),
	combout => \Mux55~0_combout\);

-- Location: FF_X108_Y15_N27
\Disp_7sg[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux55~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[8]~reg0_q\);

-- Location: LCCOMB_X108_Y15_N16
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (AX(6) & (AX(7) & ((AX(5)) # (!AX(4))))) # (!AX(6) & (!AX(7) & (AX(5) & !AX(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(7),
	datac => AX(5),
	datad => AX(4),
	combout => \Mux54~0_combout\);

-- Location: FF_X108_Y15_N17
\Disp_7sg[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux54~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[9]~reg0_q\);

-- Location: LCCOMB_X108_Y15_N22
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (AX(5) & ((AX(6) & ((AX(4)))) # (!AX(6) & (AX(7) & !AX(4))))) # (!AX(5) & (!AX(7) & (AX(6) $ (AX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(7),
	datac => AX(5),
	datad => AX(4),
	combout => \Mux53~0_combout\);

-- Location: FF_X108_Y15_N23
\Disp_7sg[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux53~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[10]~reg0_q\);

-- Location: LCCOMB_X108_Y15_N20
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (AX(5) & (((!AX(7) & AX(4))))) # (!AX(5) & ((AX(6) & (!AX(7))) # (!AX(6) & ((AX(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(7),
	datac => AX(5),
	datad => AX(4),
	combout => \Mux52~0_combout\);

-- Location: FF_X108_Y15_N21
\Disp_7sg[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux52~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[11]~reg0_q\);

-- Location: LCCOMB_X108_Y15_N6
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (AX(6) & (AX(4) & (AX(7) $ (AX(5))))) # (!AX(6) & (!AX(7) & ((AX(5)) # (AX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(7),
	datac => AX(5),
	datad => AX(4),
	combout => \Mux51~0_combout\);

-- Location: FF_X108_Y15_N7
\Disp_7sg[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux51~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[12]~reg0_q\);

-- Location: LCCOMB_X108_Y15_N8
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (AX(4) & (!AX(7) & (AX(6) $ (!AX(5))))) # (!AX(4) & (!AX(5) & (AX(6) $ (!AX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(7),
	datac => AX(5),
	datad => AX(4),
	combout => \Mux50~0_combout\);

-- Location: FF_X108_Y15_N9
\Disp_7sg[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux50~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[13]~reg0_q\);

-- Location: LCCOMB_X107_Y15_N8
\PC[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[1]~7_combout\ = (PC(0) & (PC(1) $ (VCC))) # (!PC(0) & (PC(1) & VCC))
-- \PC[1]~8\ = CARRY((PC(0) & PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(1),
	datad => VCC,
	combout => \PC[1]~7_combout\,
	cout => \PC[1]~8\);

-- Location: FF_X107_Y15_N9
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[1]~7_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X107_Y15_N10
\PC[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[2]~9_combout\ = (PC(2) & (!\PC[1]~8\)) # (!PC(2) & ((\PC[1]~8\) # (GND)))
-- \PC[2]~10\ = CARRY((!\PC[1]~8\) # (!PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datad => VCC,
	cin => \PC[1]~8\,
	combout => \PC[2]~9_combout\,
	cout => \PC[2]~10\);

-- Location: LCCOMB_X107_Y15_N12
\PC[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[3]~11_combout\ = (PC(3) & (\PC[2]~10\ $ (GND))) # (!PC(3) & (!\PC[2]~10\ & VCC))
-- \PC[3]~12\ = CARRY((PC(3) & !\PC[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datad => VCC,
	cin => \PC[2]~10\,
	combout => \PC[3]~11_combout\,
	cout => \PC[3]~12\);

-- Location: FF_X107_Y15_N13
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[3]~11_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X108_Y15_N24
\aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[3]~feeder_combout\ = PC(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(3),
	combout => \aux[3]~feeder_combout\);

-- Location: FF_X108_Y15_N25
\aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[3]~feeder_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(3));

-- Location: LCCOMB_X107_Y15_N22
\PC[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[0]~21_combout\ = !PC(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(0),
	combout => \PC[0]~21_combout\);

-- Location: FF_X107_Y15_N23
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[0]~21_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X107_Y15_N4
\aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[0]~feeder_combout\ = PC(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(0),
	combout => \aux[0]~feeder_combout\);

-- Location: FF_X107_Y15_N5
\aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[0]~feeder_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(0));

-- Location: LCCOMB_X108_Y15_N2
\aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[1]~feeder_combout\ = PC(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(1),
	combout => \aux[1]~feeder_combout\);

-- Location: FF_X108_Y15_N3
\aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[1]~feeder_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(1));

-- Location: LCCOMB_X108_Y15_N30
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (aux(2) & (!aux(1) & (aux(3) $ (!aux(0))))) # (!aux(2) & (aux(0) & (aux(3) $ (!aux(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(2),
	datab => aux(3),
	datac => aux(0),
	datad => aux(1),
	combout => \Mux14~0_combout\);

-- Location: FF_X108_Y15_N31
\Disp_7sg[42]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux14~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[42]~reg0_q\);

-- Location: LCCOMB_X108_Y15_N12
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (aux(3) & ((aux(0) & ((aux(1)))) # (!aux(0) & (aux(2))))) # (!aux(3) & (aux(2) & (aux(0) $ (aux(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(2),
	datab => aux(3),
	datac => aux(0),
	datad => aux(1),
	combout => \Mux13~0_combout\);

-- Location: FF_X108_Y15_N13
\Disp_7sg[43]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[43]~reg0_q\);

-- Location: LCCOMB_X108_Y15_N10
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (aux(2) & (aux(3) & ((aux(1)) # (!aux(0))))) # (!aux(2) & (!aux(3) & (!aux(0) & aux(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(2),
	datab => aux(3),
	datac => aux(0),
	datad => aux(1),
	combout => \Mux12~0_combout\);

-- Location: FF_X108_Y15_N11
\Disp_7sg[44]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux12~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[44]~reg0_q\);

-- Location: LCCOMB_X108_Y15_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (aux(1) & ((aux(2) & ((aux(0)))) # (!aux(2) & (aux(3) & !aux(0))))) # (!aux(1) & (!aux(3) & (aux(2) $ (aux(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(2),
	datab => aux(3),
	datac => aux(0),
	datad => aux(1),
	combout => \Mux11~0_combout\);

-- Location: FF_X108_Y15_N29
\Disp_7sg[45]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[45]~reg0_q\);

-- Location: FF_X107_Y15_N11
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[2]~9_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X107_Y15_N2
\aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[2]~feeder_combout\ = PC(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(2),
	combout => \aux[2]~feeder_combout\);

-- Location: FF_X107_Y15_N3
\aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[2]~feeder_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(2));

-- Location: LCCOMB_X107_Y15_N0
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (aux(1) & (((aux(0) & !aux(3))))) # (!aux(1) & ((aux(2) & ((!aux(3)))) # (!aux(2) & (aux(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(1),
	datab => aux(2),
	datac => aux(0),
	datad => aux(3),
	combout => \Mux10~0_combout\);

-- Location: FF_X107_Y15_N1
\Disp_7sg[46]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[46]~reg0_q\);

-- Location: LCCOMB_X107_Y15_N30
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (aux(1) & (!aux(3) & ((aux(0)) # (!aux(2))))) # (!aux(1) & (aux(0) & (aux(2) $ (!aux(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(1),
	datab => aux(2),
	datac => aux(0),
	datad => aux(3),
	combout => \Mux9~0_combout\);

-- Location: FF_X107_Y15_N31
\Disp_7sg[47]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[47]~reg0_q\);

-- Location: LCCOMB_X107_Y15_N28
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (aux(0) & (!aux(3) & (aux(1) $ (!aux(2))))) # (!aux(0) & (!aux(1) & (aux(2) $ (!aux(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(1),
	datab => aux(2),
	datac => aux(0),
	datad => aux(3),
	combout => \Mux8~0_combout\);

-- Location: FF_X107_Y15_N29
\Disp_7sg[48]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[48]~reg0_q\);

-- Location: LCCOMB_X107_Y15_N14
\PC[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[4]~13_combout\ = (PC(4) & (!\PC[3]~12\)) # (!PC(4) & ((\PC[3]~12\) # (GND)))
-- \PC[4]~14\ = CARRY((!\PC[3]~12\) # (!PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datad => VCC,
	cin => \PC[3]~12\,
	combout => \PC[4]~13_combout\,
	cout => \PC[4]~14\);

-- Location: FF_X107_Y15_N15
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[4]~13_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X107_Y15_N16
\PC[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[5]~15_combout\ = (PC(5) & (\PC[4]~14\ $ (GND))) # (!PC(5) & (!\PC[4]~14\ & VCC))
-- \PC[5]~16\ = CARRY((PC(5) & !\PC[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(5),
	datad => VCC,
	cin => \PC[4]~14\,
	combout => \PC[5]~15_combout\,
	cout => \PC[5]~16\);

-- Location: FF_X107_Y15_N17
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[5]~15_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X107_Y15_N18
\PC[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[6]~17_combout\ = (PC(6) & (!\PC[5]~16\)) # (!PC(6) & ((\PC[5]~16\) # (GND)))
-- \PC[6]~18\ = CARRY((!\PC[5]~16\) # (!PC(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => VCC,
	cin => \PC[5]~16\,
	combout => \PC[6]~17_combout\,
	cout => \PC[6]~18\);

-- Location: FF_X107_Y15_N19
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[6]~17_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X107_Y15_N20
\PC[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[7]~19_combout\ = \PC[6]~18\ $ (!PC(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC(7),
	cin => \PC[6]~18\,
	combout => \PC[7]~19_combout\);

-- Location: FF_X107_Y15_N21
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[7]~19_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X103_Y15_N2
\aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[7]~feeder_combout\ = PC(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(7),
	combout => \aux[7]~feeder_combout\);

-- Location: FF_X103_Y15_N3
\aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[7]~feeder_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(7));

-- Location: LCCOMB_X103_Y15_N22
\aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[4]~feeder_combout\ = PC(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(4),
	combout => \aux[4]~feeder_combout\);

-- Location: FF_X103_Y15_N23
\aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[4]~feeder_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(4));

-- Location: LCCOMB_X107_Y15_N24
\aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[5]~feeder_combout\ = PC(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(5),
	combout => \aux[5]~feeder_combout\);

-- Location: FF_X107_Y15_N25
\aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[5]~feeder_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(5));

-- Location: LCCOMB_X103_Y15_N20
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (aux(6) & (!aux(5) & (aux(7) $ (!aux(4))))) # (!aux(6) & (aux(4) & (aux(7) $ (!aux(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(7),
	datac => aux(4),
	datad => aux(5),
	combout => \Mux21~0_combout\);

-- Location: FF_X103_Y15_N21
\Disp_7sg[49]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux21~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[49]~reg0_q\);

-- Location: LCCOMB_X103_Y15_N30
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (aux(7) & ((aux(4) & ((aux(5)))) # (!aux(4) & (aux(6))))) # (!aux(7) & (aux(6) & (aux(4) $ (aux(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(7),
	datac => aux(4),
	datad => aux(5),
	combout => \Mux20~0_combout\);

-- Location: FF_X103_Y15_N31
\Disp_7sg[50]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux20~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[50]~reg0_q\);

-- Location: LCCOMB_X103_Y15_N28
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (aux(6) & (aux(7) & ((aux(5)) # (!aux(4))))) # (!aux(6) & (!aux(7) & (!aux(4) & aux(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(7),
	datac => aux(4),
	datad => aux(5),
	combout => \Mux19~0_combout\);

-- Location: FF_X103_Y15_N29
\Disp_7sg[51]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux19~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[51]~reg0_q\);

-- Location: LCCOMB_X103_Y15_N10
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (aux(5) & ((aux(6) & ((aux(4)))) # (!aux(6) & (aux(7) & !aux(4))))) # (!aux(5) & (!aux(7) & (aux(6) $ (aux(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(7),
	datac => aux(4),
	datad => aux(5),
	combout => \Mux18~0_combout\);

-- Location: FF_X103_Y15_N11
\Disp_7sg[52]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux18~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[52]~reg0_q\);

-- Location: LCCOMB_X103_Y15_N24
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (aux(5) & (((!aux(7) & aux(4))))) # (!aux(5) & ((aux(6) & (!aux(7))) # (!aux(6) & ((aux(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(7),
	datac => aux(4),
	datad => aux(5),
	combout => \Mux17~0_combout\);

-- Location: FF_X103_Y15_N25
\Disp_7sg[53]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux17~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[53]~reg0_q\);

-- Location: LCCOMB_X103_Y15_N6
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (aux(6) & (aux(4) & (aux(7) $ (aux(5))))) # (!aux(6) & (!aux(7) & ((aux(4)) # (aux(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(7),
	datac => aux(4),
	datad => aux(5),
	combout => \Mux16~0_combout\);

-- Location: FF_X103_Y15_N7
\Disp_7sg[54]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux16~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[54]~reg0_q\);

-- Location: LCCOMB_X103_Y15_N4
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (aux(4) & (!aux(7) & (aux(6) $ (!aux(5))))) # (!aux(4) & (!aux(5) & (aux(6) $ (!aux(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(7),
	datac => aux(4),
	datad => aux(5),
	combout => \Mux15~0_combout\);

-- Location: FF_X103_Y15_N5
\Disp_7sg[55]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux15~0_combout\,
	ena => \aux[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[55]~reg0_q\);

-- Location: IOIBUF_X5_Y0_N8
\bus_datos[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bus_datos(0),
	o => \bus_datos[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\bus_datos[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bus_datos(1),
	o => \bus_datos[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\bus_datos[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bus_datos(2),
	o => \bus_datos[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\bus_datos[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bus_datos(3),
	o => \bus_datos[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\bus_datos[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bus_datos(4),
	o => \bus_datos[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\bus_datos[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bus_datos(5),
	o => \bus_datos[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\bus_datos[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bus_datos(6),
	o => \bus_datos[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\bus_datos[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bus_datos(7),
	o => \bus_datos[7]~input_o\);

ww_flag(0) <= \flag[0]~output_o\;

ww_flag(1) <= \flag[1]~output_o\;

ww_flag(2) <= \flag[2]~output_o\;

ww_bus_dir(0) <= \bus_dir[0]~output_o\;

ww_bus_dir(1) <= \bus_dir[1]~output_o\;

ww_bus_dir(2) <= \bus_dir[2]~output_o\;

ww_bus_dir(3) <= \bus_dir[3]~output_o\;

ww_bus_dir(4) <= \bus_dir[4]~output_o\;

ww_bus_dir(5) <= \bus_dir[5]~output_o\;

ww_bus_dir(6) <= \bus_dir[6]~output_o\;

ww_bus_dir(7) <= \bus_dir[7]~output_o\;

ww_bus_dir(8) <= \bus_dir[8]~output_o\;

ww_bus_dir(9) <= \bus_dir[9]~output_o\;

ww_bus_dir(10) <= \bus_dir[10]~output_o\;

ww_bus_dir(11) <= \bus_dir[11]~output_o\;

ww_bus_dir(12) <= \bus_dir[12]~output_o\;

ww_bus_dir(13) <= \bus_dir[13]~output_o\;

ww_bus_dir(14) <= \bus_dir[14]~output_o\;

ww_bus_dir(15) <= \bus_dir[15]~output_o\;

ww_bus_dir(16) <= \bus_dir[16]~output_o\;

ww_bus_dir(17) <= \bus_dir[17]~output_o\;

ww_bus_dir(18) <= \bus_dir[18]~output_o\;

ww_bus_dir(19) <= \bus_dir[19]~output_o\;

ww_bus_ctrl(0) <= \bus_ctrl[0]~output_o\;

ww_bus_ctrl(1) <= \bus_ctrl[1]~output_o\;

ww_bus_ctrl(2) <= \bus_ctrl[2]~output_o\;

ww_bus_ctrl(3) <= \bus_ctrl[3]~output_o\;

ww_bus_ctrl(4) <= \bus_ctrl[4]~output_o\;

ww_Disp_7sg(0) <= \Disp_7sg[0]~output_o\;

ww_Disp_7sg(1) <= \Disp_7sg[1]~output_o\;

ww_Disp_7sg(2) <= \Disp_7sg[2]~output_o\;

ww_Disp_7sg(3) <= \Disp_7sg[3]~output_o\;

ww_Disp_7sg(4) <= \Disp_7sg[4]~output_o\;

ww_Disp_7sg(5) <= \Disp_7sg[5]~output_o\;

ww_Disp_7sg(6) <= \Disp_7sg[6]~output_o\;

ww_Disp_7sg(7) <= \Disp_7sg[7]~output_o\;

ww_Disp_7sg(8) <= \Disp_7sg[8]~output_o\;

ww_Disp_7sg(9) <= \Disp_7sg[9]~output_o\;

ww_Disp_7sg(10) <= \Disp_7sg[10]~output_o\;

ww_Disp_7sg(11) <= \Disp_7sg[11]~output_o\;

ww_Disp_7sg(12) <= \Disp_7sg[12]~output_o\;

ww_Disp_7sg(13) <= \Disp_7sg[13]~output_o\;

ww_Disp_7sg(14) <= \Disp_7sg[14]~output_o\;

ww_Disp_7sg(15) <= \Disp_7sg[15]~output_o\;

ww_Disp_7sg(16) <= \Disp_7sg[16]~output_o\;

ww_Disp_7sg(17) <= \Disp_7sg[17]~output_o\;

ww_Disp_7sg(18) <= \Disp_7sg[18]~output_o\;

ww_Disp_7sg(19) <= \Disp_7sg[19]~output_o\;

ww_Disp_7sg(20) <= \Disp_7sg[20]~output_o\;

ww_Disp_7sg(21) <= \Disp_7sg[21]~output_o\;

ww_Disp_7sg(22) <= \Disp_7sg[22]~output_o\;

ww_Disp_7sg(23) <= \Disp_7sg[23]~output_o\;

ww_Disp_7sg(24) <= \Disp_7sg[24]~output_o\;

ww_Disp_7sg(25) <= \Disp_7sg[25]~output_o\;

ww_Disp_7sg(26) <= \Disp_7sg[26]~output_o\;

ww_Disp_7sg(27) <= \Disp_7sg[27]~output_o\;

ww_Disp_7sg(28) <= \Disp_7sg[28]~output_o\;

ww_Disp_7sg(29) <= \Disp_7sg[29]~output_o\;

ww_Disp_7sg(30) <= \Disp_7sg[30]~output_o\;

ww_Disp_7sg(31) <= \Disp_7sg[31]~output_o\;

ww_Disp_7sg(32) <= \Disp_7sg[32]~output_o\;

ww_Disp_7sg(33) <= \Disp_7sg[33]~output_o\;

ww_Disp_7sg(34) <= \Disp_7sg[34]~output_o\;

ww_Disp_7sg(35) <= \Disp_7sg[35]~output_o\;

ww_Disp_7sg(36) <= \Disp_7sg[36]~output_o\;

ww_Disp_7sg(37) <= \Disp_7sg[37]~output_o\;

ww_Disp_7sg(38) <= \Disp_7sg[38]~output_o\;

ww_Disp_7sg(39) <= \Disp_7sg[39]~output_o\;

ww_Disp_7sg(40) <= \Disp_7sg[40]~output_o\;

ww_Disp_7sg(41) <= \Disp_7sg[41]~output_o\;

ww_Disp_7sg(42) <= \Disp_7sg[42]~output_o\;

ww_Disp_7sg(43) <= \Disp_7sg[43]~output_o\;

ww_Disp_7sg(44) <= \Disp_7sg[44]~output_o\;

ww_Disp_7sg(45) <= \Disp_7sg[45]~output_o\;

ww_Disp_7sg(46) <= \Disp_7sg[46]~output_o\;

ww_Disp_7sg(47) <= \Disp_7sg[47]~output_o\;

ww_Disp_7sg(48) <= \Disp_7sg[48]~output_o\;

ww_Disp_7sg(49) <= \Disp_7sg[49]~output_o\;

ww_Disp_7sg(50) <= \Disp_7sg[50]~output_o\;

ww_Disp_7sg(51) <= \Disp_7sg[51]~output_o\;

ww_Disp_7sg(52) <= \Disp_7sg[52]~output_o\;

ww_Disp_7sg(53) <= \Disp_7sg[53]~output_o\;

ww_Disp_7sg(54) <= \Disp_7sg[54]~output_o\;

ww_Disp_7sg(55) <= \Disp_7sg[55]~output_o\;

\ww_global.bp.work.ALU_UC.aux_7__gl_output\ <= \aux_7_~q\;

\ww_global.bp.work.ALU_UC.aux_6__gl_output\ <= \aux_6_~q\;

\ww_global.bp.work.ALU_UC.aux_5__gl_output\ <= \aux_5_~q\;

\ww_global.bp.work.ALU_UC.aux_4__gl_output\ <= \aux_4_~q\;

\ww_global.bp.work.ALU_UC.aux_3__gl_output\ <= \aux_3_~q\;

\ww_global.bp.work.ALU_UC.aux_2__gl_output\ <= \aux_2_~q\;

\ww_global.bp.work.ALU_UC.aux_1__gl_output\ <= \aux_1_~q\;

\ww_global.bp.work.ALU_UC.aux_0__gl_output\ <= \aux_0_~q\;

bus_datos(0) <= \bus_datos[0]~output_o\;

bus_datos(1) <= \bus_datos[1]~output_o\;

bus_datos(2) <= \bus_datos[2]~output_o\;

bus_datos(3) <= \bus_datos[3]~output_o\;

bus_datos(4) <= \bus_datos[4]~output_o\;

bus_datos(5) <= \bus_datos[5]~output_o\;

bus_datos(6) <= \bus_datos[6]~output_o\;

bus_datos(7) <= \bus_datos[7]~output_o\;
END structure;


