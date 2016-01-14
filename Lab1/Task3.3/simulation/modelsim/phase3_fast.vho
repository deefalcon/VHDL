-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "01/13/2016 23:34:46"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	phase3 IS
    PORT (
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	CLOCK_27 : IN std_logic;
	CLOCK_50 : IN std_logic;
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END phase3;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF phase3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_CLOCK_27 : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \u8|q_internal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count50[18]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count27[18]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u9|q_internal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u8|LessThan0~1_cout\ : std_logic;
SIGNAL \u8|LessThan0~3_cout\ : std_logic;
SIGNAL \u8|LessThan0~5_cout\ : std_logic;
SIGNAL \u8|LessThan0~7_cout\ : std_logic;
SIGNAL \u8|LessThan0~9_cout\ : std_logic;
SIGNAL \u8|LessThan0~11_cout\ : std_logic;
SIGNAL \u8|LessThan0~13_cout\ : std_logic;
SIGNAL \u8|LessThan0~14_combout\ : std_logic;
SIGNAL \u9|LessThan0~1_cout\ : std_logic;
SIGNAL \u9|LessThan0~3_cout\ : std_logic;
SIGNAL \u9|LessThan0~5_cout\ : std_logic;
SIGNAL \u9|LessThan0~7_cout\ : std_logic;
SIGNAL \u9|LessThan0~9_cout\ : std_logic;
SIGNAL \u9|LessThan0~11_cout\ : std_logic;
SIGNAL \u9|LessThan0~13_cout\ : std_logic;
SIGNAL \u9|LessThan0~14_combout\ : std_logic;
SIGNAL \u8|count[0]~9_combout\ : std_logic;
SIGNAL \u8|count[0]~10\ : std_logic;
SIGNAL \u8|count[1]~11_combout\ : std_logic;
SIGNAL \u8|count[1]~12\ : std_logic;
SIGNAL \u8|count[2]~13_combout\ : std_logic;
SIGNAL \u8|count[2]~14\ : std_logic;
SIGNAL \u8|count[3]~15_combout\ : std_logic;
SIGNAL \u8|count[3]~16\ : std_logic;
SIGNAL \u8|count[4]~17_combout\ : std_logic;
SIGNAL \u8|count[4]~18\ : std_logic;
SIGNAL \u8|count[5]~19_combout\ : std_logic;
SIGNAL \u8|count[5]~20\ : std_logic;
SIGNAL \u8|count[6]~21_combout\ : std_logic;
SIGNAL \u8|count[6]~22\ : std_logic;
SIGNAL \u8|count[7]~23_combout\ : std_logic;
SIGNAL \u8|count[7]~24\ : std_logic;
SIGNAL \u8|count[8]~25_combout\ : std_logic;
SIGNAL \count27[1]~18_combout\ : std_logic;
SIGNAL \count27[1]~19\ : std_logic;
SIGNAL \count27[2]~20_combout\ : std_logic;
SIGNAL \count27[2]~21\ : std_logic;
SIGNAL \count27[3]~22_combout\ : std_logic;
SIGNAL \count27[3]~23\ : std_logic;
SIGNAL \count27[4]~24_combout\ : std_logic;
SIGNAL \count27[4]~25\ : std_logic;
SIGNAL \count27[5]~26_combout\ : std_logic;
SIGNAL \count27[5]~27\ : std_logic;
SIGNAL \count27[6]~28_combout\ : std_logic;
SIGNAL \count27[6]~29\ : std_logic;
SIGNAL \count27[7]~30_combout\ : std_logic;
SIGNAL \count27[7]~31\ : std_logic;
SIGNAL \count27[8]~32_combout\ : std_logic;
SIGNAL \count27[8]~33\ : std_logic;
SIGNAL \count27[9]~34_combout\ : std_logic;
SIGNAL \count27[9]~35\ : std_logic;
SIGNAL \count27[10]~36_combout\ : std_logic;
SIGNAL \count27[10]~37\ : std_logic;
SIGNAL \count27[11]~38_combout\ : std_logic;
SIGNAL \count27[11]~39\ : std_logic;
SIGNAL \count27[12]~40_combout\ : std_logic;
SIGNAL \count27[12]~41\ : std_logic;
SIGNAL \count27[13]~42_combout\ : std_logic;
SIGNAL \count27[13]~43\ : std_logic;
SIGNAL \count27[14]~44_combout\ : std_logic;
SIGNAL \count27[14]~45\ : std_logic;
SIGNAL \count27[15]~46_combout\ : std_logic;
SIGNAL \count27[15]~47\ : std_logic;
SIGNAL \count27[16]~48_combout\ : std_logic;
SIGNAL \count27[16]~49\ : std_logic;
SIGNAL \count27[17]~50_combout\ : std_logic;
SIGNAL \count27[17]~51\ : std_logic;
SIGNAL \count27[18]~52_combout\ : std_logic;
SIGNAL \u9|count[0]~9_combout\ : std_logic;
SIGNAL \u9|count[0]~10\ : std_logic;
SIGNAL \u9|count[1]~11_combout\ : std_logic;
SIGNAL \u9|count[1]~12\ : std_logic;
SIGNAL \u9|count[2]~13_combout\ : std_logic;
SIGNAL \u9|count[2]~14\ : std_logic;
SIGNAL \u9|count[3]~15_combout\ : std_logic;
SIGNAL \u9|count[3]~16\ : std_logic;
SIGNAL \u9|count[4]~17_combout\ : std_logic;
SIGNAL \u9|count[4]~18\ : std_logic;
SIGNAL \u9|count[5]~19_combout\ : std_logic;
SIGNAL \u9|count[5]~20\ : std_logic;
SIGNAL \u9|count[6]~21_combout\ : std_logic;
SIGNAL \u9|count[6]~22\ : std_logic;
SIGNAL \u9|count[7]~23_combout\ : std_logic;
SIGNAL \u9|count[7]~24\ : std_logic;
SIGNAL \u9|count[8]~25_combout\ : std_logic;
SIGNAL \count50[1]~18_combout\ : std_logic;
SIGNAL \count50[1]~19\ : std_logic;
SIGNAL \count50[2]~20_combout\ : std_logic;
SIGNAL \count50[2]~21\ : std_logic;
SIGNAL \count50[3]~22_combout\ : std_logic;
SIGNAL \count50[3]~23\ : std_logic;
SIGNAL \count50[4]~24_combout\ : std_logic;
SIGNAL \count50[4]~25\ : std_logic;
SIGNAL \count50[5]~26_combout\ : std_logic;
SIGNAL \count50[5]~27\ : std_logic;
SIGNAL \count50[6]~28_combout\ : std_logic;
SIGNAL \count50[6]~29\ : std_logic;
SIGNAL \count50[7]~30_combout\ : std_logic;
SIGNAL \count50[7]~31\ : std_logic;
SIGNAL \count50[8]~32_combout\ : std_logic;
SIGNAL \count50[8]~33\ : std_logic;
SIGNAL \count50[9]~34_combout\ : std_logic;
SIGNAL \count50[9]~35\ : std_logic;
SIGNAL \count50[10]~36_combout\ : std_logic;
SIGNAL \count50[10]~37\ : std_logic;
SIGNAL \count50[11]~38_combout\ : std_logic;
SIGNAL \count50[11]~39\ : std_logic;
SIGNAL \count50[12]~40_combout\ : std_logic;
SIGNAL \count50[12]~41\ : std_logic;
SIGNAL \count50[13]~42_combout\ : std_logic;
SIGNAL \count50[13]~43\ : std_logic;
SIGNAL \count50[14]~44_combout\ : std_logic;
SIGNAL \count50[14]~45\ : std_logic;
SIGNAL \count50[15]~46_combout\ : std_logic;
SIGNAL \count50[15]~47\ : std_logic;
SIGNAL \count50[16]~48_combout\ : std_logic;
SIGNAL \count50[16]~49\ : std_logic;
SIGNAL \count50[17]~50_combout\ : std_logic;
SIGNAL \count50[17]~51\ : std_logic;
SIGNAL \count50[18]~52_combout\ : std_logic;
SIGNAL \u8|q_internal~regout\ : std_logic;
SIGNAL \u9|q_internal~regout\ : std_logic;
SIGNAL \u8|q_internal~0_combout\ : std_logic;
SIGNAL \u9|q_internal~0_combout\ : std_logic;
SIGNAL \u8|LessThan0~16_combout\ : std_logic;
SIGNAL \u9|LessThan0~16_combout\ : std_logic;
SIGNAL \count27[0]~54_combout\ : std_logic;
SIGNAL \count50[0]~54_combout\ : std_logic;
SIGNAL \CLOCK_27~combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \u8|q_internal~clkctrl_outclk\ : std_logic;
SIGNAL \count50[18]~clkctrl_outclk\ : std_logic;
SIGNAL \count27[18]~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \u9|q_internal~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_27~clkctrl_outclk\ : std_logic;
SIGNAL \u0|Mux1~0_combout\ : std_logic;
SIGNAL \u0|Mux0~0_combout\ : std_logic;
SIGNAL \u0|Mux2~0_combout\ : std_logic;
SIGNAL \u0|Mux9~0_combout\ : std_logic;
SIGNAL \u0|Mux8~0_combout\ : std_logic;
SIGNAL \u0|Mux7~0_combout\ : std_logic;
SIGNAL \u0|Mux7~1_combout\ : std_logic;
SIGNAL \u0|Mux5~0_combout\ : std_logic;
SIGNAL \u0|Mux4~0_combout\ : std_logic;
SIGNAL \u1|Mux0~0_combout\ : std_logic;
SIGNAL \u1|Mux1~0_combout\ : std_logic;
SIGNAL \u1|Mux2~0_combout\ : std_logic;
SIGNAL \u1|Mux9~0_combout\ : std_logic;
SIGNAL \u1|Mux8~0_combout\ : std_logic;
SIGNAL \u1|Mux7~0_combout\ : std_logic;
SIGNAL \u1|Mux7~1_combout\ : std_logic;
SIGNAL \u1|Mux5~0_combout\ : std_logic;
SIGNAL \u1|Mux4~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u9|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|current_state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL count50 : std_logic_vector(18 DOWNTO 0);
SIGNAL \u0|current_state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL count27 : std_logic_vector(18 DOWNTO 0);
SIGNAL \u8|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \u0|ALT_INV_Mux8~0_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOCK_27 <= CLOCK_27;
ww_CLOCK_50 <= CLOCK_50;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u8|q_internal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u8|q_internal~regout\);

\count50[18]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & count50(18));

\count27[18]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & count27(18));

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

\u9|q_internal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u9|q_internal~regout\);

\CLOCK_27~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_27~combout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\u1|ALT_INV_Mux4~0_combout\ <= NOT \u1|Mux4~0_combout\;
\u1|ALT_INV_Mux5~0_combout\ <= NOT \u1|Mux5~0_combout\;
\u1|ALT_INV_Mux7~1_combout\ <= NOT \u1|Mux7~1_combout\;
\u1|ALT_INV_Mux8~0_combout\ <= NOT \u1|Mux8~0_combout\;
\u0|ALT_INV_Mux4~0_combout\ <= NOT \u0|Mux4~0_combout\;
\u0|ALT_INV_Mux5~0_combout\ <= NOT \u0|Mux5~0_combout\;
\u0|ALT_INV_Mux7~1_combout\ <= NOT \u0|Mux7~1_combout\;
\u0|ALT_INV_Mux8~0_combout\ <= NOT \u0|Mux8~0_combout\;

-- Location: LCFF_X15_Y17_N15
\u8|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count27[18]~clkctrl_outclk\,
	datain => \u8|count[7]~23_combout\,
	sclr => \u8|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count\(7));

-- Location: LCFF_X15_Y17_N13
\u8|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count27[18]~clkctrl_outclk\,
	datain => \u8|count[6]~21_combout\,
	sclr => \u8|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count\(6));

-- Location: LCFF_X15_Y17_N11
\u8|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count27[18]~clkctrl_outclk\,
	datain => \u8|count[5]~19_combout\,
	sclr => \u8|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count\(5));

-- Location: LCFF_X15_Y17_N9
\u8|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count27[18]~clkctrl_outclk\,
	datain => \u8|count[4]~17_combout\,
	sclr => \u8|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count\(4));

-- Location: LCFF_X15_Y17_N7
\u8|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count27[18]~clkctrl_outclk\,
	datain => \u8|count[3]~15_combout\,
	sclr => \u8|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count\(3));

-- Location: LCFF_X15_Y17_N5
\u8|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count27[18]~clkctrl_outclk\,
	datain => \u8|count[2]~13_combout\,
	sclr => \u8|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count\(2));

-- Location: LCFF_X15_Y17_N3
\u8|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count27[18]~clkctrl_outclk\,
	datain => \u8|count[1]~11_combout\,
	sclr => \u8|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count\(1));

-- Location: LCFF_X15_Y17_N1
\u8|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count27[18]~clkctrl_outclk\,
	datain => \u8|count[0]~9_combout\,
	sclr => \u8|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count\(0));

-- Location: LCCOMB_X14_Y17_N4
\u8|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~1_cout\ = CARRY((!\SW~combout\(10) & \u8|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \u8|count\(0),
	datad => VCC,
	cout => \u8|LessThan0~1_cout\);

-- Location: LCCOMB_X14_Y17_N6
\u8|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~3_cout\ = CARRY((\u8|count\(1) & (\SW~combout\(11) & !\u8|LessThan0~1_cout\)) # (!\u8|count\(1) & ((\SW~combout\(11)) # (!\u8|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(1),
	datab => \SW~combout\(11),
	datad => VCC,
	cin => \u8|LessThan0~1_cout\,
	cout => \u8|LessThan0~3_cout\);

-- Location: LCCOMB_X14_Y17_N8
\u8|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~5_cout\ = CARRY((\u8|count\(2) & ((!\u8|LessThan0~3_cout\) # (!\SW~combout\(12)))) # (!\u8|count\(2) & (!\SW~combout\(12) & !\u8|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(2),
	datab => \SW~combout\(12),
	datad => VCC,
	cin => \u8|LessThan0~3_cout\,
	cout => \u8|LessThan0~5_cout\);

-- Location: LCCOMB_X14_Y17_N10
\u8|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~7_cout\ = CARRY((\u8|count\(3) & (\SW~combout\(13) & !\u8|LessThan0~5_cout\)) # (!\u8|count\(3) & ((\SW~combout\(13)) # (!\u8|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(3),
	datab => \SW~combout\(13),
	datad => VCC,
	cin => \u8|LessThan0~5_cout\,
	cout => \u8|LessThan0~7_cout\);

-- Location: LCCOMB_X14_Y17_N12
\u8|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~9_cout\ = CARRY((\SW~combout\(14) & (\u8|count\(4) & !\u8|LessThan0~7_cout\)) # (!\SW~combout\(14) & ((\u8|count\(4)) # (!\u8|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \u8|count\(4),
	datad => VCC,
	cin => \u8|LessThan0~7_cout\,
	cout => \u8|LessThan0~9_cout\);

-- Location: LCCOMB_X14_Y17_N14
\u8|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~11_cout\ = CARRY((\SW~combout\(15) & ((!\u8|LessThan0~9_cout\) # (!\u8|count\(5)))) # (!\SW~combout\(15) & (!\u8|count\(5) & !\u8|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \u8|count\(5),
	datad => VCC,
	cin => \u8|LessThan0~9_cout\,
	cout => \u8|LessThan0~11_cout\);

-- Location: LCCOMB_X14_Y17_N16
\u8|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~13_cout\ = CARRY((\SW~combout\(16) & (\u8|count\(6) & !\u8|LessThan0~11_cout\)) # (!\SW~combout\(16) & ((\u8|count\(6)) # (!\u8|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \u8|count\(6),
	datad => VCC,
	cin => \u8|LessThan0~11_cout\,
	cout => \u8|LessThan0~13_cout\);

-- Location: LCCOMB_X14_Y17_N18
\u8|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~14_combout\ = (\u8|count\(7) & ((\u8|LessThan0~13_cout\) # (!\SW~combout\(17)))) # (!\u8|count\(7) & (\u8|LessThan0~13_cout\ & !\SW~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|count\(7),
	datad => \SW~combout\(17),
	cin => \u8|LessThan0~13_cout\,
	combout => \u8|LessThan0~14_combout\);

-- Location: LCFF_X15_Y17_N17
\u8|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count27[18]~clkctrl_outclk\,
	datain => \u8|count[8]~25_combout\,
	sclr => \u8|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count\(8));

-- Location: LCFF_X64_Y19_N17
\count27[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[18]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(18));

-- Location: LCFF_X30_Y35_N17
\u9|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count50[18]~clkctrl_outclk\,
	datain => \u9|count[7]~23_combout\,
	sclr => \u9|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|count\(7));

-- Location: LCFF_X30_Y35_N15
\u9|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count50[18]~clkctrl_outclk\,
	datain => \u9|count[6]~21_combout\,
	sclr => \u9|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|count\(6));

-- Location: LCFF_X30_Y35_N13
\u9|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count50[18]~clkctrl_outclk\,
	datain => \u9|count[5]~19_combout\,
	sclr => \u9|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|count\(5));

-- Location: LCFF_X30_Y35_N11
\u9|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count50[18]~clkctrl_outclk\,
	datain => \u9|count[4]~17_combout\,
	sclr => \u9|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|count\(4));

-- Location: LCFF_X30_Y35_N9
\u9|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count50[18]~clkctrl_outclk\,
	datain => \u9|count[3]~15_combout\,
	sclr => \u9|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|count\(3));

-- Location: LCFF_X30_Y35_N7
\u9|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count50[18]~clkctrl_outclk\,
	datain => \u9|count[2]~13_combout\,
	sclr => \u9|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|count\(2));

-- Location: LCFF_X30_Y35_N5
\u9|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count50[18]~clkctrl_outclk\,
	datain => \u9|count[1]~11_combout\,
	sclr => \u9|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|count\(1));

-- Location: LCFF_X30_Y35_N3
\u9|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count50[18]~clkctrl_outclk\,
	datain => \u9|count[0]~9_combout\,
	sclr => \u9|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|count\(0));

-- Location: LCCOMB_X31_Y35_N0
\u9|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan0~1_cout\ = CARRY((\u9|count\(0) & !\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9|count\(0),
	datab => \SW~combout\(2),
	datad => VCC,
	cout => \u9|LessThan0~1_cout\);

-- Location: LCCOMB_X31_Y35_N2
\u9|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan0~3_cout\ = CARRY((\SW~combout\(3) & ((!\u9|LessThan0~1_cout\) # (!\u9|count\(1)))) # (!\SW~combout\(3) & (!\u9|count\(1) & !\u9|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \u9|count\(1),
	datad => VCC,
	cin => \u9|LessThan0~1_cout\,
	cout => \u9|LessThan0~3_cout\);

-- Location: LCCOMB_X31_Y35_N4
\u9|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan0~5_cout\ = CARRY((\SW~combout\(4) & (\u9|count\(2) & !\u9|LessThan0~3_cout\)) # (!\SW~combout\(4) & ((\u9|count\(2)) # (!\u9|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \u9|count\(2),
	datad => VCC,
	cin => \u9|LessThan0~3_cout\,
	cout => \u9|LessThan0~5_cout\);

-- Location: LCCOMB_X31_Y35_N6
\u9|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan0~7_cout\ = CARRY((\u9|count\(3) & (\SW~combout\(5) & !\u9|LessThan0~5_cout\)) # (!\u9|count\(3) & ((\SW~combout\(5)) # (!\u9|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9|count\(3),
	datab => \SW~combout\(5),
	datad => VCC,
	cin => \u9|LessThan0~5_cout\,
	cout => \u9|LessThan0~7_cout\);

-- Location: LCCOMB_X31_Y35_N8
\u9|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan0~9_cout\ = CARRY((\u9|count\(4) & ((!\u9|LessThan0~7_cout\) # (!\SW~combout\(6)))) # (!\u9|count\(4) & (!\SW~combout\(6) & !\u9|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9|count\(4),
	datab => \SW~combout\(6),
	datad => VCC,
	cin => \u9|LessThan0~7_cout\,
	cout => \u9|LessThan0~9_cout\);

-- Location: LCCOMB_X31_Y35_N10
\u9|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan0~11_cout\ = CARRY((\u9|count\(5) & (\SW~combout\(7) & !\u9|LessThan0~9_cout\)) # (!\u9|count\(5) & ((\SW~combout\(7)) # (!\u9|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9|count\(5),
	datab => \SW~combout\(7),
	datad => VCC,
	cin => \u9|LessThan0~9_cout\,
	cout => \u9|LessThan0~11_cout\);

-- Location: LCCOMB_X31_Y35_N12
\u9|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan0~13_cout\ = CARRY((\u9|count\(6) & ((!\u9|LessThan0~11_cout\) # (!\SW~combout\(8)))) # (!\u9|count\(6) & (!\SW~combout\(8) & !\u9|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9|count\(6),
	datab => \SW~combout\(8),
	datad => VCC,
	cin => \u9|LessThan0~11_cout\,
	cout => \u9|LessThan0~13_cout\);

-- Location: LCCOMB_X31_Y35_N14
\u9|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan0~14_combout\ = (\SW~combout\(9) & (\u9|LessThan0~13_cout\ & \u9|count\(7))) # (!\SW~combout\(9) & ((\u9|LessThan0~13_cout\) # (\u9|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datad => \u9|count\(7),
	cin => \u9|LessThan0~13_cout\,
	combout => \u9|LessThan0~14_combout\);

-- Location: LCFF_X30_Y35_N19
\u9|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count50[18]~clkctrl_outclk\,
	datain => \u9|count[8]~25_combout\,
	sclr => \u9|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|count\(8));

-- Location: LCFF_X31_Y33_N17
\count50[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[18]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(18));

-- Location: LCCOMB_X15_Y17_N0
\u8|count[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count[0]~9_combout\ = \u8|count\(0) $ (VCC)
-- \u8|count[0]~10\ = CARRY(\u8|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|count\(0),
	datad => VCC,
	combout => \u8|count[0]~9_combout\,
	cout => \u8|count[0]~10\);

-- Location: LCCOMB_X15_Y17_N2
\u8|count[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count[1]~11_combout\ = (\u8|count\(1) & (!\u8|count[0]~10\)) # (!\u8|count\(1) & ((\u8|count[0]~10\) # (GND)))
-- \u8|count[1]~12\ = CARRY((!\u8|count[0]~10\) # (!\u8|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|count\(1),
	datad => VCC,
	cin => \u8|count[0]~10\,
	combout => \u8|count[1]~11_combout\,
	cout => \u8|count[1]~12\);

-- Location: LCCOMB_X15_Y17_N4
\u8|count[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count[2]~13_combout\ = (\u8|count\(2) & (\u8|count[1]~12\ $ (GND))) # (!\u8|count\(2) & (!\u8|count[1]~12\ & VCC))
-- \u8|count[2]~14\ = CARRY((\u8|count\(2) & !\u8|count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|count\(2),
	datad => VCC,
	cin => \u8|count[1]~12\,
	combout => \u8|count[2]~13_combout\,
	cout => \u8|count[2]~14\);

-- Location: LCCOMB_X15_Y17_N6
\u8|count[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count[3]~15_combout\ = (\u8|count\(3) & (!\u8|count[2]~14\)) # (!\u8|count\(3) & ((\u8|count[2]~14\) # (GND)))
-- \u8|count[3]~16\ = CARRY((!\u8|count[2]~14\) # (!\u8|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(3),
	datad => VCC,
	cin => \u8|count[2]~14\,
	combout => \u8|count[3]~15_combout\,
	cout => \u8|count[3]~16\);

-- Location: LCCOMB_X15_Y17_N8
\u8|count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count[4]~17_combout\ = (\u8|count\(4) & (\u8|count[3]~16\ $ (GND))) # (!\u8|count\(4) & (!\u8|count[3]~16\ & VCC))
-- \u8|count[4]~18\ = CARRY((\u8|count\(4) & !\u8|count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|count\(4),
	datad => VCC,
	cin => \u8|count[3]~16\,
	combout => \u8|count[4]~17_combout\,
	cout => \u8|count[4]~18\);

-- Location: LCCOMB_X15_Y17_N10
\u8|count[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count[5]~19_combout\ = (\u8|count\(5) & (!\u8|count[4]~18\)) # (!\u8|count\(5) & ((\u8|count[4]~18\) # (GND)))
-- \u8|count[5]~20\ = CARRY((!\u8|count[4]~18\) # (!\u8|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(5),
	datad => VCC,
	cin => \u8|count[4]~18\,
	combout => \u8|count[5]~19_combout\,
	cout => \u8|count[5]~20\);

-- Location: LCCOMB_X15_Y17_N12
\u8|count[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count[6]~21_combout\ = (\u8|count\(6) & (\u8|count[5]~20\ $ (GND))) # (!\u8|count\(6) & (!\u8|count[5]~20\ & VCC))
-- \u8|count[6]~22\ = CARRY((\u8|count\(6) & !\u8|count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(6),
	datad => VCC,
	cin => \u8|count[5]~20\,
	combout => \u8|count[6]~21_combout\,
	cout => \u8|count[6]~22\);

-- Location: LCCOMB_X15_Y17_N14
\u8|count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count[7]~23_combout\ = (\u8|count\(7) & (!\u8|count[6]~22\)) # (!\u8|count\(7) & ((\u8|count[6]~22\) # (GND)))
-- \u8|count[7]~24\ = CARRY((!\u8|count[6]~22\) # (!\u8|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|count\(7),
	datad => VCC,
	cin => \u8|count[6]~22\,
	combout => \u8|count[7]~23_combout\,
	cout => \u8|count[7]~24\);

-- Location: LCCOMB_X15_Y17_N16
\u8|count[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count[8]~25_combout\ = \u8|count\(8) $ (!\u8|count[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(8),
	cin => \u8|count[7]~24\,
	combout => \u8|count[8]~25_combout\);

-- Location: LCFF_X64_Y19_N15
\count27[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[17]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(17));

-- Location: LCFF_X64_Y19_N13
\count27[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[16]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(16));

-- Location: LCFF_X64_Y19_N11
\count27[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(15));

-- Location: LCFF_X64_Y19_N9
\count27[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[14]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(14));

-- Location: LCFF_X64_Y19_N7
\count27[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(13));

-- Location: LCFF_X64_Y19_N5
\count27[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(12));

-- Location: LCFF_X64_Y19_N3
\count27[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(11));

-- Location: LCFF_X64_Y19_N1
\count27[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[10]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(10));

-- Location: LCFF_X64_Y20_N31
\count27[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[9]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(9));

-- Location: LCFF_X64_Y20_N29
\count27[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(8));

-- Location: LCFF_X64_Y20_N27
\count27[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(7));

-- Location: LCFF_X64_Y20_N25
\count27[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(6));

-- Location: LCFF_X64_Y20_N23
\count27[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(5));

-- Location: LCFF_X64_Y20_N21
\count27[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(4));

-- Location: LCFF_X64_Y20_N19
\count27[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(3));

-- Location: LCFF_X64_Y20_N17
\count27[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(2));

-- Location: LCFF_X64_Y20_N15
\count27[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(1));

-- Location: LCCOMB_X64_Y20_N14
\count27[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[1]~18_combout\ = (count27(0) & (count27(1) $ (VCC))) # (!count27(0) & (count27(1) & VCC))
-- \count27[1]~19\ = CARRY((count27(0) & count27(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count27(0),
	datab => count27(1),
	datad => VCC,
	combout => \count27[1]~18_combout\,
	cout => \count27[1]~19\);

-- Location: LCCOMB_X64_Y20_N16
\count27[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[2]~20_combout\ = (count27(2) & (!\count27[1]~19\)) # (!count27(2) & ((\count27[1]~19\) # (GND)))
-- \count27[2]~21\ = CARRY((!\count27[1]~19\) # (!count27(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count27(2),
	datad => VCC,
	cin => \count27[1]~19\,
	combout => \count27[2]~20_combout\,
	cout => \count27[2]~21\);

-- Location: LCCOMB_X64_Y20_N18
\count27[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[3]~22_combout\ = (count27(3) & (\count27[2]~21\ $ (GND))) # (!count27(3) & (!\count27[2]~21\ & VCC))
-- \count27[3]~23\ = CARRY((count27(3) & !\count27[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count27(3),
	datad => VCC,
	cin => \count27[2]~21\,
	combout => \count27[3]~22_combout\,
	cout => \count27[3]~23\);

-- Location: LCCOMB_X64_Y20_N20
\count27[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[4]~24_combout\ = (count27(4) & (!\count27[3]~23\)) # (!count27(4) & ((\count27[3]~23\) # (GND)))
-- \count27[4]~25\ = CARRY((!\count27[3]~23\) # (!count27(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count27(4),
	datad => VCC,
	cin => \count27[3]~23\,
	combout => \count27[4]~24_combout\,
	cout => \count27[4]~25\);

-- Location: LCCOMB_X64_Y20_N22
\count27[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[5]~26_combout\ = (count27(5) & (\count27[4]~25\ $ (GND))) # (!count27(5) & (!\count27[4]~25\ & VCC))
-- \count27[5]~27\ = CARRY((count27(5) & !\count27[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count27(5),
	datad => VCC,
	cin => \count27[4]~25\,
	combout => \count27[5]~26_combout\,
	cout => \count27[5]~27\);

-- Location: LCCOMB_X64_Y20_N24
\count27[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[6]~28_combout\ = (count27(6) & (!\count27[5]~27\)) # (!count27(6) & ((\count27[5]~27\) # (GND)))
-- \count27[6]~29\ = CARRY((!\count27[5]~27\) # (!count27(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count27(6),
	datad => VCC,
	cin => \count27[5]~27\,
	combout => \count27[6]~28_combout\,
	cout => \count27[6]~29\);

-- Location: LCCOMB_X64_Y20_N26
\count27[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[7]~30_combout\ = (count27(7) & (\count27[6]~29\ $ (GND))) # (!count27(7) & (!\count27[6]~29\ & VCC))
-- \count27[7]~31\ = CARRY((count27(7) & !\count27[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count27(7),
	datad => VCC,
	cin => \count27[6]~29\,
	combout => \count27[7]~30_combout\,
	cout => \count27[7]~31\);

-- Location: LCCOMB_X64_Y20_N28
\count27[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[8]~32_combout\ = (count27(8) & (!\count27[7]~31\)) # (!count27(8) & ((\count27[7]~31\) # (GND)))
-- \count27[8]~33\ = CARRY((!\count27[7]~31\) # (!count27(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count27(8),
	datad => VCC,
	cin => \count27[7]~31\,
	combout => \count27[8]~32_combout\,
	cout => \count27[8]~33\);

-- Location: LCCOMB_X64_Y20_N30
\count27[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[9]~34_combout\ = (count27(9) & (\count27[8]~33\ $ (GND))) # (!count27(9) & (!\count27[8]~33\ & VCC))
-- \count27[9]~35\ = CARRY((count27(9) & !\count27[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count27(9),
	datad => VCC,
	cin => \count27[8]~33\,
	combout => \count27[9]~34_combout\,
	cout => \count27[9]~35\);

-- Location: LCCOMB_X64_Y19_N0
\count27[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[10]~36_combout\ = (count27(10) & (!\count27[9]~35\)) # (!count27(10) & ((\count27[9]~35\) # (GND)))
-- \count27[10]~37\ = CARRY((!\count27[9]~35\) # (!count27(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count27(10),
	datad => VCC,
	cin => \count27[9]~35\,
	combout => \count27[10]~36_combout\,
	cout => \count27[10]~37\);

-- Location: LCCOMB_X64_Y19_N2
\count27[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[11]~38_combout\ = (count27(11) & (\count27[10]~37\ $ (GND))) # (!count27(11) & (!\count27[10]~37\ & VCC))
-- \count27[11]~39\ = CARRY((count27(11) & !\count27[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count27(11),
	datad => VCC,
	cin => \count27[10]~37\,
	combout => \count27[11]~38_combout\,
	cout => \count27[11]~39\);

-- Location: LCCOMB_X64_Y19_N4
\count27[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[12]~40_combout\ = (count27(12) & (!\count27[11]~39\)) # (!count27(12) & ((\count27[11]~39\) # (GND)))
-- \count27[12]~41\ = CARRY((!\count27[11]~39\) # (!count27(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count27(12),
	datad => VCC,
	cin => \count27[11]~39\,
	combout => \count27[12]~40_combout\,
	cout => \count27[12]~41\);

-- Location: LCCOMB_X64_Y19_N6
\count27[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[13]~42_combout\ = (count27(13) & (\count27[12]~41\ $ (GND))) # (!count27(13) & (!\count27[12]~41\ & VCC))
-- \count27[13]~43\ = CARRY((count27(13) & !\count27[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count27(13),
	datad => VCC,
	cin => \count27[12]~41\,
	combout => \count27[13]~42_combout\,
	cout => \count27[13]~43\);

-- Location: LCCOMB_X64_Y19_N8
\count27[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[14]~44_combout\ = (count27(14) & (!\count27[13]~43\)) # (!count27(14) & ((\count27[13]~43\) # (GND)))
-- \count27[14]~45\ = CARRY((!\count27[13]~43\) # (!count27(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count27(14),
	datad => VCC,
	cin => \count27[13]~43\,
	combout => \count27[14]~44_combout\,
	cout => \count27[14]~45\);

-- Location: LCCOMB_X64_Y19_N10
\count27[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[15]~46_combout\ = (count27(15) & (\count27[14]~45\ $ (GND))) # (!count27(15) & (!\count27[14]~45\ & VCC))
-- \count27[15]~47\ = CARRY((count27(15) & !\count27[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count27(15),
	datad => VCC,
	cin => \count27[14]~45\,
	combout => \count27[15]~46_combout\,
	cout => \count27[15]~47\);

-- Location: LCCOMB_X64_Y19_N12
\count27[16]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[16]~48_combout\ = (count27(16) & (!\count27[15]~47\)) # (!count27(16) & ((\count27[15]~47\) # (GND)))
-- \count27[16]~49\ = CARRY((!\count27[15]~47\) # (!count27(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count27(16),
	datad => VCC,
	cin => \count27[15]~47\,
	combout => \count27[16]~48_combout\,
	cout => \count27[16]~49\);

-- Location: LCCOMB_X64_Y19_N14
\count27[17]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[17]~50_combout\ = (count27(17) & (\count27[16]~49\ $ (GND))) # (!count27(17) & (!\count27[16]~49\ & VCC))
-- \count27[17]~51\ = CARRY((count27(17) & !\count27[16]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count27(17),
	datad => VCC,
	cin => \count27[16]~49\,
	combout => \count27[17]~50_combout\,
	cout => \count27[17]~51\);

-- Location: LCCOMB_X64_Y19_N16
\count27[18]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[18]~52_combout\ = count27(18) $ (\count27[17]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count27(18),
	cin => \count27[17]~51\,
	combout => \count27[18]~52_combout\);

-- Location: LCCOMB_X30_Y35_N2
\u9|count[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|count[0]~9_combout\ = \u9|count\(0) $ (VCC)
-- \u9|count[0]~10\ = CARRY(\u9|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u9|count\(0),
	datad => VCC,
	combout => \u9|count[0]~9_combout\,
	cout => \u9|count[0]~10\);

-- Location: LCCOMB_X30_Y35_N4
\u9|count[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|count[1]~11_combout\ = (\u9|count\(1) & (!\u9|count[0]~10\)) # (!\u9|count\(1) & ((\u9|count[0]~10\) # (GND)))
-- \u9|count[1]~12\ = CARRY((!\u9|count[0]~10\) # (!\u9|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u9|count\(1),
	datad => VCC,
	cin => \u9|count[0]~10\,
	combout => \u9|count[1]~11_combout\,
	cout => \u9|count[1]~12\);

-- Location: LCCOMB_X30_Y35_N6
\u9|count[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|count[2]~13_combout\ = (\u9|count\(2) & (\u9|count[1]~12\ $ (GND))) # (!\u9|count\(2) & (!\u9|count[1]~12\ & VCC))
-- \u9|count[2]~14\ = CARRY((\u9|count\(2) & !\u9|count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9|count\(2),
	datad => VCC,
	cin => \u9|count[1]~12\,
	combout => \u9|count[2]~13_combout\,
	cout => \u9|count[2]~14\);

-- Location: LCCOMB_X30_Y35_N8
\u9|count[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|count[3]~15_combout\ = (\u9|count\(3) & (!\u9|count[2]~14\)) # (!\u9|count\(3) & ((\u9|count[2]~14\) # (GND)))
-- \u9|count[3]~16\ = CARRY((!\u9|count[2]~14\) # (!\u9|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u9|count\(3),
	datad => VCC,
	cin => \u9|count[2]~14\,
	combout => \u9|count[3]~15_combout\,
	cout => \u9|count[3]~16\);

-- Location: LCCOMB_X30_Y35_N10
\u9|count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|count[4]~17_combout\ = (\u9|count\(4) & (\u9|count[3]~16\ $ (GND))) # (!\u9|count\(4) & (!\u9|count[3]~16\ & VCC))
-- \u9|count[4]~18\ = CARRY((\u9|count\(4) & !\u9|count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9|count\(4),
	datad => VCC,
	cin => \u9|count[3]~16\,
	combout => \u9|count[4]~17_combout\,
	cout => \u9|count[4]~18\);

-- Location: LCCOMB_X30_Y35_N12
\u9|count[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|count[5]~19_combout\ = (\u9|count\(5) & (!\u9|count[4]~18\)) # (!\u9|count\(5) & ((\u9|count[4]~18\) # (GND)))
-- \u9|count[5]~20\ = CARRY((!\u9|count[4]~18\) # (!\u9|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9|count\(5),
	datad => VCC,
	cin => \u9|count[4]~18\,
	combout => \u9|count[5]~19_combout\,
	cout => \u9|count[5]~20\);

-- Location: LCCOMB_X30_Y35_N14
\u9|count[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|count[6]~21_combout\ = (\u9|count\(6) & (\u9|count[5]~20\ $ (GND))) # (!\u9|count\(6) & (!\u9|count[5]~20\ & VCC))
-- \u9|count[6]~22\ = CARRY((\u9|count\(6) & !\u9|count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u9|count\(6),
	datad => VCC,
	cin => \u9|count[5]~20\,
	combout => \u9|count[6]~21_combout\,
	cout => \u9|count[6]~22\);

-- Location: LCCOMB_X30_Y35_N16
\u9|count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|count[7]~23_combout\ = (\u9|count\(7) & (!\u9|count[6]~22\)) # (!\u9|count\(7) & ((\u9|count[6]~22\) # (GND)))
-- \u9|count[7]~24\ = CARRY((!\u9|count[6]~22\) # (!\u9|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u9|count\(7),
	datad => VCC,
	cin => \u9|count[6]~22\,
	combout => \u9|count[7]~23_combout\,
	cout => \u9|count[7]~24\);

-- Location: LCCOMB_X30_Y35_N18
\u9|count[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|count[8]~25_combout\ = \u9|count[7]~24\ $ (!\u9|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u9|count\(8),
	cin => \u9|count[7]~24\,
	combout => \u9|count[8]~25_combout\);

-- Location: LCFF_X31_Y33_N15
\count50[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[17]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(17));

-- Location: LCFF_X31_Y33_N13
\count50[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[16]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(16));

-- Location: LCFF_X31_Y33_N11
\count50[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(15));

-- Location: LCFF_X31_Y33_N9
\count50[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[14]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(14));

-- Location: LCFF_X31_Y33_N7
\count50[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(13));

-- Location: LCFF_X31_Y33_N5
\count50[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(12));

-- Location: LCFF_X31_Y33_N3
\count50[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(11));

-- Location: LCFF_X31_Y33_N1
\count50[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[10]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(10));

-- Location: LCFF_X31_Y34_N31
\count50[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[9]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(9));

-- Location: LCFF_X31_Y34_N29
\count50[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(8));

-- Location: LCFF_X31_Y34_N27
\count50[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(7));

-- Location: LCFF_X31_Y34_N25
\count50[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(6));

-- Location: LCFF_X31_Y34_N23
\count50[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(5));

-- Location: LCFF_X31_Y34_N21
\count50[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(4));

-- Location: LCFF_X31_Y34_N19
\count50[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(3));

-- Location: LCFF_X31_Y34_N17
\count50[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(2));

-- Location: LCFF_X31_Y34_N15
\count50[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(1));

-- Location: LCCOMB_X31_Y34_N14
\count50[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[1]~18_combout\ = (count50(0) & (count50(1) $ (VCC))) # (!count50(0) & (count50(1) & VCC))
-- \count50[1]~19\ = CARRY((count50(0) & count50(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count50(0),
	datab => count50(1),
	datad => VCC,
	combout => \count50[1]~18_combout\,
	cout => \count50[1]~19\);

-- Location: LCCOMB_X31_Y34_N16
\count50[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[2]~20_combout\ = (count50(2) & (!\count50[1]~19\)) # (!count50(2) & ((\count50[1]~19\) # (GND)))
-- \count50[2]~21\ = CARRY((!\count50[1]~19\) # (!count50(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(2),
	datad => VCC,
	cin => \count50[1]~19\,
	combout => \count50[2]~20_combout\,
	cout => \count50[2]~21\);

-- Location: LCCOMB_X31_Y34_N18
\count50[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[3]~22_combout\ = (count50(3) & (\count50[2]~21\ $ (GND))) # (!count50(3) & (!\count50[2]~21\ & VCC))
-- \count50[3]~23\ = CARRY((count50(3) & !\count50[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(3),
	datad => VCC,
	cin => \count50[2]~21\,
	combout => \count50[3]~22_combout\,
	cout => \count50[3]~23\);

-- Location: LCCOMB_X31_Y34_N20
\count50[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[4]~24_combout\ = (count50(4) & (!\count50[3]~23\)) # (!count50(4) & ((\count50[3]~23\) # (GND)))
-- \count50[4]~25\ = CARRY((!\count50[3]~23\) # (!count50(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(4),
	datad => VCC,
	cin => \count50[3]~23\,
	combout => \count50[4]~24_combout\,
	cout => \count50[4]~25\);

-- Location: LCCOMB_X31_Y34_N22
\count50[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[5]~26_combout\ = (count50(5) & (\count50[4]~25\ $ (GND))) # (!count50(5) & (!\count50[4]~25\ & VCC))
-- \count50[5]~27\ = CARRY((count50(5) & !\count50[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(5),
	datad => VCC,
	cin => \count50[4]~25\,
	combout => \count50[5]~26_combout\,
	cout => \count50[5]~27\);

-- Location: LCCOMB_X31_Y34_N24
\count50[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[6]~28_combout\ = (count50(6) & (!\count50[5]~27\)) # (!count50(6) & ((\count50[5]~27\) # (GND)))
-- \count50[6]~29\ = CARRY((!\count50[5]~27\) # (!count50(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(6),
	datad => VCC,
	cin => \count50[5]~27\,
	combout => \count50[6]~28_combout\,
	cout => \count50[6]~29\);

-- Location: LCCOMB_X31_Y34_N26
\count50[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[7]~30_combout\ = (count50(7) & (\count50[6]~29\ $ (GND))) # (!count50(7) & (!\count50[6]~29\ & VCC))
-- \count50[7]~31\ = CARRY((count50(7) & !\count50[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(7),
	datad => VCC,
	cin => \count50[6]~29\,
	combout => \count50[7]~30_combout\,
	cout => \count50[7]~31\);

-- Location: LCCOMB_X31_Y34_N28
\count50[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[8]~32_combout\ = (count50(8) & (!\count50[7]~31\)) # (!count50(8) & ((\count50[7]~31\) # (GND)))
-- \count50[8]~33\ = CARRY((!\count50[7]~31\) # (!count50(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(8),
	datad => VCC,
	cin => \count50[7]~31\,
	combout => \count50[8]~32_combout\,
	cout => \count50[8]~33\);

-- Location: LCCOMB_X31_Y34_N30
\count50[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[9]~34_combout\ = (count50(9) & (\count50[8]~33\ $ (GND))) # (!count50(9) & (!\count50[8]~33\ & VCC))
-- \count50[9]~35\ = CARRY((count50(9) & !\count50[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(9),
	datad => VCC,
	cin => \count50[8]~33\,
	combout => \count50[9]~34_combout\,
	cout => \count50[9]~35\);

-- Location: LCCOMB_X31_Y33_N0
\count50[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[10]~36_combout\ = (count50(10) & (!\count50[9]~35\)) # (!count50(10) & ((\count50[9]~35\) # (GND)))
-- \count50[10]~37\ = CARRY((!\count50[9]~35\) # (!count50(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(10),
	datad => VCC,
	cin => \count50[9]~35\,
	combout => \count50[10]~36_combout\,
	cout => \count50[10]~37\);

-- Location: LCCOMB_X31_Y33_N2
\count50[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[11]~38_combout\ = (count50(11) & (\count50[10]~37\ $ (GND))) # (!count50(11) & (!\count50[10]~37\ & VCC))
-- \count50[11]~39\ = CARRY((count50(11) & !\count50[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(11),
	datad => VCC,
	cin => \count50[10]~37\,
	combout => \count50[11]~38_combout\,
	cout => \count50[11]~39\);

-- Location: LCCOMB_X31_Y33_N4
\count50[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[12]~40_combout\ = (count50(12) & (!\count50[11]~39\)) # (!count50(12) & ((\count50[11]~39\) # (GND)))
-- \count50[12]~41\ = CARRY((!\count50[11]~39\) # (!count50(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(12),
	datad => VCC,
	cin => \count50[11]~39\,
	combout => \count50[12]~40_combout\,
	cout => \count50[12]~41\);

-- Location: LCCOMB_X31_Y33_N6
\count50[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[13]~42_combout\ = (count50(13) & (\count50[12]~41\ $ (GND))) # (!count50(13) & (!\count50[12]~41\ & VCC))
-- \count50[13]~43\ = CARRY((count50(13) & !\count50[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(13),
	datad => VCC,
	cin => \count50[12]~41\,
	combout => \count50[13]~42_combout\,
	cout => \count50[13]~43\);

-- Location: LCCOMB_X31_Y33_N8
\count50[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[14]~44_combout\ = (count50(14) & (!\count50[13]~43\)) # (!count50(14) & ((\count50[13]~43\) # (GND)))
-- \count50[14]~45\ = CARRY((!\count50[13]~43\) # (!count50(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(14),
	datad => VCC,
	cin => \count50[13]~43\,
	combout => \count50[14]~44_combout\,
	cout => \count50[14]~45\);

-- Location: LCCOMB_X31_Y33_N10
\count50[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[15]~46_combout\ = (count50(15) & (\count50[14]~45\ $ (GND))) # (!count50(15) & (!\count50[14]~45\ & VCC))
-- \count50[15]~47\ = CARRY((count50(15) & !\count50[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(15),
	datad => VCC,
	cin => \count50[14]~45\,
	combout => \count50[15]~46_combout\,
	cout => \count50[15]~47\);

-- Location: LCCOMB_X31_Y33_N12
\count50[16]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[16]~48_combout\ = (count50(16) & (!\count50[15]~47\)) # (!count50(16) & ((\count50[15]~47\) # (GND)))
-- \count50[16]~49\ = CARRY((!\count50[15]~47\) # (!count50(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(16),
	datad => VCC,
	cin => \count50[15]~47\,
	combout => \count50[16]~48_combout\,
	cout => \count50[16]~49\);

-- Location: LCCOMB_X31_Y33_N14
\count50[17]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[17]~50_combout\ = (count50(17) & (\count50[16]~49\ $ (GND))) # (!count50(17) & (!\count50[16]~49\ & VCC))
-- \count50[17]~51\ = CARRY((count50(17) & !\count50[16]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(17),
	datad => VCC,
	cin => \count50[16]~49\,
	combout => \count50[17]~50_combout\,
	cout => \count50[17]~51\);

-- Location: LCCOMB_X31_Y33_N16
\count50[18]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[18]~52_combout\ = count50(18) $ (\count50[17]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(18),
	cin => \count50[17]~51\,
	combout => \count50[18]~52_combout\);

-- Location: LCFF_X14_Y17_N1
\u8|q_internal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count27[18]~clkctrl_outclk\,
	datain => \u8|q_internal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|q_internal~regout\);

-- Location: LCFF_X31_Y35_N21
\u9|q_internal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \count50[18]~clkctrl_outclk\,
	datain => \u9|q_internal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|q_internal~regout\);

-- Location: LCCOMB_X14_Y17_N0
\u8|q_internal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|q_internal~0_combout\ = \u8|q_internal~regout\ $ (((\u8|count\(8)) # (\u8|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count\(8),
	datac => \u8|q_internal~regout\,
	datad => \u8|LessThan0~14_combout\,
	combout => \u8|q_internal~0_combout\);

-- Location: LCCOMB_X31_Y35_N20
\u9|q_internal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|q_internal~0_combout\ = \u9|q_internal~regout\ $ (((\u9|LessThan0~14_combout\) # (\u9|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u9|LessThan0~14_combout\,
	datac => \u9|q_internal~regout\,
	datad => \u9|count\(8),
	combout => \u9|q_internal~0_combout\);

-- Location: LCCOMB_X15_Y17_N26
\u8|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~16_combout\ = (\u8|count\(8)) # (\u8|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8|count\(8),
	datad => \u8|LessThan0~14_combout\,
	combout => \u8|LessThan0~16_combout\);

-- Location: LCFF_X64_Y20_N13
\count27[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_27~clkctrl_outclk\,
	datain => \count27[0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count27(0));

-- Location: LCCOMB_X30_Y35_N0
\u9|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan0~16_combout\ = (\u9|LessThan0~14_combout\) # (\u9|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u9|LessThan0~14_combout\,
	datad => \u9|count\(8),
	combout => \u9|LessThan0~16_combout\);

-- Location: LCFF_X31_Y34_N13
\count50[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(0));

-- Location: LCCOMB_X64_Y20_N12
\count27[0]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \count27[0]~54_combout\ = !count27(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count27(0),
	combout => \count27[0]~54_combout\);

-- Location: LCCOMB_X31_Y34_N12
\count50[0]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[0]~54_combout\ = !count50(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count50(0),
	combout => \count50[0]~54_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(17),
	combout => \SW~combout\(17));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(16),
	combout => \SW~combout\(16));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(15),
	combout => \SW~combout\(15));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(14),
	combout => \SW~combout\(14));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(13),
	combout => \SW~combout\(13));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(12),
	combout => \SW~combout\(12));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(11),
	combout => \SW~combout\(11));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(10),
	combout => \SW~combout\(10));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_27~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_27,
	combout => \CLOCK_27~combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G3
\u8|q_internal~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u8|q_internal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u8|q_internal~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\count50[18]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count50[18]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count50[18]~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\count27[18]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count27[18]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count27[18]~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: CLKCTRL_G8
\u9|q_internal~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u9|q_internal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u9|q_internal~clkctrl_outclk\);

-- Location: CLKCTRL_G11
\CLOCK_27~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_27~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_27~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y4_N6
\u0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux1~0_combout\ = (!\u0|current_state\(2) & (\u0|current_state\(1) $ (((\SW~combout\(1)) # (\u0|current_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \u0|current_state\(2),
	datac => \u0|current_state\(1),
	datad => \u0|current_state\(0),
	combout => \u0|Mux1~0_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCFF_X64_Y4_N7
\u0|current_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u8|q_internal~clkctrl_outclk\,
	datain => \u0|Mux1~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|current_state\(1));

-- Location: LCCOMB_X64_Y4_N28
\u0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux0~0_combout\ = (!\u0|current_state\(2) & (\u0|current_state\(1) & (\SW~combout\(1) $ (\u0|current_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \u0|current_state\(0),
	datac => \u0|current_state\(2),
	datad => \u0|current_state\(1),
	combout => \u0|Mux0~0_combout\);

-- Location: LCFF_X64_Y4_N29
\u0|current_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u8|q_internal~clkctrl_outclk\,
	datain => \u0|Mux0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|current_state\(2));

-- Location: LCCOMB_X64_Y4_N0
\u0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux2~0_combout\ = (\SW~combout\(1) & (!\u0|current_state\(1) & (\u0|current_state\(2) $ (\u0|current_state\(0))))) # (!\SW~combout\(1) & (!\u0|current_state\(2) & (!\u0|current_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \u0|current_state\(2),
	datac => \u0|current_state\(0),
	datad => \u0|current_state\(1),
	combout => \u0|Mux2~0_combout\);

-- Location: LCFF_X64_Y4_N1
\u0|current_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u8|q_internal~clkctrl_outclk\,
	datain => \u0|Mux2~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|current_state\(0));

-- Location: LCCOMB_X64_Y4_N22
\u0|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux9~0_combout\ = (\u0|current_state\(0) & ((\u0|current_state\(1)) # (\u0|current_state\(2)))) # (!\u0|current_state\(0) & (\u0|current_state\(1) & \u0|current_state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|current_state\(0),
	datab => \u0|current_state\(1),
	datac => \u0|current_state\(2),
	combout => \u0|Mux9~0_combout\);

-- Location: LCCOMB_X64_Y4_N24
\u0|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux8~0_combout\ = (\u0|current_state\(0) & ((!\u0|current_state\(2)))) # (!\u0|current_state\(0) & (!\u0|current_state\(1) & \u0|current_state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|current_state\(0),
	datab => \u0|current_state\(1),
	datac => \u0|current_state\(2),
	combout => \u0|Mux8~0_combout\);

-- Location: LCCOMB_X64_Y4_N2
\u0|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux7~0_combout\ = (\u0|current_state\(0) & ((\u0|current_state\(2)))) # (!\u0|current_state\(0) & (\u0|current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|current_state\(0),
	datab => \u0|current_state\(1),
	datac => \u0|current_state\(2),
	combout => \u0|Mux7~0_combout\);

-- Location: LCCOMB_X64_Y4_N16
\u0|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux7~1_combout\ = (!\u0|current_state\(0) & !\u0|current_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|current_state\(0),
	datac => \u0|current_state\(2),
	combout => \u0|Mux7~1_combout\);

-- Location: LCCOMB_X64_Y4_N14
\u0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux5~0_combout\ = \u0|current_state\(2) $ (((\u0|current_state\(0)) # (\u0|current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|current_state\(0),
	datab => \u0|current_state\(1),
	datac => \u0|current_state\(2),
	combout => \u0|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\u0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux4~0_combout\ = ((!\u0|current_state\(0) & !\u0|current_state\(1))) # (!\u0|current_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|current_state\(0),
	datab => \u0|current_state\(1),
	datac => \u0|current_state\(2),
	combout => \u0|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y1_N28
\u1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Mux0~0_combout\ = (\u1|current_state\(1) & (!\u1|current_state\(2) & (\SW~combout\(0) $ (\u1|current_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u1|current_state\(1),
	datac => \u1|current_state\(2),
	datad => \u1|current_state\(0),
	combout => \u1|Mux0~0_combout\);

-- Location: LCFF_X28_Y1_N29
\u1|current_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u9|q_internal~clkctrl_outclk\,
	datain => \u1|Mux0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|current_state\(2));

-- Location: LCCOMB_X28_Y1_N18
\u1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Mux1~0_combout\ = (!\u1|current_state\(2) & (\u1|current_state\(1) $ (((\SW~combout\(0)) # (\u1|current_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u1|current_state\(2),
	datac => \u1|current_state\(1),
	datad => \u1|current_state\(0),
	combout => \u1|Mux1~0_combout\);

-- Location: LCFF_X28_Y1_N19
\u1|current_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u9|q_internal~clkctrl_outclk\,
	datain => \u1|Mux1~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|current_state\(1));

-- Location: LCCOMB_X28_Y1_N12
\u1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Mux2~0_combout\ = (\SW~combout\(0) & (!\u1|current_state\(1) & (\u1|current_state\(0) $ (\u1|current_state\(2))))) # (!\SW~combout\(0) & (((!\u1|current_state\(0) & !\u1|current_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u1|current_state\(1),
	datac => \u1|current_state\(0),
	datad => \u1|current_state\(2),
	combout => \u1|Mux2~0_combout\);

-- Location: LCFF_X28_Y1_N13
\u1|current_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u9|q_internal~clkctrl_outclk\,
	datain => \u1|Mux2~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|current_state\(0));

-- Location: LCCOMB_X28_Y1_N2
\u1|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Mux9~0_combout\ = (\u1|current_state\(0) & ((\u1|current_state\(2)) # (\u1|current_state\(1)))) # (!\u1|current_state\(0) & (\u1|current_state\(2) & \u1|current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state\(0),
	datac => \u1|current_state\(2),
	datad => \u1|current_state\(1),
	combout => \u1|Mux9~0_combout\);

-- Location: LCCOMB_X28_Y1_N24
\u1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Mux8~0_combout\ = (\u1|current_state\(0) & (!\u1|current_state\(2))) # (!\u1|current_state\(0) & (\u1|current_state\(2) & !\u1|current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state\(0),
	datac => \u1|current_state\(2),
	datad => \u1|current_state\(1),
	combout => \u1|Mux8~0_combout\);

-- Location: LCCOMB_X28_Y1_N26
\u1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Mux7~0_combout\ = (\u1|current_state\(0) & (\u1|current_state\(2))) # (!\u1|current_state\(0) & ((\u1|current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state\(0),
	datac => \u1|current_state\(2),
	datad => \u1|current_state\(1),
	combout => \u1|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y1_N20
\u1|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Mux7~1_combout\ = (!\u1|current_state\(0) & !\u1|current_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state\(0),
	datac => \u1|current_state\(2),
	combout => \u1|Mux7~1_combout\);

-- Location: LCCOMB_X28_Y1_N22
\u1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Mux5~0_combout\ = \u1|current_state\(2) $ (((\u1|current_state\(0)) # (\u1|current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state\(0),
	datac => \u1|current_state\(2),
	datad => \u1|current_state\(1),
	combout => \u1|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y1_N16
\u1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Mux4~0_combout\ = ((!\u1|current_state\(0) & !\u1|current_state\(1))) # (!\u1|current_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|current_state\(0),
	datac => \u1|current_state\(2),
	datad => \u1|current_state\(1),
	combout => \u1|Mux4~0_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|ALT_INV_Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|ALT_INV_Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1|ALT_INV_Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1|ALT_INV_Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));
END structure;


