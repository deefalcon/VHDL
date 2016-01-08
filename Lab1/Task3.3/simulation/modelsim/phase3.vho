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

-- DATE "01/07/2016 19:00:03"

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
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END phase3;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|Mux9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count50[1]~25_combout\ : std_logic;
SIGNAL \count50[1]~26\ : std_logic;
SIGNAL \count50[2]~27_combout\ : std_logic;
SIGNAL \count50[2]~28\ : std_logic;
SIGNAL \count50[3]~29_combout\ : std_logic;
SIGNAL \count50[3]~30\ : std_logic;
SIGNAL \count50[4]~31_combout\ : std_logic;
SIGNAL \count50[4]~32\ : std_logic;
SIGNAL \count50[5]~33_combout\ : std_logic;
SIGNAL \count50[5]~34\ : std_logic;
SIGNAL \count50[6]~35_combout\ : std_logic;
SIGNAL \count50[6]~36\ : std_logic;
SIGNAL \count50[7]~37_combout\ : std_logic;
SIGNAL \count50[7]~38\ : std_logic;
SIGNAL \count50[8]~39_combout\ : std_logic;
SIGNAL \count50[8]~40\ : std_logic;
SIGNAL \count50[9]~41_combout\ : std_logic;
SIGNAL \count50[9]~42\ : std_logic;
SIGNAL \count50[10]~43_combout\ : std_logic;
SIGNAL \count50[10]~44\ : std_logic;
SIGNAL \count50[11]~45_combout\ : std_logic;
SIGNAL \count50[11]~46\ : std_logic;
SIGNAL \count50[12]~47_combout\ : std_logic;
SIGNAL \count50[12]~48\ : std_logic;
SIGNAL \count50[13]~49_combout\ : std_logic;
SIGNAL \count50[13]~50\ : std_logic;
SIGNAL \count50[14]~51_combout\ : std_logic;
SIGNAL \count50[14]~52\ : std_logic;
SIGNAL \count50[15]~53_combout\ : std_logic;
SIGNAL \count50[15]~54\ : std_logic;
SIGNAL \count50[16]~55_combout\ : std_logic;
SIGNAL \count50[16]~56\ : std_logic;
SIGNAL \count50[17]~57_combout\ : std_logic;
SIGNAL \count50[17]~58\ : std_logic;
SIGNAL \count50[18]~59_combout\ : std_logic;
SIGNAL \count50[18]~60\ : std_logic;
SIGNAL \count50[19]~61_combout\ : std_logic;
SIGNAL \count50[19]~62\ : std_logic;
SIGNAL \count50[20]~63_combout\ : std_logic;
SIGNAL \count50[20]~64\ : std_logic;
SIGNAL \count50[21]~65_combout\ : std_logic;
SIGNAL \count50[21]~66\ : std_logic;
SIGNAL \count50[22]~67_combout\ : std_logic;
SIGNAL \count50[22]~68\ : std_logic;
SIGNAL \count50[23]~69_combout\ : std_logic;
SIGNAL \count50[23]~70\ : std_logic;
SIGNAL \count50[24]~71_combout\ : std_logic;
SIGNAL \count50[24]~72\ : std_logic;
SIGNAL \count50[25]~73_combout\ : std_logic;
SIGNAL \count50[0]~75_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \u0|Mux0~0_combout\ : std_logic;
SIGNAL \u0|Mux2~0_combout\ : std_logic;
SIGNAL \u0|Mux1~0_combout\ : std_logic;
SIGNAL \u0|Mux9~0_combout\ : std_logic;
SIGNAL \u0|Mux9~0clkctrl_outclk\ : std_logic;
SIGNAL \u0|Mux3~0_combout\ : std_logic;
SIGNAL \u0|Mux6~0_combout\ : std_logic;
SIGNAL \u0|Mux8~0_combout\ : std_logic;
SIGNAL \u0|Mux6~1_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u0|current_state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL count50 : std_logic_vector(25 DOWNTO 0);
SIGNAL \u0|hex0\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u0|Mux9~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u0|Mux9~0_combout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

-- Location: LCFF_X31_Y2_N25
\count50[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(25));

-- Location: LCFF_X31_Y2_N23
\count50[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(24));

-- Location: LCFF_X31_Y2_N21
\count50[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(23));

-- Location: LCFF_X31_Y2_N19
\count50[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(22));

-- Location: LCFF_X31_Y2_N17
\count50[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(21));

-- Location: LCFF_X31_Y2_N15
\count50[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(20));

-- Location: LCFF_X31_Y2_N13
\count50[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(19));

-- Location: LCFF_X31_Y2_N11
\count50[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(18));

-- Location: LCFF_X31_Y2_N9
\count50[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(17));

-- Location: LCFF_X31_Y2_N7
\count50[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(16));

-- Location: LCFF_X31_Y2_N5
\count50[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(15));

-- Location: LCFF_X31_Y2_N3
\count50[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(14));

-- Location: LCFF_X31_Y2_N1
\count50[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(13));

-- Location: LCFF_X31_Y3_N31
\count50[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(12));

-- Location: LCFF_X31_Y3_N29
\count50[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(11));

-- Location: LCFF_X31_Y3_N27
\count50[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(10));

-- Location: LCFF_X31_Y3_N25
\count50[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(9));

-- Location: LCFF_X31_Y3_N23
\count50[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(8));

-- Location: LCFF_X31_Y3_N21
\count50[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(7));

-- Location: LCFF_X31_Y3_N19
\count50[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(6));

-- Location: LCFF_X31_Y3_N17
\count50[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(5));

-- Location: LCFF_X31_Y3_N15
\count50[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(4));

-- Location: LCFF_X31_Y3_N13
\count50[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(3));

-- Location: LCFF_X31_Y3_N11
\count50[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(2));

-- Location: LCFF_X31_Y3_N9
\count50[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(1));

-- Location: LCCOMB_X31_Y3_N8
\count50[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[1]~25_combout\ = (count50(1) & (count50(0) $ (VCC))) # (!count50(1) & (count50(0) & VCC))
-- \count50[1]~26\ = CARRY((count50(1) & count50(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count50(1),
	datab => count50(0),
	datad => VCC,
	combout => \count50[1]~25_combout\,
	cout => \count50[1]~26\);

-- Location: LCCOMB_X31_Y3_N10
\count50[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[2]~27_combout\ = (count50(2) & (!\count50[1]~26\)) # (!count50(2) & ((\count50[1]~26\) # (GND)))
-- \count50[2]~28\ = CARRY((!\count50[1]~26\) # (!count50(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(2),
	datad => VCC,
	cin => \count50[1]~26\,
	combout => \count50[2]~27_combout\,
	cout => \count50[2]~28\);

-- Location: LCCOMB_X31_Y3_N12
\count50[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[3]~29_combout\ = (count50(3) & (\count50[2]~28\ $ (GND))) # (!count50(3) & (!\count50[2]~28\ & VCC))
-- \count50[3]~30\ = CARRY((count50(3) & !\count50[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(3),
	datad => VCC,
	cin => \count50[2]~28\,
	combout => \count50[3]~29_combout\,
	cout => \count50[3]~30\);

-- Location: LCCOMB_X31_Y3_N14
\count50[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[4]~31_combout\ = (count50(4) & (!\count50[3]~30\)) # (!count50(4) & ((\count50[3]~30\) # (GND)))
-- \count50[4]~32\ = CARRY((!\count50[3]~30\) # (!count50(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(4),
	datad => VCC,
	cin => \count50[3]~30\,
	combout => \count50[4]~31_combout\,
	cout => \count50[4]~32\);

-- Location: LCCOMB_X31_Y3_N16
\count50[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[5]~33_combout\ = (count50(5) & (\count50[4]~32\ $ (GND))) # (!count50(5) & (!\count50[4]~32\ & VCC))
-- \count50[5]~34\ = CARRY((count50(5) & !\count50[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(5),
	datad => VCC,
	cin => \count50[4]~32\,
	combout => \count50[5]~33_combout\,
	cout => \count50[5]~34\);

-- Location: LCCOMB_X31_Y3_N18
\count50[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[6]~35_combout\ = (count50(6) & (!\count50[5]~34\)) # (!count50(6) & ((\count50[5]~34\) # (GND)))
-- \count50[6]~36\ = CARRY((!\count50[5]~34\) # (!count50(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(6),
	datad => VCC,
	cin => \count50[5]~34\,
	combout => \count50[6]~35_combout\,
	cout => \count50[6]~36\);

-- Location: LCCOMB_X31_Y3_N20
\count50[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[7]~37_combout\ = (count50(7) & (\count50[6]~36\ $ (GND))) # (!count50(7) & (!\count50[6]~36\ & VCC))
-- \count50[7]~38\ = CARRY((count50(7) & !\count50[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(7),
	datad => VCC,
	cin => \count50[6]~36\,
	combout => \count50[7]~37_combout\,
	cout => \count50[7]~38\);

-- Location: LCCOMB_X31_Y3_N22
\count50[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[8]~39_combout\ = (count50(8) & (!\count50[7]~38\)) # (!count50(8) & ((\count50[7]~38\) # (GND)))
-- \count50[8]~40\ = CARRY((!\count50[7]~38\) # (!count50(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(8),
	datad => VCC,
	cin => \count50[7]~38\,
	combout => \count50[8]~39_combout\,
	cout => \count50[8]~40\);

-- Location: LCCOMB_X31_Y3_N24
\count50[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[9]~41_combout\ = (count50(9) & (\count50[8]~40\ $ (GND))) # (!count50(9) & (!\count50[8]~40\ & VCC))
-- \count50[9]~42\ = CARRY((count50(9) & !\count50[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(9),
	datad => VCC,
	cin => \count50[8]~40\,
	combout => \count50[9]~41_combout\,
	cout => \count50[9]~42\);

-- Location: LCCOMB_X31_Y3_N26
\count50[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[10]~43_combout\ = (count50(10) & (!\count50[9]~42\)) # (!count50(10) & ((\count50[9]~42\) # (GND)))
-- \count50[10]~44\ = CARRY((!\count50[9]~42\) # (!count50(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(10),
	datad => VCC,
	cin => \count50[9]~42\,
	combout => \count50[10]~43_combout\,
	cout => \count50[10]~44\);

-- Location: LCCOMB_X31_Y3_N28
\count50[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[11]~45_combout\ = (count50(11) & (\count50[10]~44\ $ (GND))) # (!count50(11) & (!\count50[10]~44\ & VCC))
-- \count50[11]~46\ = CARRY((count50(11) & !\count50[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(11),
	datad => VCC,
	cin => \count50[10]~44\,
	combout => \count50[11]~45_combout\,
	cout => \count50[11]~46\);

-- Location: LCCOMB_X31_Y3_N30
\count50[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[12]~47_combout\ = (count50(12) & (!\count50[11]~46\)) # (!count50(12) & ((\count50[11]~46\) # (GND)))
-- \count50[12]~48\ = CARRY((!\count50[11]~46\) # (!count50(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(12),
	datad => VCC,
	cin => \count50[11]~46\,
	combout => \count50[12]~47_combout\,
	cout => \count50[12]~48\);

-- Location: LCCOMB_X31_Y2_N0
\count50[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[13]~49_combout\ = (count50(13) & (\count50[12]~48\ $ (GND))) # (!count50(13) & (!\count50[12]~48\ & VCC))
-- \count50[13]~50\ = CARRY((count50(13) & !\count50[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(13),
	datad => VCC,
	cin => \count50[12]~48\,
	combout => \count50[13]~49_combout\,
	cout => \count50[13]~50\);

-- Location: LCCOMB_X31_Y2_N2
\count50[14]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[14]~51_combout\ = (count50(14) & (!\count50[13]~50\)) # (!count50(14) & ((\count50[13]~50\) # (GND)))
-- \count50[14]~52\ = CARRY((!\count50[13]~50\) # (!count50(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(14),
	datad => VCC,
	cin => \count50[13]~50\,
	combout => \count50[14]~51_combout\,
	cout => \count50[14]~52\);

-- Location: LCCOMB_X31_Y2_N4
\count50[15]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[15]~53_combout\ = (count50(15) & (\count50[14]~52\ $ (GND))) # (!count50(15) & (!\count50[14]~52\ & VCC))
-- \count50[15]~54\ = CARRY((count50(15) & !\count50[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(15),
	datad => VCC,
	cin => \count50[14]~52\,
	combout => \count50[15]~53_combout\,
	cout => \count50[15]~54\);

-- Location: LCCOMB_X31_Y2_N6
\count50[16]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[16]~55_combout\ = (count50(16) & (!\count50[15]~54\)) # (!count50(16) & ((\count50[15]~54\) # (GND)))
-- \count50[16]~56\ = CARRY((!\count50[15]~54\) # (!count50(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(16),
	datad => VCC,
	cin => \count50[15]~54\,
	combout => \count50[16]~55_combout\,
	cout => \count50[16]~56\);

-- Location: LCCOMB_X31_Y2_N8
\count50[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[17]~57_combout\ = (count50(17) & (\count50[16]~56\ $ (GND))) # (!count50(17) & (!\count50[16]~56\ & VCC))
-- \count50[17]~58\ = CARRY((count50(17) & !\count50[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(17),
	datad => VCC,
	cin => \count50[16]~56\,
	combout => \count50[17]~57_combout\,
	cout => \count50[17]~58\);

-- Location: LCCOMB_X31_Y2_N10
\count50[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[18]~59_combout\ = (count50(18) & (!\count50[17]~58\)) # (!count50(18) & ((\count50[17]~58\) # (GND)))
-- \count50[18]~60\ = CARRY((!\count50[17]~58\) # (!count50(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(18),
	datad => VCC,
	cin => \count50[17]~58\,
	combout => \count50[18]~59_combout\,
	cout => \count50[18]~60\);

-- Location: LCCOMB_X31_Y2_N12
\count50[19]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[19]~61_combout\ = (count50(19) & (\count50[18]~60\ $ (GND))) # (!count50(19) & (!\count50[18]~60\ & VCC))
-- \count50[19]~62\ = CARRY((count50(19) & !\count50[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(19),
	datad => VCC,
	cin => \count50[18]~60\,
	combout => \count50[19]~61_combout\,
	cout => \count50[19]~62\);

-- Location: LCCOMB_X31_Y2_N14
\count50[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[20]~63_combout\ = (count50(20) & (!\count50[19]~62\)) # (!count50(20) & ((\count50[19]~62\) # (GND)))
-- \count50[20]~64\ = CARRY((!\count50[19]~62\) # (!count50(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(20),
	datad => VCC,
	cin => \count50[19]~62\,
	combout => \count50[20]~63_combout\,
	cout => \count50[20]~64\);

-- Location: LCCOMB_X31_Y2_N16
\count50[21]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[21]~65_combout\ = (count50(21) & (\count50[20]~64\ $ (GND))) # (!count50(21) & (!\count50[20]~64\ & VCC))
-- \count50[21]~66\ = CARRY((count50(21) & !\count50[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(21),
	datad => VCC,
	cin => \count50[20]~64\,
	combout => \count50[21]~65_combout\,
	cout => \count50[21]~66\);

-- Location: LCCOMB_X31_Y2_N18
\count50[22]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[22]~67_combout\ = (count50(22) & (!\count50[21]~66\)) # (!count50(22) & ((\count50[21]~66\) # (GND)))
-- \count50[22]~68\ = CARRY((!\count50[21]~66\) # (!count50(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(22),
	datad => VCC,
	cin => \count50[21]~66\,
	combout => \count50[22]~67_combout\,
	cout => \count50[22]~68\);

-- Location: LCCOMB_X31_Y2_N20
\count50[23]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[23]~69_combout\ = (count50(23) & (\count50[22]~68\ $ (GND))) # (!count50(23) & (!\count50[22]~68\ & VCC))
-- \count50[23]~70\ = CARRY((count50(23) & !\count50[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(23),
	datad => VCC,
	cin => \count50[22]~68\,
	combout => \count50[23]~69_combout\,
	cout => \count50[23]~70\);

-- Location: LCCOMB_X31_Y2_N22
\count50[24]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[24]~71_combout\ = (count50(24) & (!\count50[23]~70\)) # (!count50(24) & ((\count50[23]~70\) # (GND)))
-- \count50[24]~72\ = CARRY((!\count50[23]~70\) # (!count50(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count50(24),
	datad => VCC,
	cin => \count50[23]~70\,
	combout => \count50[24]~71_combout\,
	cout => \count50[24]~72\);

-- Location: LCCOMB_X31_Y2_N24
\count50[25]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[25]~73_combout\ = count50(25) $ (!\count50[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count50(25),
	cin => \count50[24]~72\,
	combout => \count50[25]~73_combout\);

-- Location: LCFF_X31_Y3_N1
\count50[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \count50[0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count50(0));

-- Location: LCCOMB_X31_Y3_N0
\count50[0]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \count50[0]~75_combout\ = !count50(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count50(0),
	combout => \count50[0]~75_combout\);

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

-- Location: LCCOMB_X32_Y2_N12
\u0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux0~0_combout\ = (!\u0|current_state\(2) & (\u0|current_state\(1) & (\SW~combout\(0) $ (\u0|current_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u0|current_state\(0),
	datac => \u0|current_state\(2),
	datad => \u0|current_state\(1),
	combout => \u0|Mux0~0_combout\);

-- Location: LCFF_X32_Y2_N13
\u0|current_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => count50(25),
	datain => \u0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|current_state\(2));

-- Location: LCCOMB_X32_Y2_N26
\u0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux2~0_combout\ = (\SW~combout\(0) & (!\u0|current_state\(1) & (\u0|current_state\(0) $ (\u0|current_state\(2))))) # (!\SW~combout\(0) & (((!\u0|current_state\(0) & !\u0|current_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u0|current_state\(1),
	datac => \u0|current_state\(0),
	datad => \u0|current_state\(2),
	combout => \u0|Mux2~0_combout\);

-- Location: LCFF_X32_Y2_N27
\u0|current_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => count50(25),
	datain => \u0|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|current_state\(0));

-- Location: LCCOMB_X32_Y2_N30
\u0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux1~0_combout\ = (!\u0|current_state\(2) & (\u0|current_state\(1) $ (((\SW~combout\(0)) # (\u0|current_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u0|current_state\(0),
	datac => \u0|current_state\(1),
	datad => \u0|current_state\(2),
	combout => \u0|Mux1~0_combout\);

-- Location: LCFF_X32_Y2_N31
\u0|current_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => count50(25),
	datain => \u0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|current_state\(1));

-- Location: LCCOMB_X32_Y2_N16
\u0|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux9~0_combout\ = ((!\u0|current_state\(1) & !\u0|current_state\(0))) # (!\u0|current_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|current_state\(2),
	datab => \u0|current_state\(1),
	datad => \u0|current_state\(0),
	combout => \u0|Mux9~0_combout\);

-- Location: CLKCTRL_G15
\u0|Mux9~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u0|Mux9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u0|Mux9~0clkctrl_outclk\);

-- Location: LCCOMB_X32_Y2_N10
\u0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux3~0_combout\ = (\u0|current_state\(0) & \u0|current_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|current_state\(0),
	datad => \u0|current_state\(1),
	combout => \u0|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y2_N14
\u0|hex0[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|hex0\(0) = (GLOBAL(\u0|Mux9~0clkctrl_outclk\) & ((\u0|Mux3~0_combout\))) # (!GLOBAL(\u0|Mux9~0clkctrl_outclk\) & (\u0|hex0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|hex0\(0),
	datac => \u0|Mux9~0clkctrl_outclk\,
	datad => \u0|Mux3~0_combout\,
	combout => \u0|hex0\(0));

-- Location: LCCOMB_X32_Y2_N2
\u0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux6~0_combout\ = (!\u0|current_state\(0) & !\u0|current_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|current_state\(0),
	datad => \u0|current_state\(2),
	combout => \u0|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y2_N18
\u0|hex0[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|hex0\(1) = (GLOBAL(\u0|Mux9~0clkctrl_outclk\) & ((\u0|Mux6~0_combout\))) # (!GLOBAL(\u0|Mux9~0clkctrl_outclk\) & (\u0|hex0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|hex0\(1),
	datac => \u0|Mux9~0clkctrl_outclk\,
	datad => \u0|Mux6~0_combout\,
	combout => \u0|hex0\(1));

-- Location: LCCOMB_X32_Y2_N28
\u0|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux8~0_combout\ = (!\u0|current_state\(0) & \u0|current_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|current_state\(0),
	datad => \u0|current_state\(1),
	combout => \u0|Mux8~0_combout\);

-- Location: LCCOMB_X32_Y2_N4
\u0|hex0[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|hex0\(2) = (GLOBAL(\u0|Mux9~0clkctrl_outclk\) & ((\u0|Mux8~0_combout\))) # (!GLOBAL(\u0|Mux9~0clkctrl_outclk\) & (\u0|hex0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|hex0\(2),
	datac => \u0|Mux9~0clkctrl_outclk\,
	datad => \u0|Mux8~0_combout\,
	combout => \u0|hex0\(2));

-- Location: LCCOMB_X32_Y2_N20
\u0|hex0[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|hex0\(3) = (GLOBAL(\u0|Mux9~0clkctrl_outclk\) & ((!\u0|Mux6~0_combout\))) # (!GLOBAL(\u0|Mux9~0clkctrl_outclk\) & (\u0|hex0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|hex0\(3),
	datac => \u0|Mux9~0clkctrl_outclk\,
	datad => \u0|Mux6~0_combout\,
	combout => \u0|hex0\(3));

-- Location: LCCOMB_X32_Y2_N22
\u0|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Mux6~1_combout\ = (!\u0|current_state\(1) & (!\u0|current_state\(0) & !\u0|current_state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|current_state\(1),
	datac => \u0|current_state\(0),
	datad => \u0|current_state\(2),
	combout => \u0|Mux6~1_combout\);

-- Location: LCCOMB_X32_Y2_N24
\u0|hex0[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|hex0\(4) = (GLOBAL(\u0|Mux9~0clkctrl_outclk\) & ((\u0|Mux6~1_combout\))) # (!GLOBAL(\u0|Mux9~0clkctrl_outclk\) & (\u0|hex0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|hex0\(4),
	datac => \u0|Mux9~0clkctrl_outclk\,
	datad => \u0|Mux6~1_combout\,
	combout => \u0|hex0\(4));

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
	padio => ww_KEY(0));

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
	padio => ww_SW(1));

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
	padio => ww_SW(2));

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
	padio => ww_SW(3));

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
	padio => ww_SW(4));

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
	padio => ww_SW(5));

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
	padio => ww_SW(6));

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
	padio => ww_SW(7));

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
	padio => ww_SW(8));

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
	padio => ww_SW(9));

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
	padio => ww_SW(10));

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
	padio => ww_SW(11));

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
	padio => ww_SW(12));

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
	padio => ww_SW(13));

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
	padio => ww_SW(14));

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
	padio => ww_SW(15));

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
	padio => ww_SW(16));

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
	padio => ww_SW(17));

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
	datain => \u0|hex0\(0),
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
	datain => \u0|hex0\(1),
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
	datain => \u0|hex0\(2),
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
	datain => \u0|hex0\(3),
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
	datain => \u0|hex0\(4),
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
	datain => GND,
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
	datain => \u0|hex0\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));
END structure;


