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

-- DATE "10/08/2021 23:40:40"

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
	\global.bp.work.ALU_UC.aux_15__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_14__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_13__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_12__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_11__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_10__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_9__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_8__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_7__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_6__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_5__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_4__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_3__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_2__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_1__gl_output\ : OUT std_logic;
	\global.bp.work.ALU_UC.aux_0__gl_output\ : OUT std_logic;
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
-- ent_inst[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exe	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_inst[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_inst[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_inst[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent_datos[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ww_global.bp.work.ALU_UC.aux_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.ALU_UC.aux_0__gl_output\ : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_exe : std_logic;
SIGNAL ww_ent_datos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ent_inst : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flag : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_bus_dir : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_bus_ctrl : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Disp_7sg : std_logic_vector(55 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \aux_11_~q\ : std_logic;
SIGNAL \aux_8_~q\ : std_logic;
SIGNAL \flag[0]~2_combout\ : std_logic;
SIGNAL \flag[1]~3_combout\ : std_logic;
SIGNAL \aux_11_~0_combout\ : std_logic;
SIGNAL \aux_8_~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \aux_6_~1_combout\ : std_logic;
SIGNAL \aux_5_~1_combout\ : std_logic;
SIGNAL \aux~1_combout\ : std_logic;
SIGNAL \aux_5_~4_combout\ : std_logic;
SIGNAL \aux_5_~5_combout\ : std_logic;
SIGNAL \aux_5_~6_combout\ : std_logic;
SIGNAL \aux_4_~1_combout\ : std_logic;
SIGNAL \aux_4_~5_combout\ : std_logic;
SIGNAL \aux_3_~4_combout\ : std_logic;
SIGNAL \aux_3_~5_combout\ : std_logic;
SIGNAL \aux_3_~6_combout\ : std_logic;
SIGNAL \aux_2_~1_combout\ : std_logic;
SIGNAL \aux_2_~4_combout\ : std_logic;
SIGNAL \aux_2_~5_combout\ : std_logic;
SIGNAL \aux_2_~6_combout\ : std_logic;
SIGNAL \aux_1_~8_combout\ : std_logic;
SIGNAL \aux_1_~9_combout\ : std_logic;
SIGNAL \aux_1_~10_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \bus_datos[0]~input_o\ : std_logic;
SIGNAL \bus_datos[1]~input_o\ : std_logic;
SIGNAL \bus_datos[2]~input_o\ : std_logic;
SIGNAL \bus_datos[3]~input_o\ : std_logic;
SIGNAL \bus_datos[4]~input_o\ : std_logic;
SIGNAL \bus_datos[5]~input_o\ : std_logic;
SIGNAL \bus_datos[6]~input_o\ : std_logic;
SIGNAL \bus_datos[7]~input_o\ : std_logic;
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
SIGNAL \ent_datos[0]~input_o\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \AX[0]~0_combout\ : std_logic;
SIGNAL \ent_inst[0]~input_o\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \ent_inst[2]~input_o\ : std_logic;
SIGNAL \exe~input_o\ : std_logic;
SIGNAL \ent_inst[1]~input_o\ : std_logic;
SIGNAL \aux_1_~1_combout\ : std_logic;
SIGNAL \bus_dir[0]~0_combout\ : std_logic;
SIGNAL \bus_datos[1]~17_combout\ : std_logic;
SIGNAL \bus_datos[1]~reg0_q\ : std_logic;
SIGNAL \ent_datos[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \AX[1]~1_combout\ : std_logic;
SIGNAL \ent_inst[3]~input_o\ : std_logic;
SIGNAL \aux_1_~3_combout\ : std_logic;
SIGNAL \aux~5_combout\ : std_logic;
SIGNAL \aux_1_~2_combout\ : std_logic;
SIGNAL \Add0~10_cout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \aux_1_~5_combout\ : std_logic;
SIGNAL \aux_1_~6_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \bus_datos[2]~18_combout\ : std_logic;
SIGNAL \bus_datos[2]~reg0_q\ : std_logic;
SIGNAL \AX[2]~2_combout\ : std_logic;
SIGNAL \ent_datos[2]~input_o\ : std_logic;
SIGNAL \aux~4_combout\ : std_logic;
SIGNAL \ent_datos[3]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \bus_datos[3]~19_combout\ : std_logic;
SIGNAL \bus_datos[3]~reg0_q\ : std_logic;
SIGNAL \AX[3]~3_combout\ : std_logic;
SIGNAL \aux~3_combout\ : std_logic;
SIGNAL \ent_datos[4]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \bus_datos[4]~20_combout\ : std_logic;
SIGNAL \bus_datos[4]~reg0_q\ : std_logic;
SIGNAL \AX[4]~4_combout\ : std_logic;
SIGNAL \bus_datos[5]~21_combout\ : std_logic;
SIGNAL \bus_datos[5]~reg0_q\ : std_logic;
SIGNAL \ent_datos[5]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \AX[5]~5_combout\ : std_logic;
SIGNAL \bus_datos[6]~22_combout\ : std_logic;
SIGNAL \bus_datos[6]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \AX[6]~6_combout\ : std_logic;
SIGNAL \aux_6_~5_combout\ : std_logic;
SIGNAL \ent_datos[7]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \bus_datos[7]~23_combout\ : std_logic;
SIGNAL \bus_datos[7]~reg0_q\ : std_logic;
SIGNAL \AX[7]~7_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \ent_datos[6]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mux57~6_combout\ : std_logic;
SIGNAL \Mux57~7_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Mux57~5_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \aux_7_~q\ : std_logic;
SIGNAL \AX[6]~8_combout\ : std_logic;
SIGNAL \AX[3]~9_combout\ : std_logic;
SIGNAL \aux_6_~4_combout\ : std_logic;
SIGNAL \aux_6_~6_combout\ : std_logic;
SIGNAL \aux~0_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \aux_6_~2_combout\ : std_logic;
SIGNAL \aux_6_~3_combout\ : std_logic;
SIGNAL \aux_6_~0_combout\ : std_logic;
SIGNAL \aux_1_~4_combout\ : std_logic;
SIGNAL \aux_6_~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \aux_5_~2_combout\ : std_logic;
SIGNAL \aux_5_~3_combout\ : std_logic;
SIGNAL \aux_5_~0_combout\ : std_logic;
SIGNAL \aux_5_~q\ : std_logic;
SIGNAL \aux_4_~4_combout\ : std_logic;
SIGNAL \aux_4_~6_combout\ : std_logic;
SIGNAL \aux~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \aux_4_~2_combout\ : std_logic;
SIGNAL \aux_4_~3_combout\ : std_logic;
SIGNAL \aux_4_~0_combout\ : std_logic;
SIGNAL \aux_4_~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \aux_3_~1_combout\ : std_logic;
SIGNAL \aux_3_~2_combout\ : std_logic;
SIGNAL \aux_3_~3_combout\ : std_logic;
SIGNAL \aux_3_~0_combout\ : std_logic;
SIGNAL \aux_3_~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \aux_2_~2_combout\ : std_logic;
SIGNAL \aux_2_~3_combout\ : std_logic;
SIGNAL \aux_2_~0_combout\ : std_logic;
SIGNAL \aux_2_~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \aux_1_~7_combout\ : std_logic;
SIGNAL \aux_1_~0_combout\ : std_logic;
SIGNAL \aux_1_~q\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux64~1_combout\ : std_logic;
SIGNAL \Mux64~2_combout\ : std_logic;
SIGNAL \aux_0_~q\ : std_logic;
SIGNAL \bus_datos[0]~16_combout\ : std_logic;
SIGNAL \bus_datos[0]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \aux_15_~0_combout\ : std_logic;
SIGNAL \aux_15_~1_combout\ : std_logic;
SIGNAL \aux_15_~q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \aux_9_~0_combout\ : std_logic;
SIGNAL \aux_9_~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \aux_10_~0_combout\ : std_logic;
SIGNAL \aux_10_~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \aux_14_~0_combout\ : std_logic;
SIGNAL \aux_14_~q\ : std_logic;
SIGNAL \aux_12_~0_combout\ : std_logic;
SIGNAL \aux_12_~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \aux_13_~0_combout\ : std_logic;
SIGNAL \aux_13_~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \flag[0]~4_combout\ : std_logic;
SIGNAL \flag[0]~reg0_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \flag[1]~reg0_q\ : std_logic;
SIGNAL \flag[2]~reg0feeder_combout\ : std_logic;
SIGNAL \flag[2]~reg0_q\ : std_logic;
SIGNAL \IX[0]~0_combout\ : std_logic;
SIGNAL \bus_dir[0]~reg0feeder_combout\ : std_logic;
SIGNAL \bus_dir[0]~reg0_q\ : std_logic;
SIGNAL \bus_dir[1]~reg0feeder_combout\ : std_logic;
SIGNAL \bus_dir[1]~reg0_q\ : std_logic;
SIGNAL \IX[2]~feeder_combout\ : std_logic;
SIGNAL \bus_dir[2]~reg0feeder_combout\ : std_logic;
SIGNAL \bus_dir[2]~reg0_q\ : std_logic;
SIGNAL \bus_dir[3]~reg0feeder_combout\ : std_logic;
SIGNAL \bus_dir[3]~reg0_q\ : std_logic;
SIGNAL \IX[4]~feeder_combout\ : std_logic;
SIGNAL \bus_dir[4]~reg0feeder_combout\ : std_logic;
SIGNAL \bus_dir[4]~reg0_q\ : std_logic;
SIGNAL \IX[5]~feeder_combout\ : std_logic;
SIGNAL \bus_dir[5]~reg0feeder_combout\ : std_logic;
SIGNAL \bus_dir[5]~reg0_q\ : std_logic;
SIGNAL \IX[6]~feeder_combout\ : std_logic;
SIGNAL \bus_dir[6]~reg0feeder_combout\ : std_logic;
SIGNAL \bus_dir[6]~reg0_q\ : std_logic;
SIGNAL \IX[7]~feeder_combout\ : std_logic;
SIGNAL \bus_dir[7]~reg0feeder_combout\ : std_logic;
SIGNAL \bus_dir[7]~reg0_q\ : std_logic;
SIGNAL \bus_ctrl[2]~5_combout\ : std_logic;
SIGNAL \bus_ctrl[2]~4_combout\ : std_logic;
SIGNAL \bus_ctrl[2]~reg0_q\ : std_logic;
SIGNAL \Mux109~0_combout\ : std_logic;
SIGNAL \Disp_7sg[45]~0_combout\ : std_logic;
SIGNAL \Disp_7sg[0]~reg0_q\ : std_logic;
SIGNAL \Mux108~0_combout\ : std_logic;
SIGNAL \Disp_7sg[1]~reg0_q\ : std_logic;
SIGNAL \Mux107~0_combout\ : std_logic;
SIGNAL \Disp_7sg[2]~reg0_q\ : std_logic;
SIGNAL \Mux106~0_combout\ : std_logic;
SIGNAL \Disp_7sg[3]~reg0_q\ : std_logic;
SIGNAL \Mux105~0_combout\ : std_logic;
SIGNAL \Disp_7sg[4]~reg0_q\ : std_logic;
SIGNAL \Mux104~0_combout\ : std_logic;
SIGNAL \Disp_7sg[5]~reg0_q\ : std_logic;
SIGNAL \Mux103~0_combout\ : std_logic;
SIGNAL \Disp_7sg[6]~reg0_q\ : std_logic;
SIGNAL \Mux116~0_combout\ : std_logic;
SIGNAL \Disp_7sg[7]~reg0_q\ : std_logic;
SIGNAL \Mux115~0_combout\ : std_logic;
SIGNAL \Disp_7sg[8]~reg0_q\ : std_logic;
SIGNAL \Mux114~0_combout\ : std_logic;
SIGNAL \Disp_7sg[9]~reg0_q\ : std_logic;
SIGNAL \Mux113~0_combout\ : std_logic;
SIGNAL \Disp_7sg[10]~reg0_q\ : std_logic;
SIGNAL \Mux112~0_combout\ : std_logic;
SIGNAL \Disp_7sg[11]~reg0_q\ : std_logic;
SIGNAL \Mux111~0_combout\ : std_logic;
SIGNAL \Disp_7sg[12]~reg0_q\ : std_logic;
SIGNAL \Mux110~0_combout\ : std_logic;
SIGNAL \Disp_7sg[13]~reg0_q\ : std_logic;
SIGNAL \Mux88~0_combout\ : std_logic;
SIGNAL \Disp_7sg[28]~reg0_q\ : std_logic;
SIGNAL \Mux87~0_combout\ : std_logic;
SIGNAL \Disp_7sg[29]~reg0_q\ : std_logic;
SIGNAL \Mux86~0_combout\ : std_logic;
SIGNAL \Disp_7sg[30]~reg0_q\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \Disp_7sg[31]~reg0_q\ : std_logic;
SIGNAL \Mux84~0_combout\ : std_logic;
SIGNAL \Disp_7sg[32]~reg0_q\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \Disp_7sg[33]~reg0_q\ : std_logic;
SIGNAL \Mux82~0_combout\ : std_logic;
SIGNAL \Disp_7sg[34]~reg0_q\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \Disp_7sg[35]~reg0_q\ : std_logic;
SIGNAL \Mux94~0_combout\ : std_logic;
SIGNAL \Disp_7sg[36]~reg0_q\ : std_logic;
SIGNAL \Mux93~0_combout\ : std_logic;
SIGNAL \Disp_7sg[37]~reg0_q\ : std_logic;
SIGNAL \Mux92~0_combout\ : std_logic;
SIGNAL \Disp_7sg[38]~reg0_q\ : std_logic;
SIGNAL \Mux91~0_combout\ : std_logic;
SIGNAL \Disp_7sg[39]~reg0_q\ : std_logic;
SIGNAL \Mux90~0_combout\ : std_logic;
SIGNAL \Disp_7sg[40]~reg0_q\ : std_logic;
SIGNAL \Mux89~0_combout\ : std_logic;
SIGNAL \Disp_7sg[41]~reg0_q\ : std_logic;
SIGNAL \PC[0]~7_combout\ : std_logic;
SIGNAL \aux[0]~feeder_combout\ : std_logic;
SIGNAL \PC[1]~9\ : std_logic;
SIGNAL \PC[2]~11\ : std_logic;
SIGNAL \PC[3]~12_combout\ : std_logic;
SIGNAL \aux[3]~feeder_combout\ : std_logic;
SIGNAL \PC[2]~10_combout\ : std_logic;
SIGNAL \aux[2]~feeder_combout\ : std_logic;
SIGNAL \Mux74~0_combout\ : std_logic;
SIGNAL \Disp_7sg[42]~reg0_q\ : std_logic;
SIGNAL \PC[1]~8_combout\ : std_logic;
SIGNAL \aux[1]~feeder_combout\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \Disp_7sg[43]~reg0_q\ : std_logic;
SIGNAL \Mux72~0_combout\ : std_logic;
SIGNAL \Disp_7sg[44]~reg0_q\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \Disp_7sg[45]~reg0_q\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \Disp_7sg[46]~reg0_q\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Disp_7sg[47]~reg0_q\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Disp_7sg[48]~reg0_q\ : std_logic;
SIGNAL \PC[3]~13\ : std_logic;
SIGNAL \PC[4]~14_combout\ : std_logic;
SIGNAL \PC[4]~15\ : std_logic;
SIGNAL \PC[5]~16_combout\ : std_logic;
SIGNAL \aux[5]~feeder_combout\ : std_logic;
SIGNAL \PC[5]~17\ : std_logic;
SIGNAL \PC[6]~18_combout\ : std_logic;
SIGNAL \PC[6]~19\ : std_logic;
SIGNAL \PC[7]~20_combout\ : std_logic;
SIGNAL \aux[7]~feeder_combout\ : std_logic;
SIGNAL \aux[4]~feeder_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \Disp_7sg[49]~reg0_q\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \Disp_7sg[50]~reg0_q\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \Disp_7sg[51]~reg0_q\ : std_logic;
SIGNAL \Mux78~0_combout\ : std_logic;
SIGNAL \Disp_7sg[52]~reg0_q\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \Disp_7sg[53]~reg0_q\ : std_logic;
SIGNAL \Mux76~0_combout\ : std_logic;
SIGNAL \Disp_7sg[54]~reg0_q\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \Disp_7sg[55]~reg0_q\ : std_logic;
SIGNAL aux : std_logic_vector(7 DOWNTO 0);
SIGNAL PC : std_logic_vector(7 DOWNTO 0);
SIGNAL IX : std_logic_vector(12 DOWNTO 0);
SIGNAL AX : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_exe~input_o\ : std_logic;
SIGNAL \ALT_INV_clr~input_o\ : std_logic;

BEGIN

\global.bp.work.ALU_UC.aux_15__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_15__gl_output\;
\global.bp.work.ALU_UC.aux_14__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_14__gl_output\;
\global.bp.work.ALU_UC.aux_13__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_13__gl_output\;
\global.bp.work.ALU_UC.aux_12__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_12__gl_output\;
\global.bp.work.ALU_UC.aux_11__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_11__gl_output\;
\global.bp.work.ALU_UC.aux_10__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_10__gl_output\;
\global.bp.work.ALU_UC.aux_9__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_9__gl_output\;
\global.bp.work.ALU_UC.aux_8__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_8__gl_output\;
\global.bp.work.ALU_UC.aux_7__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_7__gl_output\;
\global.bp.work.ALU_UC.aux_6__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_6__gl_output\;
\global.bp.work.ALU_UC.aux_5__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_5__gl_output\;
\global.bp.work.ALU_UC.aux_4__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_4__gl_output\;
\global.bp.work.ALU_UC.aux_3__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_3__gl_output\;
\global.bp.work.ALU_UC.aux_2__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_2__gl_output\;
\global.bp.work.ALU_UC.aux_1__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_1__gl_output\;
\global.bp.work.ALU_UC.aux_0__gl_output\ <= \ww_global.bp.work.ALU_UC.aux_0__gl_output\;
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

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (AX(7) & AX(6) & AX(5) & AX(4) & AX(3) & AX(2) & AX(1) & AX(0) & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\ent_datos[7]~input_o\ & \ent_datos[6]~input_o\ & \ent_datos[5]~input_o\ & \ent_datos[4]~input_o\ & \ent_datos[3]~input_o\ & \ent_datos[2]~input_o\ & \ent_datos[1]~input_o\ & \ent_datos[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_exe~input_o\ <= NOT \exe~input_o\;
\ALT_INV_clr~input_o\ <= NOT \clr~input_o\;

-- Location: DSPOUT_X93_Y4_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X91_Y5_N4
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~8_combout\ & ((AX(0) & (\Add0~10_cout\ & VCC)) # (!AX(0) & (!\Add0~10_cout\)))) # (!\Add0~8_combout\ & ((AX(0) & (!\Add0~10_cout\)) # (!AX(0) & ((\Add0~10_cout\) # (GND)))))
-- \Add0~12\ = CARRY((\Add0~8_combout\ & (!AX(0) & !\Add0~10_cout\)) # (!\Add0~8_combout\ & ((!\Add0~10_cout\) # (!AX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => AX(0),
	datad => VCC,
	cin => \Add0~10_cout\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X91_Y5_N10
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = ((AX(3) $ (\Add0~5_combout\ $ (!\Add0~16\)))) # (GND)
-- \Add0~18\ = CARRY((AX(3) & ((\Add0~5_combout\) # (!\Add0~16\))) # (!AX(3) & (\Add0~5_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AX(3),
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: FF_X94_Y4_N3
\aux_11_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_11_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_11_~q\);

-- Location: FF_X92_Y4_N21
\aux_8_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_8_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_8_~q\);

-- Location: LCCOMB_X90_Y4_N22
\flag[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag[0]~2_combout\ = (!\exe~input_o\ & \clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exe~input_o\,
	datad => \clr~input_o\,
	combout => \flag[0]~2_combout\);

-- Location: LCCOMB_X90_Y4_N12
\flag[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag[1]~3_combout\ = \ent_inst[3]~input_o\ $ (((\ent_inst[1]~input_o\ & \ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \ent_inst[3]~input_o\,
	combout => \flag[1]~3_combout\);

-- Location: FF_X90_Y5_N7
\aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[6]~feeder_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(6));

-- Location: LCCOMB_X94_Y4_N2
\aux_11_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_11_~0_combout\ = (\aux_15_~0_combout\ & (\aux_11_~q\)) # (!\aux_15_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_15_~0_combout\,
	datac => \aux_11_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \aux_11_~0_combout\);

-- Location: LCCOMB_X92_Y4_N20
\aux_8_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_8_~0_combout\ = (\aux_15_~0_combout\ & (\aux_8_~q\)) # (!\aux_15_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aux_15_~0_combout\,
	datac => \aux_8_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \aux_8_~0_combout\);

-- Location: LCCOMB_X91_Y6_N8
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

-- Location: LCCOMB_X95_Y5_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datad => \ent_datos[2]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X92_Y5_N6
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[1]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X95_Y5_N22
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datad => \ent_datos[0]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X90_Y4_N2
\aux_6_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_6_~1_combout\ = (AX(6) & (\ent_inst[1]~input_o\ & ((!\ent_datos[6]~input_o\)))) # (!AX(6) & ((\ent_inst[1]~input_o\ $ (!\ent_datos[6]~input_o\)) # (!\ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[6]~input_o\,
	combout => \aux_6_~1_combout\);

-- Location: LCCOMB_X89_Y4_N14
\aux_5_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_5_~1_combout\ = (AX(5) & (((\ent_inst[1]~input_o\ & !\ent_datos[5]~input_o\)))) # (!AX(5) & ((\ent_inst[1]~input_o\ $ (!\ent_datos[5]~input_o\)) # (!\ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(5),
	datab => \ent_inst[0]~input_o\,
	datac => \ent_inst[1]~input_o\,
	datad => \ent_datos[5]~input_o\,
	combout => \aux_5_~1_combout\);

-- Location: LCCOMB_X89_Y4_N12
\aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~1_combout\ = (AX(5) & \ent_datos[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(5),
	datad => \ent_datos[5]~input_o\,
	combout => \aux~1_combout\);

-- Location: LCCOMB_X88_Y4_N6
\aux_5_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_5_~4_combout\ = (\ent_inst[0]~input_o\ & (AX(6))) # (!\ent_inst[0]~input_o\ & ((AX(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => \ent_inst[0]~input_o\,
	datac => AX(4),
	combout => \aux_5_~4_combout\);

-- Location: LCCOMB_X87_Y4_N18
\aux_5_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_5_~5_combout\ = (AX(5) & ((\ent_inst[0]~input_o\) # (!\ent_datos[5]~input_o\))) # (!AX(5) & ((\ent_datos[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datac => AX(5),
	datad => \ent_datos[5]~input_o\,
	combout => \aux_5_~5_combout\);

-- Location: LCCOMB_X88_Y4_N28
\aux_5_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_5_~6_combout\ = (\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & (\aux_5_~5_combout\)) # (!\ent_inst[0]~input_o\ & ((\aux_5_~4_combout\))))) # (!\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & ((\aux_5_~4_combout\))) # (!\ent_inst[0]~input_o\ & 
-- (!\aux_5_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \aux_5_~5_combout\,
	datac => \ent_inst[0]~input_o\,
	datad => \aux_5_~4_combout\,
	combout => \aux_5_~6_combout\);

-- Location: LCCOMB_X90_Y4_N16
\aux_4_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_4_~1_combout\ = (AX(4) & (((\ent_inst[1]~input_o\ & !\ent_datos[4]~input_o\)))) # (!AX(4) & ((\ent_inst[1]~input_o\ $ (!\ent_datos[4]~input_o\)) # (!\ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datab => \ent_inst[1]~input_o\,
	datac => \ent_datos[4]~input_o\,
	datad => AX(4),
	combout => \aux_4_~1_combout\);

-- Location: LCCOMB_X91_Y6_N10
\aux_4_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_4_~5_combout\ = (\ent_datos[4]~input_o\ & ((\ent_inst[0]~input_o\) # (!AX(4)))) # (!\ent_datos[4]~input_o\ & (AX(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_datos[4]~input_o\,
	datab => AX(4),
	datac => \ent_inst[0]~input_o\,
	combout => \aux_4_~5_combout\);

-- Location: LCCOMB_X91_Y5_N28
\aux_3_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_3_~4_combout\ = (\ent_inst[1]~input_o\ & ((AX(2)))) # (!\ent_inst[1]~input_o\ & (AX(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_inst[1]~input_o\,
	datac => AX(4),
	datad => AX(2),
	combout => \aux_3_~4_combout\);

-- Location: LCCOMB_X92_Y5_N26
\aux_3_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_3_~5_combout\ = (AX(3) & ((\ent_inst[1]~input_o\) # (!\ent_datos[3]~input_o\))) # (!AX(3) & ((\ent_datos[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(3),
	datac => \ent_inst[1]~input_o\,
	datad => \ent_datos[3]~input_o\,
	combout => \aux_3_~5_combout\);

-- Location: LCCOMB_X92_Y5_N12
\aux_3_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_3_~6_combout\ = (\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & (\aux_3_~5_combout\)) # (!\ent_inst[0]~input_o\ & ((\aux_3_~4_combout\))))) # (!\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & ((\aux_3_~4_combout\))) # (!\ent_inst[0]~input_o\ & 
-- (!\aux_3_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_3_~5_combout\,
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \aux_3_~4_combout\,
	combout => \aux_3_~6_combout\);

-- Location: LCCOMB_X88_Y4_N18
\aux_2_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_2_~1_combout\ = (AX(2) & (\ent_inst[1]~input_o\ & ((!\ent_datos[2]~input_o\)))) # (!AX(2) & ((\ent_inst[1]~input_o\ $ (!\ent_datos[2]~input_o\)) # (!\ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \ent_inst[0]~input_o\,
	datac => \ent_datos[2]~input_o\,
	datad => AX(2),
	combout => \aux_2_~1_combout\);

-- Location: LCCOMB_X95_Y5_N24
\aux_2_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_2_~4_combout\ = (\ent_inst[1]~input_o\ & (AX(1))) # (!\ent_inst[1]~input_o\ & ((AX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datac => AX(1),
	datad => AX(3),
	combout => \aux_2_~4_combout\);

-- Location: LCCOMB_X95_Y5_N14
\aux_2_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_2_~5_combout\ = (AX(2) & ((\ent_inst[1]~input_o\) # (!\ent_datos[2]~input_o\))) # (!AX(2) & ((\ent_datos[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datac => AX(2),
	datad => \ent_datos[2]~input_o\,
	combout => \aux_2_~5_combout\);

-- Location: LCCOMB_X95_Y5_N0
\aux_2_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_2_~6_combout\ = (\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & ((\aux_2_~5_combout\))) # (!\ent_inst[0]~input_o\ & (\aux_2_~4_combout\)))) # (!\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & (\aux_2_~4_combout\)) # (!\ent_inst[0]~input_o\ & 
-- ((!\aux_2_~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \aux_2_~4_combout\,
	datac => \aux_2_~5_combout\,
	datad => \ent_inst[0]~input_o\,
	combout => \aux_2_~6_combout\);

-- Location: LCCOMB_X91_Y5_N26
\aux_1_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~8_combout\ = (\ent_inst[1]~input_o\ & (AX(0))) # (!\ent_inst[1]~input_o\ & ((AX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AX(0),
	datac => AX(2),
	datad => \ent_inst[1]~input_o\,
	combout => \aux_1_~8_combout\);

-- Location: LCCOMB_X92_Y5_N30
\aux_1_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~9_combout\ = (AX(1) & ((\ent_inst[1]~input_o\) # (!\ent_datos[1]~input_o\))) # (!AX(1) & ((\ent_datos[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AX(1),
	datac => \ent_inst[1]~input_o\,
	datad => \ent_datos[1]~input_o\,
	combout => \aux_1_~9_combout\);

-- Location: LCCOMB_X92_Y5_N0
\aux_1_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~10_combout\ = (\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & (\aux_1_~9_combout\)) # (!\ent_inst[0]~input_o\ & ((\aux_1_~8_combout\))))) # (!\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & ((\aux_1_~8_combout\))) # (!\ent_inst[0]~input_o\ & 
-- (!\aux_1_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~9_combout\,
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \aux_1_~8_combout\,
	combout => \aux_1_~10_combout\);

-- Location: LCCOMB_X94_Y5_N6
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\ent_inst[1]~input_o\ & (\ent_datos[0]~input_o\ & ((AX(0))))) # (!\ent_inst[1]~input_o\ & (((\Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_datos[0]~input_o\,
	datab => \ent_inst[1]~input_o\,
	datac => \Add0~11_combout\,
	datad => AX(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X90_Y5_N6
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
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bus_datos[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \bus_datos[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\bus_datos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bus_datos[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \bus_datos[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\bus_datos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bus_datos[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \bus_datos[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\bus_datos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bus_datos[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \bus_datos[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\bus_datos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bus_datos[4]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \bus_datos[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\bus_datos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bus_datos[5]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \bus_datos[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\bus_datos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bus_datos[6]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \bus_datos[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\bus_datos[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bus_datos[7]~reg0_q\,
	oe => VCC,
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
	i => \bus_dir[0]~reg0_q\,
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
	i => \bus_dir[1]~reg0_q\,
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
	i => \bus_dir[2]~reg0_q\,
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
	i => \bus_dir[3]~reg0_q\,
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
	i => \bus_dir[4]~reg0_q\,
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
	i => \bus_dir[5]~reg0_q\,
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
	i => \bus_dir[6]~reg0_q\,
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
	i => \bus_dir[7]~reg0_q\,
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
	i => \bus_ctrl[2]~reg0_q\,
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
	i => VCC,
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
	i => \Disp_7sg[28]~reg0_q\,
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
	i => \Disp_7sg[29]~reg0_q\,
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
	i => \Disp_7sg[30]~reg0_q\,
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
	i => \Disp_7sg[31]~reg0_q\,
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
	i => \Disp_7sg[32]~reg0_q\,
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
	i => \Disp_7sg[33]~reg0_q\,
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
	i => \Disp_7sg[34]~reg0_q\,
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
	i => \Disp_7sg[35]~reg0_q\,
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
	i => \Disp_7sg[36]~reg0_q\,
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
	i => \Disp_7sg[37]~reg0_q\,
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
	i => \Disp_7sg[38]~reg0_q\,
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
	i => \Disp_7sg[39]~reg0_q\,
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
	i => \Disp_7sg[40]~reg0_q\,
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
	i => \Disp_7sg[41]~reg0_q\,
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

-- Location: LCCOMB_X95_Y5_N30
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\ent_inst[0]~input_o\ & \ent_datos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datad => \ent_datos[0]~input_o\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X92_Y4_N16
\AX[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AX[0]~0_combout\ = (\ent_inst[1]~input_o\ & (\bus_datos[0]~reg0_q\)) # (!\ent_inst[1]~input_o\ & ((\Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \bus_datos[0]~reg0_q\,
	datad => \Mux7~5_combout\,
	combout => \AX[0]~0_combout\);

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

-- Location: LCCOMB_X95_Y5_N2
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\ent_inst[1]~input_o\ & (\ent_inst[0]~input_o\ & ((\ent_datos[0]~input_o\) # (AX(0))))) # (!\ent_inst[1]~input_o\ & (!\ent_inst[0]~input_o\ & (\ent_datos[0]~input_o\ $ (!AX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \ent_datos[0]~input_o\,
	datac => AX(0),
	datad => \ent_inst[0]~input_o\,
	combout => \Mux7~3_combout\);

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

-- Location: LCCOMB_X89_Y4_N24
\aux_1_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~1_combout\ = (!\ent_inst[3]~input_o\ & \ent_inst[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[3]~input_o\,
	datac => \ent_inst[1]~input_o\,
	combout => \aux_1_~1_combout\);

-- Location: LCCOMB_X90_Y4_N26
\bus_dir[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_dir[0]~0_combout\ = (\clr~input_o\ & (!\ent_inst[2]~input_o\ & (!\exe~input_o\ & \aux_1_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datab => \ent_inst[2]~input_o\,
	datac => \exe~input_o\,
	datad => \aux_1_~1_combout\,
	combout => \bus_dir[0]~0_combout\);

-- Location: LCCOMB_X92_Y4_N24
\bus_datos[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_datos[1]~17_combout\ = (\bus_dir[0]~0_combout\ & ((\ent_inst[0]~input_o\ & (AX(1))) # (!\ent_inst[0]~input_o\ & ((\bus_datos[1]~reg0_q\))))) # (!\bus_dir[0]~0_combout\ & (((\bus_datos[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(1),
	datab => \bus_dir[0]~0_combout\,
	datac => \bus_datos[1]~reg0_q\,
	datad => \ent_inst[0]~input_o\,
	combout => \bus_datos[1]~17_combout\);

-- Location: FF_X92_Y4_N25
\bus_datos[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_datos[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_datos[1]~reg0_q\);

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

-- Location: LCCOMB_X92_Y5_N10
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ent_inst[0]~input_o\ & \ent_datos[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X92_Y4_N6
\AX[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AX[1]~1_combout\ = (\ent_inst[1]~input_o\ & (\bus_datos[1]~reg0_q\)) # (!\ent_inst[1]~input_o\ & ((\Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \bus_datos[1]~reg0_q\,
	datad => \Mux6~0_combout\,
	combout => \AX[1]~1_combout\);

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

-- Location: LCCOMB_X94_Y5_N8
\aux_1_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~3_combout\ = (\ent_inst[2]~input_o\ & \ent_inst[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[2]~input_o\,
	datad => \ent_inst[3]~input_o\,
	combout => \aux_1_~3_combout\);

-- Location: LCCOMB_X92_Y5_N14
\aux~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~5_combout\ = (AX(1) & \ent_datos[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AX(1),
	datad => \ent_datos[1]~input_o\,
	combout => \aux~5_combout\);

-- Location: LCCOMB_X89_Y4_N4
\aux_1_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~2_combout\ = (\ent_inst[3]~input_o\) # ((\ent_inst[1]~input_o\ & \ent_inst[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[3]~input_o\,
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	combout => \aux_1_~2_combout\);

-- Location: LCCOMB_X91_Y5_N2
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_cout\ = CARRY(\ent_inst[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_inst[0]~input_o\,
	datad => VCC,
	cout => \Add0~10_cout\);

-- Location: LCCOMB_X91_Y5_N6
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

-- Location: LCCOMB_X92_Y5_N2
\aux_1_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~5_combout\ = (AX(1) & (\ent_inst[1]~input_o\ & ((!\ent_datos[1]~input_o\)))) # (!AX(1) & ((\ent_inst[1]~input_o\ $ (!\ent_datos[1]~input_o\)) # (!\ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => AX(1),
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[1]~input_o\,
	combout => \aux_1_~5_combout\);

-- Location: LCCOMB_X92_Y5_N4
\aux_1_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~6_combout\ = (\aux_1_~1_combout\ & (\aux_1_~2_combout\)) # (!\aux_1_~1_combout\ & ((\aux_1_~2_combout\ & ((\aux_1_~5_combout\))) # (!\aux_1_~2_combout\ & (\Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~1_combout\,
	datab => \aux_1_~2_combout\,
	datac => \Add0~13_combout\,
	datad => \aux_1_~5_combout\,
	combout => \aux_1_~6_combout\);

-- Location: LCCOMB_X88_Y4_N16
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ent_datos[2]~input_o\ & \ent_inst[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_datos[2]~input_o\,
	datac => \ent_inst[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X88_Y4_N22
\bus_datos[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_datos[2]~18_combout\ = (\bus_dir[0]~0_combout\ & ((\ent_inst[0]~input_o\ & ((AX(2)))) # (!\ent_inst[0]~input_o\ & (\bus_datos[2]~reg0_q\)))) # (!\bus_dir[0]~0_combout\ & (((\bus_datos[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_dir[0]~0_combout\,
	datab => \ent_inst[0]~input_o\,
	datac => \bus_datos[2]~reg0_q\,
	datad => AX(2),
	combout => \bus_datos[2]~18_combout\);

-- Location: FF_X88_Y4_N23
\bus_datos[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_datos[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_datos[2]~reg0_q\);

-- Location: LCCOMB_X92_Y4_N8
\AX[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AX[2]~2_combout\ = (\ent_inst[1]~input_o\ & ((\bus_datos[2]~reg0_q\))) # (!\ent_inst[1]~input_o\ & (\Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \Mux5~0_combout\,
	datad => \bus_datos[2]~reg0_q\,
	combout => \AX[2]~2_combout\);

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

-- Location: LCCOMB_X91_Y4_N28
\aux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~4_combout\ = (AX(2) & \ent_datos[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AX(2),
	datac => \ent_datos[2]~input_o\,
	combout => \aux~4_combout\);

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

-- Location: LCCOMB_X89_Y4_N10
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ent_inst[0]~input_o\ & \ent_datos[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_inst[0]~input_o\,
	datac => \ent_datos[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X92_Y4_N10
\bus_datos[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_datos[3]~19_combout\ = (\bus_dir[0]~0_combout\ & ((\ent_inst[0]~input_o\ & (AX(3))) # (!\ent_inst[0]~input_o\ & ((\bus_datos[3]~reg0_q\))))) # (!\bus_dir[0]~0_combout\ & (((\bus_datos[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(3),
	datab => \bus_dir[0]~0_combout\,
	datac => \bus_datos[3]~reg0_q\,
	datad => \ent_inst[0]~input_o\,
	combout => \bus_datos[3]~19_combout\);

-- Location: FF_X92_Y4_N11
\bus_datos[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_datos[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_datos[3]~reg0_q\);

-- Location: LCCOMB_X92_Y4_N26
\AX[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AX[3]~3_combout\ = (\ent_inst[1]~input_o\ & ((\bus_datos[3]~reg0_q\))) # (!\ent_inst[1]~input_o\ & (\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \Mux4~0_combout\,
	datad => \bus_datos[3]~reg0_q\,
	combout => \AX[3]~3_combout\);

-- Location: LCCOMB_X92_Y5_N18
\aux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~3_combout\ = (AX(3) & \ent_datos[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AX(3),
	datad => \ent_datos[3]~input_o\,
	combout => \aux~3_combout\);

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

-- Location: LCCOMB_X90_Y4_N10
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ent_datos[4]~input_o\ & \ent_inst[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_datos[4]~input_o\,
	datac => \ent_inst[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X88_Y4_N0
\bus_datos[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_datos[4]~20_combout\ = (\bus_dir[0]~0_combout\ & ((\ent_inst[0]~input_o\ & ((AX(4)))) # (!\ent_inst[0]~input_o\ & (\bus_datos[4]~reg0_q\)))) # (!\bus_dir[0]~0_combout\ & (((\bus_datos[4]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_dir[0]~0_combout\,
	datab => \ent_inst[0]~input_o\,
	datac => \bus_datos[4]~reg0_q\,
	datad => AX(4),
	combout => \bus_datos[4]~20_combout\);

-- Location: FF_X88_Y4_N1
\bus_datos[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_datos[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_datos[4]~reg0_q\);

-- Location: LCCOMB_X92_Y4_N4
\AX[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AX[4]~4_combout\ = (\ent_inst[1]~input_o\ & ((\bus_datos[4]~reg0_q\))) # (!\ent_inst[1]~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \Mux3~0_combout\,
	datad => \bus_datos[4]~reg0_q\,
	combout => \AX[4]~4_combout\);

-- Location: LCCOMB_X92_Y4_N28
\bus_datos[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_datos[5]~21_combout\ = (\ent_inst[0]~input_o\ & ((\bus_dir[0]~0_combout\ & (AX(5))) # (!\bus_dir[0]~0_combout\ & ((\bus_datos[5]~reg0_q\))))) # (!\ent_inst[0]~input_o\ & (((\bus_datos[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datab => AX(5),
	datac => \bus_datos[5]~reg0_q\,
	datad => \bus_dir[0]~0_combout\,
	combout => \bus_datos[5]~21_combout\);

-- Location: FF_X92_Y4_N29
\bus_datos[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_datos[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_datos[5]~reg0_q\);

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

-- Location: LCCOMB_X87_Y4_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ent_inst[0]~input_o\ & \ent_datos[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[5]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X92_Y4_N18
\AX[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \AX[5]~5_combout\ = (\ent_inst[1]~input_o\ & (\bus_datos[5]~reg0_q\)) # (!\ent_inst[1]~input_o\ & ((\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \bus_datos[5]~reg0_q\,
	datad => \Mux2~0_combout\,
	combout => \AX[5]~5_combout\);

-- Location: LCCOMB_X88_Y4_N14
\bus_datos[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_datos[6]~22_combout\ = (\bus_dir[0]~0_combout\ & ((\ent_inst[0]~input_o\ & ((AX(6)))) # (!\ent_inst[0]~input_o\ & (\bus_datos[6]~reg0_q\)))) # (!\bus_dir[0]~0_combout\ & (((\bus_datos[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_dir[0]~0_combout\,
	datab => \ent_inst[0]~input_o\,
	datac => \bus_datos[6]~reg0_q\,
	datad => AX(6),
	combout => \bus_datos[6]~22_combout\);

-- Location: FF_X88_Y4_N15
\bus_datos[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_datos[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_datos[6]~reg0_q\);

-- Location: LCCOMB_X90_Y4_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ent_datos[6]~input_o\ & \ent_inst[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_datos[6]~input_o\,
	datac => \ent_inst[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X92_Y4_N12
\AX[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AX[6]~6_combout\ = (\ent_inst[1]~input_o\ & (\bus_datos[6]~reg0_q\)) # (!\ent_inst[1]~input_o\ & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \bus_datos[6]~reg0_q\,
	datad => \Mux1~0_combout\,
	combout => \AX[6]~6_combout\);

-- Location: LCCOMB_X91_Y6_N28
\aux_6_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_6_~5_combout\ = (\ent_datos[6]~input_o\ & ((\ent_inst[0]~input_o\) # (!AX(6)))) # (!\ent_datos[6]~input_o\ & ((AX(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_datos[6]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => AX(6),
	combout => \aux_6_~5_combout\);

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

-- Location: LCCOMB_X87_Y4_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ent_inst[0]~input_o\ & \ent_datos[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[7]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X92_Y4_N22
\bus_datos[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_datos[7]~23_combout\ = (\bus_dir[0]~0_combout\ & ((\ent_inst[0]~input_o\ & (AX(7))) # (!\ent_inst[0]~input_o\ & ((\bus_datos[7]~reg0_q\))))) # (!\bus_dir[0]~0_combout\ & (((\bus_datos[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(7),
	datab => \bus_dir[0]~0_combout\,
	datac => \bus_datos[7]~reg0_q\,
	datad => \ent_inst[0]~input_o\,
	combout => \bus_datos[7]~23_combout\);

-- Location: FF_X92_Y4_N23
\bus_datos[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_datos[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_datos[7]~reg0_q\);

-- Location: LCCOMB_X92_Y4_N30
\AX[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AX[7]~7_combout\ = (\ent_inst[1]~input_o\ & ((\bus_datos[7]~reg0_q\))) # (!\ent_inst[1]~input_o\ & (\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \Mux0~0_combout\,
	datad => \bus_datos[7]~reg0_q\,
	combout => \AX[7]~7_combout\);

-- Location: LCCOMB_X94_Y4_N26
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (AX(7) & (\ent_inst[1]~input_o\ & ((!\ent_datos[7]~input_o\)))) # (!AX(7) & ((\ent_inst[1]~input_o\ $ (!\ent_datos[7]~input_o\)) # (!\ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(7),
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[7]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X94_Y4_N28
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\ent_inst[2]~input_o\ & (((\ent_inst[3]~input_o\)))) # (!\ent_inst[2]~input_o\ & ((\ent_inst[3]~input_o\ & ((\Mux57~0_combout\))) # (!\ent_inst[3]~input_o\ & (\aux_7_~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[2]~input_o\,
	datab => \aux_7_~q\,
	datac => \Mux57~0_combout\,
	datad => \ent_inst[3]~input_o\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X94_Y4_N18
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\ent_inst[1]~input_o\ & (\ent_inst[0]~input_o\ & ((AX(7)) # (\ent_datos[7]~input_o\)))) # (!\ent_inst[1]~input_o\ & (!\ent_inst[0]~input_o\ & (AX(7) $ (!\ent_datos[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(7),
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[7]~input_o\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X94_Y4_N4
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\Mux57~2_combout\) # ((AX(6) & (\ent_inst[1]~input_o\ & !\ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \Mux57~2_combout\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X87_Y4_N2
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

-- Location: LCCOMB_X91_Y6_N30
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[6]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X87_Y4_N0
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[5]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X92_Y5_N8
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \ent_inst[0]~input_o\ $ (\ent_datos[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[0]~input_o\,
	datad => \ent_datos[3]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X91_Y5_N8
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

-- Location: LCCOMB_X91_Y5_N12
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

-- Location: LCCOMB_X91_Y5_N14
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = ((AX(5) $ (\Add0~3_combout\ $ (!\Add0~20\)))) # (GND)
-- \Add0~22\ = CARRY((AX(5) & ((\Add0~3_combout\) # (!\Add0~20\))) # (!AX(5) & (\Add0~3_combout\ & !\Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AX(5),
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X91_Y5_N16
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

-- Location: LCCOMB_X91_Y5_N18
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = \Add0~1_combout\ $ (\Add0~24\ $ (!AX(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~1_combout\,
	datad => AX(7),
	cin => \Add0~24\,
	combout => \Add0~25_combout\);

-- Location: DSPMULT_X93_Y4_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X94_Y4_N16
\Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~6_combout\ = (\ent_inst[0]~input_o\ & (AX(7) & (\ent_datos[7]~input_o\))) # (!\ent_inst[0]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(7),
	datab => \ent_datos[7]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \Mux57~6_combout\);

-- Location: LCCOMB_X94_Y4_N10
\Mux57~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~7_combout\ = (\ent_inst[1]~input_o\ & ((\Mux57~6_combout\))) # (!\ent_inst[1]~input_o\ & (\Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent_inst[1]~input_o\,
	datac => \Add0~25_combout\,
	datad => \Mux57~6_combout\,
	combout => \Mux57~7_combout\);

-- Location: LCCOMB_X94_Y4_N6
\Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = (\ent_inst[2]~input_o\ & ((\Mux57~1_combout\ & (\Mux57~3_combout\)) # (!\Mux57~1_combout\ & ((\Mux57~7_combout\))))) # (!\ent_inst[2]~input_o\ & (\Mux57~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[2]~input_o\,
	datab => \Mux57~1_combout\,
	datac => \Mux57~3_combout\,
	datad => \Mux57~7_combout\,
	combout => \Mux57~4_combout\);

-- Location: LCCOMB_X94_Y4_N20
\Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~5_combout\ = (\exe~input_o\ & (\aux_7_~q\)) # (!\exe~input_o\ & ((\Mux57~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \exe~input_o\,
	datac => \aux_7_~q\,
	datad => \Mux57~4_combout\,
	combout => \Mux57~5_combout\);

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

-- Location: FF_X94_Y4_N21
\aux_7_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux57~5_combout\,
	asdata => \aux_7_~q\,
	sload => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_7_~q\);

-- Location: LCCOMB_X94_Y4_N12
\AX[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AX[6]~8_combout\ = (\ent_inst[2]~input_o\) # (\ent_inst[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent_inst[2]~input_o\,
	datad => \ent_inst[3]~input_o\,
	combout => \AX[6]~8_combout\);

-- Location: LCCOMB_X94_Y4_N8
\AX[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \AX[3]~9_combout\ = (!\exe~input_o\ & ((\AX[6]~8_combout\) # ((!\ent_inst[0]~input_o\) # (!\ent_inst[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AX[6]~8_combout\,
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \exe~input_o\,
	combout => \AX[3]~9_combout\);

-- Location: FF_X92_Y4_N31
\AX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AX[7]~7_combout\,
	asdata => \aux_7_~q\,
	clrn => \clr~input_o\,
	sload => \AX[6]~8_combout\,
	ena => \AX[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(7));

-- Location: LCCOMB_X91_Y6_N2
\aux_6_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_6_~4_combout\ = (\ent_inst[0]~input_o\ & ((AX(7)))) # (!\ent_inst[0]~input_o\ & (AX(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AX(5),
	datac => \ent_inst[0]~input_o\,
	datad => AX(7),
	combout => \aux_6_~4_combout\);

-- Location: LCCOMB_X91_Y6_N6
\aux_6_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_6_~6_combout\ = (\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & (\aux_6_~5_combout\)) # (!\ent_inst[0]~input_o\ & ((\aux_6_~4_combout\))))) # (!\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & ((\aux_6_~4_combout\))) # (!\ent_inst[0]~input_o\ & 
-- (!\aux_6_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \aux_6_~5_combout\,
	datac => \ent_inst[0]~input_o\,
	datad => \aux_6_~4_combout\,
	combout => \aux_6_~6_combout\);

-- Location: LCCOMB_X90_Y4_N24
\aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~0_combout\ = (AX(6) & \ent_datos[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AX(6),
	datad => \ent_datos[6]~input_o\,
	combout => \aux~0_combout\);

-- Location: LCCOMB_X91_Y4_N18
\aux_6_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_6_~2_combout\ = (\aux_1_~1_combout\ & ((\aux_1_~2_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT6\)))) # (!\aux_1_~1_combout\ & (!\aux_1_~2_combout\ & (\Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~1_combout\,
	datab => \aux_1_~2_combout\,
	datac => \Add0~23_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \aux_6_~2_combout\);

-- Location: LCCOMB_X91_Y4_N12
\aux_6_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_6_~3_combout\ = (\aux_1_~2_combout\ & ((\aux_6_~2_combout\ & ((\aux~0_combout\))) # (!\aux_6_~2_combout\ & (\aux_6_~1_combout\)))) # (!\aux_1_~2_combout\ & (((\aux_6_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_6_~1_combout\,
	datab => \aux~0_combout\,
	datac => \aux_1_~2_combout\,
	datad => \aux_6_~2_combout\,
	combout => \aux_6_~3_combout\);

-- Location: LCCOMB_X91_Y4_N8
\aux_6_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_6_~0_combout\ = (\aux_1_~3_combout\ & (\aux_6_~6_combout\)) # (!\aux_1_~3_combout\ & ((\aux_6_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~3_combout\,
	datab => \aux_6_~6_combout\,
	datad => \aux_6_~3_combout\,
	combout => \aux_6_~0_combout\);

-- Location: LCCOMB_X90_Y4_N14
\aux_1_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~4_combout\ = ((\exe~input_o\) # ((!\ent_inst[3]~input_o\ & !\ent_inst[2]~input_o\))) # (!\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datab => \ent_inst[3]~input_o\,
	datac => \exe~input_o\,
	datad => \ent_inst[2]~input_o\,
	combout => \aux_1_~4_combout\);

-- Location: FF_X91_Y4_N9
\aux_6_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_6_~0_combout\,
	asdata => \aux_6_~q\,
	sload => \aux_1_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_6_~q\);

-- Location: FF_X92_Y4_N13
\AX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AX[6]~6_combout\,
	asdata => \aux_6_~q\,
	clrn => \clr~input_o\,
	sload => \AX[6]~8_combout\,
	ena => \AX[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(6));

-- Location: LCCOMB_X90_Y4_N0
\aux_5_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_5_~2_combout\ = (\aux_1_~1_combout\ & (((\aux_1_~2_combout\)))) # (!\aux_1_~1_combout\ & ((\aux_1_~2_combout\ & (\aux_5_~1_combout\)) # (!\aux_1_~2_combout\ & ((\Add0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_5_~1_combout\,
	datab => \aux_1_~1_combout\,
	datac => \aux_1_~2_combout\,
	datad => \Add0~21_combout\,
	combout => \aux_5_~2_combout\);

-- Location: LCCOMB_X90_Y4_N6
\aux_5_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_5_~3_combout\ = (\aux_1_~1_combout\ & ((\aux_5_~2_combout\ & (\aux~1_combout\)) # (!\aux_5_~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\))))) # (!\aux_1_~1_combout\ & (((\aux_5_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux~1_combout\,
	datab => \aux_1_~1_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \aux_5_~2_combout\,
	combout => \aux_5_~3_combout\);

-- Location: LCCOMB_X90_Y4_N4
\aux_5_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_5_~0_combout\ = (\aux_1_~3_combout\ & (\aux_5_~6_combout\)) # (!\aux_1_~3_combout\ & ((\aux_5_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_5_~6_combout\,
	datab => \aux_1_~3_combout\,
	datad => \aux_5_~3_combout\,
	combout => \aux_5_~0_combout\);

-- Location: FF_X90_Y4_N5
\aux_5_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_5_~0_combout\,
	asdata => \aux_5_~q\,
	sload => \aux_1_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_5_~q\);

-- Location: FF_X92_Y4_N19
\AX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AX[5]~5_combout\,
	asdata => \aux_5_~q\,
	clrn => \clr~input_o\,
	sload => \AX[6]~8_combout\,
	ena => \AX[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(5));

-- Location: LCCOMB_X91_Y6_N12
\aux_4_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_4_~4_combout\ = (\ent_inst[0]~input_o\ & (AX(5))) # (!\ent_inst[0]~input_o\ & ((AX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AX(5),
	datac => \ent_inst[0]~input_o\,
	datad => AX(3),
	combout => \aux_4_~4_combout\);

-- Location: LCCOMB_X91_Y6_N20
\aux_4_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_4_~6_combout\ = (\ent_inst[0]~input_o\ & ((\ent_inst[1]~input_o\ & (\aux_4_~5_combout\)) # (!\ent_inst[1]~input_o\ & ((\aux_4_~4_combout\))))) # (!\ent_inst[0]~input_o\ & ((\ent_inst[1]~input_o\ & ((\aux_4_~4_combout\))) # (!\ent_inst[1]~input_o\ & 
-- (!\aux_4_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_4_~5_combout\,
	datab => \ent_inst[0]~input_o\,
	datac => \ent_inst[1]~input_o\,
	datad => \aux_4_~4_combout\,
	combout => \aux_4_~6_combout\);

-- Location: LCCOMB_X90_Y4_N30
\aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux~2_combout\ = (AX(4) & \ent_datos[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(4),
	datac => \ent_datos[4]~input_o\,
	combout => \aux~2_combout\);

-- Location: LCCOMB_X91_Y4_N10
\aux_4_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_4_~2_combout\ = (\aux_1_~1_combout\ & ((\aux_1_~2_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT4\)))) # (!\aux_1_~1_combout\ & (!\aux_1_~2_combout\ & ((\Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~1_combout\,
	datab => \aux_1_~2_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \Add0~19_combout\,
	combout => \aux_4_~2_combout\);

-- Location: LCCOMB_X91_Y4_N24
\aux_4_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_4_~3_combout\ = (\aux_1_~2_combout\ & ((\aux_4_~2_combout\ & ((\aux~2_combout\))) # (!\aux_4_~2_combout\ & (\aux_4_~1_combout\)))) # (!\aux_1_~2_combout\ & (((\aux_4_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_4_~1_combout\,
	datab => \aux~2_combout\,
	datac => \aux_1_~2_combout\,
	datad => \aux_4_~2_combout\,
	combout => \aux_4_~3_combout\);

-- Location: LCCOMB_X91_Y4_N26
\aux_4_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_4_~0_combout\ = (\aux_1_~3_combout\ & (\aux_4_~6_combout\)) # (!\aux_1_~3_combout\ & ((\aux_4_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~3_combout\,
	datab => \aux_4_~6_combout\,
	datad => \aux_4_~3_combout\,
	combout => \aux_4_~0_combout\);

-- Location: FF_X91_Y4_N27
\aux_4_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_4_~0_combout\,
	asdata => \aux_4_~q\,
	sload => \aux_1_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_4_~q\);

-- Location: FF_X92_Y4_N5
\AX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AX[4]~4_combout\,
	asdata => \aux_4_~q\,
	clrn => \clr~input_o\,
	sload => \AX[6]~8_combout\,
	ena => \AX[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(4));

-- Location: LCCOMB_X92_Y5_N16
\aux_3_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_3_~1_combout\ = (AX(3) & (((\ent_inst[1]~input_o\ & !\ent_datos[3]~input_o\)))) # (!AX(3) & ((\ent_inst[1]~input_o\ $ (!\ent_datos[3]~input_o\)) # (!\ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(3),
	datab => \ent_inst[0]~input_o\,
	datac => \ent_inst[1]~input_o\,
	datad => \ent_datos[3]~input_o\,
	combout => \aux_3_~1_combout\);

-- Location: LCCOMB_X91_Y5_N22
\aux_3_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_3_~2_combout\ = (\aux_1_~1_combout\ & (((\aux_1_~2_combout\)))) # (!\aux_1_~1_combout\ & ((\aux_1_~2_combout\ & ((\aux_3_~1_combout\))) # (!\aux_1_~2_combout\ & (\Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \aux_1_~1_combout\,
	datac => \aux_1_~2_combout\,
	datad => \aux_3_~1_combout\,
	combout => \aux_3_~2_combout\);

-- Location: LCCOMB_X92_Y5_N20
\aux_3_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_3_~3_combout\ = (\aux_1_~1_combout\ & ((\aux_3_~2_combout\ & (\aux~3_combout\)) # (!\aux_3_~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\))))) # (!\aux_1_~1_combout\ & (((\aux_3_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~1_combout\,
	datab => \aux~3_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \aux_3_~2_combout\,
	combout => \aux_3_~3_combout\);

-- Location: LCCOMB_X92_Y5_N28
\aux_3_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_3_~0_combout\ = (\aux_1_~3_combout\ & (\aux_3_~6_combout\)) # (!\aux_1_~3_combout\ & ((\aux_3_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_3_~6_combout\,
	datab => \aux_1_~3_combout\,
	datad => \aux_3_~3_combout\,
	combout => \aux_3_~0_combout\);

-- Location: FF_X92_Y5_N29
\aux_3_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_3_~0_combout\,
	asdata => \aux_3_~q\,
	sload => \aux_1_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_3_~q\);

-- Location: FF_X92_Y4_N27
\AX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AX[3]~3_combout\,
	asdata => \aux_3_~q\,
	clrn => \clr~input_o\,
	sload => \AX[6]~8_combout\,
	ena => \AX[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(3));

-- Location: LCCOMB_X91_Y4_N2
\aux_2_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_2_~2_combout\ = (\aux_1_~1_combout\ & ((\aux_1_~2_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT2\)))) # (!\aux_1_~1_combout\ & (!\aux_1_~2_combout\ & ((\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~1_combout\,
	datab => \aux_1_~2_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \Add0~15_combout\,
	combout => \aux_2_~2_combout\);

-- Location: LCCOMB_X91_Y4_N6
\aux_2_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_2_~3_combout\ = (\aux_1_~2_combout\ & ((\aux_2_~2_combout\ & ((\aux~4_combout\))) # (!\aux_2_~2_combout\ & (\aux_2_~1_combout\)))) # (!\aux_1_~2_combout\ & (((\aux_2_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_2_~1_combout\,
	datab => \aux~4_combout\,
	datac => \aux_1_~2_combout\,
	datad => \aux_2_~2_combout\,
	combout => \aux_2_~3_combout\);

-- Location: LCCOMB_X91_Y4_N4
\aux_2_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_2_~0_combout\ = (\aux_1_~3_combout\ & (\aux_2_~6_combout\)) # (!\aux_1_~3_combout\ & ((\aux_2_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_2_~6_combout\,
	datab => \aux_1_~3_combout\,
	datad => \aux_2_~3_combout\,
	combout => \aux_2_~0_combout\);

-- Location: FF_X91_Y4_N5
\aux_2_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_2_~0_combout\,
	asdata => \aux_2_~q\,
	sload => \aux_1_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_2_~q\);

-- Location: FF_X92_Y4_N9
\AX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AX[2]~2_combout\,
	asdata => \aux_2_~q\,
	clrn => \clr~input_o\,
	sload => \AX[6]~8_combout\,
	ena => \AX[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(2));

-- Location: LCCOMB_X92_Y5_N24
\aux_1_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~7_combout\ = (\aux_1_~1_combout\ & ((\aux_1_~6_combout\ & (\aux~5_combout\)) # (!\aux_1_~6_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\))))) # (!\aux_1_~1_combout\ & (((\aux_1_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~1_combout\,
	datab => \aux~5_combout\,
	datac => \aux_1_~6_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \aux_1_~7_combout\);

-- Location: LCCOMB_X92_Y5_N22
\aux_1_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_1_~0_combout\ = (\aux_1_~3_combout\ & (\aux_1_~10_combout\)) # (!\aux_1_~3_combout\ & ((\aux_1_~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~10_combout\,
	datab => \aux_1_~3_combout\,
	datad => \aux_1_~7_combout\,
	combout => \aux_1_~0_combout\);

-- Location: FF_X92_Y5_N23
\aux_1_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_1_~0_combout\,
	asdata => \aux_1_~q\,
	sload => \aux_1_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_1_~q\);

-- Location: FF_X92_Y4_N7
\AX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AX[1]~1_combout\,
	asdata => \aux_1_~q\,
	clrn => \clr~input_o\,
	sload => \AX[6]~8_combout\,
	ena => \AX[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(1));

-- Location: LCCOMB_X95_Y5_N8
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\) # ((!\ent_inst[1]~input_o\ & (AX(1) & \ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \Mux7~3_combout\,
	datac => AX(1),
	datad => \ent_inst[0]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X94_Y5_N4
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (AX(0) & (!\ent_datos[0]~input_o\ & (\ent_inst[1]~input_o\))) # (!AX(0) & ((\ent_datos[0]~input_o\ $ (!\ent_inst[1]~input_o\)) # (!\ent_inst[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_datos[0]~input_o\,
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => AX(0),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X94_Y5_N30
\Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (\ent_inst[2]~input_o\ & (((\ent_inst[3]~input_o\)))) # (!\ent_inst[2]~input_o\ & ((\ent_inst[3]~input_o\ & (\Mux7~2_combout\)) # (!\ent_inst[3]~input_o\ & ((\aux_0_~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[2]~input_o\,
	datab => \Mux7~2_combout\,
	datac => \aux_0_~q\,
	datad => \ent_inst[3]~input_o\,
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X94_Y5_N28
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\ent_inst[1]~input_o\ & ((\ent_inst[0]~input_o\ & (\Mux7~0_combout\)) # (!\ent_inst[0]~input_o\ & ((\Mult0|auto_generated|mac_out2~dataout\))))) # (!\ent_inst[1]~input_o\ & (\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \ent_inst[1]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \Mult0|auto_generated|mac_out2~dataout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X94_Y5_N24
\Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~1_combout\ = (\ent_inst[2]~input_o\ & ((\Mux64~0_combout\ & (\Mux7~4_combout\)) # (!\Mux64~0_combout\ & ((\Mux7~1_combout\))))) # (!\ent_inst[2]~input_o\ & (((\Mux64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[2]~input_o\,
	datab => \Mux7~4_combout\,
	datac => \Mux64~0_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux64~1_combout\);

-- Location: LCCOMB_X94_Y5_N0
\Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~2_combout\ = (\exe~input_o\ & (\aux_0_~q\)) # (!\exe~input_o\ & ((\Mux64~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exe~input_o\,
	datac => \aux_0_~q\,
	datad => \Mux64~1_combout\,
	combout => \Mux64~2_combout\);

-- Location: FF_X94_Y5_N1
\aux_0_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux64~2_combout\,
	asdata => \aux_0_~q\,
	sload => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_0_~q\);

-- Location: FF_X92_Y4_N17
\AX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AX[0]~0_combout\,
	asdata => \aux_0_~q\,
	clrn => \clr~input_o\,
	sload => \AX[6]~8_combout\,
	ena => \AX[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(0));

-- Location: LCCOMB_X92_Y4_N2
\bus_datos[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_datos[0]~16_combout\ = (\ent_inst[0]~input_o\ & ((\bus_dir[0]~0_combout\ & (AX(0))) # (!\bus_dir[0]~0_combout\ & ((\bus_datos[0]~reg0_q\))))) # (!\ent_inst[0]~input_o\ & (((\bus_datos[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[0]~input_o\,
	datab => AX(0),
	datac => \bus_datos[0]~reg0_q\,
	datad => \bus_dir[0]~0_combout\,
	combout => \bus_datos[0]~16_combout\);

-- Location: FF_X92_Y4_N3
\bus_datos[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_datos[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_datos[0]~reg0_q\);

-- Location: LCCOMB_X90_Y4_N8
\aux_15_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_15_~0_combout\ = (((\ent_inst[0]~input_o\) # (!\aux_1_~1_combout\)) # (!\ent_inst[2]~input_o\)) # (!\flag[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag[0]~2_combout\,
	datab => \ent_inst[2]~input_o\,
	datac => \ent_inst[0]~input_o\,
	datad => \aux_1_~1_combout\,
	combout => \aux_15_~0_combout\);

-- Location: LCCOMB_X94_Y4_N22
\aux_15_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_15_~1_combout\ = (\aux_15_~0_combout\ & ((\aux_15_~q\))) # (!\aux_15_~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datac => \aux_15_~q\,
	datad => \aux_15_~0_combout\,
	combout => \aux_15_~1_combout\);

-- Location: FF_X94_Y4_N23
\aux_15_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_15_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_15_~q\);

-- Location: LCCOMB_X91_Y4_N16
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\aux_3_~q\ & (!\aux_2_~q\ & (!\aux_15_~q\ & !\aux_0_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_3_~q\,
	datab => \aux_2_~q\,
	datac => \aux_15_~q\,
	datad => \aux_0_~q\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X92_Y4_N14
\aux_9_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_9_~0_combout\ = (\aux_15_~0_combout\ & (\aux_9_~q\)) # (!\aux_15_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aux_15_~0_combout\,
	datac => \aux_9_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \aux_9_~0_combout\);

-- Location: FF_X92_Y4_N15
\aux_9_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_9_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_9_~q\);

-- Location: LCCOMB_X92_Y4_N0
\aux_10_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_10_~0_combout\ = (\aux_15_~0_combout\ & (\aux_10_~q\)) # (!\aux_15_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aux_15_~0_combout\,
	datac => \aux_10_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \aux_10_~0_combout\);

-- Location: FF_X92_Y4_N1
\aux_10_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_10_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_10_~q\);

-- Location: LCCOMB_X91_Y4_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\aux_8_~q\ & (!\aux_9_~q\ & (!\aux_10_~q\ & !\aux_7_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_8_~q\,
	datab => \aux_9_~q\,
	datac => \aux_10_~q\,
	datad => \aux_7_~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X91_Y4_N14
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\aux_4_~q\ & (\Equal0~1_combout\ & (!\aux_5_~q\ & !\aux_6_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_4_~q\,
	datab => \Equal0~1_combout\,
	datac => \aux_5_~q\,
	datad => \aux_6_~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X94_Y4_N24
\aux_14_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_14_~0_combout\ = (\aux_15_~0_combout\ & (\aux_14_~q\)) # (!\aux_15_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_15_~0_combout\,
	datac => \aux_14_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \aux_14_~0_combout\);

-- Location: FF_X94_Y4_N25
\aux_14_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_14_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_14_~q\);

-- Location: LCCOMB_X94_Y4_N0
\aux_12_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_12_~0_combout\ = (\aux_15_~0_combout\ & ((\aux_12_~q\))) # (!\aux_15_~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datac => \aux_12_~q\,
	datad => \aux_15_~0_combout\,
	combout => \aux_12_~0_combout\);

-- Location: FF_X94_Y4_N1
\aux_12_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_12_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_12_~q\);

-- Location: LCCOMB_X94_Y4_N14
\aux_13_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux_13_~0_combout\ = (\aux_15_~0_combout\ & (\aux_13_~q\)) # (!\aux_15_~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_15_~0_combout\,
	datac => \aux_13_~q\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \aux_13_~0_combout\);

-- Location: FF_X94_Y4_N15
\aux_13_\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux_13_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aux_13_~q\);

-- Location: LCCOMB_X95_Y4_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\aux_11_~q\ & (!\aux_14_~q\ & (!\aux_12_~q\ & !\aux_13_~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_11_~q\,
	datab => \aux_14_~q\,
	datac => \aux_12_~q\,
	datad => \aux_13_~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X91_Y4_N30
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\aux_1_~q\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_1_~q\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X90_Y4_N18
\flag[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag[0]~4_combout\ = (!\flag[1]~3_combout\ & (\ent_inst[2]~input_o\ & (!\exe~input_o\ & \clr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag[1]~3_combout\,
	datab => \ent_inst[2]~input_o\,
	datac => \exe~input_o\,
	datad => \clr~input_o\,
	combout => \flag[0]~4_combout\);

-- Location: FF_X91_Y4_N31
\flag[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~4_combout\,
	ena => \flag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag[0]~reg0_q\);

-- Location: LCCOMB_X91_Y4_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\aux_15_~q\ & ((!\Equal0~0_combout\) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_15_~q\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \LessThan0~0_combout\);

-- Location: FF_X91_Y4_N1
\flag[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~0_combout\,
	ena => \flag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag[1]~reg0_q\);

-- Location: LCCOMB_X91_Y4_N22
\flag[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag[2]~reg0feeder_combout\ = \aux_15_~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aux_15_~q\,
	combout => \flag[2]~reg0feeder_combout\);

-- Location: FF_X91_Y4_N23
\flag[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flag[2]~reg0feeder_combout\,
	ena => \flag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag[2]~reg0_q\);

-- Location: LCCOMB_X90_Y4_N28
\IX[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IX[0]~0_combout\ = (\ent_inst[1]~input_o\ & (!\ent_inst[2]~input_o\ & (!\exe~input_o\ & !\ent_inst[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent_inst[1]~input_o\,
	datab => \ent_inst[2]~input_o\,
	datac => \exe~input_o\,
	datad => \ent_inst[3]~input_o\,
	combout => \IX[0]~0_combout\);

-- Location: FF_X89_Y4_N3
\IX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ent_datos[0]~input_o\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \IX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IX(0));

-- Location: LCCOMB_X88_Y4_N24
\bus_dir[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_dir[0]~reg0feeder_combout\ = IX(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IX(0),
	combout => \bus_dir[0]~reg0feeder_combout\);

-- Location: FF_X88_Y4_N25
\bus_dir[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_dir[0]~reg0feeder_combout\,
	ena => \bus_dir[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_dir[0]~reg0_q\);

-- Location: FF_X89_Y4_N23
\IX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ent_datos[1]~input_o\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \IX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IX(1));

-- Location: LCCOMB_X88_Y4_N2
\bus_dir[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_dir[1]~reg0feeder_combout\ = IX(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IX(1),
	combout => \bus_dir[1]~reg0feeder_combout\);

-- Location: FF_X88_Y4_N3
\bus_dir[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_dir[1]~reg0feeder_combout\,
	ena => \bus_dir[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_dir[1]~reg0_q\);

-- Location: LCCOMB_X89_Y4_N28
\IX[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IX[2]~feeder_combout\ = \ent_datos[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_datos[2]~input_o\,
	combout => \IX[2]~feeder_combout\);

-- Location: FF_X89_Y4_N29
\IX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IX[2]~feeder_combout\,
	clrn => \clr~input_o\,
	ena => \IX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IX(2));

-- Location: LCCOMB_X88_Y4_N4
\bus_dir[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_dir[2]~reg0feeder_combout\ = IX(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IX(2),
	combout => \bus_dir[2]~reg0feeder_combout\);

-- Location: FF_X88_Y4_N5
\bus_dir[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_dir[2]~reg0feeder_combout\,
	ena => \bus_dir[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_dir[2]~reg0_q\);

-- Location: FF_X89_Y4_N27
\IX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ent_datos[3]~input_o\,
	clrn => \clr~input_o\,
	sload => VCC,
	ena => \IX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IX(3));

-- Location: LCCOMB_X88_Y4_N30
\bus_dir[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_dir[3]~reg0feeder_combout\ = IX(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IX(3),
	combout => \bus_dir[3]~reg0feeder_combout\);

-- Location: FF_X88_Y4_N31
\bus_dir[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_dir[3]~reg0feeder_combout\,
	ena => \bus_dir[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_dir[3]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N14
\IX[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IX[4]~feeder_combout\ = \ent_datos[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_datos[4]~input_o\,
	combout => \IX[4]~feeder_combout\);

-- Location: FF_X87_Y4_N15
\IX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IX[4]~feeder_combout\,
	clrn => \clr~input_o\,
	ena => \IX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IX(4));

-- Location: LCCOMB_X88_Y4_N20
\bus_dir[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_dir[4]~reg0feeder_combout\ = IX(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IX(4),
	combout => \bus_dir[4]~reg0feeder_combout\);

-- Location: FF_X88_Y4_N21
\bus_dir[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_dir[4]~reg0feeder_combout\,
	ena => \bus_dir[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_dir[4]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N8
\IX[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IX[5]~feeder_combout\ = \ent_datos[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_datos[5]~input_o\,
	combout => \IX[5]~feeder_combout\);

-- Location: FF_X87_Y4_N9
\IX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IX[5]~feeder_combout\,
	clrn => \clr~input_o\,
	ena => \IX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IX(5));

-- Location: LCCOMB_X88_Y4_N26
\bus_dir[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_dir[5]~reg0feeder_combout\ = IX(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IX(5),
	combout => \bus_dir[5]~reg0feeder_combout\);

-- Location: FF_X88_Y4_N27
\bus_dir[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_dir[5]~reg0feeder_combout\,
	ena => \bus_dir[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_dir[5]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N30
\IX[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IX[6]~feeder_combout\ = \ent_datos[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_datos[6]~input_o\,
	combout => \IX[6]~feeder_combout\);

-- Location: FF_X87_Y4_N31
\IX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IX[6]~feeder_combout\,
	clrn => \clr~input_o\,
	ena => \IX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IX(6));

-- Location: LCCOMB_X88_Y4_N8
\bus_dir[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_dir[6]~reg0feeder_combout\ = IX(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IX(6),
	combout => \bus_dir[6]~reg0feeder_combout\);

-- Location: FF_X88_Y4_N9
\bus_dir[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_dir[6]~reg0feeder_combout\,
	ena => \bus_dir[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_dir[6]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N20
\IX[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IX[7]~feeder_combout\ = \ent_datos[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ent_datos[7]~input_o\,
	combout => \IX[7]~feeder_combout\);

-- Location: FF_X87_Y4_N21
\IX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IX[7]~feeder_combout\,
	clrn => \clr~input_o\,
	ena => \IX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IX(7));

-- Location: LCCOMB_X88_Y4_N10
\bus_dir[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_dir[7]~reg0feeder_combout\ = IX(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IX(7),
	combout => \bus_dir[7]~reg0feeder_combout\);

-- Location: FF_X88_Y4_N11
\bus_dir[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_dir[7]~reg0feeder_combout\,
	ena => \bus_dir[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_dir[7]~reg0_q\);

-- Location: LCCOMB_X94_Y4_N30
\bus_ctrl[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_ctrl[2]~5_combout\ = (\AX[6]~8_combout\) # (((\exe~input_o\) # (!\clr~input_o\)) # (!\ent_inst[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AX[6]~8_combout\,
	datab => \ent_inst[1]~input_o\,
	datac => \clr~input_o\,
	datad => \exe~input_o\,
	combout => \bus_ctrl[2]~5_combout\);

-- Location: LCCOMB_X88_Y4_N12
\bus_ctrl[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bus_ctrl[2]~4_combout\ = (\bus_dir[0]~0_combout\ & (((\bus_ctrl[2]~reg0_q\ & \bus_ctrl[2]~5_combout\)) # (!\ent_inst[0]~input_o\))) # (!\bus_dir[0]~0_combout\ & (((\bus_ctrl[2]~reg0_q\ & \bus_ctrl[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bus_dir[0]~0_combout\,
	datab => \ent_inst[0]~input_o\,
	datac => \bus_ctrl[2]~reg0_q\,
	datad => \bus_ctrl[2]~5_combout\,
	combout => \bus_ctrl[2]~4_combout\);

-- Location: FF_X88_Y4_N13
\bus_ctrl[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bus_ctrl[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bus_ctrl[2]~reg0_q\);

-- Location: LCCOMB_X91_Y5_N24
\Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux109~0_combout\ = (AX(3) & (AX(0) & (AX(2) $ (AX(1))))) # (!AX(3) & (!AX(1) & (AX(2) $ (AX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(3),
	datab => AX(2),
	datac => AX(0),
	datad => AX(1),
	combout => \Mux109~0_combout\);

-- Location: LCCOMB_X94_Y5_N26
\Disp_7sg[45]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Disp_7sg[45]~0_combout\ = (\exe~input_o\ & \clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exe~input_o\,
	datac => \clr~input_o\,
	combout => \Disp_7sg[45]~0_combout\);

-- Location: FF_X91_Y5_N25
\Disp_7sg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux109~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[0]~reg0_q\);

-- Location: LCCOMB_X95_Y5_N16
\Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = (AX(1) & ((AX(0) & ((AX(3)))) # (!AX(0) & (AX(2))))) # (!AX(1) & (AX(2) & (AX(0) $ (AX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(1),
	datab => AX(0),
	datac => AX(2),
	datad => AX(3),
	combout => \Mux108~0_combout\);

-- Location: FF_X95_Y5_N17
\Disp_7sg[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux108~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[1]~reg0_q\);

-- Location: LCCOMB_X95_Y5_N26
\Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux107~0_combout\ = (AX(2) & (AX(3) & ((AX(1)) # (!AX(0))))) # (!AX(2) & (AX(1) & (!AX(0) & !AX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(1),
	datab => AX(0),
	datac => AX(2),
	datad => AX(3),
	combout => \Mux107~0_combout\);

-- Location: FF_X95_Y5_N27
\Disp_7sg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux107~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[2]~reg0_q\);

-- Location: LCCOMB_X95_Y5_N12
\Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux106~0_combout\ = (AX(1) & ((AX(0) & (AX(2))) # (!AX(0) & (!AX(2) & AX(3))))) # (!AX(1) & (!AX(3) & (AX(0) $ (AX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(1),
	datab => AX(0),
	datac => AX(2),
	datad => AX(3),
	combout => \Mux106~0_combout\);

-- Location: FF_X95_Y5_N13
\Disp_7sg[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux106~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[3]~reg0_q\);

-- Location: LCCOMB_X95_Y5_N18
\Mux105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux105~0_combout\ = (AX(1) & (AX(0) & ((!AX(3))))) # (!AX(1) & ((AX(2) & ((!AX(3)))) # (!AX(2) & (AX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(1),
	datab => AX(0),
	datac => AX(2),
	datad => AX(3),
	combout => \Mux105~0_combout\);

-- Location: FF_X95_Y5_N19
\Disp_7sg[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux105~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[4]~reg0_q\);

-- Location: LCCOMB_X95_Y5_N28
\Mux104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux104~0_combout\ = (AX(1) & (!AX(3) & ((AX(0)) # (!AX(2))))) # (!AX(1) & (AX(0) & (AX(2) $ (!AX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(1),
	datab => AX(0),
	datac => AX(2),
	datad => AX(3),
	combout => \Mux104~0_combout\);

-- Location: FF_X95_Y5_N29
\Disp_7sg[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux104~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[5]~reg0_q\);

-- Location: LCCOMB_X95_Y5_N10
\Mux103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux103~0_combout\ = (AX(0) & (!AX(3) & (AX(1) $ (!AX(2))))) # (!AX(0) & (!AX(1) & (AX(2) $ (!AX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(1),
	datab => AX(0),
	datac => AX(2),
	datad => AX(3),
	combout => \Mux103~0_combout\);

-- Location: FF_X95_Y5_N11
\Disp_7sg[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux103~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[6]~reg0_q\);

-- Location: LCCOMB_X91_Y6_N16
\Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~0_combout\ = (AX(6) & (!AX(5) & (AX(4) $ (!AX(7))))) # (!AX(6) & (AX(4) & (AX(5) $ (!AX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(4),
	datac => AX(5),
	datad => AX(7),
	combout => \Mux116~0_combout\);

-- Location: FF_X91_Y6_N17
\Disp_7sg[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux116~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[7]~reg0_q\);

-- Location: LCCOMB_X91_Y6_N26
\Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~0_combout\ = (AX(5) & ((AX(4) & ((AX(7)))) # (!AX(4) & (AX(6))))) # (!AX(5) & (AX(6) & (AX(4) $ (AX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(4),
	datac => AX(5),
	datad => AX(7),
	combout => \Mux115~0_combout\);

-- Location: FF_X91_Y6_N27
\Disp_7sg[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux115~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[8]~reg0_q\);

-- Location: LCCOMB_X91_Y5_N20
\Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux114~0_combout\ = (AX(6) & (AX(7) & ((AX(5)) # (!AX(4))))) # (!AX(6) & (!AX(4) & (AX(5) & !AX(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(4),
	datac => AX(5),
	datad => AX(7),
	combout => \Mux114~0_combout\);

-- Location: FF_X91_Y5_N21
\Disp_7sg[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux114~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[9]~reg0_q\);

-- Location: LCCOMB_X91_Y5_N30
\Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux113~0_combout\ = (AX(5) & ((AX(6) & (AX(4))) # (!AX(6) & (!AX(4) & AX(7))))) # (!AX(5) & (!AX(7) & (AX(6) $ (AX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(4),
	datac => AX(5),
	datad => AX(7),
	combout => \Mux113~0_combout\);

-- Location: FF_X91_Y5_N31
\Disp_7sg[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux113~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[10]~reg0_q\);

-- Location: LCCOMB_X91_Y6_N24
\Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux112~0_combout\ = (AX(5) & (((AX(4) & !AX(7))))) # (!AX(5) & ((AX(6) & ((!AX(7)))) # (!AX(6) & (AX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(4),
	datac => AX(5),
	datad => AX(7),
	combout => \Mux112~0_combout\);

-- Location: FF_X91_Y6_N25
\Disp_7sg[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux112~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[11]~reg0_q\);

-- Location: LCCOMB_X91_Y6_N22
\Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux111~0_combout\ = (AX(6) & (AX(4) & (AX(5) $ (AX(7))))) # (!AX(6) & (!AX(7) & ((AX(4)) # (AX(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(4),
	datac => AX(5),
	datad => AX(7),
	combout => \Mux111~0_combout\);

-- Location: FF_X91_Y6_N23
\Disp_7sg[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux111~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[12]~reg0_q\);

-- Location: LCCOMB_X91_Y6_N0
\Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux110~0_combout\ = (AX(4) & (!AX(7) & (AX(6) $ (!AX(5))))) # (!AX(4) & (!AX(5) & (AX(6) $ (!AX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AX(6),
	datab => AX(4),
	datac => AX(5),
	datad => AX(7),
	combout => \Mux110~0_combout\);

-- Location: FF_X91_Y6_N1
\Disp_7sg[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux110~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[13]~reg0_q\);

-- Location: LCCOMB_X89_Y4_N20
\Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux88~0_combout\ = (IX(3) & (IX(0) & (IX(1) $ (IX(2))))) # (!IX(3) & (!IX(1) & (IX(0) $ (IX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(3),
	datab => IX(0),
	datac => IX(1),
	datad => IX(2),
	combout => \Mux88~0_combout\);

-- Location: FF_X89_Y4_N21
\Disp_7sg[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux88~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[28]~reg0_q\);

-- Location: LCCOMB_X89_Y4_N30
\Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux87~0_combout\ = (IX(3) & ((IX(0) & ((IX(1)))) # (!IX(0) & (IX(2))))) # (!IX(3) & (IX(2) & (IX(1) $ (IX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(3),
	datab => IX(2),
	datac => IX(1),
	datad => IX(0),
	combout => \Mux87~0_combout\);

-- Location: FF_X89_Y4_N31
\Disp_7sg[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux87~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[29]~reg0_q\);

-- Location: LCCOMB_X89_Y4_N8
\Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux86~0_combout\ = (IX(2) & (IX(3) & ((IX(1)) # (!IX(0))))) # (!IX(2) & (IX(1) & (!IX(3) & !IX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(1),
	datab => IX(2),
	datac => IX(3),
	datad => IX(0),
	combout => \Mux86~0_combout\);

-- Location: FF_X89_Y4_N9
\Disp_7sg[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux86~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[30]~reg0_q\);

-- Location: LCCOMB_X89_Y4_N18
\Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux85~0_combout\ = (IX(1) & ((IX(0) & ((IX(2)))) # (!IX(0) & (IX(3) & !IX(2))))) # (!IX(1) & (!IX(3) & (IX(0) $ (IX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(3),
	datab => IX(0),
	datac => IX(1),
	datad => IX(2),
	combout => \Mux85~0_combout\);

-- Location: FF_X89_Y4_N19
\Disp_7sg[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux85~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[31]~reg0_q\);

-- Location: LCCOMB_X89_Y4_N16
\Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux84~0_combout\ = (IX(1) & (((!IX(3) & IX(0))))) # (!IX(1) & ((IX(2) & (!IX(3))) # (!IX(2) & ((IX(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(1),
	datab => IX(2),
	datac => IX(3),
	datad => IX(0),
	combout => \Mux84~0_combout\);

-- Location: FF_X89_Y4_N17
\Disp_7sg[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux84~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[32]~reg0_q\);

-- Location: LCCOMB_X89_Y4_N6
\Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = (IX(1) & (!IX(3) & ((IX(0)) # (!IX(2))))) # (!IX(1) & (IX(0) & (IX(3) $ (!IX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(1),
	datab => IX(0),
	datac => IX(3),
	datad => IX(2),
	combout => \Mux83~0_combout\);

-- Location: FF_X89_Y4_N7
\Disp_7sg[33]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux83~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[33]~reg0_q\);

-- Location: LCCOMB_X89_Y4_N0
\Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux82~0_combout\ = (IX(0) & (!IX(3) & (IX(1) $ (!IX(2))))) # (!IX(0) & (!IX(1) & (IX(3) $ (!IX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(3),
	datab => IX(0),
	datac => IX(1),
	datad => IX(2),
	combout => \Mux82~0_combout\);

-- Location: FF_X89_Y4_N1
\Disp_7sg[34]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux82~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[34]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N28
\Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = (IX(6) & (!IX(5) & (IX(4) $ (!IX(7))))) # (!IX(6) & (IX(4) & (IX(5) $ (!IX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(6),
	datab => IX(5),
	datac => IX(4),
	datad => IX(7),
	combout => \Mux95~0_combout\);

-- Location: FF_X87_Y4_N29
\Disp_7sg[35]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux95~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[35]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N22
\Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux94~0_combout\ = (IX(5) & ((IX(4) & ((IX(7)))) # (!IX(4) & (IX(6))))) # (!IX(5) & (IX(6) & (IX(4) $ (IX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(6),
	datab => IX(5),
	datac => IX(4),
	datad => IX(7),
	combout => \Mux94~0_combout\);

-- Location: FF_X87_Y4_N23
\Disp_7sg[36]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux94~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[36]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N12
\Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux93~0_combout\ = (IX(6) & (IX(7) & ((IX(5)) # (!IX(4))))) # (!IX(6) & (IX(5) & (!IX(4) & !IX(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(6),
	datab => IX(5),
	datac => IX(4),
	datad => IX(7),
	combout => \Mux93~0_combout\);

-- Location: FF_X87_Y4_N13
\Disp_7sg[37]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux93~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[37]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N6
\Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux92~0_combout\ = (IX(5) & ((IX(6) & (IX(4))) # (!IX(6) & (!IX(4) & IX(7))))) # (!IX(5) & (!IX(7) & (IX(6) $ (IX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(6),
	datab => IX(5),
	datac => IX(4),
	datad => IX(7),
	combout => \Mux92~0_combout\);

-- Location: FF_X87_Y4_N7
\Disp_7sg[38]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux92~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[38]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N4
\Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux91~0_combout\ = (IX(5) & (((IX(4) & !IX(7))))) # (!IX(5) & ((IX(6) & ((!IX(7)))) # (!IX(6) & (IX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(6),
	datab => IX(5),
	datac => IX(4),
	datad => IX(7),
	combout => \Mux91~0_combout\);

-- Location: FF_X87_Y4_N5
\Disp_7sg[39]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux91~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[39]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N10
\Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux90~0_combout\ = (IX(6) & (IX(4) & (IX(5) $ (IX(7))))) # (!IX(6) & (!IX(7) & ((IX(5)) # (IX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(6),
	datab => IX(5),
	datac => IX(4),
	datad => IX(7),
	combout => \Mux90~0_combout\);

-- Location: FF_X87_Y4_N11
\Disp_7sg[40]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux90~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[40]~reg0_q\);

-- Location: LCCOMB_X87_Y4_N24
\Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux89~0_combout\ = (IX(4) & (!IX(7) & (IX(6) $ (!IX(5))))) # (!IX(4) & (!IX(5) & (IX(6) $ (!IX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IX(6),
	datab => IX(5),
	datac => IX(4),
	datad => IX(7),
	combout => \Mux89~0_combout\);

-- Location: FF_X87_Y4_N25
\Disp_7sg[41]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux89~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[41]~reg0_q\);

-- Location: LCCOMB_X94_Y5_N2
\PC[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[0]~7_combout\ = \exe~input_o\ $ (!PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exe~input_o\,
	datac => PC(0),
	combout => \PC[0]~7_combout\);

-- Location: FF_X94_Y5_N3
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[0]~7_combout\,
	clrn => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X90_Y5_N14
\aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[0]~feeder_combout\ = PC(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(0),
	combout => \aux[0]~feeder_combout\);

-- Location: FF_X90_Y5_N15
\aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[0]~feeder_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(0));

-- Location: LCCOMB_X94_Y5_N10
\PC[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[1]~8_combout\ = (PC(1) & (PC(0) $ (VCC))) # (!PC(1) & (PC(0) & VCC))
-- \PC[1]~9\ = CARRY((PC(1) & PC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(0),
	datad => VCC,
	combout => \PC[1]~8_combout\,
	cout => \PC[1]~9\);

-- Location: LCCOMB_X94_Y5_N12
\PC[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[2]~10_combout\ = (PC(2) & (!\PC[1]~9\)) # (!PC(2) & ((\PC[1]~9\) # (GND)))
-- \PC[2]~11\ = CARRY((!\PC[1]~9\) # (!PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datad => VCC,
	cin => \PC[1]~9\,
	combout => \PC[2]~10_combout\,
	cout => \PC[2]~11\);

-- Location: LCCOMB_X94_Y5_N14
\PC[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[3]~12_combout\ = (PC(3) & (\PC[2]~11\ $ (GND))) # (!PC(3) & (!\PC[2]~11\ & VCC))
-- \PC[3]~13\ = CARRY((PC(3) & !\PC[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(3),
	datad => VCC,
	cin => \PC[2]~11\,
	combout => \PC[3]~12_combout\,
	cout => \PC[3]~13\);

-- Location: FF_X94_Y5_N15
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[3]~12_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X90_Y5_N8
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

-- Location: FF_X90_Y5_N9
\aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[3]~feeder_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(3));

-- Location: FF_X94_Y5_N13
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[2]~10_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X90_Y5_N18
\aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[2]~feeder_combout\ = PC(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(2),
	combout => \aux[2]~feeder_combout\);

-- Location: FF_X90_Y5_N19
\aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[2]~feeder_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(2));

-- Location: LCCOMB_X89_Y5_N4
\Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux74~0_combout\ = (aux(3) & (aux(0) & (aux(1) $ (aux(2))))) # (!aux(3) & (!aux(1) & (aux(0) $ (aux(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(1),
	datab => aux(0),
	datac => aux(3),
	datad => aux(2),
	combout => \Mux74~0_combout\);

-- Location: FF_X89_Y5_N5
\Disp_7sg[42]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux74~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[42]~reg0_q\);

-- Location: FF_X94_Y5_N11
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[1]~8_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X90_Y5_N4
\aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[1]~feeder_combout\ = PC(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(1),
	combout => \aux[1]~feeder_combout\);

-- Location: FF_X90_Y5_N5
\aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[1]~feeder_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(1));

-- Location: LCCOMB_X90_Y5_N16
\Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (aux(3) & ((aux(0) & ((aux(1)))) # (!aux(0) & (aux(2))))) # (!aux(3) & (aux(2) & (aux(1) $ (aux(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(2),
	datab => aux(3),
	datac => aux(1),
	datad => aux(0),
	combout => \Mux73~0_combout\);

-- Location: FF_X90_Y5_N17
\Disp_7sg[43]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux73~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[43]~reg0_q\);

-- Location: LCCOMB_X90_Y5_N26
\Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux72~0_combout\ = (aux(3) & (aux(2) & ((aux(1)) # (!aux(0))))) # (!aux(3) & (!aux(0) & (aux(1) & !aux(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(0),
	datab => aux(3),
	datac => aux(1),
	datad => aux(2),
	combout => \Mux72~0_combout\);

-- Location: FF_X90_Y5_N27
\Disp_7sg[44]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux72~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[44]~reg0_q\);

-- Location: LCCOMB_X89_Y5_N30
\Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (aux(1) & ((aux(0) & ((aux(2)))) # (!aux(0) & (aux(3) & !aux(2))))) # (!aux(1) & (!aux(3) & (aux(0) $ (aux(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(1),
	datab => aux(0),
	datac => aux(3),
	datad => aux(2),
	combout => \Mux71~0_combout\);

-- Location: FF_X89_Y5_N31
\Disp_7sg[45]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux71~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[45]~reg0_q\);

-- Location: LCCOMB_X89_Y5_N20
\Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (aux(1) & (aux(0) & (!aux(3)))) # (!aux(1) & ((aux(2) & ((!aux(3)))) # (!aux(2) & (aux(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(1),
	datab => aux(0),
	datac => aux(3),
	datad => aux(2),
	combout => \Mux70~0_combout\);

-- Location: FF_X89_Y5_N21
\Disp_7sg[46]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux70~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[46]~reg0_q\);

-- Location: LCCOMB_X89_Y5_N18
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (aux(1) & (!aux(3) & ((aux(0)) # (!aux(2))))) # (!aux(1) & (aux(0) & (aux(3) $ (!aux(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(1),
	datab => aux(0),
	datac => aux(3),
	datad => aux(2),
	combout => \Mux69~0_combout\);

-- Location: FF_X89_Y5_N19
\Disp_7sg[47]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux69~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[47]~reg0_q\);

-- Location: LCCOMB_X89_Y5_N24
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (aux(0) & (!aux(3) & (aux(1) $ (!aux(2))))) # (!aux(0) & (!aux(1) & (aux(3) $ (!aux(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(1),
	datab => aux(0),
	datac => aux(3),
	datad => aux(2),
	combout => \Mux68~0_combout\);

-- Location: FF_X89_Y5_N25
\Disp_7sg[48]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux68~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[48]~reg0_q\);

-- Location: LCCOMB_X94_Y5_N16
\PC[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[4]~14_combout\ = (PC(4) & (!\PC[3]~13\)) # (!PC(4) & ((\PC[3]~13\) # (GND)))
-- \PC[4]~15\ = CARRY((!\PC[3]~13\) # (!PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datad => VCC,
	cin => \PC[3]~13\,
	combout => \PC[4]~14_combout\,
	cout => \PC[4]~15\);

-- Location: FF_X94_Y5_N17
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[4]~14_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X94_Y5_N18
\PC[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[5]~16_combout\ = (PC(5) & (\PC[4]~15\ $ (GND))) # (!PC(5) & (!\PC[4]~15\ & VCC))
-- \PC[5]~17\ = CARRY((PC(5) & !\PC[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(5),
	datad => VCC,
	cin => \PC[4]~15\,
	combout => \PC[5]~16_combout\,
	cout => \PC[5]~17\);

-- Location: FF_X94_Y5_N19
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[5]~16_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X90_Y5_N24
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

-- Location: FF_X90_Y5_N25
\aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[5]~feeder_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(5));

-- Location: LCCOMB_X94_Y5_N20
\PC[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[6]~18_combout\ = (PC(6) & (!\PC[5]~17\)) # (!PC(6) & ((\PC[5]~17\) # (GND)))
-- \PC[6]~19\ = CARRY((!\PC[5]~17\) # (!PC(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => VCC,
	cin => \PC[5]~17\,
	combout => \PC[6]~18_combout\,
	cout => \PC[6]~19\);

-- Location: FF_X94_Y5_N21
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[6]~18_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X94_Y5_N22
\PC[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[7]~20_combout\ = PC(7) $ (!\PC[6]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	cin => \PC[6]~19\,
	combout => \PC[7]~20_combout\);

-- Location: FF_X94_Y5_N23
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[7]~20_combout\,
	clrn => \clr~input_o\,
	ena => \ALT_INV_exe~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X91_Y5_N0
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

-- Location: FF_X91_Y5_N1
\aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[7]~feeder_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(7));

-- Location: LCCOMB_X90_Y5_N2
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

-- Location: FF_X90_Y5_N3
\aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aux[4]~feeder_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(4));

-- Location: LCCOMB_X90_Y5_N0
\Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (aux(6) & (!aux(5) & (aux(7) $ (!aux(4))))) # (!aux(6) & (aux(4) & (aux(5) $ (!aux(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(5),
	datac => aux(7),
	datad => aux(4),
	combout => \Mux81~0_combout\);

-- Location: FF_X90_Y5_N1
\Disp_7sg[49]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux81~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[49]~reg0_q\);

-- Location: LCCOMB_X90_Y5_N22
\Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = (aux(5) & ((aux(4) & ((aux(7)))) # (!aux(4) & (aux(6))))) # (!aux(5) & (aux(6) & (aux(7) $ (aux(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(5),
	datac => aux(7),
	datad => aux(4),
	combout => \Mux80~0_combout\);

-- Location: FF_X90_Y5_N23
\Disp_7sg[50]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux80~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[50]~reg0_q\);

-- Location: LCCOMB_X90_Y5_N12
\Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux79~0_combout\ = (aux(6) & (aux(7) & ((aux(5)) # (!aux(4))))) # (!aux(6) & (aux(5) & (!aux(7) & !aux(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(5),
	datac => aux(7),
	datad => aux(4),
	combout => \Mux79~0_combout\);

-- Location: FF_X90_Y5_N13
\Disp_7sg[51]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux79~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[51]~reg0_q\);

-- Location: LCCOMB_X90_Y5_N30
\Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux78~0_combout\ = (aux(5) & ((aux(6) & ((aux(4)))) # (!aux(6) & (aux(7) & !aux(4))))) # (!aux(5) & (!aux(7) & (aux(6) $ (aux(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(5),
	datac => aux(7),
	datad => aux(4),
	combout => \Mux78~0_combout\);

-- Location: FF_X90_Y5_N31
\Disp_7sg[52]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux78~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[52]~reg0_q\);

-- Location: LCCOMB_X90_Y5_N28
\Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (aux(5) & (((!aux(7) & aux(4))))) # (!aux(5) & ((aux(6) & (!aux(7))) # (!aux(6) & ((aux(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(5),
	datac => aux(7),
	datad => aux(4),
	combout => \Mux77~0_combout\);

-- Location: FF_X90_Y5_N29
\Disp_7sg[53]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux77~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[53]~reg0_q\);

-- Location: LCCOMB_X90_Y5_N10
\Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux76~0_combout\ = (aux(6) & (aux(4) & (aux(5) $ (aux(7))))) # (!aux(6) & (!aux(7) & ((aux(5)) # (aux(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(5),
	datac => aux(7),
	datad => aux(4),
	combout => \Mux76~0_combout\);

-- Location: FF_X90_Y5_N11
\Disp_7sg[54]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux76~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Disp_7sg[54]~reg0_q\);

-- Location: LCCOMB_X90_Y5_N20
\Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (aux(4) & (!aux(7) & (aux(6) $ (!aux(5))))) # (!aux(4) & (!aux(5) & (aux(6) $ (!aux(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => aux(5),
	datac => aux(7),
	datad => aux(4),
	combout => \Mux75~0_combout\);

-- Location: FF_X90_Y5_N21
\Disp_7sg[55]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux75~0_combout\,
	ena => \Disp_7sg[45]~0_combout\,
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

\ww_global.bp.work.ALU_UC.aux_15__gl_output\ <= \aux_15_~q\;

\ww_global.bp.work.ALU_UC.aux_14__gl_output\ <= \aux_14_~q\;

\ww_global.bp.work.ALU_UC.aux_13__gl_output\ <= \aux_13_~q\;

\ww_global.bp.work.ALU_UC.aux_12__gl_output\ <= \aux_12_~q\;

\ww_global.bp.work.ALU_UC.aux_11__gl_output\ <= \aux_11_~q\;

\ww_global.bp.work.ALU_UC.aux_10__gl_output\ <= \aux_10_~q\;

\ww_global.bp.work.ALU_UC.aux_9__gl_output\ <= \aux_9_~q\;

\ww_global.bp.work.ALU_UC.aux_8__gl_output\ <= \aux_8_~q\;

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


