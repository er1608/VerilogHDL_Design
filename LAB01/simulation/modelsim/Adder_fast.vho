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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/05/2023 14:24:10"

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

ENTITY 	Adder IS
    PORT (
	A : IN std_logic_vector(2 DOWNTO 0);
	B : IN std_logic_vector(2 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0)
	);
END Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[1]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[2]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[3]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Cin	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \s0~combout\ : std_logic;
SIGNAL \x1~combout\ : std_logic;
SIGNAL \s1~combout\ : std_logic;
SIGNAL \x2~combout\ : std_logic;
SIGNAL \s2~0_combout\ : std_logic;
SIGNAL \s2~1_combout\ : std_logic;
SIGNAL \o2~0_combout\ : std_logic;
SIGNAL \o2~1_combout\ : std_logic;
SIGNAL \o2~2_combout\ : std_logic;
SIGNAL \B~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cin~I\ : cycloneii_io
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
	padio => ww_Cin,
	combout => \Cin~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X1_Y28_N16
s0 : cycloneii_lcell_comb
-- Equation(s):
-- \s0~combout\ = \A~combout\(0) $ (\Cin~combout\ $ (\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \Cin~combout\,
	datad => \B~combout\(0),
	combout => \s0~combout\);

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X1_Y28_N2
x1 : cycloneii_lcell_comb
-- Equation(s):
-- \x1~combout\ = \A~combout\(1) $ (\B~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	combout => \x1~combout\);

-- Location: LCCOMB_X1_Y28_N20
s1 : cycloneii_lcell_comb
-- Equation(s):
-- \s1~combout\ = \x1~combout\ $ (((\A~combout\(0) & ((\Cin~combout\) # (\B~combout\(0)))) # (!\A~combout\(0) & (\Cin~combout\ & \B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \x1~combout\,
	datac => \Cin~combout\,
	datad => \B~combout\(0),
	combout => \s1~combout\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X1_Y28_N6
x2 : cycloneii_lcell_comb
-- Equation(s):
-- \x2~combout\ = \A~combout\(2) $ (\B~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datad => \B~combout\(2),
	combout => \x2~combout\);

-- Location: LCCOMB_X1_Y28_N8
\s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s2~0_combout\ = (\Cin~combout\ & (\A~combout\(0) $ (\B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \Cin~combout\,
	datad => \B~combout\(0),
	combout => \s2~0_combout\);

-- Location: LCCOMB_X1_Y28_N10
\s2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s2~1_combout\ = \x2~combout\ $ (((\A~combout\(1) & ((\s2~0_combout\) # (\B~combout\(1)))) # (!\A~combout\(1) & (\s2~0_combout\ & \B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\,
	datab => \A~combout\(1),
	datac => \s2~0_combout\,
	datad => \B~combout\(1),
	combout => \s2~1_combout\);

-- Location: LCCOMB_X1_Y28_N12
\o2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \o2~0_combout\ = (\A~combout\(2) & ((\B~combout\(2)) # ((\A~combout\(1) & \B~combout\(1))))) # (!\A~combout\(2) & (\A~combout\(1) & (\B~combout\(1) & \B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \B~combout\(1),
	datad => \B~combout\(2),
	combout => \o2~0_combout\);

-- Location: LCCOMB_X1_Y28_N22
\o2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \o2~1_combout\ = (\A~combout\(0) & (!\B~combout\(0) & (\A~combout\(1) $ (\B~combout\(1))))) # (!\A~combout\(0) & (\B~combout\(0) & (\A~combout\(1) $ (\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	datad => \B~combout\(0),
	combout => \o2~1_combout\);

-- Location: LCCOMB_X1_Y28_N0
\o2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \o2~2_combout\ = (\o2~0_combout\) # ((\o2~1_combout\ & (\Cin~combout\ & \x2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o2~0_combout\,
	datab => \o2~1_combout\,
	datac => \Cin~combout\,
	datad => \x2~combout\,
	combout => \o2~2_combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[0]~I\ : cycloneii_io
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
	datain => \s0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[1]~I\ : cycloneii_io
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
	datain => \s1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[2]~I\ : cycloneii_io
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
	datain => \s2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[3]~I\ : cycloneii_io
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
	datain => \o2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(3));
END structure;


