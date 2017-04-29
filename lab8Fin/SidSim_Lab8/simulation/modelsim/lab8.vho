-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "03/03/2017 12:42:43"

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

ENTITY 	lab8 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_CLK : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_HS : OUT std_logic;
	OTG_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	OTG_ADDR : OUT std_logic_vector(1 DOWNTO 0);
	OTG_CS_N : OUT std_logic;
	OTG_RD_N : OUT std_logic;
	OTG_WR_N : OUT std_logic;
	OTG_RST_N : OUT std_logic;
	OTG_INT : IN std_logic;
	DRAM_ADDR : OUT std_logic_vector(12 DOWNTO 0);
	DRAM_DQ : INOUT std_logic_vector(31 DOWNTO 0);
	DRAM_BA : OUT std_logic_vector(1 DOWNTO 0);
	DRAM_DQM : OUT std_logic_vector(3 DOWNTO 0);
	DRAM_RAS_N : OUT std_logic;
	DRAM_CAS_N : OUT std_logic;
	DRAM_CKE : OUT std_logic;
	DRAM_WE_N : OUT std_logic;
	DRAM_CS_N : OUT std_logic;
	DRAM_CLK : OUT std_logic
	);
END lab8;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_ADDR[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_ADDR[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_CS_N	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_RD_N	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_WR_N	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_RST_N	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[8]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[9]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[10]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[11]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[12]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_RAS_N	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CAS_N	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CKE	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_WE_N	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CS_N	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CLK	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[1]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[2]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[3]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[8]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[9]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[10]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[11]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[12]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[13]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[14]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[15]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[0]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[4]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[5]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[7]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[9]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[10]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[11]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[12]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[13]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[14]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[15]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[16]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[17]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[18]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[19]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[20]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[21]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[22]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[23]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[24]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[25]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[26]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[27]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[28]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[29]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[30]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[31]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_OTG_ADDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_OTG_CS_N : std_logic;
SIGNAL ww_OTG_RD_N : std_logic;
SIGNAL ww_OTG_WR_N : std_logic;
SIGNAL ww_OTG_RST_N : std_logic;
SIGNAL ww_OTG_INT : std_logic;
SIGNAL ww_DRAM_ADDR : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_DRAM_BA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DRAM_DQM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DRAM_RAS_N : std_logic;
SIGNAL ww_DRAM_CAS_N : std_logic;
SIGNAL ww_DRAM_CKE : std_logic;
SIGNAL ww_DRAM_WE_N : std_logic;
SIGNAL ww_DRAM_CS_N : std_logic;
SIGNAL ww_DRAM_CLK : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \color_instance|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \vga_controller_instance|VGA_VS~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_controller_instance|VGA_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \OTG_INT~input_o\ : std_logic;
SIGNAL \OTG_DATA[0]~input_o\ : std_logic;
SIGNAL \OTG_DATA[1]~input_o\ : std_logic;
SIGNAL \OTG_DATA[2]~input_o\ : std_logic;
SIGNAL \OTG_DATA[3]~input_o\ : std_logic;
SIGNAL \OTG_DATA[4]~input_o\ : std_logic;
SIGNAL \OTG_DATA[5]~input_o\ : std_logic;
SIGNAL \OTG_DATA[6]~input_o\ : std_logic;
SIGNAL \OTG_DATA[7]~input_o\ : std_logic;
SIGNAL \OTG_DATA[8]~input_o\ : std_logic;
SIGNAL \OTG_DATA[9]~input_o\ : std_logic;
SIGNAL \OTG_DATA[10]~input_o\ : std_logic;
SIGNAL \OTG_DATA[11]~input_o\ : std_logic;
SIGNAL \OTG_DATA[12]~input_o\ : std_logic;
SIGNAL \OTG_DATA[13]~input_o\ : std_logic;
SIGNAL \OTG_DATA[14]~input_o\ : std_logic;
SIGNAL \OTG_DATA[15]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[16]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[17]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[18]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[19]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[20]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[21]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[22]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[23]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[24]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[25]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[26]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[27]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[28]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[29]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[30]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[31]~input_o\ : std_logic;
SIGNAL \OTG_DATA[0]~output_o\ : std_logic;
SIGNAL \OTG_DATA[1]~output_o\ : std_logic;
SIGNAL \OTG_DATA[2]~output_o\ : std_logic;
SIGNAL \OTG_DATA[3]~output_o\ : std_logic;
SIGNAL \OTG_DATA[4]~output_o\ : std_logic;
SIGNAL \OTG_DATA[5]~output_o\ : std_logic;
SIGNAL \OTG_DATA[6]~output_o\ : std_logic;
SIGNAL \OTG_DATA[7]~output_o\ : std_logic;
SIGNAL \OTG_DATA[8]~output_o\ : std_logic;
SIGNAL \OTG_DATA[9]~output_o\ : std_logic;
SIGNAL \OTG_DATA[10]~output_o\ : std_logic;
SIGNAL \OTG_DATA[11]~output_o\ : std_logic;
SIGNAL \OTG_DATA[12]~output_o\ : std_logic;
SIGNAL \OTG_DATA[13]~output_o\ : std_logic;
SIGNAL \OTG_DATA[14]~output_o\ : std_logic;
SIGNAL \OTG_DATA[15]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[3]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[15]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[16]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[17]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[18]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[19]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[20]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[21]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[22]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[23]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[24]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[25]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[26]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[27]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[28]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[29]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[30]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[31]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \VGA_CLK~output_o\ : std_logic;
SIGNAL \VGA_SYNC_N~output_o\ : std_logic;
SIGNAL \VGA_BLANK_N~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \OTG_ADDR[0]~output_o\ : std_logic;
SIGNAL \OTG_ADDR[1]~output_o\ : std_logic;
SIGNAL \OTG_CS_N~output_o\ : std_logic;
SIGNAL \OTG_RD_N~output_o\ : std_logic;
SIGNAL \OTG_WR_N~output_o\ : std_logic;
SIGNAL \OTG_RST_N~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[0]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[1]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[2]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[3]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[4]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[5]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[6]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[7]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[8]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[9]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[10]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[11]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[12]~output_o\ : std_logic;
SIGNAL \DRAM_BA[0]~output_o\ : std_logic;
SIGNAL \DRAM_BA[1]~output_o\ : std_logic;
SIGNAL \DRAM_DQM[0]~output_o\ : std_logic;
SIGNAL \DRAM_DQM[1]~output_o\ : std_logic;
SIGNAL \DRAM_DQM[2]~output_o\ : std_logic;
SIGNAL \DRAM_DQM[3]~output_o\ : std_logic;
SIGNAL \DRAM_RAS_N~output_o\ : std_logic;
SIGNAL \DRAM_CAS_N~output_o\ : std_logic;
SIGNAL \DRAM_CKE~output_o\ : std_logic;
SIGNAL \DRAM_WE_N~output_o\ : std_logic;
SIGNAL \DRAM_CS_N~output_o\ : std_logic;
SIGNAL \DRAM_CLK~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \vga_controller_instance|VGA_CLK~0_combout\ : std_logic;
SIGNAL \vga_controller_instance|VGA_CLK~feeder_combout\ : std_logic;
SIGNAL \vga_controller_instance|VGA_CLK~q\ : std_logic;
SIGNAL \vga_controller_instance|VGA_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \vga_controller_instance|Add0~0_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add0~1\ : std_logic;
SIGNAL \vga_controller_instance|Add0~2_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add0~3\ : std_logic;
SIGNAL \vga_controller_instance|Add0~4_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add0~5\ : std_logic;
SIGNAL \vga_controller_instance|Add0~6_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add0~7\ : std_logic;
SIGNAL \vga_controller_instance|Add0~8_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add0~9\ : std_logic;
SIGNAL \vga_controller_instance|Add0~10_combout\ : std_logic;
SIGNAL \vga_controller_instance|h_counter_in[5]~0_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add0~11\ : std_logic;
SIGNAL \vga_controller_instance|Add0~12_combout\ : std_logic;
SIGNAL \vga_controller_instance|Equal0~0_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add0~13\ : std_logic;
SIGNAL \vga_controller_instance|Add0~14_combout\ : std_logic;
SIGNAL \vga_controller_instance|Equal0~1_combout\ : std_logic;
SIGNAL \vga_controller_instance|h_counter_in[9]~2_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add0~15\ : std_logic;
SIGNAL \vga_controller_instance|Add0~17\ : std_logic;
SIGNAL \vga_controller_instance|Add0~18_combout\ : std_logic;
SIGNAL \vga_controller_instance|h_counter_in[8]~1_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add0~16_combout\ : std_logic;
SIGNAL \vga_controller_instance|Equal0~2_combout\ : std_logic;
SIGNAL \vga_controller_instance|v_counter_in[9]~6_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add1~5\ : std_logic;
SIGNAL \vga_controller_instance|Add1~6_combout\ : std_logic;
SIGNAL \vga_controller_instance|v_counter_in[3]~0_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add1~7\ : std_logic;
SIGNAL \vga_controller_instance|Add1~8_combout\ : std_logic;
SIGNAL \vga_controller_instance|v_counter_in[4]~1_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add1~9\ : std_logic;
SIGNAL \vga_controller_instance|Add1~10_combout\ : std_logic;
SIGNAL \vga_controller_instance|v_counter_in[5]~2_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add1~11\ : std_logic;
SIGNAL \vga_controller_instance|Add1~12_combout\ : std_logic;
SIGNAL \vga_controller_instance|v_counter_in[6]~3_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add1~13\ : std_logic;
SIGNAL \vga_controller_instance|Add1~14_combout\ : std_logic;
SIGNAL \vga_controller_instance|v_counter_in[7]~4_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add1~15\ : std_logic;
SIGNAL \vga_controller_instance|Add1~16_combout\ : std_logic;
SIGNAL \vga_controller_instance|v_counter_in[8]~5_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add1~17\ : std_logic;
SIGNAL \vga_controller_instance|Add1~18_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add1~0_combout\ : std_logic;
SIGNAL \vga_controller_instance|Equal1~0_combout\ : std_logic;
SIGNAL \vga_controller_instance|Equal1~1_combout\ : std_logic;
SIGNAL \vga_controller_instance|Equal1~2_combout\ : std_logic;
SIGNAL \vga_controller_instance|v_counter[0]~0_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add1~1\ : std_logic;
SIGNAL \vga_controller_instance|Add1~2_combout\ : std_logic;
SIGNAL \vga_controller_instance|v_counter_in[1]~8_combout\ : std_logic;
SIGNAL \vga_controller_instance|Add1~3\ : std_logic;
SIGNAL \vga_controller_instance|Add1~4_combout\ : std_logic;
SIGNAL \vga_controller_instance|v_counter_in[2]~7_combout\ : std_logic;
SIGNAL \vga_controller_instance|always2~2_combout\ : std_logic;
SIGNAL \vga_controller_instance|always2~3_combout\ : std_logic;
SIGNAL \vga_controller_instance|always2~4_combout\ : std_logic;
SIGNAL \vga_controller_instance|VGA_VS~q\ : std_logic;
SIGNAL \vga_controller_instance|VGA_VS~clkctrl_outclk\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Motion[0]~feeder_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[0]~11\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[1]~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[1]~13\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[2]~14_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[2]~15\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[3]~16_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[3]~17\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[4]~18_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[4]~19\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[5]~20_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[5]~21\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[6]~22_combout\ : std_logic;
SIGNAL \ball_instance|Add0~1\ : std_logic;
SIGNAL \ball_instance|Add0~3\ : std_logic;
SIGNAL \ball_instance|Add0~5\ : std_logic;
SIGNAL \ball_instance|Add0~6_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[6]~23\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[7]~24_combout\ : std_logic;
SIGNAL \ball_instance|Add0~7\ : std_logic;
SIGNAL \ball_instance|Add0~8_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[7]~25\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[8]~26_combout\ : std_logic;
SIGNAL \ball_instance|Add0~9\ : std_logic;
SIGNAL \ball_instance|Add0~10_combout\ : std_logic;
SIGNAL \ball_instance|LessThan0~2_combout\ : std_logic;
SIGNAL \ball_instance|Add0~0_combout\ : std_logic;
SIGNAL \ball_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \ball_instance|Add0~2_combout\ : std_logic;
SIGNAL \ball_instance|Add0~4_combout\ : std_logic;
SIGNAL \ball_instance|LessThan0~1_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Motion~4_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[8]~27\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[9]~28_combout\ : std_logic;
SIGNAL \ball_instance|Add0~11\ : std_logic;
SIGNAL \ball_instance|Add0~12_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Motion[1]~0_combout\ : std_logic;
SIGNAL \ball_instance|LessThan1~0_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Motion[1]~1_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Motion[1]~2_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Motion[1]~3_combout\ : std_logic;
SIGNAL \ball_instance|Ball_Y_Pos[0]~10_combout\ : std_logic;
SIGNAL \color_instance|DistY[0]~0_combout\ : std_logic;
SIGNAL \color_instance|DistY[0]~1\ : std_logic;
SIGNAL \color_instance|DistY[1]~2_combout\ : std_logic;
SIGNAL \color_instance|DistY[1]~3\ : std_logic;
SIGNAL \color_instance|DistY[2]~4_combout\ : std_logic;
SIGNAL \color_instance|DistY[2]~5\ : std_logic;
SIGNAL \color_instance|DistY[3]~6_combout\ : std_logic;
SIGNAL \color_instance|DistY[3]~7\ : std_logic;
SIGNAL \color_instance|DistY[4]~8_combout\ : std_logic;
SIGNAL \color_instance|DistY[4]~9\ : std_logic;
SIGNAL \color_instance|DistY[5]~10_combout\ : std_logic;
SIGNAL \color_instance|DistY[5]~11\ : std_logic;
SIGNAL \color_instance|DistY[6]~12_combout\ : std_logic;
SIGNAL \color_instance|DistY[6]~13\ : std_logic;
SIGNAL \color_instance|DistY[7]~14_combout\ : std_logic;
SIGNAL \color_instance|DistY[7]~15\ : std_logic;
SIGNAL \color_instance|DistY[8]~16_combout\ : std_logic;
SIGNAL \color_instance|DistY[8]~17\ : std_logic;
SIGNAL \color_instance|DistY[9]~18_combout\ : std_logic;
SIGNAL \color_instance|DistY[9]~19\ : std_logic;
SIGNAL \color_instance|Add1~0_combout\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \color_instance|Add0~0_combout\ : std_logic;
SIGNAL \color_instance|Add0~1_combout\ : std_logic;
SIGNAL \color_instance|Add0~2_combout\ : std_logic;
SIGNAL \color_instance|Add0~3_combout\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \color_instance|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \color_instance|Add2~1\ : std_logic;
SIGNAL \color_instance|Add2~3\ : std_logic;
SIGNAL \color_instance|Add2~5\ : std_logic;
SIGNAL \color_instance|Add2~7\ : std_logic;
SIGNAL \color_instance|Add2~9\ : std_logic;
SIGNAL \color_instance|Add2~11\ : std_logic;
SIGNAL \color_instance|Add2~13\ : std_logic;
SIGNAL \color_instance|Add2~15\ : std_logic;
SIGNAL \color_instance|Add2~17\ : std_logic;
SIGNAL \color_instance|Add2~19\ : std_logic;
SIGNAL \color_instance|Add2~21\ : std_logic;
SIGNAL \color_instance|Add2~23\ : std_logic;
SIGNAL \color_instance|Add2~25\ : std_logic;
SIGNAL \color_instance|Add2~27\ : std_logic;
SIGNAL \color_instance|Add2~29\ : std_logic;
SIGNAL \color_instance|Add2~31\ : std_logic;
SIGNAL \color_instance|Add2~33\ : std_logic;
SIGNAL \color_instance|Add2~35\ : std_logic;
SIGNAL \color_instance|Add2~37\ : std_logic;
SIGNAL \color_instance|Add2~39\ : std_logic;
SIGNAL \color_instance|Add2~41\ : std_logic;
SIGNAL \color_instance|Add2~43\ : std_logic;
SIGNAL \color_instance|Add2~44_combout\ : std_logic;
SIGNAL \color_instance|Add2~42_combout\ : std_logic;
SIGNAL \color_instance|Add2~38_combout\ : std_logic;
SIGNAL \color_instance|Add2~36_combout\ : std_logic;
SIGNAL \color_instance|Add2~34_combout\ : std_logic;
SIGNAL \color_instance|LessThan0~5_combout\ : std_logic;
SIGNAL \color_instance|Add2~40_combout\ : std_logic;
SIGNAL \color_instance|LessThan0~6_combout\ : std_logic;
SIGNAL \color_instance|Add2~24_combout\ : std_logic;
SIGNAL \color_instance|Add2~22_combout\ : std_logic;
SIGNAL \color_instance|Add2~20_combout\ : std_logic;
SIGNAL \color_instance|Add2~18_combout\ : std_logic;
SIGNAL \color_instance|LessThan0~1_combout\ : std_logic;
SIGNAL \color_instance|Add2~0_combout\ : std_logic;
SIGNAL \color_instance|Add2~6_combout\ : std_logic;
SIGNAL \color_instance|Add2~4_combout\ : std_logic;
SIGNAL \color_instance|Add2~2_combout\ : std_logic;
SIGNAL \color_instance|LessThan0~2_combout\ : std_logic;
SIGNAL \color_instance|Add2~12_combout\ : std_logic;
SIGNAL \color_instance|Add2~10_combout\ : std_logic;
SIGNAL \color_instance|Add2~16_combout\ : std_logic;
SIGNAL \color_instance|Add2~14_combout\ : std_logic;
SIGNAL \color_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \color_instance|Add2~8_combout\ : std_logic;
SIGNAL \color_instance|LessThan0~3_combout\ : std_logic;
SIGNAL \color_instance|Add2~32_combout\ : std_logic;
SIGNAL \color_instance|Add2~26_combout\ : std_logic;
SIGNAL \color_instance|Add2~30_combout\ : std_logic;
SIGNAL \color_instance|Add2~28_combout\ : std_logic;
SIGNAL \color_instance|LessThan0~4_combout\ : std_logic;
SIGNAL \color_instance|LessThan0~7_combout\ : std_logic;
SIGNAL \color_instance|VGA_G[0]~0_combout\ : std_logic;
SIGNAL \color_instance|VGA_G[1]~1_combout\ : std_logic;
SIGNAL \color_instance|VGA_G[2]~2_combout\ : std_logic;
SIGNAL \color_instance|VGA_G[3]~3_combout\ : std_logic;
SIGNAL \color_instance|VGA_G[4]~4_combout\ : std_logic;
SIGNAL \color_instance|VGA_G[5]~5_combout\ : std_logic;
SIGNAL \color_instance|VGA_G[6]~6_combout\ : std_logic;
SIGNAL \color_instance|VGA_B[0]~0_combout\ : std_logic;
SIGNAL \color_instance|VGA_B[1]~1_combout\ : std_logic;
SIGNAL \color_instance|VGA_B[2]~2_combout\ : std_logic;
SIGNAL \color_instance|VGA_B[3]~3_combout\ : std_logic;
SIGNAL \color_instance|VGA_B[4]~4_combout\ : std_logic;
SIGNAL \color_instance|VGA_B[5]~5_combout\ : std_logic;
SIGNAL \color_instance|VGA_B[6]~6_combout\ : std_logic;
SIGNAL \vga_controller_instance|always2~0_combout\ : std_logic;
SIGNAL \vga_controller_instance|LessThan5~0_combout\ : std_logic;
SIGNAL \vga_controller_instance|always2~1_combout\ : std_logic;
SIGNAL \vga_controller_instance|VGA_BLANK_N~q\ : std_logic;
SIGNAL \vga_controller_instance|always2~5_combout\ : std_logic;
SIGNAL \vga_controller_instance|always2~6_combout\ : std_logic;
SIGNAL \vga_controller_instance|VGA_HS~q\ : std_logic;
SIGNAL \vga_controller_instance|h_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ball_instance|Ball_Y_Pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_controller_instance|v_counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ball_instance|Ball_Y_Motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \vga_controller_instance|ALT_INV_h_counter\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \color_instance|ALT_INV_LessThan0~7_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_CLK <= ww_VGA_CLK;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_VS <= ww_VGA_VS;
VGA_HS <= ww_VGA_HS;
OTG_ADDR <= ww_OTG_ADDR;
OTG_CS_N <= ww_OTG_CS_N;
OTG_RD_N <= ww_OTG_RD_N;
OTG_WR_N <= ww_OTG_WR_N;
OTG_RST_N <= ww_OTG_RST_N;
ww_OTG_INT <= OTG_INT;
DRAM_ADDR <= ww_DRAM_ADDR;
DRAM_BA <= ww_DRAM_BA;
DRAM_DQM <= ww_DRAM_DQM;
DRAM_RAS_N <= ww_DRAM_RAS_N;
DRAM_CAS_N <= ww_DRAM_CAS_N;
DRAM_CKE <= ww_DRAM_CKE;
DRAM_WE_N <= ww_DRAM_WE_N;
DRAM_CS_N <= ww_DRAM_CS_N;
DRAM_CLK <= ww_DRAM_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\color_instance|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT21\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT19\ & 
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT15\ & 
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT11\ & 
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT8\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT3\ & 
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \color_instance|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \color_instance|Mult1|auto_generated|mac_mult1~dataout\ & \color_instance|Mult1|auto_generated|mac_mult1~13\ & 
\color_instance|Mult1|auto_generated|mac_mult1~12\ & \color_instance|Mult1|auto_generated|mac_mult1~11\ & \color_instance|Mult1|auto_generated|mac_mult1~10\ & \color_instance|Mult1|auto_generated|mac_mult1~9\ & 
\color_instance|Mult1|auto_generated|mac_mult1~8\ & \color_instance|Mult1|auto_generated|mac_mult1~7\ & \color_instance|Mult1|auto_generated|mac_mult1~6\ & \color_instance|Mult1|auto_generated|mac_mult1~5\ & 
\color_instance|Mult1|auto_generated|mac_mult1~4\ & \color_instance|Mult1|auto_generated|mac_mult1~3\ & \color_instance|Mult1|auto_generated|mac_mult1~2\ & \color_instance|Mult1|auto_generated|mac_mult1~1\ & 
\color_instance|Mult1|auto_generated|mac_mult1~0\);

\color_instance|Mult1|auto_generated|mac_out2~0\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\color_instance|Mult1|auto_generated|mac_out2~1\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\color_instance|Mult1|auto_generated|mac_out2~2\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\color_instance|Mult1|auto_generated|mac_out2~3\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\color_instance|Mult1|auto_generated|mac_out2~4\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\color_instance|Mult1|auto_generated|mac_out2~5\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\color_instance|Mult1|auto_generated|mac_out2~6\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\color_instance|Mult1|auto_generated|mac_out2~7\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\color_instance|Mult1|auto_generated|mac_out2~8\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\color_instance|Mult1|auto_generated|mac_out2~9\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\color_instance|Mult1|auto_generated|mac_out2~10\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\color_instance|Mult1|auto_generated|mac_out2~11\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\color_instance|Mult1|auto_generated|mac_out2~12\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\color_instance|Mult1|auto_generated|mac_out2~13\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\color_instance|Mult1|auto_generated|mac_out2~dataout\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\color_instance|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT11\ & 
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \color_instance|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \color_instance|Mult0|auto_generated|mac_mult1~dataout\ & \color_instance|Mult0|auto_generated|mac_mult1~13\ & 
\color_instance|Mult0|auto_generated|mac_mult1~12\ & \color_instance|Mult0|auto_generated|mac_mult1~11\ & \color_instance|Mult0|auto_generated|mac_mult1~10\ & \color_instance|Mult0|auto_generated|mac_mult1~9\ & 
\color_instance|Mult0|auto_generated|mac_mult1~8\ & \color_instance|Mult0|auto_generated|mac_mult1~7\ & \color_instance|Mult0|auto_generated|mac_mult1~6\ & \color_instance|Mult0|auto_generated|mac_mult1~5\ & 
\color_instance|Mult0|auto_generated|mac_mult1~4\ & \color_instance|Mult0|auto_generated|mac_mult1~3\ & \color_instance|Mult0|auto_generated|mac_mult1~2\ & \color_instance|Mult0|auto_generated|mac_mult1~1\ & 
\color_instance|Mult0|auto_generated|mac_mult1~0\);

\color_instance|Mult0|auto_generated|mac_out2~0\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\color_instance|Mult0|auto_generated|mac_out2~1\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\color_instance|Mult0|auto_generated|mac_out2~2\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\color_instance|Mult0|auto_generated|mac_out2~3\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\color_instance|Mult0|auto_generated|mac_out2~4\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\color_instance|Mult0|auto_generated|mac_out2~5\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\color_instance|Mult0|auto_generated|mac_out2~6\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\color_instance|Mult0|auto_generated|mac_out2~7\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\color_instance|Mult0|auto_generated|mac_out2~8\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\color_instance|Mult0|auto_generated|mac_out2~9\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\color_instance|Mult0|auto_generated|mac_out2~10\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\color_instance|Mult0|auto_generated|mac_out2~11\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\color_instance|Mult0|auto_generated|mac_out2~12\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\color_instance|Mult0|auto_generated|mac_out2~13\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\color_instance|Mult0|auto_generated|mac_out2~dataout\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\color_instance|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\color_instance|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\color_instance|Add1~0_combout\ & \color_instance|DistY[9]~18_combout\ & \color_instance|DistY[8]~16_combout\ & \color_instance|DistY[7]~14_combout\ & \color_instance|DistY[6]~12_combout\ & 
\color_instance|DistY[5]~10_combout\ & \color_instance|DistY[4]~8_combout\ & \color_instance|DistY[3]~6_combout\ & \color_instance|DistY[2]~4_combout\ & \color_instance|DistY[1]~2_combout\ & \color_instance|DistY[0]~0_combout\ & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd);

\color_instance|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\color_instance|Add1~0_combout\ & \color_instance|DistY[9]~18_combout\ & \color_instance|DistY[8]~16_combout\ & \color_instance|DistY[7]~14_combout\ & \color_instance|DistY[6]~12_combout\ & 
\color_instance|DistY[5]~10_combout\ & \color_instance|DistY[4]~8_combout\ & \color_instance|DistY[3]~6_combout\ & \color_instance|DistY[2]~4_combout\ & \color_instance|DistY[1]~2_combout\ & \color_instance|DistY[0]~0_combout\ & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd);

\color_instance|Mult1|auto_generated|mac_mult1~0\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\color_instance|Mult1|auto_generated|mac_mult1~1\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\color_instance|Mult1|auto_generated|mac_mult1~2\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\color_instance|Mult1|auto_generated|mac_mult1~3\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\color_instance|Mult1|auto_generated|mac_mult1~4\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\color_instance|Mult1|auto_generated|mac_mult1~5\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\color_instance|Mult1|auto_generated|mac_mult1~6\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\color_instance|Mult1|auto_generated|mac_mult1~7\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\color_instance|Mult1|auto_generated|mac_mult1~8\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\color_instance|Mult1|auto_generated|mac_mult1~9\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\color_instance|Mult1|auto_generated|mac_mult1~10\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\color_instance|Mult1|auto_generated|mac_mult1~11\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\color_instance|Mult1|auto_generated|mac_mult1~12\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\color_instance|Mult1|auto_generated|mac_mult1~13\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\color_instance|Mult1|auto_generated|mac_mult1~dataout\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\color_instance|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\color_instance|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\color_instance|Add0~3_combout\ & \color_instance|Add0~2_combout\ & \color_instance|Add0~1_combout\ & \color_instance|Add0~0_combout\ & NOT \vga_controller_instance|h_counter\(6) & 
\vga_controller_instance|h_counter\(5) & \vga_controller_instance|h_counter\(4) & \vga_controller_instance|h_counter\(3) & \vga_controller_instance|h_counter\(2) & \vga_controller_instance|h_counter\(1) & \vga_controller_instance|h_counter\(0)
& gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\color_instance|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\color_instance|Add0~3_combout\ & \color_instance|Add0~2_combout\ & \color_instance|Add0~1_combout\ & \color_instance|Add0~0_combout\ & NOT \vga_controller_instance|h_counter\(6) & 
\vga_controller_instance|h_counter\(5) & \vga_controller_instance|h_counter\(4) & \vga_controller_instance|h_counter\(3) & \vga_controller_instance|h_counter\(2) & \vga_controller_instance|h_counter\(1) & \vga_controller_instance|h_counter\(0)
& gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\color_instance|Mult0|auto_generated|mac_mult1~0\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\color_instance|Mult0|auto_generated|mac_mult1~1\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\color_instance|Mult0|auto_generated|mac_mult1~2\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\color_instance|Mult0|auto_generated|mac_mult1~3\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\color_instance|Mult0|auto_generated|mac_mult1~4\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\color_instance|Mult0|auto_generated|mac_mult1~5\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\color_instance|Mult0|auto_generated|mac_mult1~6\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\color_instance|Mult0|auto_generated|mac_mult1~7\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\color_instance|Mult0|auto_generated|mac_mult1~8\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\color_instance|Mult0|auto_generated|mac_mult1~9\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\color_instance|Mult0|auto_generated|mac_mult1~10\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\color_instance|Mult0|auto_generated|mac_mult1~11\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\color_instance|Mult0|auto_generated|mac_mult1~12\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\color_instance|Mult0|auto_generated|mac_mult1~13\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\color_instance|Mult0|auto_generated|mac_mult1~dataout\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\color_instance|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\vga_controller_instance|VGA_VS~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vga_controller_instance|VGA_VS~q\);

\vga_controller_instance|VGA_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vga_controller_instance|VGA_CLK~q\);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\vga_controller_instance|ALT_INV_h_counter\(6) <= NOT \vga_controller_instance|h_counter\(6);
\color_instance|ALT_INV_LessThan0~7_combout\ <= NOT \color_instance|LessThan0~7_combout\;

-- Location: IOOBUF_X0_Y50_N16
\OTG_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\OTG_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\OTG_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\OTG_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\OTG_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\OTG_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\OTG_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\OTG_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\OTG_DATA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[8]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\OTG_DATA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[9]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\OTG_DATA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[10]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\OTG_DATA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[11]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\OTG_DATA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[12]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\OTG_DATA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[13]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\OTG_DATA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[14]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\OTG_DATA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[15]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\DRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\DRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\DRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\DRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[3]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\DRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\DRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\DRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\DRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\DRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[8]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\DRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\DRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[10]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\DRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[11]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\DRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\DRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[13]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\DRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[14]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\DRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[15]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\DRAM_DQ[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[16]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\DRAM_DQ[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[17]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\DRAM_DQ[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[18]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\DRAM_DQ[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[19]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\DRAM_DQ[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[20]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\DRAM_DQ[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[21]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\DRAM_DQ[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[22]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\DRAM_DQ[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[23]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\DRAM_DQ[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[24]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\DRAM_DQ[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[25]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\DRAM_DQ[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[26]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\DRAM_DQ[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[27]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\DRAM_DQ[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[28]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\DRAM_DQ[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[29]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\DRAM_DQ[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[30]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\DRAM_DQ[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[31]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|ALT_INV_LessThan0~7_combout\,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_G[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_G[1]~1_combout\,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_G[2]~2_combout\,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_G[3]~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_G[4]~4_combout\,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_G[5]~5_combout\,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_G[6]~6_combout\,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|ALT_INV_LessThan0~7_combout\,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_B[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_B[1]~1_combout\,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_B[2]~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_B[3]~3_combout\,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_B[4]~4_combout\,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_B[5]~5_combout\,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|VGA_B[6]~6_combout\,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \color_instance|ALT_INV_LessThan0~7_combout\,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_controller_instance|VGA_CLK~q\,
	devoe => ww_devoe,
	o => \VGA_CLK~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\VGA_SYNC_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_SYNC_N~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_controller_instance|VGA_BLANK_N~q\,
	devoe => ww_devoe,
	o => \VGA_BLANK_N~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_controller_instance|VGA_VS~q\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_controller_instance|VGA_HS~q\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\OTG_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_ADDR[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\OTG_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_ADDR[1]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\OTG_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_CS_N~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\OTG_RD_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_RD_N~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\OTG_WR_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_WR_N~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\OTG_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_RST_N~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\DRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\DRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\DRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[2]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\DRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\DRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\DRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\DRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[6]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\DRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[7]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\DRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[8]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\DRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[9]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\DRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\DRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[11]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\DRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[12]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\DRAM_BA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_BA[0]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\DRAM_BA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_BA[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\DRAM_DQM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_DQM[0]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\DRAM_DQM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_DQM[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\DRAM_DQM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_DQM[2]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\DRAM_DQM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_DQM[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\DRAM_RAS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_RAS_N~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\DRAM_CAS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CAS_N~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\DRAM_CKE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CKE~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\DRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_WE_N~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\DRAM_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CS_N~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\DRAM_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CLK~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X23_Y59_N18
\vga_controller_instance|VGA_CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|VGA_CLK~0_combout\ = (!\vga_controller_instance|VGA_CLK~q\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_controller_instance|VGA_CLK~q\,
	datad => \KEY[0]~input_o\,
	combout => \vga_controller_instance|VGA_CLK~0_combout\);

-- Location: LCCOMB_X23_Y59_N8
\vga_controller_instance|VGA_CLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|VGA_CLK~feeder_combout\ = \vga_controller_instance|VGA_CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_controller_instance|VGA_CLK~0_combout\,
	combout => \vga_controller_instance|VGA_CLK~feeder_combout\);

-- Location: FF_X23_Y59_N9
\vga_controller_instance|VGA_CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \vga_controller_instance|VGA_CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|VGA_CLK~q\);

-- Location: CLKCTRL_G10
\vga_controller_instance|VGA_CLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga_controller_instance|VGA_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\);

-- Location: FF_X21_Y62_N7
\vga_controller_instance|v_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|v_counter_in[2]~7_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|v_counter\(2));

-- Location: FF_X18_Y62_N5
\vga_controller_instance|h_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	asdata => \vga_controller_instance|Add0~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|h_counter\(0));

-- Location: LCCOMB_X18_Y62_N6
\vga_controller_instance|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add0~0_combout\ = \vga_controller_instance|h_counter\(0) $ (VCC)
-- \vga_controller_instance|Add0~1\ = CARRY(\vga_controller_instance|h_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|h_counter\(0),
	datad => VCC,
	combout => \vga_controller_instance|Add0~0_combout\,
	cout => \vga_controller_instance|Add0~1\);

-- Location: FF_X18_Y62_N15
\vga_controller_instance|h_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|Add0~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|h_counter\(4));

-- Location: LCCOMB_X18_Y62_N8
\vga_controller_instance|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add0~2_combout\ = (\vga_controller_instance|h_counter\(1) & (!\vga_controller_instance|Add0~1\)) # (!\vga_controller_instance|h_counter\(1) & ((\vga_controller_instance|Add0~1\) # (GND)))
-- \vga_controller_instance|Add0~3\ = CARRY((!\vga_controller_instance|Add0~1\) # (!\vga_controller_instance|h_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|h_counter\(1),
	datad => VCC,
	cin => \vga_controller_instance|Add0~1\,
	combout => \vga_controller_instance|Add0~2_combout\,
	cout => \vga_controller_instance|Add0~3\);

-- Location: FF_X18_Y62_N31
\vga_controller_instance|h_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	asdata => \vga_controller_instance|Add0~2_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|h_counter\(1));

-- Location: LCCOMB_X18_Y62_N10
\vga_controller_instance|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add0~4_combout\ = (\vga_controller_instance|h_counter\(2) & (\vga_controller_instance|Add0~3\ $ (GND))) # (!\vga_controller_instance|h_counter\(2) & (!\vga_controller_instance|Add0~3\ & VCC))
-- \vga_controller_instance|Add0~5\ = CARRY((\vga_controller_instance|h_counter\(2) & !\vga_controller_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|h_counter\(2),
	datad => VCC,
	cin => \vga_controller_instance|Add0~3\,
	combout => \vga_controller_instance|Add0~4_combout\,
	cout => \vga_controller_instance|Add0~5\);

-- Location: FF_X18_Y62_N29
\vga_controller_instance|h_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	asdata => \vga_controller_instance|Add0~4_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|h_counter\(2));

-- Location: LCCOMB_X18_Y62_N12
\vga_controller_instance|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add0~6_combout\ = (\vga_controller_instance|h_counter\(3) & (!\vga_controller_instance|Add0~5\)) # (!\vga_controller_instance|h_counter\(3) & ((\vga_controller_instance|Add0~5\) # (GND)))
-- \vga_controller_instance|Add0~7\ = CARRY((!\vga_controller_instance|Add0~5\) # (!\vga_controller_instance|h_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|h_counter\(3),
	datad => VCC,
	cin => \vga_controller_instance|Add0~5\,
	combout => \vga_controller_instance|Add0~6_combout\,
	cout => \vga_controller_instance|Add0~7\);

-- Location: FF_X18_Y62_N13
\vga_controller_instance|h_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|Add0~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|h_counter\(3));

-- Location: LCCOMB_X18_Y62_N14
\vga_controller_instance|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add0~8_combout\ = (\vga_controller_instance|h_counter\(4) & (\vga_controller_instance|Add0~7\ $ (GND))) # (!\vga_controller_instance|h_counter\(4) & (!\vga_controller_instance|Add0~7\ & VCC))
-- \vga_controller_instance|Add0~9\ = CARRY((\vga_controller_instance|h_counter\(4) & !\vga_controller_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|h_counter\(4),
	datad => VCC,
	cin => \vga_controller_instance|Add0~7\,
	combout => \vga_controller_instance|Add0~8_combout\,
	cout => \vga_controller_instance|Add0~9\);

-- Location: FF_X18_Y62_N19
\vga_controller_instance|h_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|Add0~12_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|h_counter\(6));

-- Location: LCCOMB_X18_Y62_N16
\vga_controller_instance|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add0~10_combout\ = (\vga_controller_instance|h_counter\(5) & (!\vga_controller_instance|Add0~9\)) # (!\vga_controller_instance|h_counter\(5) & ((\vga_controller_instance|Add0~9\) # (GND)))
-- \vga_controller_instance|Add0~11\ = CARRY((!\vga_controller_instance|Add0~9\) # (!\vga_controller_instance|h_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|h_counter\(5),
	datad => VCC,
	cin => \vga_controller_instance|Add0~9\,
	combout => \vga_controller_instance|Add0~10_combout\,
	cout => \vga_controller_instance|Add0~11\);

-- Location: LCCOMB_X18_Y62_N2
\vga_controller_instance|h_counter_in[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|h_counter_in[5]~0_combout\ = (\vga_controller_instance|Add0~10_combout\ & !\vga_controller_instance|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_controller_instance|Add0~10_combout\,
	datad => \vga_controller_instance|Equal0~2_combout\,
	combout => \vga_controller_instance|h_counter_in[5]~0_combout\);

-- Location: FF_X18_Y62_N3
\vga_controller_instance|h_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|h_counter_in[5]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|h_counter\(5));

-- Location: LCCOMB_X18_Y62_N18
\vga_controller_instance|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add0~12_combout\ = (\vga_controller_instance|h_counter\(6) & (\vga_controller_instance|Add0~11\ $ (GND))) # (!\vga_controller_instance|h_counter\(6) & (!\vga_controller_instance|Add0~11\ & VCC))
-- \vga_controller_instance|Add0~13\ = CARRY((\vga_controller_instance|h_counter\(6) & !\vga_controller_instance|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|h_counter\(6),
	datad => VCC,
	cin => \vga_controller_instance|Add0~11\,
	combout => \vga_controller_instance|Add0~12_combout\,
	cout => \vga_controller_instance|Add0~13\);

-- Location: LCCOMB_X18_Y62_N30
\vga_controller_instance|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Equal0~0_combout\ = (!\vga_controller_instance|Add0~0_combout\ & (!\vga_controller_instance|Add0~8_combout\ & (!\vga_controller_instance|Add0~2_combout\ & !\vga_controller_instance|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add0~0_combout\,
	datab => \vga_controller_instance|Add0~8_combout\,
	datac => \vga_controller_instance|Add0~2_combout\,
	datad => \vga_controller_instance|Add0~12_combout\,
	combout => \vga_controller_instance|Equal0~0_combout\);

-- Location: FF_X18_Y62_N21
\vga_controller_instance|h_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|Add0~14_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|h_counter\(7));

-- Location: LCCOMB_X18_Y62_N20
\vga_controller_instance|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add0~14_combout\ = (\vga_controller_instance|h_counter\(7) & (!\vga_controller_instance|Add0~13\)) # (!\vga_controller_instance|h_counter\(7) & ((\vga_controller_instance|Add0~13\) # (GND)))
-- \vga_controller_instance|Add0~15\ = CARRY((!\vga_controller_instance|Add0~13\) # (!\vga_controller_instance|h_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|h_counter\(7),
	datad => VCC,
	cin => \vga_controller_instance|Add0~13\,
	combout => \vga_controller_instance|Add0~14_combout\,
	cout => \vga_controller_instance|Add0~15\);

-- Location: LCCOMB_X18_Y62_N28
\vga_controller_instance|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Equal0~1_combout\ = (!\vga_controller_instance|Add0~6_combout\ & (\vga_controller_instance|Add0~10_combout\ & (!\vga_controller_instance|Add0~4_combout\ & !\vga_controller_instance|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add0~6_combout\,
	datab => \vga_controller_instance|Add0~10_combout\,
	datac => \vga_controller_instance|Add0~4_combout\,
	datad => \vga_controller_instance|Add0~14_combout\,
	combout => \vga_controller_instance|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y62_N0
\vga_controller_instance|h_counter_in[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|h_counter_in[9]~2_combout\ = (\vga_controller_instance|Add0~18_combout\ & (((!\vga_controller_instance|Equal0~1_combout\) # (!\vga_controller_instance|Equal0~0_combout\)) # (!\vga_controller_instance|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add0~18_combout\,
	datab => \vga_controller_instance|Add0~16_combout\,
	datac => \vga_controller_instance|Equal0~0_combout\,
	datad => \vga_controller_instance|Equal0~1_combout\,
	combout => \vga_controller_instance|h_counter_in[9]~2_combout\);

-- Location: FF_X18_Y62_N1
\vga_controller_instance|h_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|h_counter_in[9]~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|h_counter\(9));

-- Location: LCCOMB_X18_Y62_N22
\vga_controller_instance|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add0~16_combout\ = (\vga_controller_instance|h_counter\(8) & (\vga_controller_instance|Add0~15\ $ (GND))) # (!\vga_controller_instance|h_counter\(8) & (!\vga_controller_instance|Add0~15\ & VCC))
-- \vga_controller_instance|Add0~17\ = CARRY((\vga_controller_instance|h_counter\(8) & !\vga_controller_instance|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|h_counter\(8),
	datad => VCC,
	cin => \vga_controller_instance|Add0~15\,
	combout => \vga_controller_instance|Add0~16_combout\,
	cout => \vga_controller_instance|Add0~17\);

-- Location: LCCOMB_X18_Y62_N24
\vga_controller_instance|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add0~18_combout\ = \vga_controller_instance|Add0~17\ $ (\vga_controller_instance|h_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_controller_instance|h_counter\(9),
	cin => \vga_controller_instance|Add0~17\,
	combout => \vga_controller_instance|Add0~18_combout\);

-- Location: LCCOMB_X19_Y62_N0
\vga_controller_instance|h_counter_in[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|h_counter_in[8]~1_combout\ = (\vga_controller_instance|Add0~16_combout\ & (((!\vga_controller_instance|Equal0~1_combout\) # (!\vga_controller_instance|Add0~18_combout\)) # (!\vga_controller_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add0~16_combout\,
	datab => \vga_controller_instance|Equal0~0_combout\,
	datac => \vga_controller_instance|Add0~18_combout\,
	datad => \vga_controller_instance|Equal0~1_combout\,
	combout => \vga_controller_instance|h_counter_in[8]~1_combout\);

-- Location: FF_X19_Y62_N1
\vga_controller_instance|h_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|h_counter_in[8]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|h_counter\(8));

-- Location: LCCOMB_X18_Y62_N26
\vga_controller_instance|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Equal0~2_combout\ = (\vga_controller_instance|Add0~16_combout\ & (\vga_controller_instance|Add0~18_combout\ & (\vga_controller_instance|Equal0~0_combout\ & \vga_controller_instance|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add0~16_combout\,
	datab => \vga_controller_instance|Add0~18_combout\,
	datac => \vga_controller_instance|Equal0~0_combout\,
	datad => \vga_controller_instance|Equal0~1_combout\,
	combout => \vga_controller_instance|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y62_N4
\vga_controller_instance|v_counter_in[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|v_counter_in[9]~6_combout\ = (\vga_controller_instance|Equal0~2_combout\ & (((\vga_controller_instance|Add1~18_combout\ & !\vga_controller_instance|Equal1~2_combout\)))) # (!\vga_controller_instance|Equal0~2_combout\ & 
-- (\vga_controller_instance|v_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(9),
	datab => \vga_controller_instance|Add1~18_combout\,
	datac => \vga_controller_instance|Equal0~2_combout\,
	datad => \vga_controller_instance|Equal1~2_combout\,
	combout => \vga_controller_instance|v_counter_in[9]~6_combout\);

-- Location: FF_X20_Y62_N23
\vga_controller_instance|v_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	asdata => \vga_controller_instance|v_counter_in[9]~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|v_counter\(9));

-- Location: LCCOMB_X21_Y62_N12
\vga_controller_instance|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add1~4_combout\ = (\vga_controller_instance|v_counter\(2) & (\vga_controller_instance|Add1~3\ $ (GND))) # (!\vga_controller_instance|v_counter\(2) & (!\vga_controller_instance|Add1~3\ & VCC))
-- \vga_controller_instance|Add1~5\ = CARRY((\vga_controller_instance|v_counter\(2) & !\vga_controller_instance|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(2),
	datad => VCC,
	cin => \vga_controller_instance|Add1~3\,
	combout => \vga_controller_instance|Add1~4_combout\,
	cout => \vga_controller_instance|Add1~5\);

-- Location: LCCOMB_X21_Y62_N14
\vga_controller_instance|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add1~6_combout\ = (\vga_controller_instance|v_counter\(3) & (!\vga_controller_instance|Add1~5\)) # (!\vga_controller_instance|v_counter\(3) & ((\vga_controller_instance|Add1~5\) # (GND)))
-- \vga_controller_instance|Add1~7\ = CARRY((!\vga_controller_instance|Add1~5\) # (!\vga_controller_instance|v_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|v_counter\(3),
	datad => VCC,
	cin => \vga_controller_instance|Add1~5\,
	combout => \vga_controller_instance|Add1~6_combout\,
	cout => \vga_controller_instance|Add1~7\);

-- Location: LCCOMB_X21_Y62_N4
\vga_controller_instance|v_counter_in[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|v_counter_in[3]~0_combout\ = (\vga_controller_instance|Equal0~2_combout\ & (\vga_controller_instance|Add1~6_combout\ & (!\vga_controller_instance|Equal1~2_combout\))) # (!\vga_controller_instance|Equal0~2_combout\ & 
-- (((\vga_controller_instance|v_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add1~6_combout\,
	datab => \vga_controller_instance|Equal1~2_combout\,
	datac => \vga_controller_instance|v_counter\(3),
	datad => \vga_controller_instance|Equal0~2_combout\,
	combout => \vga_controller_instance|v_counter_in[3]~0_combout\);

-- Location: FF_X21_Y62_N5
\vga_controller_instance|v_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|v_counter_in[3]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|v_counter\(3));

-- Location: LCCOMB_X21_Y62_N16
\vga_controller_instance|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add1~8_combout\ = (\vga_controller_instance|v_counter\(4) & (\vga_controller_instance|Add1~7\ $ (GND))) # (!\vga_controller_instance|v_counter\(4) & (!\vga_controller_instance|Add1~7\ & VCC))
-- \vga_controller_instance|Add1~9\ = CARRY((\vga_controller_instance|v_counter\(4) & !\vga_controller_instance|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(4),
	datad => VCC,
	cin => \vga_controller_instance|Add1~7\,
	combout => \vga_controller_instance|Add1~8_combout\,
	cout => \vga_controller_instance|Add1~9\);

-- Location: LCCOMB_X20_Y62_N20
\vga_controller_instance|v_counter_in[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|v_counter_in[4]~1_combout\ = (\vga_controller_instance|Equal0~2_combout\ & ((\vga_controller_instance|Add1~8_combout\))) # (!\vga_controller_instance|Equal0~2_combout\ & (\vga_controller_instance|v_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(4),
	datab => \vga_controller_instance|Add1~8_combout\,
	datac => \vga_controller_instance|Equal0~2_combout\,
	combout => \vga_controller_instance|v_counter_in[4]~1_combout\);

-- Location: FF_X20_Y62_N27
\vga_controller_instance|v_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	asdata => \vga_controller_instance|v_counter_in[4]~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|v_counter\(4));

-- Location: LCCOMB_X21_Y62_N18
\vga_controller_instance|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add1~10_combout\ = (\vga_controller_instance|v_counter\(5) & (!\vga_controller_instance|Add1~9\)) # (!\vga_controller_instance|v_counter\(5) & ((\vga_controller_instance|Add1~9\) # (GND)))
-- \vga_controller_instance|Add1~11\ = CARRY((!\vga_controller_instance|Add1~9\) # (!\vga_controller_instance|v_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|v_counter\(5),
	datad => VCC,
	cin => \vga_controller_instance|Add1~9\,
	combout => \vga_controller_instance|Add1~10_combout\,
	cout => \vga_controller_instance|Add1~11\);

-- Location: LCCOMB_X18_Y62_N4
\vga_controller_instance|v_counter_in[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|v_counter_in[5]~2_combout\ = (\vga_controller_instance|Equal0~2_combout\ & (\vga_controller_instance|Add1~10_combout\)) # (!\vga_controller_instance|Equal0~2_combout\ & ((\vga_controller_instance|v_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add1~10_combout\,
	datab => \vga_controller_instance|v_counter\(5),
	datad => \vga_controller_instance|Equal0~2_combout\,
	combout => \vga_controller_instance|v_counter_in[5]~2_combout\);

-- Location: FF_X18_Y62_N7
\vga_controller_instance|v_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	asdata => \vga_controller_instance|v_counter_in[5]~2_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|v_counter\(5));

-- Location: LCCOMB_X21_Y62_N20
\vga_controller_instance|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add1~12_combout\ = (\vga_controller_instance|v_counter\(6) & (\vga_controller_instance|Add1~11\ $ (GND))) # (!\vga_controller_instance|v_counter\(6) & (!\vga_controller_instance|Add1~11\ & VCC))
-- \vga_controller_instance|Add1~13\ = CARRY((\vga_controller_instance|v_counter\(6) & !\vga_controller_instance|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(6),
	datad => VCC,
	cin => \vga_controller_instance|Add1~11\,
	combout => \vga_controller_instance|Add1~12_combout\,
	cout => \vga_controller_instance|Add1~13\);

-- Location: LCCOMB_X19_Y62_N6
\vga_controller_instance|v_counter_in[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|v_counter_in[6]~3_combout\ = (\vga_controller_instance|Equal0~2_combout\ & ((\vga_controller_instance|Add1~12_combout\))) # (!\vga_controller_instance|Equal0~2_combout\ & (\vga_controller_instance|v_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|v_counter\(6),
	datac => \vga_controller_instance|Equal0~2_combout\,
	datad => \vga_controller_instance|Add1~12_combout\,
	combout => \vga_controller_instance|v_counter_in[6]~3_combout\);

-- Location: FF_X19_Y62_N25
\vga_controller_instance|v_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	asdata => \vga_controller_instance|v_counter_in[6]~3_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|v_counter\(6));

-- Location: LCCOMB_X21_Y62_N22
\vga_controller_instance|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add1~14_combout\ = (\vga_controller_instance|v_counter\(7) & (!\vga_controller_instance|Add1~13\)) # (!\vga_controller_instance|v_counter\(7) & ((\vga_controller_instance|Add1~13\) # (GND)))
-- \vga_controller_instance|Add1~15\ = CARRY((!\vga_controller_instance|Add1~13\) # (!\vga_controller_instance|v_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(7),
	datad => VCC,
	cin => \vga_controller_instance|Add1~13\,
	combout => \vga_controller_instance|Add1~14_combout\,
	cout => \vga_controller_instance|Add1~15\);

-- Location: LCCOMB_X19_Y62_N8
\vga_controller_instance|v_counter_in[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|v_counter_in[7]~4_combout\ = (\vga_controller_instance|Equal0~2_combout\ & ((\vga_controller_instance|Add1~14_combout\))) # (!\vga_controller_instance|Equal0~2_combout\ & (\vga_controller_instance|v_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|v_counter\(7),
	datac => \vga_controller_instance|Equal0~2_combout\,
	datad => \vga_controller_instance|Add1~14_combout\,
	combout => \vga_controller_instance|v_counter_in[7]~4_combout\);

-- Location: FF_X19_Y62_N19
\vga_controller_instance|v_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	asdata => \vga_controller_instance|v_counter_in[7]~4_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|v_counter\(7));

-- Location: LCCOMB_X21_Y62_N24
\vga_controller_instance|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add1~16_combout\ = (\vga_controller_instance|v_counter\(8) & (\vga_controller_instance|Add1~15\ $ (GND))) # (!\vga_controller_instance|v_counter\(8) & (!\vga_controller_instance|Add1~15\ & VCC))
-- \vga_controller_instance|Add1~17\ = CARRY((\vga_controller_instance|v_counter\(8) & !\vga_controller_instance|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|v_counter\(8),
	datad => VCC,
	cin => \vga_controller_instance|Add1~15\,
	combout => \vga_controller_instance|Add1~16_combout\,
	cout => \vga_controller_instance|Add1~17\);

-- Location: LCCOMB_X19_Y62_N30
\vga_controller_instance|v_counter_in[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|v_counter_in[8]~5_combout\ = (\vga_controller_instance|Equal0~2_combout\ & ((\vga_controller_instance|Add1~16_combout\))) # (!\vga_controller_instance|Equal0~2_combout\ & (\vga_controller_instance|v_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(8),
	datac => \vga_controller_instance|Equal0~2_combout\,
	datad => \vga_controller_instance|Add1~16_combout\,
	combout => \vga_controller_instance|v_counter_in[8]~5_combout\);

-- Location: FF_X19_Y62_N29
\vga_controller_instance|v_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	asdata => \vga_controller_instance|v_counter_in[8]~5_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|v_counter\(8));

-- Location: LCCOMB_X21_Y62_N26
\vga_controller_instance|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add1~18_combout\ = \vga_controller_instance|Add1~17\ $ (\vga_controller_instance|v_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_controller_instance|v_counter\(9),
	cin => \vga_controller_instance|Add1~17\,
	combout => \vga_controller_instance|Add1~18_combout\);

-- Location: LCCOMB_X21_Y62_N8
\vga_controller_instance|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add1~0_combout\ = \vga_controller_instance|v_counter\(0) $ (VCC)
-- \vga_controller_instance|Add1~1\ = CARRY(\vga_controller_instance|v_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|v_counter\(0),
	datad => VCC,
	combout => \vga_controller_instance|Add1~0_combout\,
	cout => \vga_controller_instance|Add1~1\);

-- Location: LCCOMB_X21_Y62_N30
\vga_controller_instance|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Equal1~0_combout\ = (!\vga_controller_instance|Add1~2_combout\ & (\vga_controller_instance|Add1~0_combout\ & (\vga_controller_instance|Add1~6_combout\ & \vga_controller_instance|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add1~2_combout\,
	datab => \vga_controller_instance|Add1~0_combout\,
	datac => \vga_controller_instance|Add1~6_combout\,
	datad => \vga_controller_instance|Add1~4_combout\,
	combout => \vga_controller_instance|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y62_N28
\vga_controller_instance|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Equal1~1_combout\ = (!\vga_controller_instance|Add1~14_combout\ & (!\vga_controller_instance|Add1~8_combout\ & (!\vga_controller_instance|Add1~10_combout\ & !\vga_controller_instance|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add1~14_combout\,
	datab => \vga_controller_instance|Add1~8_combout\,
	datac => \vga_controller_instance|Add1~10_combout\,
	datad => \vga_controller_instance|Add1~12_combout\,
	combout => \vga_controller_instance|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y62_N2
\vga_controller_instance|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Equal1~2_combout\ = (\vga_controller_instance|Add1~18_combout\ & (!\vga_controller_instance|Add1~16_combout\ & (\vga_controller_instance|Equal1~0_combout\ & \vga_controller_instance|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add1~18_combout\,
	datab => \vga_controller_instance|Add1~16_combout\,
	datac => \vga_controller_instance|Equal1~0_combout\,
	datad => \vga_controller_instance|Equal1~1_combout\,
	combout => \vga_controller_instance|Equal1~2_combout\);

-- Location: LCCOMB_X21_Y62_N0
\vga_controller_instance|v_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|v_counter[0]~0_combout\ = (\vga_controller_instance|Equal0~2_combout\ & (!\vga_controller_instance|Equal1~2_combout\ & (\vga_controller_instance|Add1~0_combout\))) # (!\vga_controller_instance|Equal0~2_combout\ & 
-- (((\vga_controller_instance|v_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Equal1~2_combout\,
	datab => \vga_controller_instance|Add1~0_combout\,
	datac => \vga_controller_instance|v_counter\(0),
	datad => \vga_controller_instance|Equal0~2_combout\,
	combout => \vga_controller_instance|v_counter[0]~0_combout\);

-- Location: FF_X21_Y62_N1
\vga_controller_instance|v_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|v_counter[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|v_counter\(0));

-- Location: LCCOMB_X21_Y62_N10
\vga_controller_instance|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|Add1~2_combout\ = (\vga_controller_instance|v_counter\(1) & (!\vga_controller_instance|Add1~1\)) # (!\vga_controller_instance|v_counter\(1) & ((\vga_controller_instance|Add1~1\) # (GND)))
-- \vga_controller_instance|Add1~3\ = CARRY((!\vga_controller_instance|Add1~1\) # (!\vga_controller_instance|v_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(1),
	datad => VCC,
	cin => \vga_controller_instance|Add1~1\,
	combout => \vga_controller_instance|Add1~2_combout\,
	cout => \vga_controller_instance|Add1~3\);

-- Location: LCCOMB_X20_Y62_N30
\vga_controller_instance|v_counter_in[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|v_counter_in[1]~8_combout\ = (\vga_controller_instance|Equal0~2_combout\ & (\vga_controller_instance|Add1~2_combout\)) # (!\vga_controller_instance|Equal0~2_combout\ & ((\vga_controller_instance|v_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|Add1~2_combout\,
	datac => \vga_controller_instance|Equal0~2_combout\,
	datad => \vga_controller_instance|v_counter\(1),
	combout => \vga_controller_instance|v_counter_in[1]~8_combout\);

-- Location: FF_X20_Y62_N17
\vga_controller_instance|v_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	asdata => \vga_controller_instance|v_counter_in[1]~8_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|v_counter\(1));

-- Location: LCCOMB_X21_Y62_N6
\vga_controller_instance|v_counter_in[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|v_counter_in[2]~7_combout\ = (\vga_controller_instance|Equal0~2_combout\ & (\vga_controller_instance|Add1~4_combout\ & (!\vga_controller_instance|Equal1~2_combout\))) # (!\vga_controller_instance|Equal0~2_combout\ & 
-- (((\vga_controller_instance|v_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add1~4_combout\,
	datab => \vga_controller_instance|Equal1~2_combout\,
	datac => \vga_controller_instance|v_counter\(2),
	datad => \vga_controller_instance|Equal0~2_combout\,
	combout => \vga_controller_instance|v_counter_in[2]~7_combout\);

-- Location: LCCOMB_X20_Y62_N14
\vga_controller_instance|always2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|always2~2_combout\ = (((!\vga_controller_instance|v_counter_in[8]~5_combout\) # (!\vga_controller_instance|v_counter_in[1]~8_combout\)) # (!\vga_controller_instance|v_counter_in[5]~2_combout\)) # 
-- (!\vga_controller_instance|v_counter_in[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter_in[7]~4_combout\,
	datab => \vga_controller_instance|v_counter_in[5]~2_combout\,
	datac => \vga_controller_instance|v_counter_in[1]~8_combout\,
	datad => \vga_controller_instance|v_counter_in[8]~5_combout\,
	combout => \vga_controller_instance|always2~2_combout\);

-- Location: LCCOMB_X20_Y62_N0
\vga_controller_instance|always2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|always2~3_combout\ = (\vga_controller_instance|v_counter_in[4]~1_combout\) # ((!\vga_controller_instance|v_counter_in[3]~0_combout\) # (!\vga_controller_instance|v_counter_in[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|v_counter_in[4]~1_combout\,
	datac => \vga_controller_instance|v_counter_in[6]~3_combout\,
	datad => \vga_controller_instance|v_counter_in[3]~0_combout\,
	combout => \vga_controller_instance|always2~3_combout\);

-- Location: LCCOMB_X20_Y62_N18
\vga_controller_instance|always2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|always2~4_combout\ = (\vga_controller_instance|v_counter_in[2]~7_combout\) # ((\vga_controller_instance|v_counter_in[9]~6_combout\) # ((\vga_controller_instance|always2~2_combout\) # (\vga_controller_instance|always2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter_in[2]~7_combout\,
	datab => \vga_controller_instance|v_counter_in[9]~6_combout\,
	datac => \vga_controller_instance|always2~2_combout\,
	datad => \vga_controller_instance|always2~3_combout\,
	combout => \vga_controller_instance|always2~4_combout\);

-- Location: FF_X20_Y62_N19
\vga_controller_instance|VGA_VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|always2~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|VGA_VS~q\);

-- Location: CLKCTRL_G12
\vga_controller_instance|VGA_VS~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga_controller_instance|VGA_VS~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga_controller_instance|VGA_VS~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y61_N8
\ball_instance|Ball_Y_Motion[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Motion[0]~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \ball_instance|Ball_Y_Motion[0]~feeder_combout\);

-- Location: LCCOMB_X25_Y61_N12
\ball_instance|Ball_Y_Pos[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Pos[0]~10_combout\ = (\ball_instance|Ball_Y_Pos\(0) & (\ball_instance|Ball_Y_Motion\(0) $ (VCC))) # (!\ball_instance|Ball_Y_Pos\(0) & (\ball_instance|Ball_Y_Motion\(0) & VCC))
-- \ball_instance|Ball_Y_Pos[0]~11\ = CARRY((\ball_instance|Ball_Y_Pos\(0) & \ball_instance|Ball_Y_Motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(0),
	datab => \ball_instance|Ball_Y_Motion\(0),
	datad => VCC,
	combout => \ball_instance|Ball_Y_Pos[0]~10_combout\,
	cout => \ball_instance|Ball_Y_Pos[0]~11\);

-- Location: LCCOMB_X25_Y61_N14
\ball_instance|Ball_Y_Pos[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Pos[1]~12_combout\ = (\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos\(1) & (\ball_instance|Ball_Y_Pos[0]~11\ & VCC)) # (!\ball_instance|Ball_Y_Pos\(1) & (!\ball_instance|Ball_Y_Pos[0]~11\)))) # 
-- (!\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos\(1) & (!\ball_instance|Ball_Y_Pos[0]~11\)) # (!\ball_instance|Ball_Y_Pos\(1) & ((\ball_instance|Ball_Y_Pos[0]~11\) # (GND)))))
-- \ball_instance|Ball_Y_Pos[1]~13\ = CARRY((\ball_instance|Ball_Y_Motion\(1) & (!\ball_instance|Ball_Y_Pos\(1) & !\ball_instance|Ball_Y_Pos[0]~11\)) # (!\ball_instance|Ball_Y_Motion\(1) & ((!\ball_instance|Ball_Y_Pos[0]~11\) # 
-- (!\ball_instance|Ball_Y_Pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Motion\(1),
	datab => \ball_instance|Ball_Y_Pos\(1),
	datad => VCC,
	cin => \ball_instance|Ball_Y_Pos[0]~11\,
	combout => \ball_instance|Ball_Y_Pos[1]~12_combout\,
	cout => \ball_instance|Ball_Y_Pos[1]~13\);

-- Location: LCCOMB_X25_Y61_N6
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X25_Y61_N15
\ball_instance|Ball_Y_Pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Pos[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Pos\(1));

-- Location: LCCOMB_X25_Y61_N16
\ball_instance|Ball_Y_Pos[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Pos[2]~14_combout\ = ((\ball_instance|Ball_Y_Motion\(1) $ (\ball_instance|Ball_Y_Pos\(2) $ (!\ball_instance|Ball_Y_Pos[1]~13\)))) # (GND)
-- \ball_instance|Ball_Y_Pos[2]~15\ = CARRY((\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos\(2)) # (!\ball_instance|Ball_Y_Pos[1]~13\))) # (!\ball_instance|Ball_Y_Motion\(1) & (\ball_instance|Ball_Y_Pos\(2) & 
-- !\ball_instance|Ball_Y_Pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Motion\(1),
	datab => \ball_instance|Ball_Y_Pos\(2),
	datad => VCC,
	cin => \ball_instance|Ball_Y_Pos[1]~13\,
	combout => \ball_instance|Ball_Y_Pos[2]~14_combout\,
	cout => \ball_instance|Ball_Y_Pos[2]~15\);

-- Location: FF_X25_Y61_N17
\ball_instance|Ball_Y_Pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Pos[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Pos\(2));

-- Location: LCCOMB_X25_Y61_N18
\ball_instance|Ball_Y_Pos[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Pos[3]~16_combout\ = (\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos\(3) & (\ball_instance|Ball_Y_Pos[2]~15\ & VCC)) # (!\ball_instance|Ball_Y_Pos\(3) & (!\ball_instance|Ball_Y_Pos[2]~15\)))) # 
-- (!\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos\(3) & (!\ball_instance|Ball_Y_Pos[2]~15\)) # (!\ball_instance|Ball_Y_Pos\(3) & ((\ball_instance|Ball_Y_Pos[2]~15\) # (GND)))))
-- \ball_instance|Ball_Y_Pos[3]~17\ = CARRY((\ball_instance|Ball_Y_Motion\(1) & (!\ball_instance|Ball_Y_Pos\(3) & !\ball_instance|Ball_Y_Pos[2]~15\)) # (!\ball_instance|Ball_Y_Motion\(1) & ((!\ball_instance|Ball_Y_Pos[2]~15\) # 
-- (!\ball_instance|Ball_Y_Pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Motion\(1),
	datab => \ball_instance|Ball_Y_Pos\(3),
	datad => VCC,
	cin => \ball_instance|Ball_Y_Pos[2]~15\,
	combout => \ball_instance|Ball_Y_Pos[3]~16_combout\,
	cout => \ball_instance|Ball_Y_Pos[3]~17\);

-- Location: FF_X25_Y61_N19
\ball_instance|Ball_Y_Pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Pos[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Pos\(3));

-- Location: LCCOMB_X25_Y61_N20
\ball_instance|Ball_Y_Pos[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Pos[4]~18_combout\ = ((\ball_instance|Ball_Y_Motion\(1) $ (\ball_instance|Ball_Y_Pos\(4) $ (!\ball_instance|Ball_Y_Pos[3]~17\)))) # (GND)
-- \ball_instance|Ball_Y_Pos[4]~19\ = CARRY((\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos\(4)) # (!\ball_instance|Ball_Y_Pos[3]~17\))) # (!\ball_instance|Ball_Y_Motion\(1) & (\ball_instance|Ball_Y_Pos\(4) & 
-- !\ball_instance|Ball_Y_Pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Motion\(1),
	datab => \ball_instance|Ball_Y_Pos\(4),
	datad => VCC,
	cin => \ball_instance|Ball_Y_Pos[3]~17\,
	combout => \ball_instance|Ball_Y_Pos[4]~18_combout\,
	cout => \ball_instance|Ball_Y_Pos[4]~19\);

-- Location: FF_X25_Y61_N21
\ball_instance|Ball_Y_Pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Pos[4]~18_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Pos\(4));

-- Location: LCCOMB_X25_Y61_N22
\ball_instance|Ball_Y_Pos[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Pos[5]~20_combout\ = (\ball_instance|Ball_Y_Pos\(5) & ((\ball_instance|Ball_Y_Motion\(1) & (\ball_instance|Ball_Y_Pos[4]~19\ & VCC)) # (!\ball_instance|Ball_Y_Motion\(1) & (!\ball_instance|Ball_Y_Pos[4]~19\)))) # 
-- (!\ball_instance|Ball_Y_Pos\(5) & ((\ball_instance|Ball_Y_Motion\(1) & (!\ball_instance|Ball_Y_Pos[4]~19\)) # (!\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos[4]~19\) # (GND)))))
-- \ball_instance|Ball_Y_Pos[5]~21\ = CARRY((\ball_instance|Ball_Y_Pos\(5) & (!\ball_instance|Ball_Y_Motion\(1) & !\ball_instance|Ball_Y_Pos[4]~19\)) # (!\ball_instance|Ball_Y_Pos\(5) & ((!\ball_instance|Ball_Y_Pos[4]~19\) # 
-- (!\ball_instance|Ball_Y_Motion\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(5),
	datab => \ball_instance|Ball_Y_Motion\(1),
	datad => VCC,
	cin => \ball_instance|Ball_Y_Pos[4]~19\,
	combout => \ball_instance|Ball_Y_Pos[5]~20_combout\,
	cout => \ball_instance|Ball_Y_Pos[5]~21\);

-- Location: FF_X25_Y61_N23
\ball_instance|Ball_Y_Pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Pos[5]~20_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Pos\(5));

-- Location: LCCOMB_X25_Y61_N24
\ball_instance|Ball_Y_Pos[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Pos[6]~22_combout\ = ((\ball_instance|Ball_Y_Motion\(1) $ (\ball_instance|Ball_Y_Pos\(6) $ (!\ball_instance|Ball_Y_Pos[5]~21\)))) # (GND)
-- \ball_instance|Ball_Y_Pos[6]~23\ = CARRY((\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos\(6)) # (!\ball_instance|Ball_Y_Pos[5]~21\))) # (!\ball_instance|Ball_Y_Motion\(1) & (\ball_instance|Ball_Y_Pos\(6) & 
-- !\ball_instance|Ball_Y_Pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Motion\(1),
	datab => \ball_instance|Ball_Y_Pos\(6),
	datad => VCC,
	cin => \ball_instance|Ball_Y_Pos[5]~21\,
	combout => \ball_instance|Ball_Y_Pos[6]~22_combout\,
	cout => \ball_instance|Ball_Y_Pos[6]~23\);

-- Location: FF_X25_Y61_N25
\ball_instance|Ball_Y_Pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Pos[6]~22_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Pos\(6));

-- Location: LCCOMB_X24_Y61_N12
\ball_instance|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Add0~0_combout\ = (\ball_instance|Ball_Y_Pos\(2) & (\ball_instance|Ball_Y_Pos\(3) $ (VCC))) # (!\ball_instance|Ball_Y_Pos\(2) & (\ball_instance|Ball_Y_Pos\(3) & VCC))
-- \ball_instance|Add0~1\ = CARRY((\ball_instance|Ball_Y_Pos\(2) & \ball_instance|Ball_Y_Pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(2),
	datab => \ball_instance|Ball_Y_Pos\(3),
	datad => VCC,
	combout => \ball_instance|Add0~0_combout\,
	cout => \ball_instance|Add0~1\);

-- Location: LCCOMB_X24_Y61_N14
\ball_instance|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Add0~2_combout\ = (\ball_instance|Ball_Y_Pos\(4) & (!\ball_instance|Add0~1\)) # (!\ball_instance|Ball_Y_Pos\(4) & ((\ball_instance|Add0~1\) # (GND)))
-- \ball_instance|Add0~3\ = CARRY((!\ball_instance|Add0~1\) # (!\ball_instance|Ball_Y_Pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(4),
	datad => VCC,
	cin => \ball_instance|Add0~1\,
	combout => \ball_instance|Add0~2_combout\,
	cout => \ball_instance|Add0~3\);

-- Location: LCCOMB_X24_Y61_N16
\ball_instance|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Add0~4_combout\ = (\ball_instance|Ball_Y_Pos\(5) & (\ball_instance|Add0~3\ $ (GND))) # (!\ball_instance|Ball_Y_Pos\(5) & (!\ball_instance|Add0~3\ & VCC))
-- \ball_instance|Add0~5\ = CARRY((\ball_instance|Ball_Y_Pos\(5) & !\ball_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball_instance|Ball_Y_Pos\(5),
	datad => VCC,
	cin => \ball_instance|Add0~3\,
	combout => \ball_instance|Add0~4_combout\,
	cout => \ball_instance|Add0~5\);

-- Location: LCCOMB_X24_Y61_N18
\ball_instance|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Add0~6_combout\ = (\ball_instance|Ball_Y_Pos\(6) & (!\ball_instance|Add0~5\)) # (!\ball_instance|Ball_Y_Pos\(6) & ((\ball_instance|Add0~5\) # (GND)))
-- \ball_instance|Add0~7\ = CARRY((!\ball_instance|Add0~5\) # (!\ball_instance|Ball_Y_Pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball_instance|Ball_Y_Pos\(6),
	datad => VCC,
	cin => \ball_instance|Add0~5\,
	combout => \ball_instance|Add0~6_combout\,
	cout => \ball_instance|Add0~7\);

-- Location: LCCOMB_X25_Y61_N26
\ball_instance|Ball_Y_Pos[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Pos[7]~24_combout\ = (\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos\(7) & (\ball_instance|Ball_Y_Pos[6]~23\ & VCC)) # (!\ball_instance|Ball_Y_Pos\(7) & (!\ball_instance|Ball_Y_Pos[6]~23\)))) # 
-- (!\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos\(7) & (!\ball_instance|Ball_Y_Pos[6]~23\)) # (!\ball_instance|Ball_Y_Pos\(7) & ((\ball_instance|Ball_Y_Pos[6]~23\) # (GND)))))
-- \ball_instance|Ball_Y_Pos[7]~25\ = CARRY((\ball_instance|Ball_Y_Motion\(1) & (!\ball_instance|Ball_Y_Pos\(7) & !\ball_instance|Ball_Y_Pos[6]~23\)) # (!\ball_instance|Ball_Y_Motion\(1) & ((!\ball_instance|Ball_Y_Pos[6]~23\) # 
-- (!\ball_instance|Ball_Y_Pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Motion\(1),
	datab => \ball_instance|Ball_Y_Pos\(7),
	datad => VCC,
	cin => \ball_instance|Ball_Y_Pos[6]~23\,
	combout => \ball_instance|Ball_Y_Pos[7]~24_combout\,
	cout => \ball_instance|Ball_Y_Pos[7]~25\);

-- Location: FF_X25_Y61_N27
\ball_instance|Ball_Y_Pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Pos[7]~24_combout\,
	asdata => VCC,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Pos\(7));

-- Location: LCCOMB_X24_Y61_N20
\ball_instance|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Add0~8_combout\ = (\ball_instance|Ball_Y_Pos\(7) & (\ball_instance|Add0~7\ $ (GND))) # (!\ball_instance|Ball_Y_Pos\(7) & (!\ball_instance|Add0~7\ & VCC))
-- \ball_instance|Add0~9\ = CARRY((\ball_instance|Ball_Y_Pos\(7) & !\ball_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(7),
	datad => VCC,
	cin => \ball_instance|Add0~7\,
	combout => \ball_instance|Add0~8_combout\,
	cout => \ball_instance|Add0~9\);

-- Location: LCCOMB_X25_Y61_N28
\ball_instance|Ball_Y_Pos[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Pos[8]~26_combout\ = ((\ball_instance|Ball_Y_Motion\(1) $ (\ball_instance|Ball_Y_Pos\(8) $ (!\ball_instance|Ball_Y_Pos[7]~25\)))) # (GND)
-- \ball_instance|Ball_Y_Pos[8]~27\ = CARRY((\ball_instance|Ball_Y_Motion\(1) & ((\ball_instance|Ball_Y_Pos\(8)) # (!\ball_instance|Ball_Y_Pos[7]~25\))) # (!\ball_instance|Ball_Y_Motion\(1) & (\ball_instance|Ball_Y_Pos\(8) & 
-- !\ball_instance|Ball_Y_Pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Motion\(1),
	datab => \ball_instance|Ball_Y_Pos\(8),
	datad => VCC,
	cin => \ball_instance|Ball_Y_Pos[7]~25\,
	combout => \ball_instance|Ball_Y_Pos[8]~26_combout\,
	cout => \ball_instance|Ball_Y_Pos[8]~27\);

-- Location: FF_X25_Y61_N29
\ball_instance|Ball_Y_Pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Pos[8]~26_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Pos\(8));

-- Location: LCCOMB_X24_Y61_N22
\ball_instance|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Add0~10_combout\ = (\ball_instance|Ball_Y_Pos\(8) & (!\ball_instance|Add0~9\)) # (!\ball_instance|Ball_Y_Pos\(8) & ((\ball_instance|Add0~9\) # (GND)))
-- \ball_instance|Add0~11\ = CARRY((!\ball_instance|Add0~9\) # (!\ball_instance|Ball_Y_Pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball_instance|Ball_Y_Pos\(8),
	datad => VCC,
	cin => \ball_instance|Add0~9\,
	combout => \ball_instance|Add0~10_combout\,
	cout => \ball_instance|Add0~11\);

-- Location: LCCOMB_X24_Y61_N30
\ball_instance|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|LessThan0~2_combout\ = ((!\ball_instance|Add0~10_combout\) # (!\ball_instance|Add0~8_combout\)) # (!\ball_instance|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball_instance|Add0~6_combout\,
	datac => \ball_instance|Add0~8_combout\,
	datad => \ball_instance|Add0~10_combout\,
	combout => \ball_instance|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y61_N0
\ball_instance|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|LessThan0~0_combout\ = ((\ball_instance|Ball_Y_Pos\(2)) # ((!\ball_instance|Add0~0_combout\) # (!\ball_instance|Ball_Y_Pos\(0)))) # (!\ball_instance|Ball_Y_Pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(1),
	datab => \ball_instance|Ball_Y_Pos\(2),
	datac => \ball_instance|Ball_Y_Pos\(0),
	datad => \ball_instance|Add0~0_combout\,
	combout => \ball_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y61_N10
\ball_instance|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|LessThan0~1_combout\ = (!\ball_instance|Add0~4_combout\ & ((\ball_instance|LessThan0~0_combout\) # (!\ball_instance|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball_instance|LessThan0~0_combout\,
	datac => \ball_instance|Add0~2_combout\,
	datad => \ball_instance|Add0~4_combout\,
	combout => \ball_instance|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y61_N26
\ball_instance|Ball_Y_Motion~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Motion~4_combout\ = (\KEY[0]~input_o\ & ((\ball_instance|Add0~12_combout\) # ((!\ball_instance|LessThan0~2_combout\ & !\ball_instance|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \ball_instance|Add0~12_combout\,
	datac => \ball_instance|LessThan0~2_combout\,
	datad => \ball_instance|LessThan0~1_combout\,
	combout => \ball_instance|Ball_Y_Motion~4_combout\);

-- Location: FF_X24_Y61_N27
\ball_instance|Ball_Y_Motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Motion~4_combout\,
	ena => \ball_instance|Ball_Y_Motion[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Motion\(1));

-- Location: LCCOMB_X25_Y61_N30
\ball_instance|Ball_Y_Pos[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Pos[9]~28_combout\ = \ball_instance|Ball_Y_Pos\(9) $ (\ball_instance|Ball_Y_Pos[8]~27\ $ (\ball_instance|Ball_Y_Motion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(9),
	datad => \ball_instance|Ball_Y_Motion\(1),
	cin => \ball_instance|Ball_Y_Pos[8]~27\,
	combout => \ball_instance|Ball_Y_Pos[9]~28_combout\);

-- Location: FF_X25_Y61_N31
\ball_instance|Ball_Y_Pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Pos[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Pos\(9));

-- Location: LCCOMB_X24_Y61_N24
\ball_instance|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Add0~12_combout\ = \ball_instance|Ball_Y_Pos\(9) $ (!\ball_instance|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(9),
	cin => \ball_instance|Add0~11\,
	combout => \ball_instance|Add0~12_combout\);

-- Location: LCCOMB_X25_Y61_N10
\ball_instance|Ball_Y_Motion[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Motion[1]~0_combout\ = (\ball_instance|Ball_Y_Pos\(9)) # ((\ball_instance|Ball_Y_Pos\(2) & ((\ball_instance|Ball_Y_Pos\(1)) # (\ball_instance|Ball_Y_Pos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(9),
	datab => \ball_instance|Ball_Y_Pos\(2),
	datac => \ball_instance|Ball_Y_Pos\(1),
	datad => \ball_instance|Ball_Y_Pos\(0),
	combout => \ball_instance|Ball_Y_Motion[1]~0_combout\);

-- Location: LCCOMB_X25_Y61_N4
\ball_instance|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|LessThan1~0_combout\ = (\ball_instance|Ball_Y_Pos\(5)) # ((\ball_instance|Ball_Y_Pos\(4)) # ((\ball_instance|Ball_Y_Pos\(7)) # (\ball_instance|Ball_Y_Pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(5),
	datab => \ball_instance|Ball_Y_Pos\(4),
	datac => \ball_instance|Ball_Y_Pos\(7),
	datad => \ball_instance|Ball_Y_Pos\(6),
	combout => \ball_instance|LessThan1~0_combout\);

-- Location: LCCOMB_X25_Y61_N8
\ball_instance|Ball_Y_Motion[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Motion[1]~1_combout\ = (\ball_instance|Ball_Y_Motion[1]~0_combout\) # ((\ball_instance|Ball_Y_Pos\(3)) # ((\ball_instance|LessThan1~0_combout\) # (\ball_instance|Ball_Y_Pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Motion[1]~0_combout\,
	datab => \ball_instance|Ball_Y_Pos\(3),
	datac => \ball_instance|LessThan1~0_combout\,
	datad => \ball_instance|Ball_Y_Pos\(8),
	combout => \ball_instance|Ball_Y_Motion[1]~1_combout\);

-- Location: LCCOMB_X24_Y61_N28
\ball_instance|Ball_Y_Motion[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Motion[1]~2_combout\ = (\ball_instance|Add0~6_combout\ & (\ball_instance|Add0~8_combout\ & (\ball_instance|Add0~10_combout\ & !\ball_instance|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Add0~6_combout\,
	datab => \ball_instance|Add0~8_combout\,
	datac => \ball_instance|Add0~10_combout\,
	datad => \ball_instance|LessThan0~1_combout\,
	combout => \ball_instance|Ball_Y_Motion[1]~2_combout\);

-- Location: LCCOMB_X24_Y61_N2
\ball_instance|Ball_Y_Motion[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ball_instance|Ball_Y_Motion[1]~3_combout\ = ((\ball_instance|Add0~12_combout\) # ((\ball_instance|Ball_Y_Motion[1]~2_combout\) # (!\ball_instance|Ball_Y_Motion[1]~1_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \ball_instance|Add0~12_combout\,
	datac => \ball_instance|Ball_Y_Motion[1]~1_combout\,
	datad => \ball_instance|Ball_Y_Motion[1]~2_combout\,
	combout => \ball_instance|Ball_Y_Motion[1]~3_combout\);

-- Location: FF_X24_Y61_N9
\ball_instance|Ball_Y_Motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Motion[0]~feeder_combout\,
	ena => \ball_instance|Ball_Y_Motion[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Motion\(0));

-- Location: FF_X25_Y61_N13
\ball_instance|Ball_Y_Pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_VS~clkctrl_outclk\,
	d => \ball_instance|Ball_Y_Pos[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_instance|Ball_Y_Pos\(0));

-- Location: LCCOMB_X21_Y61_N2
\color_instance|DistY[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|DistY[0]~0_combout\ = (\ball_instance|Ball_Y_Pos\(0) & (\vga_controller_instance|v_counter\(0) $ (VCC))) # (!\ball_instance|Ball_Y_Pos\(0) & ((\vga_controller_instance|v_counter\(0)) # (GND)))
-- \color_instance|DistY[0]~1\ = CARRY((\vga_controller_instance|v_counter\(0)) # (!\ball_instance|Ball_Y_Pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(0),
	datab => \vga_controller_instance|v_counter\(0),
	datad => VCC,
	combout => \color_instance|DistY[0]~0_combout\,
	cout => \color_instance|DistY[0]~1\);

-- Location: LCCOMB_X21_Y61_N4
\color_instance|DistY[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|DistY[1]~2_combout\ = (\ball_instance|Ball_Y_Pos\(1) & ((\vga_controller_instance|v_counter\(1) & (!\color_instance|DistY[0]~1\)) # (!\vga_controller_instance|v_counter\(1) & ((\color_instance|DistY[0]~1\) # (GND))))) # 
-- (!\ball_instance|Ball_Y_Pos\(1) & ((\vga_controller_instance|v_counter\(1) & (\color_instance|DistY[0]~1\ & VCC)) # (!\vga_controller_instance|v_counter\(1) & (!\color_instance|DistY[0]~1\))))
-- \color_instance|DistY[1]~3\ = CARRY((\ball_instance|Ball_Y_Pos\(1) & ((!\color_instance|DistY[0]~1\) # (!\vga_controller_instance|v_counter\(1)))) # (!\ball_instance|Ball_Y_Pos\(1) & (!\vga_controller_instance|v_counter\(1) & 
-- !\color_instance|DistY[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(1),
	datab => \vga_controller_instance|v_counter\(1),
	datad => VCC,
	cin => \color_instance|DistY[0]~1\,
	combout => \color_instance|DistY[1]~2_combout\,
	cout => \color_instance|DistY[1]~3\);

-- Location: LCCOMB_X21_Y61_N6
\color_instance|DistY[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|DistY[2]~4_combout\ = ((\vga_controller_instance|v_counter\(2) $ (\ball_instance|Ball_Y_Pos\(2) $ (\color_instance|DistY[1]~3\)))) # (GND)
-- \color_instance|DistY[2]~5\ = CARRY((\vga_controller_instance|v_counter\(2) & ((!\color_instance|DistY[1]~3\) # (!\ball_instance|Ball_Y_Pos\(2)))) # (!\vga_controller_instance|v_counter\(2) & (!\ball_instance|Ball_Y_Pos\(2) & 
-- !\color_instance|DistY[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(2),
	datab => \ball_instance|Ball_Y_Pos\(2),
	datad => VCC,
	cin => \color_instance|DistY[1]~3\,
	combout => \color_instance|DistY[2]~4_combout\,
	cout => \color_instance|DistY[2]~5\);

-- Location: LCCOMB_X21_Y61_N8
\color_instance|DistY[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|DistY[3]~6_combout\ = (\vga_controller_instance|v_counter\(3) & ((\ball_instance|Ball_Y_Pos\(3) & (!\color_instance|DistY[2]~5\)) # (!\ball_instance|Ball_Y_Pos\(3) & (\color_instance|DistY[2]~5\ & VCC)))) # 
-- (!\vga_controller_instance|v_counter\(3) & ((\ball_instance|Ball_Y_Pos\(3) & ((\color_instance|DistY[2]~5\) # (GND))) # (!\ball_instance|Ball_Y_Pos\(3) & (!\color_instance|DistY[2]~5\))))
-- \color_instance|DistY[3]~7\ = CARRY((\vga_controller_instance|v_counter\(3) & (\ball_instance|Ball_Y_Pos\(3) & !\color_instance|DistY[2]~5\)) # (!\vga_controller_instance|v_counter\(3) & ((\ball_instance|Ball_Y_Pos\(3)) # (!\color_instance|DistY[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(3),
	datab => \ball_instance|Ball_Y_Pos\(3),
	datad => VCC,
	cin => \color_instance|DistY[2]~5\,
	combout => \color_instance|DistY[3]~6_combout\,
	cout => \color_instance|DistY[3]~7\);

-- Location: LCCOMB_X21_Y61_N10
\color_instance|DistY[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|DistY[4]~8_combout\ = ((\vga_controller_instance|v_counter\(4) $ (\ball_instance|Ball_Y_Pos\(4) $ (\color_instance|DistY[3]~7\)))) # (GND)
-- \color_instance|DistY[4]~9\ = CARRY((\vga_controller_instance|v_counter\(4) & ((!\color_instance|DistY[3]~7\) # (!\ball_instance|Ball_Y_Pos\(4)))) # (!\vga_controller_instance|v_counter\(4) & (!\ball_instance|Ball_Y_Pos\(4) & 
-- !\color_instance|DistY[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(4),
	datab => \ball_instance|Ball_Y_Pos\(4),
	datad => VCC,
	cin => \color_instance|DistY[3]~7\,
	combout => \color_instance|DistY[4]~8_combout\,
	cout => \color_instance|DistY[4]~9\);

-- Location: LCCOMB_X21_Y61_N12
\color_instance|DistY[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|DistY[5]~10_combout\ = (\vga_controller_instance|v_counter\(5) & ((\ball_instance|Ball_Y_Pos\(5) & (!\color_instance|DistY[4]~9\)) # (!\ball_instance|Ball_Y_Pos\(5) & (\color_instance|DistY[4]~9\ & VCC)))) # 
-- (!\vga_controller_instance|v_counter\(5) & ((\ball_instance|Ball_Y_Pos\(5) & ((\color_instance|DistY[4]~9\) # (GND))) # (!\ball_instance|Ball_Y_Pos\(5) & (!\color_instance|DistY[4]~9\))))
-- \color_instance|DistY[5]~11\ = CARRY((\vga_controller_instance|v_counter\(5) & (\ball_instance|Ball_Y_Pos\(5) & !\color_instance|DistY[4]~9\)) # (!\vga_controller_instance|v_counter\(5) & ((\ball_instance|Ball_Y_Pos\(5)) # 
-- (!\color_instance|DistY[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(5),
	datab => \ball_instance|Ball_Y_Pos\(5),
	datad => VCC,
	cin => \color_instance|DistY[4]~9\,
	combout => \color_instance|DistY[5]~10_combout\,
	cout => \color_instance|DistY[5]~11\);

-- Location: LCCOMB_X21_Y61_N14
\color_instance|DistY[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|DistY[6]~12_combout\ = ((\vga_controller_instance|v_counter\(6) $ (\ball_instance|Ball_Y_Pos\(6) $ (\color_instance|DistY[5]~11\)))) # (GND)
-- \color_instance|DistY[6]~13\ = CARRY((\vga_controller_instance|v_counter\(6) & ((!\color_instance|DistY[5]~11\) # (!\ball_instance|Ball_Y_Pos\(6)))) # (!\vga_controller_instance|v_counter\(6) & (!\ball_instance|Ball_Y_Pos\(6) & 
-- !\color_instance|DistY[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(6),
	datab => \ball_instance|Ball_Y_Pos\(6),
	datad => VCC,
	cin => \color_instance|DistY[5]~11\,
	combout => \color_instance|DistY[6]~12_combout\,
	cout => \color_instance|DistY[6]~13\);

-- Location: LCCOMB_X21_Y61_N16
\color_instance|DistY[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|DistY[7]~14_combout\ = (\ball_instance|Ball_Y_Pos\(7) & ((\vga_controller_instance|v_counter\(7) & (!\color_instance|DistY[6]~13\)) # (!\vga_controller_instance|v_counter\(7) & ((\color_instance|DistY[6]~13\) # (GND))))) # 
-- (!\ball_instance|Ball_Y_Pos\(7) & ((\vga_controller_instance|v_counter\(7) & (\color_instance|DistY[6]~13\ & VCC)) # (!\vga_controller_instance|v_counter\(7) & (!\color_instance|DistY[6]~13\))))
-- \color_instance|DistY[7]~15\ = CARRY((\ball_instance|Ball_Y_Pos\(7) & ((!\color_instance|DistY[6]~13\) # (!\vga_controller_instance|v_counter\(7)))) # (!\ball_instance|Ball_Y_Pos\(7) & (!\vga_controller_instance|v_counter\(7) & 
-- !\color_instance|DistY[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_instance|Ball_Y_Pos\(7),
	datab => \vga_controller_instance|v_counter\(7),
	datad => VCC,
	cin => \color_instance|DistY[6]~13\,
	combout => \color_instance|DistY[7]~14_combout\,
	cout => \color_instance|DistY[7]~15\);

-- Location: LCCOMB_X21_Y61_N18
\color_instance|DistY[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|DistY[8]~16_combout\ = ((\vga_controller_instance|v_counter\(8) $ (\ball_instance|Ball_Y_Pos\(8) $ (\color_instance|DistY[7]~15\)))) # (GND)
-- \color_instance|DistY[8]~17\ = CARRY((\vga_controller_instance|v_counter\(8) & ((!\color_instance|DistY[7]~15\) # (!\ball_instance|Ball_Y_Pos\(8)))) # (!\vga_controller_instance|v_counter\(8) & (!\ball_instance|Ball_Y_Pos\(8) & 
-- !\color_instance|DistY[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(8),
	datab => \ball_instance|Ball_Y_Pos\(8),
	datad => VCC,
	cin => \color_instance|DistY[7]~15\,
	combout => \color_instance|DistY[8]~16_combout\,
	cout => \color_instance|DistY[8]~17\);

-- Location: LCCOMB_X21_Y61_N20
\color_instance|DistY[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|DistY[9]~18_combout\ = (\vga_controller_instance|v_counter\(9) & ((\ball_instance|Ball_Y_Pos\(9) & (!\color_instance|DistY[8]~17\)) # (!\ball_instance|Ball_Y_Pos\(9) & (\color_instance|DistY[8]~17\ & VCC)))) # 
-- (!\vga_controller_instance|v_counter\(9) & ((\ball_instance|Ball_Y_Pos\(9) & ((\color_instance|DistY[8]~17\) # (GND))) # (!\ball_instance|Ball_Y_Pos\(9) & (!\color_instance|DistY[8]~17\))))
-- \color_instance|DistY[9]~19\ = CARRY((\vga_controller_instance|v_counter\(9) & (\ball_instance|Ball_Y_Pos\(9) & !\color_instance|DistY[8]~17\)) # (!\vga_controller_instance|v_counter\(9) & ((\ball_instance|Ball_Y_Pos\(9)) # 
-- (!\color_instance|DistY[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(9),
	datab => \ball_instance|Ball_Y_Pos\(9),
	datad => VCC,
	cin => \color_instance|DistY[8]~17\,
	combout => \color_instance|DistY[9]~18_combout\,
	cout => \color_instance|DistY[9]~19\);

-- Location: LCCOMB_X21_Y61_N22
\color_instance|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add1~0_combout\ = \color_instance|DistY[9]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \color_instance|DistY[9]~19\,
	combout => \color_instance|Add1~0_combout\);

-- Location: DSPMULT_X22_Y61_N0
\color_instance|Mult1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \color_instance|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \color_instance|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y61_N2
\color_instance|Mult1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y62_N28
\color_instance|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add0~0_combout\ = \vga_controller_instance|h_counter\(6) $ (!\vga_controller_instance|h_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|h_counter\(6),
	datad => \vga_controller_instance|h_counter\(7),
	combout => \color_instance|Add0~0_combout\);

-- Location: LCCOMB_X19_Y62_N22
\color_instance|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add0~1_combout\ = \vga_controller_instance|h_counter\(8) $ (((\vga_controller_instance|h_counter\(7)) # (\vga_controller_instance|h_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|h_counter\(8),
	datac => \vga_controller_instance|h_counter\(7),
	datad => \vga_controller_instance|h_counter\(6),
	combout => \color_instance|Add0~1_combout\);

-- Location: LCCOMB_X19_Y62_N16
\color_instance|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add0~2_combout\ = \vga_controller_instance|h_counter\(9) $ ((((!\vga_controller_instance|h_counter\(6) & !\vga_controller_instance|h_counter\(7))) # (!\vga_controller_instance|h_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|h_counter\(9),
	datab => \vga_controller_instance|h_counter\(6),
	datac => \vga_controller_instance|h_counter\(7),
	datad => \vga_controller_instance|h_counter\(8),
	combout => \color_instance|Add0~2_combout\);

-- Location: LCCOMB_X19_Y62_N14
\color_instance|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add0~3_combout\ = (!\vga_controller_instance|h_counter\(9) & (((!\vga_controller_instance|h_counter\(6) & !\vga_controller_instance|h_counter\(7))) # (!\vga_controller_instance|h_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|h_counter\(9),
	datab => \vga_controller_instance|h_counter\(6),
	datac => \vga_controller_instance|h_counter\(7),
	datad => \vga_controller_instance|h_counter\(8),
	combout => \color_instance|Add0~3_combout\);

-- Location: DSPMULT_X22_Y62_N0
\color_instance|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \color_instance|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \color_instance|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y62_N2
\color_instance|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y62_N10
\color_instance|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~0_combout\ = (\color_instance|Mult1|auto_generated|mac_out2~dataout\ & (\vga_controller_instance|h_counter\(0) $ (VCC))) # (!\color_instance|Mult1|auto_generated|mac_out2~dataout\ & (\vga_controller_instance|h_counter\(0) & VCC))
-- \color_instance|Add2~1\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~dataout\ & \vga_controller_instance|h_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~dataout\,
	datab => \vga_controller_instance|h_counter\(0),
	datad => VCC,
	combout => \color_instance|Add2~0_combout\,
	cout => \color_instance|Add2~1\);

-- Location: LCCOMB_X23_Y62_N12
\color_instance|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~2_combout\ = (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ & (!\color_instance|Add2~1\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ & ((\color_instance|Add2~1\) # (GND)))
-- \color_instance|Add2~3\ = CARRY((!\color_instance|Add2~1\) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \color_instance|Add2~1\,
	combout => \color_instance|Add2~2_combout\,
	cout => \color_instance|Add2~3\);

-- Location: LCCOMB_X23_Y62_N14
\color_instance|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~4_combout\ = ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\ $ (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (!\color_instance|Add2~3\)))) # (GND)
-- \color_instance|Add2~5\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\) # (!\color_instance|Add2~3\))) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\ & 
-- (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\ & !\color_instance|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datab => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \color_instance|Add2~3\,
	combout => \color_instance|Add2~4_combout\,
	cout => \color_instance|Add2~5\);

-- Location: LCCOMB_X23_Y62_N16
\color_instance|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~6_combout\ = (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ & (\color_instance|Add2~5\ & VCC)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- (!\color_instance|Add2~5\)))) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\color_instance|Add2~5\)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- ((\color_instance|Add2~5\) # (GND)))))
-- \color_instance|Add2~7\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ & (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ & !\color_instance|Add2~5\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ & 
-- ((!\color_instance|Add2~5\) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datab => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \color_instance|Add2~5\,
	combout => \color_instance|Add2~6_combout\,
	cout => \color_instance|Add2~7\);

-- Location: LCCOMB_X23_Y62_N18
\color_instance|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~8_combout\ = ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\ $ (!\color_instance|Add2~7\)))) # (GND)
-- \color_instance|Add2~9\ = CARRY((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\) # (!\color_instance|Add2~7\))) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\ & 
-- (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\ & !\color_instance|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \color_instance|Add2~7\,
	combout => \color_instance|Add2~8_combout\,
	cout => \color_instance|Add2~9\);

-- Location: LCCOMB_X23_Y62_N20
\color_instance|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~10_combout\ = (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ & (\color_instance|Add2~9\ & VCC)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- (!\color_instance|Add2~9\)))) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\color_instance|Add2~9\)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- ((\color_instance|Add2~9\) # (GND)))))
-- \color_instance|Add2~11\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ & !\color_instance|Add2~9\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ & 
-- ((!\color_instance|Add2~9\) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datab => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \color_instance|Add2~9\,
	combout => \color_instance|Add2~10_combout\,
	cout => \color_instance|Add2~11\);

-- Location: LCCOMB_X23_Y62_N22
\color_instance|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~12_combout\ = ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\ $ (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (!\color_instance|Add2~11\)))) # (GND)
-- \color_instance|Add2~13\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\color_instance|Add2~11\))) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\ & 
-- (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\ & !\color_instance|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datab => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \color_instance|Add2~11\,
	combout => \color_instance|Add2~12_combout\,
	cout => \color_instance|Add2~13\);

-- Location: LCCOMB_X23_Y62_N24
\color_instance|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~14_combout\ = (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ & (\color_instance|Add2~13\ & VCC)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ & 
-- (!\color_instance|Add2~13\)))) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\color_instance|Add2~13\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ & 
-- ((\color_instance|Add2~13\) # (GND)))))
-- \color_instance|Add2~15\ = CARRY((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ & !\color_instance|Add2~13\)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ & 
-- ((!\color_instance|Add2~13\) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \color_instance|Add2~13\,
	combout => \color_instance|Add2~14_combout\,
	cout => \color_instance|Add2~15\);

-- Location: LCCOMB_X23_Y62_N26
\color_instance|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~16_combout\ = ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\ $ (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\ $ (!\color_instance|Add2~15\)))) # (GND)
-- \color_instance|Add2~17\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\) # (!\color_instance|Add2~15\))) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\ & 
-- (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\color_instance|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \color_instance|Add2~15\,
	combout => \color_instance|Add2~16_combout\,
	cout => \color_instance|Add2~17\);

-- Location: LCCOMB_X23_Y62_N28
\color_instance|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~18_combout\ = (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ & (\color_instance|Add2~17\ & VCC)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ & 
-- (!\color_instance|Add2~17\)))) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\color_instance|Add2~17\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ & 
-- ((\color_instance|Add2~17\) # (GND)))))
-- \color_instance|Add2~19\ = CARRY((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ & !\color_instance|Add2~17\)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- ((!\color_instance|Add2~17\) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \color_instance|Add2~17\,
	combout => \color_instance|Add2~18_combout\,
	cout => \color_instance|Add2~19\);

-- Location: LCCOMB_X23_Y62_N30
\color_instance|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~20_combout\ = ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\ $ (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\ $ (!\color_instance|Add2~19\)))) # (GND)
-- \color_instance|Add2~21\ = CARRY((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\) # (!\color_instance|Add2~19\))) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\ & !\color_instance|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \color_instance|Add2~19\,
	combout => \color_instance|Add2~20_combout\,
	cout => \color_instance|Add2~21\);

-- Location: LCCOMB_X23_Y61_N0
\color_instance|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~22_combout\ = (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ & (\color_instance|Add2~21\ & VCC)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- (!\color_instance|Add2~21\)))) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\color_instance|Add2~21\)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- ((\color_instance|Add2~21\) # (GND)))))
-- \color_instance|Add2~23\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ & !\color_instance|Add2~21\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ & 
-- ((!\color_instance|Add2~21\) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datab => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \color_instance|Add2~21\,
	combout => \color_instance|Add2~22_combout\,
	cout => \color_instance|Add2~23\);

-- Location: LCCOMB_X23_Y61_N2
\color_instance|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~24_combout\ = ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\ $ (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\ $ (!\color_instance|Add2~23\)))) # (GND)
-- \color_instance|Add2~25\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\) # (!\color_instance|Add2~23\))) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\ & 
-- (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\color_instance|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datab => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \color_instance|Add2~23\,
	combout => \color_instance|Add2~24_combout\,
	cout => \color_instance|Add2~25\);

-- Location: LCCOMB_X23_Y61_N4
\color_instance|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~26_combout\ = (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ & (\color_instance|Add2~25\ & VCC)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ & 
-- (!\color_instance|Add2~25\)))) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\color_instance|Add2~25\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ & 
-- ((\color_instance|Add2~25\) # (GND)))))
-- \color_instance|Add2~27\ = CARRY((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ & !\color_instance|Add2~25\)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- ((!\color_instance|Add2~25\) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \color_instance|Add2~25\,
	combout => \color_instance|Add2~26_combout\,
	cout => \color_instance|Add2~27\);

-- Location: LCCOMB_X23_Y61_N6
\color_instance|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~28_combout\ = ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\ $ (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\ $ (!\color_instance|Add2~27\)))) # (GND)
-- \color_instance|Add2~29\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\) # (!\color_instance|Add2~27\))) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\ & 
-- (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\color_instance|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datab => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \color_instance|Add2~27\,
	combout => \color_instance|Add2~28_combout\,
	cout => \color_instance|Add2~29\);

-- Location: LCCOMB_X23_Y61_N8
\color_instance|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~30_combout\ = (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\color_instance|Add2~29\ & VCC)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\color_instance|Add2~29\)))) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\color_instance|Add2~29\)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- ((\color_instance|Add2~29\) # (GND)))))
-- \color_instance|Add2~31\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\color_instance|Add2~29\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ & 
-- ((!\color_instance|Add2~29\) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datab => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \color_instance|Add2~29\,
	combout => \color_instance|Add2~30_combout\,
	cout => \color_instance|Add2~31\);

-- Location: LCCOMB_X23_Y61_N10
\color_instance|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~32_combout\ = ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\ $ (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\ $ (!\color_instance|Add2~31\)))) # (GND)
-- \color_instance|Add2~33\ = CARRY((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\) # (!\color_instance|Add2~31\))) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\ & 
-- (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\ & !\color_instance|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \color_instance|Add2~31\,
	combout => \color_instance|Add2~32_combout\,
	cout => \color_instance|Add2~33\);

-- Location: LCCOMB_X23_Y61_N12
\color_instance|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~34_combout\ = (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\color_instance|Add2~33\ & VCC)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- (!\color_instance|Add2~33\)))) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\color_instance|Add2~33\)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- ((\color_instance|Add2~33\) # (GND)))))
-- \color_instance|Add2~35\ = CARRY((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\color_instance|Add2~33\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ & 
-- ((!\color_instance|Add2~33\) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datab => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \color_instance|Add2~33\,
	combout => \color_instance|Add2~34_combout\,
	cout => \color_instance|Add2~35\);

-- Location: LCCOMB_X23_Y61_N14
\color_instance|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~36_combout\ = ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (!\color_instance|Add2~35\)))) # (GND)
-- \color_instance|Add2~37\ = CARRY((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\) # (!\color_instance|Add2~35\))) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\ & 
-- (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\ & !\color_instance|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \color_instance|Add2~35\,
	combout => \color_instance|Add2~36_combout\,
	cout => \color_instance|Add2~37\);

-- Location: LCCOMB_X23_Y61_N16
\color_instance|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~38_combout\ = (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\ & (\color_instance|Add2~37\ & VCC)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\color_instance|Add2~37\)))) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\color_instance|Add2~37\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\color_instance|Add2~37\) # (GND)))))
-- \color_instance|Add2~39\ = CARRY((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\ & !\color_instance|Add2~37\)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((!\color_instance|Add2~37\) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \color_instance|Add2~37\,
	combout => \color_instance|Add2~38_combout\,
	cout => \color_instance|Add2~39\);

-- Location: LCCOMB_X23_Y61_N18
\color_instance|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~40_combout\ = ((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT20\ $ (!\color_instance|Add2~39\)))) # (GND)
-- \color_instance|Add2~41\ = CARRY((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT20\) # (!\color_instance|Add2~39\))) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT20\ & 
-- (\color_instance|Mult1|auto_generated|mac_out2~DATAOUT20\ & !\color_instance|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \color_instance|Add2~39\,
	combout => \color_instance|Add2~40_combout\,
	cout => \color_instance|Add2~41\);

-- Location: LCCOMB_X23_Y61_N20
\color_instance|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~42_combout\ = (\color_instance|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\ & (\color_instance|Add2~41\ & VCC)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\ & 
-- (!\color_instance|Add2~41\)))) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\color_instance|Add2~41\)) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\ & 
-- ((\color_instance|Add2~41\) # (GND)))))
-- \color_instance|Add2~43\ = CARRY((\color_instance|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\ & !\color_instance|Add2~41\)) # (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\color_instance|Add2~41\) # (!\color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \color_instance|Add2~41\,
	combout => \color_instance|Add2~42_combout\,
	cout => \color_instance|Add2~43\);

-- Location: LCCOMB_X23_Y61_N22
\color_instance|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|Add2~44_combout\ = \color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\ $ (\color_instance|Add2~43\ $ (!\color_instance|Mult0|auto_generated|mac_out2~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \color_instance|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => \color_instance|Mult0|auto_generated|mac_out2~DATAOUT21\,
	cin => \color_instance|Add2~43\,
	combout => \color_instance|Add2~44_combout\);

-- Location: LCCOMB_X23_Y61_N30
\color_instance|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|LessThan0~5_combout\ = (\color_instance|Add2~36_combout\) # (\color_instance|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \color_instance|Add2~36_combout\,
	datad => \color_instance|Add2~34_combout\,
	combout => \color_instance|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y61_N24
\color_instance|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|LessThan0~6_combout\ = (\color_instance|Add2~42_combout\) # ((\color_instance|Add2~38_combout\) # ((\color_instance|LessThan0~5_combout\) # (\color_instance|Add2~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Add2~42_combout\,
	datab => \color_instance|Add2~38_combout\,
	datac => \color_instance|LessThan0~5_combout\,
	datad => \color_instance|Add2~40_combout\,
	combout => \color_instance|LessThan0~6_combout\);

-- Location: LCCOMB_X23_Y62_N2
\color_instance|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|LessThan0~1_combout\ = (\color_instance|Add2~24_combout\) # ((\color_instance|Add2~22_combout\) # ((\color_instance|Add2~20_combout\) # (\color_instance|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Add2~24_combout\,
	datab => \color_instance|Add2~22_combout\,
	datac => \color_instance|Add2~20_combout\,
	datad => \color_instance|Add2~18_combout\,
	combout => \color_instance|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y62_N4
\color_instance|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|LessThan0~2_combout\ = (\color_instance|Add2~0_combout\) # ((\color_instance|Add2~6_combout\) # ((\color_instance|Add2~4_combout\) # (\color_instance|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Add2~0_combout\,
	datab => \color_instance|Add2~6_combout\,
	datac => \color_instance|Add2~4_combout\,
	datad => \color_instance|Add2~2_combout\,
	combout => \color_instance|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y62_N8
\color_instance|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|LessThan0~0_combout\ = (\color_instance|Add2~12_combout\) # ((\color_instance|Add2~10_combout\) # ((\color_instance|Add2~16_combout\) # (\color_instance|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Add2~12_combout\,
	datab => \color_instance|Add2~10_combout\,
	datac => \color_instance|Add2~16_combout\,
	datad => \color_instance|Add2~14_combout\,
	combout => \color_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y62_N6
\color_instance|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|LessThan0~3_combout\ = (\color_instance|LessThan0~1_combout\) # ((\color_instance|LessThan0~0_combout\) # ((\color_instance|LessThan0~2_combout\ & \color_instance|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|LessThan0~1_combout\,
	datab => \color_instance|LessThan0~2_combout\,
	datac => \color_instance|LessThan0~0_combout\,
	datad => \color_instance|Add2~8_combout\,
	combout => \color_instance|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y61_N28
\color_instance|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|LessThan0~4_combout\ = (\color_instance|Add2~32_combout\) # ((\color_instance|Add2~26_combout\) # ((\color_instance|Add2~30_combout\) # (\color_instance|Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Add2~32_combout\,
	datab => \color_instance|Add2~26_combout\,
	datac => \color_instance|Add2~30_combout\,
	datad => \color_instance|Add2~28_combout\,
	combout => \color_instance|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y61_N26
\color_instance|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|LessThan0~7_combout\ = (!\color_instance|Add2~44_combout\ & ((\color_instance|LessThan0~6_combout\) # ((\color_instance|LessThan0~3_combout\) # (\color_instance|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|Add2~44_combout\,
	datab => \color_instance|LessThan0~6_combout\,
	datac => \color_instance|LessThan0~3_combout\,
	datad => \color_instance|LessThan0~4_combout\,
	combout => \color_instance|LessThan0~7_combout\);

-- Location: LCCOMB_X21_Y61_N24
\color_instance|VGA_G[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_G[0]~0_combout\ = (\vga_controller_instance|v_counter\(3)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|LessThan0~7_combout\,
	datac => \vga_controller_instance|v_counter\(3),
	combout => \color_instance|VGA_G[0]~0_combout\);

-- Location: LCCOMB_X21_Y61_N28
\color_instance|VGA_G[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_G[1]~1_combout\ = (\vga_controller_instance|v_counter\(4)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|LessThan0~7_combout\,
	datac => \vga_controller_instance|v_counter\(4),
	combout => \color_instance|VGA_G[1]~1_combout\);

-- Location: LCCOMB_X20_Y62_N28
\color_instance|VGA_G[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_G[2]~2_combout\ = (\vga_controller_instance|v_counter\(5)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|LessThan0~7_combout\,
	datac => \vga_controller_instance|v_counter\(5),
	combout => \color_instance|VGA_G[2]~2_combout\);

-- Location: LCCOMB_X21_Y61_N26
\color_instance|VGA_G[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_G[3]~3_combout\ = (\vga_controller_instance|v_counter\(6)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \color_instance|LessThan0~7_combout\,
	datad => \vga_controller_instance|v_counter\(6),
	combout => \color_instance|VGA_G[3]~3_combout\);

-- Location: LCCOMB_X19_Y62_N24
\color_instance|VGA_G[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_G[4]~4_combout\ = (\vga_controller_instance|v_counter\(7)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|v_counter\(7),
	datad => \color_instance|LessThan0~7_combout\,
	combout => \color_instance|VGA_G[4]~4_combout\);

-- Location: LCCOMB_X19_Y62_N18
\color_instance|VGA_G[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_G[5]~5_combout\ = (\vga_controller_instance|v_counter\(8)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter\(8),
	datad => \color_instance|LessThan0~7_combout\,
	combout => \color_instance|VGA_G[5]~5_combout\);

-- Location: LCCOMB_X20_Y62_N22
\color_instance|VGA_G[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_G[6]~6_combout\ = (\vga_controller_instance|v_counter\(9)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|LessThan0~7_combout\,
	datac => \vga_controller_instance|v_counter\(9),
	combout => \color_instance|VGA_G[6]~6_combout\);

-- Location: LCCOMB_X20_Y62_N26
\color_instance|VGA_B[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_B[0]~0_combout\ = (!\vga_controller_instance|h_counter\(3)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|LessThan0~7_combout\,
	datad => \vga_controller_instance|h_counter\(3),
	combout => \color_instance|VGA_B[0]~0_combout\);

-- Location: LCCOMB_X20_Y62_N6
\color_instance|VGA_B[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_B[1]~1_combout\ = (!\color_instance|LessThan0~7_combout\) # (!\vga_controller_instance|h_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|h_counter\(4),
	datac => \color_instance|LessThan0~7_combout\,
	combout => \color_instance|VGA_B[1]~1_combout\);

-- Location: LCCOMB_X20_Y62_N16
\color_instance|VGA_B[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_B[2]~2_combout\ = (!\vga_controller_instance|h_counter\(5)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|LessThan0~7_combout\,
	datab => \vga_controller_instance|h_counter\(5),
	combout => \color_instance|VGA_B[2]~2_combout\);

-- Location: LCCOMB_X20_Y62_N12
\color_instance|VGA_B[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_B[3]~3_combout\ = (!\vga_controller_instance|h_counter\(6)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|LessThan0~7_combout\,
	datac => \vga_controller_instance|h_counter\(6),
	combout => \color_instance|VGA_B[3]~3_combout\);

-- Location: LCCOMB_X19_Y62_N26
\color_instance|VGA_B[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_B[4]~4_combout\ = (!\color_instance|LessThan0~7_combout\) # (!\vga_controller_instance|h_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_controller_instance|h_counter\(7),
	datad => \color_instance|LessThan0~7_combout\,
	combout => \color_instance|VGA_B[4]~4_combout\);

-- Location: LCCOMB_X20_Y62_N10
\color_instance|VGA_B[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_B[5]~5_combout\ = (!\vga_controller_instance|h_counter\(8)) # (!\color_instance|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_instance|LessThan0~7_combout\,
	datac => \vga_controller_instance|h_counter\(8),
	combout => \color_instance|VGA_B[5]~5_combout\);

-- Location: LCCOMB_X19_Y62_N10
\color_instance|VGA_B[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_instance|VGA_B[6]~6_combout\ = (!\color_instance|LessThan0~7_combout\) # (!\vga_controller_instance|h_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_controller_instance|h_counter\(9),
	datad => \color_instance|LessThan0~7_combout\,
	combout => \color_instance|VGA_B[6]~6_combout\);

-- Location: LCCOMB_X19_Y62_N12
\vga_controller_instance|always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|always2~0_combout\ = ((\vga_controller_instance|Equal0~2_combout\) # ((!\vga_controller_instance|Add0~14_combout\ & !\vga_controller_instance|Add0~16_combout\))) # (!\vga_controller_instance|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add0~14_combout\,
	datab => \vga_controller_instance|Add0~16_combout\,
	datac => \vga_controller_instance|Add0~18_combout\,
	datad => \vga_controller_instance|Equal0~2_combout\,
	combout => \vga_controller_instance|always2~0_combout\);

-- Location: LCCOMB_X19_Y62_N2
\vga_controller_instance|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|LessThan5~0_combout\ = (\vga_controller_instance|v_counter_in[6]~3_combout\ & (\vga_controller_instance|v_counter_in[5]~2_combout\ & (\vga_controller_instance|v_counter_in[8]~5_combout\ & 
-- \vga_controller_instance|v_counter_in[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|v_counter_in[6]~3_combout\,
	datab => \vga_controller_instance|v_counter_in[5]~2_combout\,
	datac => \vga_controller_instance|v_counter_in[8]~5_combout\,
	datad => \vga_controller_instance|v_counter_in[7]~4_combout\,
	combout => \vga_controller_instance|LessThan5~0_combout\);

-- Location: LCCOMB_X20_Y62_N24
\vga_controller_instance|always2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|always2~1_combout\ = (\vga_controller_instance|always2~0_combout\ & (!\vga_controller_instance|v_counter_in[9]~6_combout\ & !\vga_controller_instance|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|always2~0_combout\,
	datac => \vga_controller_instance|v_counter_in[9]~6_combout\,
	datad => \vga_controller_instance|LessThan5~0_combout\,
	combout => \vga_controller_instance|always2~1_combout\);

-- Location: FF_X20_Y62_N25
\vga_controller_instance|VGA_BLANK_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|always2~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|VGA_BLANK_N~q\);

-- Location: LCCOMB_X19_Y62_N4
\vga_controller_instance|always2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|always2~5_combout\ = (\vga_controller_instance|Add0~18_combout\ & (\vga_controller_instance|Add0~14_combout\ & !\vga_controller_instance|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add0~18_combout\,
	datac => \vga_controller_instance|Add0~14_combout\,
	datad => \vga_controller_instance|Add0~16_combout\,
	combout => \vga_controller_instance|always2~5_combout\);

-- Location: LCCOMB_X19_Y62_N20
\vga_controller_instance|always2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_controller_instance|always2~6_combout\ = ((\vga_controller_instance|Add0~10_combout\ & (\vga_controller_instance|Add0~8_combout\ & \vga_controller_instance|Add0~12_combout\)) # (!\vga_controller_instance|Add0~10_combout\ & 
-- (!\vga_controller_instance|Add0~8_combout\ & !\vga_controller_instance|Add0~12_combout\))) # (!\vga_controller_instance|always2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_controller_instance|Add0~10_combout\,
	datab => \vga_controller_instance|Add0~8_combout\,
	datac => \vga_controller_instance|always2~5_combout\,
	datad => \vga_controller_instance|Add0~12_combout\,
	combout => \vga_controller_instance|always2~6_combout\);

-- Location: FF_X19_Y62_N21
\vga_controller_instance|VGA_HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga_controller_instance|VGA_CLK~clkctrl_outclk\,
	d => \vga_controller_instance|always2~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_controller_instance|VGA_HS~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\OTG_INT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OTG_INT,
	o => \OTG_INT~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\OTG_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(0),
	o => \OTG_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\OTG_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(1),
	o => \OTG_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\OTG_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(2),
	o => \OTG_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\OTG_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(3),
	o => \OTG_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\OTG_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(4),
	o => \OTG_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\OTG_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(5),
	o => \OTG_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\OTG_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(6),
	o => \OTG_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\OTG_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(7),
	o => \OTG_DATA[7]~input_o\);

-- Location: IOIBUF_X0_Y62_N22
\OTG_DATA[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(8),
	o => \OTG_DATA[8]~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\OTG_DATA[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(9),
	o => \OTG_DATA[9]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\OTG_DATA[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(10),
	o => \OTG_DATA[10]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\OTG_DATA[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(11),
	o => \OTG_DATA[11]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\OTG_DATA[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(12),
	o => \OTG_DATA[12]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\OTG_DATA[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(13),
	o => \OTG_DATA[13]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\OTG_DATA[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(14),
	o => \OTG_DATA[14]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\OTG_DATA[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(15),
	o => \OTG_DATA[15]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\DRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(0),
	o => \DRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\DRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(1),
	o => \DRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\DRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(2),
	o => \DRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\DRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(3),
	o => \DRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\DRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(4),
	o => \DRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\DRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(5),
	o => \DRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\DRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(6),
	o => \DRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\DRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(7),
	o => \DRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\DRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(8),
	o => \DRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\DRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(9),
	o => \DRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\DRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(10),
	o => \DRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\DRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(11),
	o => \DRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\DRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(12),
	o => \DRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\DRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(13),
	o => \DRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\DRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(14),
	o => \DRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\DRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(15),
	o => \DRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\DRAM_DQ[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(16),
	o => \DRAM_DQ[16]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\DRAM_DQ[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(17),
	o => \DRAM_DQ[17]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\DRAM_DQ[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(18),
	o => \DRAM_DQ[18]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\DRAM_DQ[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(19),
	o => \DRAM_DQ[19]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\DRAM_DQ[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(20),
	o => \DRAM_DQ[20]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\DRAM_DQ[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(21),
	o => \DRAM_DQ[21]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\DRAM_DQ[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(22),
	o => \DRAM_DQ[22]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\DRAM_DQ[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(23),
	o => \DRAM_DQ[23]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\DRAM_DQ[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(24),
	o => \DRAM_DQ[24]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\DRAM_DQ[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(25),
	o => \DRAM_DQ[25]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\DRAM_DQ[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(26),
	o => \DRAM_DQ[26]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\DRAM_DQ[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(27),
	o => \DRAM_DQ[27]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\DRAM_DQ[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(28),
	o => \DRAM_DQ[28]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\DRAM_DQ[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(29),
	o => \DRAM_DQ[29]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\DRAM_DQ[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(30),
	o => \DRAM_DQ[30]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\DRAM_DQ[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(31),
	o => \DRAM_DQ[31]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;

ww_VGA_CLK <= \VGA_CLK~output_o\;

ww_VGA_SYNC_N <= \VGA_SYNC_N~output_o\;

ww_VGA_BLANK_N <= \VGA_BLANK_N~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;

ww_OTG_ADDR(0) <= \OTG_ADDR[0]~output_o\;

ww_OTG_ADDR(1) <= \OTG_ADDR[1]~output_o\;

ww_OTG_CS_N <= \OTG_CS_N~output_o\;

ww_OTG_RD_N <= \OTG_RD_N~output_o\;

ww_OTG_WR_N <= \OTG_WR_N~output_o\;

ww_OTG_RST_N <= \OTG_RST_N~output_o\;

ww_DRAM_ADDR(0) <= \DRAM_ADDR[0]~output_o\;

ww_DRAM_ADDR(1) <= \DRAM_ADDR[1]~output_o\;

ww_DRAM_ADDR(2) <= \DRAM_ADDR[2]~output_o\;

ww_DRAM_ADDR(3) <= \DRAM_ADDR[3]~output_o\;

ww_DRAM_ADDR(4) <= \DRAM_ADDR[4]~output_o\;

ww_DRAM_ADDR(5) <= \DRAM_ADDR[5]~output_o\;

ww_DRAM_ADDR(6) <= \DRAM_ADDR[6]~output_o\;

ww_DRAM_ADDR(7) <= \DRAM_ADDR[7]~output_o\;

ww_DRAM_ADDR(8) <= \DRAM_ADDR[8]~output_o\;

ww_DRAM_ADDR(9) <= \DRAM_ADDR[9]~output_o\;

ww_DRAM_ADDR(10) <= \DRAM_ADDR[10]~output_o\;

ww_DRAM_ADDR(11) <= \DRAM_ADDR[11]~output_o\;

ww_DRAM_ADDR(12) <= \DRAM_ADDR[12]~output_o\;

ww_DRAM_BA(0) <= \DRAM_BA[0]~output_o\;

ww_DRAM_BA(1) <= \DRAM_BA[1]~output_o\;

ww_DRAM_DQM(0) <= \DRAM_DQM[0]~output_o\;

ww_DRAM_DQM(1) <= \DRAM_DQM[1]~output_o\;

ww_DRAM_DQM(2) <= \DRAM_DQM[2]~output_o\;

ww_DRAM_DQM(3) <= \DRAM_DQM[3]~output_o\;

ww_DRAM_RAS_N <= \DRAM_RAS_N~output_o\;

ww_DRAM_CAS_N <= \DRAM_CAS_N~output_o\;

ww_DRAM_CKE <= \DRAM_CKE~output_o\;

ww_DRAM_WE_N <= \DRAM_WE_N~output_o\;

ww_DRAM_CS_N <= \DRAM_CS_N~output_o\;

ww_DRAM_CLK <= \DRAM_CLK~output_o\;

OTG_DATA(0) <= \OTG_DATA[0]~output_o\;

OTG_DATA(1) <= \OTG_DATA[1]~output_o\;

OTG_DATA(2) <= \OTG_DATA[2]~output_o\;

OTG_DATA(3) <= \OTG_DATA[3]~output_o\;

OTG_DATA(4) <= \OTG_DATA[4]~output_o\;

OTG_DATA(5) <= \OTG_DATA[5]~output_o\;

OTG_DATA(6) <= \OTG_DATA[6]~output_o\;

OTG_DATA(7) <= \OTG_DATA[7]~output_o\;

OTG_DATA(8) <= \OTG_DATA[8]~output_o\;

OTG_DATA(9) <= \OTG_DATA[9]~output_o\;

OTG_DATA(10) <= \OTG_DATA[10]~output_o\;

OTG_DATA(11) <= \OTG_DATA[11]~output_o\;

OTG_DATA(12) <= \OTG_DATA[12]~output_o\;

OTG_DATA(13) <= \OTG_DATA[13]~output_o\;

OTG_DATA(14) <= \OTG_DATA[14]~output_o\;

OTG_DATA(15) <= \OTG_DATA[15]~output_o\;

DRAM_DQ(0) <= \DRAM_DQ[0]~output_o\;

DRAM_DQ(1) <= \DRAM_DQ[1]~output_o\;

DRAM_DQ(2) <= \DRAM_DQ[2]~output_o\;

DRAM_DQ(3) <= \DRAM_DQ[3]~output_o\;

DRAM_DQ(4) <= \DRAM_DQ[4]~output_o\;

DRAM_DQ(5) <= \DRAM_DQ[5]~output_o\;

DRAM_DQ(6) <= \DRAM_DQ[6]~output_o\;

DRAM_DQ(7) <= \DRAM_DQ[7]~output_o\;

DRAM_DQ(8) <= \DRAM_DQ[8]~output_o\;

DRAM_DQ(9) <= \DRAM_DQ[9]~output_o\;

DRAM_DQ(10) <= \DRAM_DQ[10]~output_o\;

DRAM_DQ(11) <= \DRAM_DQ[11]~output_o\;

DRAM_DQ(12) <= \DRAM_DQ[12]~output_o\;

DRAM_DQ(13) <= \DRAM_DQ[13]~output_o\;

DRAM_DQ(14) <= \DRAM_DQ[14]~output_o\;

DRAM_DQ(15) <= \DRAM_DQ[15]~output_o\;

DRAM_DQ(16) <= \DRAM_DQ[16]~output_o\;

DRAM_DQ(17) <= \DRAM_DQ[17]~output_o\;

DRAM_DQ(18) <= \DRAM_DQ[18]~output_o\;

DRAM_DQ(19) <= \DRAM_DQ[19]~output_o\;

DRAM_DQ(20) <= \DRAM_DQ[20]~output_o\;

DRAM_DQ(21) <= \DRAM_DQ[21]~output_o\;

DRAM_DQ(22) <= \DRAM_DQ[22]~output_o\;

DRAM_DQ(23) <= \DRAM_DQ[23]~output_o\;

DRAM_DQ(24) <= \DRAM_DQ[24]~output_o\;

DRAM_DQ(25) <= \DRAM_DQ[25]~output_o\;

DRAM_DQ(26) <= \DRAM_DQ[26]~output_o\;

DRAM_DQ(27) <= \DRAM_DQ[27]~output_o\;

DRAM_DQ(28) <= \DRAM_DQ[28]~output_o\;

DRAM_DQ(29) <= \DRAM_DQ[29]~output_o\;

DRAM_DQ(30) <= \DRAM_DQ[30]~output_o\;

DRAM_DQ(31) <= \DRAM_DQ[31]~output_o\;
END structure;


