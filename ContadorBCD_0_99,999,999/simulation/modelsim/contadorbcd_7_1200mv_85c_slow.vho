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

-- DATE "12/08/2021 18:53:32"

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

ENTITY 	contadorbcd IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	start : IN std_logic;
	DisplayU : OUT std_logic_vector(6 DOWNTO 0);
	DisplayD : OUT std_logic_vector(6 DOWNTO 0);
	DisplayC : OUT std_logic_vector(6 DOWNTO 0);
	DisplayUM : OUT std_logic_vector(6 DOWNTO 0);
	DisplayDM : OUT std_logic_vector(6 DOWNTO 0);
	DisplayCM : OUT std_logic_vector(6 DOWNTO 0);
	DisplayUML : OUT std_logic_vector(6 DOWNTO 0);
	DisplayDML : OUT std_logic_vector(6 DOWNTO 0)
	);
END contadorbcd;

-- Design Ports Information
-- DisplayU[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayU[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayU[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayU[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayU[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayU[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayU[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayD[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayD[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayD[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayD[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayD[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayD[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayD[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayC[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayC[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayC[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayC[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayC[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayC[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayC[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUM[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUM[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUM[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUM[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUM[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUM[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUM[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDM[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDM[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDM[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDM[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDM[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDM[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDM[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayCM[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayCM[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayCM[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayCM[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayCM[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayCM[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayCM[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUML[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUML[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUML[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUML[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUML[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUML[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayUML[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDML[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDML[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDML[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDML[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDML[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDML[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayDML[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contadorbcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_DisplayU : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DisplayD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DisplayC : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DisplayUM : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DisplayDM : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DisplayCM : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DisplayUML : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DisplayDML : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk1hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count1Hz[3]~22_combout\ : std_logic;
SIGNAL \count1Hz[14]~45\ : std_logic;
SIGNAL \count1Hz[15]~46_combout\ : std_logic;
SIGNAL \clk1hz~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \clk1hz~0_combout\ : std_logic;
SIGNAL \next_state~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk1hz~clkctrl_outclk\ : std_logic;
SIGNAL \clk1hz~feeder_combout\ : std_logic;
SIGNAL \DisplayU[0]~output_o\ : std_logic;
SIGNAL \DisplayU[1]~output_o\ : std_logic;
SIGNAL \DisplayU[2]~output_o\ : std_logic;
SIGNAL \DisplayU[3]~output_o\ : std_logic;
SIGNAL \DisplayU[4]~output_o\ : std_logic;
SIGNAL \DisplayU[5]~output_o\ : std_logic;
SIGNAL \DisplayU[6]~output_o\ : std_logic;
SIGNAL \DisplayD[0]~output_o\ : std_logic;
SIGNAL \DisplayD[1]~output_o\ : std_logic;
SIGNAL \DisplayD[2]~output_o\ : std_logic;
SIGNAL \DisplayD[3]~output_o\ : std_logic;
SIGNAL \DisplayD[4]~output_o\ : std_logic;
SIGNAL \DisplayD[5]~output_o\ : std_logic;
SIGNAL \DisplayD[6]~output_o\ : std_logic;
SIGNAL \DisplayC[0]~output_o\ : std_logic;
SIGNAL \DisplayC[1]~output_o\ : std_logic;
SIGNAL \DisplayC[2]~output_o\ : std_logic;
SIGNAL \DisplayC[3]~output_o\ : std_logic;
SIGNAL \DisplayC[4]~output_o\ : std_logic;
SIGNAL \DisplayC[5]~output_o\ : std_logic;
SIGNAL \DisplayC[6]~output_o\ : std_logic;
SIGNAL \DisplayUM[0]~output_o\ : std_logic;
SIGNAL \DisplayUM[1]~output_o\ : std_logic;
SIGNAL \DisplayUM[2]~output_o\ : std_logic;
SIGNAL \DisplayUM[3]~output_o\ : std_logic;
SIGNAL \DisplayUM[4]~output_o\ : std_logic;
SIGNAL \DisplayUM[5]~output_o\ : std_logic;
SIGNAL \DisplayUM[6]~output_o\ : std_logic;
SIGNAL \DisplayDM[0]~output_o\ : std_logic;
SIGNAL \DisplayDM[1]~output_o\ : std_logic;
SIGNAL \DisplayDM[2]~output_o\ : std_logic;
SIGNAL \DisplayDM[3]~output_o\ : std_logic;
SIGNAL \DisplayDM[4]~output_o\ : std_logic;
SIGNAL \DisplayDM[5]~output_o\ : std_logic;
SIGNAL \DisplayDM[6]~output_o\ : std_logic;
SIGNAL \DisplayCM[0]~output_o\ : std_logic;
SIGNAL \DisplayCM[1]~output_o\ : std_logic;
SIGNAL \DisplayCM[2]~output_o\ : std_logic;
SIGNAL \DisplayCM[3]~output_o\ : std_logic;
SIGNAL \DisplayCM[4]~output_o\ : std_logic;
SIGNAL \DisplayCM[5]~output_o\ : std_logic;
SIGNAL \DisplayCM[6]~output_o\ : std_logic;
SIGNAL \DisplayUML[0]~output_o\ : std_logic;
SIGNAL \DisplayUML[1]~output_o\ : std_logic;
SIGNAL \DisplayUML[2]~output_o\ : std_logic;
SIGNAL \DisplayUML[3]~output_o\ : std_logic;
SIGNAL \DisplayUML[4]~output_o\ : std_logic;
SIGNAL \DisplayUML[5]~output_o\ : std_logic;
SIGNAL \DisplayUML[6]~output_o\ : std_logic;
SIGNAL \DisplayDML[0]~output_o\ : std_logic;
SIGNAL \DisplayDML[1]~output_o\ : std_logic;
SIGNAL \DisplayDML[2]~output_o\ : std_logic;
SIGNAL \DisplayDML[3]~output_o\ : std_logic;
SIGNAL \DisplayDML[4]~output_o\ : std_logic;
SIGNAL \DisplayDML[5]~output_o\ : std_logic;
SIGNAL \DisplayDML[6]~output_o\ : std_logic;
SIGNAL \contadorU~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \count1Hz[0]~16_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \count1Hz[0]~17\ : std_logic;
SIGNAL \count1Hz[1]~18_combout\ : std_logic;
SIGNAL \count1Hz[1]~19\ : std_logic;
SIGNAL \count1Hz[2]~20_combout\ : std_logic;
SIGNAL \count1Hz[2]~21\ : std_logic;
SIGNAL \count1Hz[3]~23\ : std_logic;
SIGNAL \count1Hz[4]~24_combout\ : std_logic;
SIGNAL \count1Hz[4]~25\ : std_logic;
SIGNAL \count1Hz[5]~27\ : std_logic;
SIGNAL \count1Hz[6]~29\ : std_logic;
SIGNAL \count1Hz[7]~30_combout\ : std_logic;
SIGNAL \count1Hz[7]~31\ : std_logic;
SIGNAL \count1Hz[8]~32_combout\ : std_logic;
SIGNAL \count1Hz[8]~33\ : std_logic;
SIGNAL \count1Hz[9]~34_combout\ : std_logic;
SIGNAL \count1Hz[9]~35\ : std_logic;
SIGNAL \count1Hz[10]~36_combout\ : std_logic;
SIGNAL \count1Hz[10]~37\ : std_logic;
SIGNAL \count1Hz[11]~38_combout\ : std_logic;
SIGNAL \count1Hz[11]~39\ : std_logic;
SIGNAL \count1Hz[12]~40_combout\ : std_logic;
SIGNAL \count1Hz[12]~41\ : std_logic;
SIGNAL \count1Hz[13]~42_combout\ : std_logic;
SIGNAL \count1Hz[13]~43\ : std_logic;
SIGNAL \count1Hz[14]~44_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \count1Hz[5]~26_combout\ : std_logic;
SIGNAL \count1Hz[6]~28_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \contadorC[0]~4_combout\ : std_logic;
SIGNAL \contadorC[3]~0_combout\ : std_logic;
SIGNAL \contadorC[2]~2_combout\ : std_logic;
SIGNAL \contadorC~3_combout\ : std_logic;
SIGNAL \contadorC~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \contadorUM[3]~0_combout\ : std_logic;
SIGNAL \contadorUM[0]~4_combout\ : std_logic;
SIGNAL \contadorUM[2]~2_combout\ : std_logic;
SIGNAL \contadorUM~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \next_state~1_combout\ : std_logic;
SIGNAL \contadorDM[0]~4_combout\ : std_logic;
SIGNAL \contadorDM[3]~0_combout\ : std_logic;
SIGNAL \contadorDM[2]~2_combout\ : std_logic;
SIGNAL \contadorDM~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \contadorUML[0]~4_combout\ : std_logic;
SIGNAL \contadorUML[3]~0_combout\ : std_logic;
SIGNAL \contadorUML[2]~2_combout\ : std_logic;
SIGNAL \contadorUML~1_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \contadorDML[2]~3_combout\ : std_logic;
SIGNAL \contadorDML[0]~5_combout\ : std_logic;
SIGNAL \contadorDML[3]~0_combout\ : std_logic;
SIGNAL \contadorDML[3]~1_combout\ : std_logic;
SIGNAL \contadorDML~4_combout\ : std_logic;
SIGNAL \contadorDML~2_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \next_state~2_combout\ : std_logic;
SIGNAL \next_state~3_combout\ : std_logic;
SIGNAL \next_state~q\ : std_logic;
SIGNAL \current_state~0_combout\ : std_logic;
SIGNAL \current_state~q\ : std_logic;
SIGNAL \contadorU[3]~1_combout\ : std_logic;
SIGNAL \contadorU~2_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \contadorU~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contadorU~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \contadorD[0]~4_combout\ : std_logic;
SIGNAL \contadorD[3]~0_combout\ : std_logic;
SIGNAL \contadorD~1_combout\ : std_logic;
SIGNAL \contadorD[2]~2_combout\ : std_logic;
SIGNAL \contadorD~3_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \contadorUM~1_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \contadorDM~3_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \contadorCM[0]~4_combout\ : std_logic;
SIGNAL \contadorCM[3]~0_combout\ : std_logic;
SIGNAL \contadorCM[2]~2_combout\ : std_logic;
SIGNAL \contadorCM~3_combout\ : std_logic;
SIGNAL \contadorCM~1_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \contadorUML~3_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL count1Hz : std_logic_vector(15 DOWNTO 0);
SIGNAL contadorUML : std_logic_vector(3 DOWNTO 0);
SIGNAL contadorUM : std_logic_vector(3 DOWNTO 0);
SIGNAL contadorU : std_logic_vector(3 DOWNTO 0);
SIGNAL contadorDML : std_logic_vector(3 DOWNTO 0);
SIGNAL contadorDM : std_logic_vector(3 DOWNTO 0);
SIGNAL contadorD : std_logic_vector(3 DOWNTO 0);
SIGNAL contadorCM : std_logic_vector(3 DOWNTO 0);
SIGNAL contadorC : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux49~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
ww_start <= start;
DisplayU <= ww_DisplayU;
DisplayD <= ww_DisplayD;
DisplayC <= ww_DisplayC;
DisplayUM <= ww_DisplayUM;
DisplayDM <= ww_DisplayDM;
DisplayCM <= ww_DisplayCM;
DisplayUML <= ww_DisplayUML;
DisplayDML <= ww_DisplayDML;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\clk1hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1hz~q\);
\ALT_INV_Mux49~0_combout\ <= NOT \Mux49~0_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: FF_X111_Y16_N31
\count1Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[15]~46_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(15));

-- Location: FF_X111_Y16_N7
\count1Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[3]~22_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(3));

-- Location: LCCOMB_X111_Y16_N6
\count1Hz[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[3]~22_combout\ = (count1Hz(3) & (!\count1Hz[2]~21\)) # (!count1Hz(3) & ((\count1Hz[2]~21\) # (GND)))
-- \count1Hz[3]~23\ = CARRY((!\count1Hz[2]~21\) # (!count1Hz(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(3),
	datad => VCC,
	cin => \count1Hz[2]~21\,
	combout => \count1Hz[3]~22_combout\,
	cout => \count1Hz[3]~23\);

-- Location: LCCOMB_X111_Y16_N28
\count1Hz[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[14]~44_combout\ = (count1Hz(14) & (\count1Hz[13]~43\ $ (GND))) # (!count1Hz(14) & (!\count1Hz[13]~43\ & VCC))
-- \count1Hz[14]~45\ = CARRY((count1Hz(14) & !\count1Hz[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(14),
	datad => VCC,
	cin => \count1Hz[13]~43\,
	combout => \count1Hz[14]~44_combout\,
	cout => \count1Hz[14]~45\);

-- Location: LCCOMB_X111_Y16_N30
\count1Hz[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[15]~46_combout\ = \count1Hz[14]~45\ $ (count1Hz(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count1Hz(15),
	cin => \count1Hz[14]~45\,
	combout => \count1Hz[15]~46_combout\);

-- Location: FF_X110_Y16_N25
clk1hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk1hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1hz~q\);

-- Location: LCCOMB_X110_Y20_N10
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = contadorU(2) $ (((contadorU(0) & contadorU(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorU(2),
	datac => contadorU(0),
	datad => contadorU(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X109_Y16_N6
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!contadorD(2) & (contadorD(3) & (contadorD(0) & !contadorD(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorD(2),
	datab => contadorD(3),
	datac => contadorD(0),
	datad => contadorD(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X108_Y12_N22
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!contadorCM(1) & (contadorCM(0) & (!contadorCM(2) & contadorCM(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(1),
	datab => contadorCM(0),
	datac => contadorCM(2),
	datad => contadorCM(3),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X105_Y12_N20
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (contadorDML(1) & contadorDML(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contadorDML(1),
	datad => contadorDML(0),
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X110_Y16_N30
\clk1hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1hz~0_combout\ = \clk1hz~q\ $ (((\clr~input_o\ & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datac => \LessThan0~3_combout\,
	datad => \clk1hz~q\,
	combout => \clk1hz~0_combout\);

-- Location: LCCOMB_X110_Y16_N4
\next_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~0_combout\ = (\current_state~q\ & \next_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datac => \next_state~q\,
	combout => \next_state~0_combout\);

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

-- Location: CLKCTRL_G8
\clk1hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1hz~clkctrl_outclk\);

-- Location: LCCOMB_X110_Y16_N24
\clk1hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1hz~feeder_combout\ = \clk1hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk1hz~0_combout\,
	combout => \clk1hz~feeder_combout\);

-- Location: IOOBUF_X69_Y73_N23
\DisplayU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DisplayU[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\DisplayU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DisplayU[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\DisplayU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DisplayU[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\DisplayU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DisplayU[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\DisplayU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DisplayU[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\DisplayU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DisplayU[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\DisplayU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DisplayU[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\DisplayD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \DisplayD[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\DisplayD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \DisplayD[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\DisplayD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \DisplayD[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\DisplayD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \DisplayD[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\DisplayD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \DisplayD[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\DisplayD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \DisplayD[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\DisplayD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \DisplayD[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\DisplayC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \DisplayC[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\DisplayC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \DisplayC[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\DisplayC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \DisplayC[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\DisplayC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \DisplayC[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\DisplayC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \DisplayC[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\DisplayC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \DisplayC[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\DisplayC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \DisplayC[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\DisplayUM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUM[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\DisplayUM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUM[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\DisplayUM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUM[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\DisplayUM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUM[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\DisplayUM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUM[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\DisplayUM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUM[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\DisplayUM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux21~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUM[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\DisplayDM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDM[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\DisplayDM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDM[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\DisplayDM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDM[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\DisplayDM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDM[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\DisplayDM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDM[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\DisplayDM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDM[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\DisplayDM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux28~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDM[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\DisplayCM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~0_combout\,
	devoe => ww_devoe,
	o => \DisplayCM[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\DisplayCM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => \DisplayCM[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\DisplayCM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~0_combout\,
	devoe => ww_devoe,
	o => \DisplayCM[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\DisplayCM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~0_combout\,
	devoe => ww_devoe,
	o => \DisplayCM[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\DisplayCM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~0_combout\,
	devoe => ww_devoe,
	o => \DisplayCM[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\DisplayCM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~0_combout\,
	devoe => ww_devoe,
	o => \DisplayCM[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\DisplayCM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux35~0_combout\,
	devoe => ww_devoe,
	o => \DisplayCM[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\DisplayUML[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUML[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\DisplayUML[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUML[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\DisplayUML[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUML[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\DisplayUML[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUML[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\DisplayUML[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUML[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\DisplayUML[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUML[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\DisplayUML[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux42~0_combout\,
	devoe => ww_devoe,
	o => \DisplayUML[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\DisplayDML[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDML[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\DisplayDML[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDML[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\DisplayDML[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDML[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\DisplayDML[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDML[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\DisplayDML[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDML[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\DisplayDML[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDML[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\DisplayDML[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux49~0_combout\,
	devoe => ww_devoe,
	o => \DisplayDML[6]~output_o\);

-- Location: LCCOMB_X110_Y20_N12
\contadorU~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorU~0_combout\ = (\current_state~q\ & !contadorU(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datac => contadorU(0),
	combout => \contadorU~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X111_Y16_N0
\count1Hz[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[0]~16_combout\ = count1Hz(0) $ (VCC)
-- \count1Hz[0]~17\ = CARRY(count1Hz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(0),
	datad => VCC,
	combout => \count1Hz[0]~16_combout\,
	cout => \count1Hz[0]~17\);

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

-- Location: FF_X111_Y16_N1
\count1Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[0]~16_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(0));

-- Location: LCCOMB_X111_Y16_N2
\count1Hz[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[1]~18_combout\ = (count1Hz(1) & (!\count1Hz[0]~17\)) # (!count1Hz(1) & ((\count1Hz[0]~17\) # (GND)))
-- \count1Hz[1]~19\ = CARRY((!\count1Hz[0]~17\) # (!count1Hz(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(1),
	datad => VCC,
	cin => \count1Hz[0]~17\,
	combout => \count1Hz[1]~18_combout\,
	cout => \count1Hz[1]~19\);

-- Location: FF_X111_Y16_N3
\count1Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[1]~18_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(1));

-- Location: LCCOMB_X111_Y16_N4
\count1Hz[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[2]~20_combout\ = (count1Hz(2) & (\count1Hz[1]~19\ $ (GND))) # (!count1Hz(2) & (!\count1Hz[1]~19\ & VCC))
-- \count1Hz[2]~21\ = CARRY((count1Hz(2) & !\count1Hz[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(2),
	datad => VCC,
	cin => \count1Hz[1]~19\,
	combout => \count1Hz[2]~20_combout\,
	cout => \count1Hz[2]~21\);

-- Location: FF_X111_Y16_N5
\count1Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[2]~20_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(2));

-- Location: LCCOMB_X111_Y16_N8
\count1Hz[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[4]~24_combout\ = (count1Hz(4) & (\count1Hz[3]~23\ $ (GND))) # (!count1Hz(4) & (!\count1Hz[3]~23\ & VCC))
-- \count1Hz[4]~25\ = CARRY((count1Hz(4) & !\count1Hz[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(4),
	datad => VCC,
	cin => \count1Hz[3]~23\,
	combout => \count1Hz[4]~24_combout\,
	cout => \count1Hz[4]~25\);

-- Location: FF_X111_Y16_N9
\count1Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[4]~24_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(4));

-- Location: LCCOMB_X111_Y16_N10
\count1Hz[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[5]~26_combout\ = (count1Hz(5) & (!\count1Hz[4]~25\)) # (!count1Hz(5) & ((\count1Hz[4]~25\) # (GND)))
-- \count1Hz[5]~27\ = CARRY((!\count1Hz[4]~25\) # (!count1Hz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(5),
	datad => VCC,
	cin => \count1Hz[4]~25\,
	combout => \count1Hz[5]~26_combout\,
	cout => \count1Hz[5]~27\);

-- Location: LCCOMB_X111_Y16_N12
\count1Hz[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[6]~28_combout\ = (count1Hz(6) & (\count1Hz[5]~27\ $ (GND))) # (!count1Hz(6) & (!\count1Hz[5]~27\ & VCC))
-- \count1Hz[6]~29\ = CARRY((count1Hz(6) & !\count1Hz[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(6),
	datad => VCC,
	cin => \count1Hz[5]~27\,
	combout => \count1Hz[6]~28_combout\,
	cout => \count1Hz[6]~29\);

-- Location: LCCOMB_X111_Y16_N14
\count1Hz[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[7]~30_combout\ = (count1Hz(7) & (!\count1Hz[6]~29\)) # (!count1Hz(7) & ((\count1Hz[6]~29\) # (GND)))
-- \count1Hz[7]~31\ = CARRY((!\count1Hz[6]~29\) # (!count1Hz(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(7),
	datad => VCC,
	cin => \count1Hz[6]~29\,
	combout => \count1Hz[7]~30_combout\,
	cout => \count1Hz[7]~31\);

-- Location: FF_X111_Y16_N15
\count1Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[7]~30_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(7));

-- Location: LCCOMB_X111_Y16_N16
\count1Hz[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[8]~32_combout\ = (count1Hz(8) & (\count1Hz[7]~31\ $ (GND))) # (!count1Hz(8) & (!\count1Hz[7]~31\ & VCC))
-- \count1Hz[8]~33\ = CARRY((count1Hz(8) & !\count1Hz[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(8),
	datad => VCC,
	cin => \count1Hz[7]~31\,
	combout => \count1Hz[8]~32_combout\,
	cout => \count1Hz[8]~33\);

-- Location: FF_X111_Y16_N17
\count1Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[8]~32_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(8));

-- Location: LCCOMB_X111_Y16_N18
\count1Hz[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[9]~34_combout\ = (count1Hz(9) & (!\count1Hz[8]~33\)) # (!count1Hz(9) & ((\count1Hz[8]~33\) # (GND)))
-- \count1Hz[9]~35\ = CARRY((!\count1Hz[8]~33\) # (!count1Hz(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(9),
	datad => VCC,
	cin => \count1Hz[8]~33\,
	combout => \count1Hz[9]~34_combout\,
	cout => \count1Hz[9]~35\);

-- Location: FF_X111_Y16_N19
\count1Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[9]~34_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(9));

-- Location: LCCOMB_X111_Y16_N20
\count1Hz[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[10]~36_combout\ = (count1Hz(10) & (\count1Hz[9]~35\ $ (GND))) # (!count1Hz(10) & (!\count1Hz[9]~35\ & VCC))
-- \count1Hz[10]~37\ = CARRY((count1Hz(10) & !\count1Hz[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(10),
	datad => VCC,
	cin => \count1Hz[9]~35\,
	combout => \count1Hz[10]~36_combout\,
	cout => \count1Hz[10]~37\);

-- Location: FF_X111_Y16_N21
\count1Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[10]~36_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(10));

-- Location: LCCOMB_X111_Y16_N22
\count1Hz[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[11]~38_combout\ = (count1Hz(11) & (!\count1Hz[10]~37\)) # (!count1Hz(11) & ((\count1Hz[10]~37\) # (GND)))
-- \count1Hz[11]~39\ = CARRY((!\count1Hz[10]~37\) # (!count1Hz(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(11),
	datad => VCC,
	cin => \count1Hz[10]~37\,
	combout => \count1Hz[11]~38_combout\,
	cout => \count1Hz[11]~39\);

-- Location: FF_X111_Y16_N23
\count1Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[11]~38_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(11));

-- Location: LCCOMB_X111_Y16_N24
\count1Hz[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[12]~40_combout\ = (count1Hz(12) & (\count1Hz[11]~39\ $ (GND))) # (!count1Hz(12) & (!\count1Hz[11]~39\ & VCC))
-- \count1Hz[12]~41\ = CARRY((count1Hz(12) & !\count1Hz[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1Hz(12),
	datad => VCC,
	cin => \count1Hz[11]~39\,
	combout => \count1Hz[12]~40_combout\,
	cout => \count1Hz[12]~41\);

-- Location: FF_X111_Y16_N25
\count1Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[12]~40_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(12));

-- Location: LCCOMB_X111_Y16_N26
\count1Hz[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count1Hz[13]~42_combout\ = (count1Hz(13) & (!\count1Hz[12]~41\)) # (!count1Hz(13) & ((\count1Hz[12]~41\) # (GND)))
-- \count1Hz[13]~43\ = CARRY((!\count1Hz[12]~41\) # (!count1Hz(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(13),
	datad => VCC,
	cin => \count1Hz[12]~41\,
	combout => \count1Hz[13]~42_combout\,
	cout => \count1Hz[13]~43\);

-- Location: FF_X111_Y16_N27
\count1Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[13]~42_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(13));

-- Location: FF_X111_Y16_N29
\count1Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[14]~44_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(14));

-- Location: LCCOMB_X110_Y16_N14
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!count1Hz(12) & !count1Hz(11))) # (!count1Hz(14))) # (!count1Hz(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(12),
	datab => count1Hz(11),
	datac => count1Hz(13),
	datad => count1Hz(14),
	combout => \LessThan0~2_combout\);

-- Location: FF_X111_Y16_N11
\count1Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[5]~26_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(5));

-- Location: FF_X111_Y16_N13
\count1Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count1Hz[6]~28_combout\,
	sclr => \LessThan0~3_combout\,
	ena => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1Hz(6));

-- Location: LCCOMB_X110_Y16_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count1Hz(7) & (!count1Hz(8) & ((!count1Hz(6)) # (!count1Hz(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(7),
	datab => count1Hz(5),
	datac => count1Hz(6),
	datad => count1Hz(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X110_Y16_N6
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count1Hz(10) & (!count1Hz(12) & ((\LessThan0~0_combout\) # (!count1Hz(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(10),
	datab => count1Hz(9),
	datac => count1Hz(12),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y16_N8
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (count1Hz(15) & (!\LessThan0~2_combout\ & !\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1Hz(15),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X108_Y16_N4
\contadorC[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorC[0]~4_combout\ = !contadorC(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contadorC(0),
	combout => \contadorC[0]~4_combout\);

-- Location: LCCOMB_X109_Y16_N8
\contadorC[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorC[3]~0_combout\ = (\Equal1~0_combout\ & (\current_state~q\ & !\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \current_state~q\,
	datad => \Equal0~0_combout\,
	combout => \contadorC[3]~0_combout\);

-- Location: FF_X108_Y16_N5
\contadorC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorC[0]~4_combout\,
	ena => \contadorC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorC(0));

-- Location: LCCOMB_X109_Y16_N30
\contadorC[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorC[2]~2_combout\ = contadorC(2) $ (((\contadorC[3]~0_combout\ & (contadorC(1) & contadorC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorC[3]~0_combout\,
	datab => contadorC(1),
	datac => contadorC(2),
	datad => contadorC(0),
	combout => \contadorC[2]~2_combout\);

-- Location: FF_X109_Y16_N31
\contadorC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorC[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorC(2));

-- Location: LCCOMB_X108_Y16_N20
\contadorC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorC~3_combout\ = (contadorC(0) & ((contadorC(2) & (contadorC(3) $ (contadorC(1)))) # (!contadorC(2) & (contadorC(3) & contadorC(1))))) # (!contadorC(0) & (((contadorC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorC(0),
	datab => contadorC(2),
	datac => contadorC(3),
	datad => contadorC(1),
	combout => \contadorC~3_combout\);

-- Location: FF_X108_Y16_N21
\contadorC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorC~3_combout\,
	ena => \contadorC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorC(3));

-- Location: LCCOMB_X108_Y16_N6
\contadorC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorC~1_combout\ = (contadorC(0) & (!contadorC(1) & ((contadorC(2)) # (!contadorC(3))))) # (!contadorC(0) & (((contadorC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorC(0),
	datab => contadorC(2),
	datac => contadorC(1),
	datad => contadorC(3),
	combout => \contadorC~1_combout\);

-- Location: FF_X108_Y16_N7
\contadorC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorC~1_combout\,
	ena => \contadorC[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorC(1));

-- Location: LCCOMB_X109_Y16_N2
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!contadorC(2) & (!contadorC(1) & (contadorC(0) & contadorC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorC(2),
	datab => contadorC(1),
	datac => contadorC(0),
	datad => contadorC(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X109_Y16_N4
\contadorUM[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUM[3]~0_combout\ = (\Equal1~0_combout\ & (\Equal2~0_combout\ & (\current_state~q\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \current_state~q\,
	datad => \Equal0~0_combout\,
	combout => \contadorUM[3]~0_combout\);

-- Location: LCCOMB_X106_Y12_N20
\contadorUM[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUM[0]~4_combout\ = !contadorUM(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contadorUM(0),
	combout => \contadorUM[0]~4_combout\);

-- Location: FF_X106_Y12_N21
\contadorUM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorUM[0]~4_combout\,
	ena => \contadorUM[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorUM(0));

-- Location: LCCOMB_X106_Y12_N8
\contadorUM[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUM[2]~2_combout\ = contadorUM(2) $ (((contadorUM(1) & (\contadorUM[3]~0_combout\ & contadorUM(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(1),
	datab => \contadorUM[3]~0_combout\,
	datac => contadorUM(2),
	datad => contadorUM(0),
	combout => \contadorUM[2]~2_combout\);

-- Location: FF_X106_Y12_N9
\contadorUM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorUM[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorUM(2));

-- Location: LCCOMB_X106_Y12_N14
\contadorUM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUM~3_combout\ = (contadorUM(1) & (contadorUM(3) $ (((contadorUM(0) & contadorUM(2)))))) # (!contadorUM(1) & (contadorUM(3) & ((contadorUM(2)) # (!contadorUM(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(1),
	datab => contadorUM(0),
	datac => contadorUM(3),
	datad => contadorUM(2),
	combout => \contadorUM~3_combout\);

-- Location: FF_X106_Y12_N15
\contadorUM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorUM~3_combout\,
	ena => \contadorUM[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorUM(3));

-- Location: LCCOMB_X106_Y12_N26
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!contadorUM(1) & (!contadorUM(2) & (contadorUM(3) & contadorUM(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(1),
	datab => contadorUM(2),
	datac => contadorUM(3),
	datad => contadorUM(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X109_Y16_N28
\next_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~1_combout\ = (((\Equal0~0_combout\) # (!\Equal3~0_combout\)) # (!\Equal2~0_combout\)) # (!\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \next_state~1_combout\);

-- Location: LCCOMB_X109_Y12_N24
\contadorDM[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDM[0]~4_combout\ = !contadorDM(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contadorDM(0),
	combout => \contadorDM[0]~4_combout\);

-- Location: LCCOMB_X109_Y16_N10
\contadorDM[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDM[3]~0_combout\ = (\contadorUM[3]~0_combout\ & \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contadorUM[3]~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \contadorDM[3]~0_combout\);

-- Location: FF_X109_Y12_N25
\contadorDM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorDM[0]~4_combout\,
	ena => \contadorDM[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorDM(0));

-- Location: LCCOMB_X109_Y12_N8
\contadorDM[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDM[2]~2_combout\ = contadorDM(2) $ (((contadorDM(1) & (contadorDM(0) & \contadorDM[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(1),
	datab => contadorDM(0),
	datac => contadorDM(2),
	datad => \contadorDM[3]~0_combout\,
	combout => \contadorDM[2]~2_combout\);

-- Location: FF_X109_Y12_N9
\contadorDM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorDM[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorDM(2));

-- Location: LCCOMB_X109_Y12_N22
\contadorDM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDM~1_combout\ = (contadorDM(0) & (!contadorDM(1) & ((contadorDM(2)) # (!contadorDM(3))))) # (!contadorDM(0) & (((contadorDM(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(3),
	datab => contadorDM(0),
	datac => contadorDM(1),
	datad => contadorDM(2),
	combout => \contadorDM~1_combout\);

-- Location: FF_X109_Y12_N23
\contadorDM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorDM~1_combout\,
	ena => \contadorDM[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorDM(1));

-- Location: LCCOMB_X109_Y12_N10
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (contadorDM(3) & (!contadorDM(2) & (!contadorDM(1) & contadorDM(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(3),
	datab => contadorDM(2),
	datac => contadorDM(1),
	datad => contadorDM(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X105_Y16_N4
\contadorUML[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUML[0]~4_combout\ = !contadorUML(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contadorUML(0),
	combout => \contadorUML[0]~4_combout\);

-- Location: LCCOMB_X105_Y16_N8
\contadorUML[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUML[3]~0_combout\ = (\Equal5~0_combout\ & (\Equal3~0_combout\ & (\contadorUM[3]~0_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \contadorUM[3]~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \contadorUML[3]~0_combout\);

-- Location: FF_X105_Y16_N5
\contadorUML[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorUML[0]~4_combout\,
	ena => \contadorUML[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorUML(0));

-- Location: LCCOMB_X105_Y16_N28
\contadorUML[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUML[2]~2_combout\ = contadorUML(2) $ (((contadorUML(1) & (contadorUML(0) & \contadorUML[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(1),
	datab => contadorUML(0),
	datac => contadorUML(2),
	datad => \contadorUML[3]~0_combout\,
	combout => \contadorUML[2]~2_combout\);

-- Location: FF_X105_Y16_N29
\contadorUML[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorUML[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorUML(2));

-- Location: LCCOMB_X105_Y16_N18
\contadorUML~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUML~1_combout\ = (contadorUML(0) & (!contadorUML(1) & ((contadorUML(2)) # (!contadorUML(3))))) # (!contadorUML(0) & (((contadorUML(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(3),
	datab => contadorUML(0),
	datac => contadorUML(1),
	datad => contadorUML(2),
	combout => \contadorUML~1_combout\);

-- Location: FF_X105_Y16_N19
\contadorUML[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorUML~1_combout\,
	ena => \contadorUML[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorUML(1));

-- Location: LCCOMB_X105_Y16_N2
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (contadorUML(3) & (!contadorUML(1) & (contadorUML(0) & !contadorUML(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(3),
	datab => contadorUML(1),
	datac => contadorUML(0),
	datad => contadorUML(2),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X105_Y16_N26
\contadorDML[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDML[2]~3_combout\ = contadorDML(2) $ (((\Add7~0_combout\ & (\contadorUML[3]~0_combout\ & \Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \contadorUML[3]~0_combout\,
	datac => contadorDML(2),
	datad => \Equal6~0_combout\,
	combout => \contadorDML[2]~3_combout\);

-- Location: FF_X105_Y16_N27
\contadorDML[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorDML[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorDML(2));

-- Location: LCCOMB_X105_Y12_N12
\contadorDML[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDML[0]~5_combout\ = !contadorDML(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contadorDML(0),
	combout => \contadorDML[0]~5_combout\);

-- Location: LCCOMB_X105_Y12_N4
\contadorDML[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDML[3]~0_combout\ = (\Equal3~0_combout\ & \Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \contadorDML[3]~0_combout\);

-- Location: LCCOMB_X105_Y12_N2
\contadorDML[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDML[3]~1_combout\ = (\Equal5~0_combout\ & (\Equal6~0_combout\ & (\contadorDML[3]~0_combout\ & \contadorUM[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \contadorDML[3]~0_combout\,
	datad => \contadorUM[3]~0_combout\,
	combout => \contadorDML[3]~1_combout\);

-- Location: FF_X105_Y12_N13
\contadorDML[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorDML[0]~5_combout\,
	ena => \contadorDML[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorDML(0));

-- Location: LCCOMB_X105_Y12_N8
\contadorDML~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDML~4_combout\ = (contadorDML(1) & (contadorDML(3) $ (((contadorDML(2) & contadorDML(0)))))) # (!contadorDML(1) & (contadorDML(3) & ((contadorDML(2)) # (!contadorDML(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDML(1),
	datab => contadorDML(2),
	datac => contadorDML(3),
	datad => contadorDML(0),
	combout => \contadorDML~4_combout\);

-- Location: FF_X105_Y12_N9
\contadorDML[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorDML~4_combout\,
	ena => \contadorDML[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorDML(3));

-- Location: LCCOMB_X105_Y12_N30
\contadorDML~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDML~2_combout\ = (contadorDML(0) & (!contadorDML(1) & ((contadorDML(2)) # (!contadorDML(3))))) # (!contadorDML(0) & (((contadorDML(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDML(0),
	datab => contadorDML(3),
	datac => contadorDML(1),
	datad => contadorDML(2),
	combout => \contadorDML~2_combout\);

-- Location: FF_X105_Y12_N31
\contadorDML[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorDML~2_combout\,
	ena => \contadorDML[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorDML(1));

-- Location: LCCOMB_X105_Y12_N22
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (contadorDML(0) & (contadorDML(3) & (!contadorDML(1) & !contadorDML(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDML(0),
	datab => contadorDML(3),
	datac => contadorDML(1),
	datad => contadorDML(2),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X109_Y16_N22
\next_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~2_combout\ = (((!\Equal7~0_combout\) # (!\Equal6~0_combout\)) # (!\Equal4~0_combout\)) # (!\Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal7~0_combout\,
	combout => \next_state~2_combout\);

-- Location: LCCOMB_X109_Y16_N18
\next_state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~3_combout\ = ((\next_state~0_combout\ & ((\next_state~1_combout\) # (\next_state~2_combout\)))) # (!\contadorU[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~0_combout\,
	datab => \next_state~1_combout\,
	datac => \next_state~2_combout\,
	datad => \contadorU[3]~1_combout\,
	combout => \next_state~3_combout\);

-- Location: FF_X109_Y16_N19
next_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \next_state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state~q\);

-- Location: LCCOMB_X109_Y16_N14
\current_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~0_combout\ = (\LessThan0~3_combout\ & ((\next_state~q\))) # (!\LessThan0~3_combout\ & (\current_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datac => \current_state~q\,
	datad => \next_state~q\,
	combout => \current_state~0_combout\);

-- Location: FF_X109_Y16_N15
current_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~0_combout\,
	clrn => \clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state~q\);

-- Location: LCCOMB_X110_Y20_N22
\contadorU[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorU[3]~1_combout\ = (\start~input_o\) # (\current_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \current_state~q\,
	combout => \contadorU[3]~1_combout\);

-- Location: FF_X110_Y20_N13
\contadorU[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorU~0_combout\,
	ena => \contadorU[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorU(0));

-- Location: LCCOMB_X110_Y20_N30
\contadorU~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorU~2_combout\ = (\current_state~q\ & (\Equal0~0_combout\ & (contadorU(0) $ (contadorU(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => contadorU(0),
	datac => contadorU(1),
	datad => \Equal0~0_combout\,
	combout => \contadorU~2_combout\);

-- Location: FF_X110_Y20_N31
\contadorU[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorU~2_combout\,
	ena => \contadorU[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorU(1));

-- Location: LCCOMB_X110_Y20_N8
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = contadorU(3) $ (((contadorU(2) & (contadorU(0) & contadorU(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorU(2),
	datab => contadorU(3),
	datac => contadorU(0),
	datad => contadorU(1),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X110_Y20_N26
\contadorU~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorU~4_combout\ = (\current_state~q\ & (\Equal0~0_combout\ & \Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => \Equal0~0_combout\,
	datac => \Add0~1_combout\,
	combout => \contadorU~4_combout\);

-- Location: FF_X110_Y20_N27
\contadorU[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorU~4_combout\,
	ena => \contadorU[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorU(3));

-- Location: LCCOMB_X110_Y20_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (contadorU(1)) # ((contadorU(2)) # ((!contadorU(0)) # (!contadorU(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorU(1),
	datab => contadorU(2),
	datac => contadorU(3),
	datad => contadorU(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X110_Y20_N4
\contadorU~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorU~3_combout\ = (\Add0~0_combout\ & (\Equal0~0_combout\ & \current_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \current_state~q\,
	combout => \contadorU~3_combout\);

-- Location: FF_X110_Y20_N5
\contadorU[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorU~3_combout\,
	ena => \contadorU[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorU(2));

-- Location: LCCOMB_X110_Y20_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!contadorU(3) & (!contadorU(1) & (contadorU(2) $ (contadorU(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorU(2),
	datab => contadorU(3),
	datac => contadorU(0),
	datad => contadorU(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X110_Y20_N14
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (contadorU(2) & (!contadorU(3) & (contadorU(0) $ (contadorU(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorU(2),
	datab => contadorU(3),
	datac => contadorU(0),
	datad => contadorU(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X110_Y20_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!contadorU(2) & (!contadorU(3) & (!contadorU(0) & contadorU(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorU(2),
	datab => contadorU(3),
	datac => contadorU(0),
	datad => contadorU(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X110_Y20_N18
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!contadorU(3) & ((contadorU(2) & (contadorU(0) $ (!contadorU(1)))) # (!contadorU(2) & (contadorU(0) & !contadorU(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorU(2),
	datab => contadorU(3),
	datac => contadorU(0),
	datad => contadorU(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X110_Y20_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (contadorU(0)) # ((contadorU(1) & ((contadorU(3)))) # (!contadorU(1) & (contadorU(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorU(2),
	datab => contadorU(3),
	datac => contadorU(0),
	datad => contadorU(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X110_Y20_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!contadorU(3) & ((contadorU(2) & (contadorU(0) & contadorU(1))) # (!contadorU(2) & ((contadorU(0)) # (contadorU(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorU(2),
	datab => contadorU(3),
	datac => contadorU(0),
	datad => contadorU(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X110_Y20_N0
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (contadorU(3)) # ((contadorU(2) & ((!contadorU(1)) # (!contadorU(0)))) # (!contadorU(2) & ((contadorU(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorU(2),
	datab => contadorU(3),
	datac => contadorU(0),
	datad => contadorU(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X110_Y16_N10
\contadorD[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorD[0]~4_combout\ = !contadorD(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contadorD(0),
	combout => \contadorD[0]~4_combout\);

-- Location: LCCOMB_X109_Y16_N20
\contadorD[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorD[3]~0_combout\ = (!\Equal0~0_combout\ & \current_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datad => \current_state~q\,
	combout => \contadorD[3]~0_combout\);

-- Location: FF_X110_Y16_N11
\contadorD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorD[0]~4_combout\,
	ena => \contadorD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorD(0));

-- Location: LCCOMB_X110_Y16_N26
\contadorD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorD~1_combout\ = (contadorD(0) & (!contadorD(1) & ((contadorD(2)) # (!contadorD(3))))) # (!contadorD(0) & (((contadorD(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorD(3),
	datab => contadorD(0),
	datac => contadorD(1),
	datad => contadorD(2),
	combout => \contadorD~1_combout\);

-- Location: FF_X110_Y16_N27
\contadorD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorD~1_combout\,
	ena => \contadorD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorD(1));

-- Location: LCCOMB_X109_Y16_N12
\contadorD[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorD[2]~2_combout\ = contadorD(2) $ (((\contadorD[3]~0_combout\ & (contadorD(0) & contadorD(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorD[3]~0_combout\,
	datab => contadorD(0),
	datac => contadorD(2),
	datad => contadorD(1),
	combout => \contadorD[2]~2_combout\);

-- Location: FF_X109_Y16_N13
\contadorD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorD[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorD(2));

-- Location: LCCOMB_X110_Y16_N12
\contadorD~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorD~3_combout\ = (contadorD(0) & ((contadorD(1) & (contadorD(3) $ (contadorD(2)))) # (!contadorD(1) & (contadorD(3) & contadorD(2))))) # (!contadorD(0) & (((contadorD(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorD(0),
	datab => contadorD(1),
	datac => contadorD(3),
	datad => contadorD(2),
	combout => \contadorD~3_combout\);

-- Location: FF_X110_Y16_N13
\contadorD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorD~3_combout\,
	ena => \contadorD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorD(3));

-- Location: LCCOMB_X112_Y16_N24
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!contadorD(3) & (!contadorD(1) & (contadorD(2) $ (contadorD(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorD(2),
	datab => contadorD(3),
	datac => contadorD(1),
	datad => contadorD(0),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X112_Y16_N22
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (contadorD(2) & (!contadorD(3) & (contadorD(1) $ (contadorD(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorD(2),
	datab => contadorD(3),
	datac => contadorD(1),
	datad => contadorD(0),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X112_Y16_N0
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!contadorD(2) & (!contadorD(3) & (contadorD(1) & !contadorD(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorD(2),
	datab => contadorD(3),
	datac => contadorD(1),
	datad => contadorD(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X112_Y16_N6
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!contadorD(3) & ((contadorD(2) & (contadorD(1) $ (!contadorD(0)))) # (!contadorD(2) & (!contadorD(1) & contadorD(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorD(2),
	datab => contadorD(3),
	datac => contadorD(1),
	datad => contadorD(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X112_Y16_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (contadorD(0)) # ((contadorD(1) & ((contadorD(3)))) # (!contadorD(1) & (contadorD(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorD(2),
	datab => contadorD(3),
	datac => contadorD(1),
	datad => contadorD(0),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X112_Y16_N10
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!contadorD(3) & ((contadorD(2) & (contadorD(1) & contadorD(0))) # (!contadorD(2) & ((contadorD(1)) # (contadorD(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorD(2),
	datab => contadorD(3),
	datac => contadorD(1),
	datad => contadorD(0),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X112_Y16_N4
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (contadorD(3)) # ((contadorD(2) & ((!contadorD(0)) # (!contadorD(1)))) # (!contadorD(2) & (contadorD(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorD(2),
	datab => contadorD(3),
	datac => contadorD(1),
	datad => contadorD(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X109_Y16_N0
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!contadorC(1) & (!contadorC(3) & (contadorC(0) $ (contadorC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorC(0),
	datab => contadorC(1),
	datac => contadorC(2),
	datad => contadorC(3),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X108_Y16_N18
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!contadorC(3) & (contadorC(2) & (contadorC(0) $ (contadorC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorC(0),
	datab => contadorC(3),
	datac => contadorC(2),
	datad => contadorC(1),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X109_Y16_N26
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!contadorC(0) & (contadorC(1) & (!contadorC(2) & !contadorC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorC(0),
	datab => contadorC(1),
	datac => contadorC(2),
	datad => contadorC(3),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X108_Y16_N8
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!contadorC(3) & ((contadorC(0) & (contadorC(2) $ (!contadorC(1)))) # (!contadorC(0) & (contadorC(2) & !contadorC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorC(0),
	datab => contadorC(3),
	datac => contadorC(2),
	datad => contadorC(1),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X108_Y16_N26
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (contadorC(0)) # ((contadorC(1) & (contadorC(3))) # (!contadorC(1) & ((contadorC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorC(0),
	datab => contadorC(3),
	datac => contadorC(2),
	datad => contadorC(1),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X108_Y16_N12
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!contadorC(3) & ((contadorC(0) & ((contadorC(1)) # (!contadorC(2)))) # (!contadorC(0) & (!contadorC(2) & contadorC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorC(0),
	datab => contadorC(3),
	datac => contadorC(2),
	datad => contadorC(1),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X109_Y16_N16
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (contadorC(3)) # ((contadorC(1) & ((!contadorC(2)) # (!contadorC(0)))) # (!contadorC(1) & ((contadorC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorC(0),
	datab => contadorC(1),
	datac => contadorC(2),
	datad => contadorC(3),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X106_Y12_N10
\contadorUM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUM~1_combout\ = (contadorUM(0) & (!contadorUM(1) & ((contadorUM(2)) # (!contadorUM(3))))) # (!contadorUM(0) & (((contadorUM(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(0),
	datab => contadorUM(3),
	datac => contadorUM(1),
	datad => contadorUM(2),
	combout => \contadorUM~1_combout\);

-- Location: FF_X106_Y12_N11
\contadorUM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorUM~1_combout\,
	ena => \contadorUM[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorUM(1));

-- Location: LCCOMB_X106_Y12_N4
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!contadorUM(1) & (!contadorUM(3) & (contadorUM(2) $ (contadorUM(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(1),
	datab => contadorUM(2),
	datac => contadorUM(3),
	datad => contadorUM(0),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X106_Y12_N22
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (contadorUM(2) & (!contadorUM(3) & (contadorUM(1) $ (contadorUM(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(1),
	datab => contadorUM(2),
	datac => contadorUM(3),
	datad => contadorUM(0),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X106_Y12_N24
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (contadorUM(1) & (!contadorUM(2) & (!contadorUM(3) & !contadorUM(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(1),
	datab => contadorUM(2),
	datac => contadorUM(3),
	datad => contadorUM(0),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X106_Y12_N18
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!contadorUM(3) & ((contadorUM(1) & (contadorUM(2) & contadorUM(0))) # (!contadorUM(1) & (contadorUM(2) $ (contadorUM(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(1),
	datab => contadorUM(2),
	datac => contadorUM(3),
	datad => contadorUM(0),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X106_Y12_N16
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (contadorUM(0)) # ((contadorUM(1) & ((contadorUM(3)))) # (!contadorUM(1) & (contadorUM(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(1),
	datab => contadorUM(2),
	datac => contadorUM(3),
	datad => contadorUM(0),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X106_Y12_N30
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!contadorUM(3) & ((contadorUM(1) & ((contadorUM(0)) # (!contadorUM(2)))) # (!contadorUM(1) & (!contadorUM(2) & contadorUM(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(1),
	datab => contadorUM(2),
	datac => contadorUM(3),
	datad => contadorUM(0),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X106_Y12_N12
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (contadorUM(3)) # ((contadorUM(1) & ((!contadorUM(0)) # (!contadorUM(2)))) # (!contadorUM(1) & (contadorUM(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUM(1),
	datab => contadorUM(2),
	datac => contadorUM(3),
	datad => contadorUM(0),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X109_Y12_N26
\contadorDM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorDM~3_combout\ = (contadorDM(1) & (contadorDM(3) $ (((contadorDM(0) & contadorDM(2)))))) # (!contadorDM(1) & (contadorDM(3) & ((contadorDM(2)) # (!contadorDM(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(1),
	datab => contadorDM(0),
	datac => contadorDM(3),
	datad => contadorDM(2),
	combout => \contadorDM~3_combout\);

-- Location: FF_X109_Y12_N27
\contadorDM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorDM~3_combout\,
	ena => \contadorDM[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorDM(3));

-- Location: LCCOMB_X109_Y12_N4
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (!contadorDM(1) & (!contadorDM(3) & (contadorDM(0) $ (contadorDM(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(1),
	datab => contadorDM(0),
	datac => contadorDM(3),
	datad => contadorDM(2),
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X109_Y12_N30
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (!contadorDM(3) & (contadorDM(2) & (contadorDM(1) $ (contadorDM(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(1),
	datab => contadorDM(0),
	datac => contadorDM(3),
	datad => contadorDM(2),
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X109_Y12_N20
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (contadorDM(1) & (!contadorDM(0) & (!contadorDM(3) & !contadorDM(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(1),
	datab => contadorDM(0),
	datac => contadorDM(3),
	datad => contadorDM(2),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X109_Y12_N2
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!contadorDM(3) & ((contadorDM(1) & (contadorDM(0) & contadorDM(2))) # (!contadorDM(1) & (contadorDM(0) $ (contadorDM(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(1),
	datab => contadorDM(0),
	datac => contadorDM(3),
	datad => contadorDM(2),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X109_Y12_N12
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (contadorDM(0)) # ((contadorDM(1) & (contadorDM(3))) # (!contadorDM(1) & ((contadorDM(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(1),
	datab => contadorDM(0),
	datac => contadorDM(3),
	datad => contadorDM(2),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X109_Y12_N18
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!contadorDM(3) & ((contadorDM(1) & ((contadorDM(0)) # (!contadorDM(2)))) # (!contadorDM(1) & (contadorDM(0) & !contadorDM(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(1),
	datab => contadorDM(0),
	datac => contadorDM(3),
	datad => contadorDM(2),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X109_Y12_N28
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (contadorDM(3)) # ((contadorDM(1) & ((!contadorDM(2)) # (!contadorDM(0)))) # (!contadorDM(1) & ((contadorDM(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDM(1),
	datab => contadorDM(0),
	datac => contadorDM(3),
	datad => contadorDM(2),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X108_Y12_N20
\contadorCM[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorCM[0]~4_combout\ = !contadorCM(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contadorCM(0),
	combout => \contadorCM[0]~4_combout\);

-- Location: LCCOMB_X109_Y16_N24
\contadorCM[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorCM[3]~0_combout\ = (\Equal4~0_combout\ & (\contadorUM[3]~0_combout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datac => \contadorUM[3]~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \contadorCM[3]~0_combout\);

-- Location: FF_X108_Y12_N21
\contadorCM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorCM[0]~4_combout\,
	ena => \contadorCM[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorCM(0));

-- Location: LCCOMB_X108_Y12_N28
\contadorCM[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorCM[2]~2_combout\ = contadorCM(2) $ (((contadorCM(1) & (contadorCM(0) & \contadorCM[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(1),
	datab => contadorCM(0),
	datac => contadorCM(2),
	datad => \contadorCM[3]~0_combout\,
	combout => \contadorCM[2]~2_combout\);

-- Location: FF_X108_Y12_N29
\contadorCM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorCM[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorCM(2));

-- Location: LCCOMB_X108_Y12_N18
\contadorCM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorCM~3_combout\ = (contadorCM(1) & (contadorCM(3) $ (((contadorCM(2) & contadorCM(0)))))) # (!contadorCM(1) & (contadorCM(3) & ((contadorCM(2)) # (!contadorCM(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(1),
	datab => contadorCM(2),
	datac => contadorCM(3),
	datad => contadorCM(0),
	combout => \contadorCM~3_combout\);

-- Location: FF_X108_Y12_N19
\contadorCM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorCM~3_combout\,
	ena => \contadorCM[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorCM(3));

-- Location: LCCOMB_X108_Y12_N26
\contadorCM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorCM~1_combout\ = (contadorCM(0) & (!contadorCM(1) & ((contadorCM(2)) # (!contadorCM(3))))) # (!contadorCM(0) & (((contadorCM(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(0),
	datab => contadorCM(3),
	datac => contadorCM(1),
	datad => contadorCM(2),
	combout => \contadorCM~1_combout\);

-- Location: FF_X108_Y12_N27
\contadorCM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorCM~1_combout\,
	ena => \contadorCM[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorCM(1));

-- Location: LCCOMB_X108_Y12_N4
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (!contadorCM(1) & (!contadorCM(3) & (contadorCM(2) $ (contadorCM(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(2),
	datab => contadorCM(0),
	datac => contadorCM(1),
	datad => contadorCM(3),
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X108_Y12_N30
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (contadorCM(2) & (!contadorCM(3) & (contadorCM(0) $ (contadorCM(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(2),
	datab => contadorCM(0),
	datac => contadorCM(1),
	datad => contadorCM(3),
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X108_Y12_N0
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (!contadorCM(2) & (!contadorCM(0) & (contadorCM(1) & !contadorCM(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(2),
	datab => contadorCM(0),
	datac => contadorCM(1),
	datad => contadorCM(3),
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X108_Y12_N6
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (!contadorCM(3) & ((contadorCM(2) & (contadorCM(0) $ (!contadorCM(1)))) # (!contadorCM(2) & (contadorCM(0) & !contadorCM(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(2),
	datab => contadorCM(0),
	datac => contadorCM(1),
	datad => contadorCM(3),
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X108_Y12_N24
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (contadorCM(0)) # ((contadorCM(1) & ((contadorCM(3)))) # (!contadorCM(1) & (contadorCM(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(2),
	datab => contadorCM(0),
	datac => contadorCM(1),
	datad => contadorCM(3),
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X108_Y12_N10
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (!contadorCM(3) & ((contadorCM(2) & (contadorCM(0) & contadorCM(1))) # (!contadorCM(2) & ((contadorCM(0)) # (contadorCM(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(2),
	datab => contadorCM(0),
	datac => contadorCM(1),
	datad => contadorCM(3),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X108_Y12_N12
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (contadorCM(3)) # ((contadorCM(2) & ((!contadorCM(1)) # (!contadorCM(0)))) # (!contadorCM(2) & ((contadorCM(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorCM(2),
	datab => contadorCM(0),
	datac => contadorCM(1),
	datad => contadorCM(3),
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X105_Y16_N30
\contadorUML~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorUML~3_combout\ = (contadorUML(2) & (contadorUML(3) $ (((contadorUML(0) & contadorUML(1)))))) # (!contadorUML(2) & (contadorUML(3) & ((contadorUML(1)) # (!contadorUML(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(2),
	datab => contadorUML(0),
	datac => contadorUML(3),
	datad => contadorUML(1),
	combout => \contadorUML~3_combout\);

-- Location: FF_X105_Y16_N31
\contadorUML[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1hz~clkctrl_outclk\,
	d => \contadorUML~3_combout\,
	ena => \contadorUML[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorUML(3));

-- Location: LCCOMB_X105_Y16_N24
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (!contadorUML(3) & (!contadorUML(1) & (contadorUML(2) $ (contadorUML(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(3),
	datab => contadorUML(2),
	datac => contadorUML(0),
	datad => contadorUML(1),
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X105_Y16_N6
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (!contadorUML(3) & (contadorUML(2) & (contadorUML(0) $ (contadorUML(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(3),
	datab => contadorUML(2),
	datac => contadorUML(0),
	datad => contadorUML(1),
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X105_Y16_N12
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (!contadorUML(3) & (!contadorUML(2) & (!contadorUML(0) & contadorUML(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(3),
	datab => contadorUML(2),
	datac => contadorUML(0),
	datad => contadorUML(1),
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X105_Y16_N10
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (!contadorUML(3) & ((contadorUML(2) & (contadorUML(0) $ (!contadorUML(1)))) # (!contadorUML(2) & (contadorUML(0) & !contadorUML(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(3),
	datab => contadorUML(2),
	datac => contadorUML(0),
	datad => contadorUML(1),
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X105_Y16_N16
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (contadorUML(0)) # ((contadorUML(1) & (contadorUML(3))) # (!contadorUML(1) & ((contadorUML(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(3),
	datab => contadorUML(2),
	datac => contadorUML(0),
	datad => contadorUML(1),
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X105_Y16_N22
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (!contadorUML(3) & ((contadorUML(2) & (contadorUML(0) & contadorUML(1))) # (!contadorUML(2) & ((contadorUML(0)) # (contadorUML(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(3),
	datab => contadorUML(2),
	datac => contadorUML(0),
	datad => contadorUML(1),
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X105_Y16_N20
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (contadorUML(3)) # ((contadorUML(2) & ((!contadorUML(1)) # (!contadorUML(0)))) # (!contadorUML(2) & ((contadorUML(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorUML(3),
	datab => contadorUML(2),
	datac => contadorUML(0),
	datad => contadorUML(1),
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X105_Y12_N14
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (!contadorDML(1) & (!contadorDML(3) & (contadorDML(2) $ (contadorDML(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDML(1),
	datab => contadorDML(2),
	datac => contadorDML(3),
	datad => contadorDML(0),
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X105_Y12_N0
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (contadorDML(2) & (!contadorDML(3) & (contadorDML(1) $ (contadorDML(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDML(1),
	datab => contadorDML(2),
	datac => contadorDML(3),
	datad => contadorDML(0),
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X105_Y12_N18
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (contadorDML(1) & (!contadorDML(2) & (!contadorDML(3) & !contadorDML(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDML(1),
	datab => contadorDML(2),
	datac => contadorDML(3),
	datad => contadorDML(0),
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X105_Y12_N28
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (!contadorDML(3) & ((contadorDML(1) & (contadorDML(2) & contadorDML(0))) # (!contadorDML(1) & (contadorDML(2) $ (contadorDML(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDML(1),
	datab => contadorDML(2),
	datac => contadorDML(3),
	datad => contadorDML(0),
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X105_Y12_N26
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (contadorDML(0)) # ((contadorDML(1) & ((contadorDML(3)))) # (!contadorDML(1) & (contadorDML(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDML(1),
	datab => contadorDML(2),
	datac => contadorDML(3),
	datad => contadorDML(0),
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X105_Y12_N16
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (!contadorDML(3) & ((contadorDML(1) & ((contadorDML(0)) # (!contadorDML(2)))) # (!contadorDML(1) & (!contadorDML(2) & contadorDML(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDML(1),
	datab => contadorDML(2),
	datac => contadorDML(3),
	datad => contadorDML(0),
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X105_Y12_N10
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (contadorDML(3)) # ((contadorDML(1) & ((!contadorDML(0)) # (!contadorDML(2)))) # (!contadorDML(1) & (contadorDML(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contadorDML(1),
	datab => contadorDML(2),
	datac => contadorDML(3),
	datad => contadorDML(0),
	combout => \Mux49~0_combout\);

ww_DisplayU(0) <= \DisplayU[0]~output_o\;

ww_DisplayU(1) <= \DisplayU[1]~output_o\;

ww_DisplayU(2) <= \DisplayU[2]~output_o\;

ww_DisplayU(3) <= \DisplayU[3]~output_o\;

ww_DisplayU(4) <= \DisplayU[4]~output_o\;

ww_DisplayU(5) <= \DisplayU[5]~output_o\;

ww_DisplayU(6) <= \DisplayU[6]~output_o\;

ww_DisplayD(0) <= \DisplayD[0]~output_o\;

ww_DisplayD(1) <= \DisplayD[1]~output_o\;

ww_DisplayD(2) <= \DisplayD[2]~output_o\;

ww_DisplayD(3) <= \DisplayD[3]~output_o\;

ww_DisplayD(4) <= \DisplayD[4]~output_o\;

ww_DisplayD(5) <= \DisplayD[5]~output_o\;

ww_DisplayD(6) <= \DisplayD[6]~output_o\;

ww_DisplayC(0) <= \DisplayC[0]~output_o\;

ww_DisplayC(1) <= \DisplayC[1]~output_o\;

ww_DisplayC(2) <= \DisplayC[2]~output_o\;

ww_DisplayC(3) <= \DisplayC[3]~output_o\;

ww_DisplayC(4) <= \DisplayC[4]~output_o\;

ww_DisplayC(5) <= \DisplayC[5]~output_o\;

ww_DisplayC(6) <= \DisplayC[6]~output_o\;

ww_DisplayUM(0) <= \DisplayUM[0]~output_o\;

ww_DisplayUM(1) <= \DisplayUM[1]~output_o\;

ww_DisplayUM(2) <= \DisplayUM[2]~output_o\;

ww_DisplayUM(3) <= \DisplayUM[3]~output_o\;

ww_DisplayUM(4) <= \DisplayUM[4]~output_o\;

ww_DisplayUM(5) <= \DisplayUM[5]~output_o\;

ww_DisplayUM(6) <= \DisplayUM[6]~output_o\;

ww_DisplayDM(0) <= \DisplayDM[0]~output_o\;

ww_DisplayDM(1) <= \DisplayDM[1]~output_o\;

ww_DisplayDM(2) <= \DisplayDM[2]~output_o\;

ww_DisplayDM(3) <= \DisplayDM[3]~output_o\;

ww_DisplayDM(4) <= \DisplayDM[4]~output_o\;

ww_DisplayDM(5) <= \DisplayDM[5]~output_o\;

ww_DisplayDM(6) <= \DisplayDM[6]~output_o\;

ww_DisplayCM(0) <= \DisplayCM[0]~output_o\;

ww_DisplayCM(1) <= \DisplayCM[1]~output_o\;

ww_DisplayCM(2) <= \DisplayCM[2]~output_o\;

ww_DisplayCM(3) <= \DisplayCM[3]~output_o\;

ww_DisplayCM(4) <= \DisplayCM[4]~output_o\;

ww_DisplayCM(5) <= \DisplayCM[5]~output_o\;

ww_DisplayCM(6) <= \DisplayCM[6]~output_o\;

ww_DisplayUML(0) <= \DisplayUML[0]~output_o\;

ww_DisplayUML(1) <= \DisplayUML[1]~output_o\;

ww_DisplayUML(2) <= \DisplayUML[2]~output_o\;

ww_DisplayUML(3) <= \DisplayUML[3]~output_o\;

ww_DisplayUML(4) <= \DisplayUML[4]~output_o\;

ww_DisplayUML(5) <= \DisplayUML[5]~output_o\;

ww_DisplayUML(6) <= \DisplayUML[6]~output_o\;

ww_DisplayDML(0) <= \DisplayDML[0]~output_o\;

ww_DisplayDML(1) <= \DisplayDML[1]~output_o\;

ww_DisplayDML(2) <= \DisplayDML[2]~output_o\;

ww_DisplayDML(3) <= \DisplayDML[3]~output_o\;

ww_DisplayDML(4) <= \DisplayDML[4]~output_o\;

ww_DisplayDML(5) <= \DisplayDML[5]~output_o\;

ww_DisplayDML(6) <= \DisplayDML[6]~output_o\;
END structure;


