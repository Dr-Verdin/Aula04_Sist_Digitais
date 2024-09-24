-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "09/17/2024 15:15:21"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	aulaumpartetres IS
    PORT (
	Clk : IN std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END aulaumpartetres;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aulaumpartetres IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \instancia1|Add0~0_combout\ : std_logic;
SIGNAL \instancia1|Add0~1\ : std_logic;
SIGNAL \instancia1|Add0~2_combout\ : std_logic;
SIGNAL \instancia1|Add0~3\ : std_logic;
SIGNAL \instancia1|Add0~4_combout\ : std_logic;
SIGNAL \instancia1|Add0~5\ : std_logic;
SIGNAL \instancia1|Add0~6_combout\ : std_logic;
SIGNAL \instancia1|Add0~7\ : std_logic;
SIGNAL \instancia1|Add0~8_combout\ : std_logic;
SIGNAL \instancia1|Add0~9\ : std_logic;
SIGNAL \instancia1|Add0~10_combout\ : std_logic;
SIGNAL \instancia1|Add0~11\ : std_logic;
SIGNAL \instancia1|Add0~12_combout\ : std_logic;
SIGNAL \instancia1|Add0~13\ : std_logic;
SIGNAL \instancia1|Add0~14_combout\ : std_logic;
SIGNAL \instancia1|count~4_combout\ : std_logic;
SIGNAL \instancia1|Add0~15\ : std_logic;
SIGNAL \instancia1|Add0~16_combout\ : std_logic;
SIGNAL \instancia1|Add0~17\ : std_logic;
SIGNAL \instancia1|Add0~18_combout\ : std_logic;
SIGNAL \instancia1|Add0~19\ : std_logic;
SIGNAL \instancia1|Add0~20_combout\ : std_logic;
SIGNAL \instancia1|Add0~21\ : std_logic;
SIGNAL \instancia1|Add0~22_combout\ : std_logic;
SIGNAL \instancia1|Add0~23\ : std_logic;
SIGNAL \instancia1|Add0~24_combout\ : std_logic;
SIGNAL \instancia1|count~3_combout\ : std_logic;
SIGNAL \instancia1|Add0~25\ : std_logic;
SIGNAL \instancia1|Add0~26_combout\ : std_logic;
SIGNAL \instancia1|count~2_combout\ : std_logic;
SIGNAL \instancia1|Add0~27\ : std_logic;
SIGNAL \instancia1|Add0~28_combout\ : std_logic;
SIGNAL \instancia1|count~1_combout\ : std_logic;
SIGNAL \instancia1|Add0~29\ : std_logic;
SIGNAL \instancia1|Add0~30_combout\ : std_logic;
SIGNAL \instancia1|count~0_combout\ : std_logic;
SIGNAL \instancia1|Add0~31\ : std_logic;
SIGNAL \instancia1|Add0~32_combout\ : std_logic;
SIGNAL \instancia1|Add0~33\ : std_logic;
SIGNAL \instancia1|Add0~34_combout\ : std_logic;
SIGNAL \instancia1|count~5_combout\ : std_logic;
SIGNAL \instancia1|Add0~35\ : std_logic;
SIGNAL \instancia1|Add0~36_combout\ : std_logic;
SIGNAL \instancia1|Add0~37\ : std_logic;
SIGNAL \instancia1|Add0~38_combout\ : std_logic;
SIGNAL \instancia1|count~6_combout\ : std_logic;
SIGNAL \instancia1|Add0~39\ : std_logic;
SIGNAL \instancia1|Add0~40_combout\ : std_logic;
SIGNAL \instancia1|count~7_combout\ : std_logic;
SIGNAL \instancia1|Add0~41\ : std_logic;
SIGNAL \instancia1|Add0~42_combout\ : std_logic;
SIGNAL \instancia1|count~8_combout\ : std_logic;
SIGNAL \instancia1|Add0~43\ : std_logic;
SIGNAL \instancia1|Add0~44_combout\ : std_logic;
SIGNAL \instancia1|count~9_combout\ : std_logic;
SIGNAL \instancia1|Add0~45\ : std_logic;
SIGNAL \instancia1|Add0~46_combout\ : std_logic;
SIGNAL \instancia1|count~10_combout\ : std_logic;
SIGNAL \instancia1|Equal0~6_combout\ : std_logic;
SIGNAL \instancia1|Add0~47\ : std_logic;
SIGNAL \instancia1|Add0~48_combout\ : std_logic;
SIGNAL \instancia1|Add0~49\ : std_logic;
SIGNAL \instancia1|Add0~50_combout\ : std_logic;
SIGNAL \instancia1|count~11_combout\ : std_logic;
SIGNAL \instancia1|Add0~51\ : std_logic;
SIGNAL \instancia1|Add0~52_combout\ : std_logic;
SIGNAL \instancia1|Add0~53\ : std_logic;
SIGNAL \instancia1|Add0~54_combout\ : std_logic;
SIGNAL \instancia1|Add0~55\ : std_logic;
SIGNAL \instancia1|Add0~56_combout\ : std_logic;
SIGNAL \instancia1|Add0~57\ : std_logic;
SIGNAL \instancia1|Add0~58_combout\ : std_logic;
SIGNAL \instancia1|Add0~59\ : std_logic;
SIGNAL \instancia1|Add0~60_combout\ : std_logic;
SIGNAL \instancia1|Equal0~7_combout\ : std_logic;
SIGNAL \instancia1|Equal0~8_combout\ : std_logic;
SIGNAL \instancia1|Equal0~5_combout\ : std_logic;
SIGNAL \instancia1|Equal0~2_combout\ : std_logic;
SIGNAL \instancia1|Equal0~1_combout\ : std_logic;
SIGNAL \instancia1|Equal0~3_combout\ : std_logic;
SIGNAL \instancia1|Equal0~0_combout\ : std_logic;
SIGNAL \instancia1|Equal0~4_combout\ : std_logic;
SIGNAL \instancia1|Equal0~9_combout\ : std_logic;
SIGNAL \instancia1|T~q\ : std_logic;
SIGNAL \instancia2|count[0]~3_combout\ : std_logic;
SIGNAL \instancia2|count~2_combout\ : std_logic;
SIGNAL \instancia2|count~0_combout\ : std_logic;
SIGNAL \instancia2|count[2]~1_combout\ : std_logic;
SIGNAL \instancia3|Mux6~0_combout\ : std_logic;
SIGNAL \instancia3|Mux5~0_combout\ : std_logic;
SIGNAL \instancia3|Mux4~0_combout\ : std_logic;
SIGNAL \instancia3|Mux3~0_combout\ : std_logic;
SIGNAL \instancia3|Mux2~0_combout\ : std_logic;
SIGNAL \instancia3|Mux1~0_combout\ : std_logic;
SIGNAL \instancia3|Mux0~0_combout\ : std_logic;
SIGNAL \instancia2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia1|count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \instancia3|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
hex0 <= ww_hex0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\instancia3|ALT_INV_Mux0~0_combout\ <= NOT \instancia3|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G4
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X112_Y67_N2
\instancia1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~0_combout\ = \instancia1|count\(0) $ (VCC)
-- \instancia1|Add0~1\ = CARRY(\instancia1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(0),
	datad => VCC,
	combout => \instancia1|Add0~0_combout\,
	cout => \instancia1|Add0~1\);

-- Location: FF_X112_Y67_N3
\instancia1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(0));

-- Location: LCCOMB_X112_Y67_N4
\instancia1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~2_combout\ = (\instancia1|count\(1) & (!\instancia1|Add0~1\)) # (!\instancia1|count\(1) & ((\instancia1|Add0~1\) # (GND)))
-- \instancia1|Add0~3\ = CARRY((!\instancia1|Add0~1\) # (!\instancia1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(1),
	datad => VCC,
	cin => \instancia1|Add0~1\,
	combout => \instancia1|Add0~2_combout\,
	cout => \instancia1|Add0~3\);

-- Location: FF_X112_Y67_N5
\instancia1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(1));

-- Location: LCCOMB_X112_Y67_N6
\instancia1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~4_combout\ = (\instancia1|count\(2) & (\instancia1|Add0~3\ $ (GND))) # (!\instancia1|count\(2) & (!\instancia1|Add0~3\ & VCC))
-- \instancia1|Add0~5\ = CARRY((\instancia1|count\(2) & !\instancia1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(2),
	datad => VCC,
	cin => \instancia1|Add0~3\,
	combout => \instancia1|Add0~4_combout\,
	cout => \instancia1|Add0~5\);

-- Location: FF_X112_Y67_N7
\instancia1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(2));

-- Location: LCCOMB_X112_Y67_N8
\instancia1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~6_combout\ = (\instancia1|count\(3) & (!\instancia1|Add0~5\)) # (!\instancia1|count\(3) & ((\instancia1|Add0~5\) # (GND)))
-- \instancia1|Add0~7\ = CARRY((!\instancia1|Add0~5\) # (!\instancia1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(3),
	datad => VCC,
	cin => \instancia1|Add0~5\,
	combout => \instancia1|Add0~6_combout\,
	cout => \instancia1|Add0~7\);

-- Location: FF_X112_Y67_N9
\instancia1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(3));

-- Location: LCCOMB_X112_Y67_N10
\instancia1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~8_combout\ = (\instancia1|count\(4) & (\instancia1|Add0~7\ $ (GND))) # (!\instancia1|count\(4) & (!\instancia1|Add0~7\ & VCC))
-- \instancia1|Add0~9\ = CARRY((\instancia1|count\(4) & !\instancia1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(4),
	datad => VCC,
	cin => \instancia1|Add0~7\,
	combout => \instancia1|Add0~8_combout\,
	cout => \instancia1|Add0~9\);

-- Location: FF_X112_Y67_N11
\instancia1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(4));

-- Location: LCCOMB_X112_Y67_N12
\instancia1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~10_combout\ = (\instancia1|count\(5) & (!\instancia1|Add0~9\)) # (!\instancia1|count\(5) & ((\instancia1|Add0~9\) # (GND)))
-- \instancia1|Add0~11\ = CARRY((!\instancia1|Add0~9\) # (!\instancia1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(5),
	datad => VCC,
	cin => \instancia1|Add0~9\,
	combout => \instancia1|Add0~10_combout\,
	cout => \instancia1|Add0~11\);

-- Location: FF_X112_Y67_N13
\instancia1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(5));

-- Location: LCCOMB_X112_Y67_N14
\instancia1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~12_combout\ = (\instancia1|count\(6) & (\instancia1|Add0~11\ $ (GND))) # (!\instancia1|count\(6) & (!\instancia1|Add0~11\ & VCC))
-- \instancia1|Add0~13\ = CARRY((\instancia1|count\(6) & !\instancia1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(6),
	datad => VCC,
	cin => \instancia1|Add0~11\,
	combout => \instancia1|Add0~12_combout\,
	cout => \instancia1|Add0~13\);

-- Location: FF_X112_Y67_N15
\instancia1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(6));

-- Location: LCCOMB_X112_Y67_N16
\instancia1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~14_combout\ = (\instancia1|count\(7) & (!\instancia1|Add0~13\)) # (!\instancia1|count\(7) & ((\instancia1|Add0~13\) # (GND)))
-- \instancia1|Add0~15\ = CARRY((!\instancia1|Add0~13\) # (!\instancia1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(7),
	datad => VCC,
	cin => \instancia1|Add0~13\,
	combout => \instancia1|Add0~14_combout\,
	cout => \instancia1|Add0~15\);

-- Location: LCCOMB_X113_Y67_N12
\instancia1|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~4_combout\ = (\instancia1|Add0~14_combout\ & !\instancia1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia1|Add0~14_combout\,
	datad => \instancia1|Equal0~9_combout\,
	combout => \instancia1|count~4_combout\);

-- Location: FF_X113_Y67_N13
\instancia1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(7));

-- Location: LCCOMB_X112_Y67_N18
\instancia1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~16_combout\ = (\instancia1|count\(8) & (\instancia1|Add0~15\ $ (GND))) # (!\instancia1|count\(8) & (!\instancia1|Add0~15\ & VCC))
-- \instancia1|Add0~17\ = CARRY((\instancia1|count\(8) & !\instancia1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(8),
	datad => VCC,
	cin => \instancia1|Add0~15\,
	combout => \instancia1|Add0~16_combout\,
	cout => \instancia1|Add0~17\);

-- Location: FF_X112_Y67_N19
\instancia1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(8));

-- Location: LCCOMB_X112_Y67_N20
\instancia1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~18_combout\ = (\instancia1|count\(9) & (!\instancia1|Add0~17\)) # (!\instancia1|count\(9) & ((\instancia1|Add0~17\) # (GND)))
-- \instancia1|Add0~19\ = CARRY((!\instancia1|Add0~17\) # (!\instancia1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(9),
	datad => VCC,
	cin => \instancia1|Add0~17\,
	combout => \instancia1|Add0~18_combout\,
	cout => \instancia1|Add0~19\);

-- Location: FF_X112_Y67_N21
\instancia1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(9));

-- Location: LCCOMB_X112_Y67_N22
\instancia1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~20_combout\ = (\instancia1|count\(10) & (\instancia1|Add0~19\ $ (GND))) # (!\instancia1|count\(10) & (!\instancia1|Add0~19\ & VCC))
-- \instancia1|Add0~21\ = CARRY((\instancia1|count\(10) & !\instancia1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(10),
	datad => VCC,
	cin => \instancia1|Add0~19\,
	combout => \instancia1|Add0~20_combout\,
	cout => \instancia1|Add0~21\);

-- Location: FF_X112_Y67_N23
\instancia1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(10));

-- Location: LCCOMB_X112_Y67_N24
\instancia1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~22_combout\ = (\instancia1|count\(11) & (!\instancia1|Add0~21\)) # (!\instancia1|count\(11) & ((\instancia1|Add0~21\) # (GND)))
-- \instancia1|Add0~23\ = CARRY((!\instancia1|Add0~21\) # (!\instancia1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(11),
	datad => VCC,
	cin => \instancia1|Add0~21\,
	combout => \instancia1|Add0~22_combout\,
	cout => \instancia1|Add0~23\);

-- Location: FF_X112_Y67_N25
\instancia1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(11));

-- Location: LCCOMB_X112_Y67_N26
\instancia1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~24_combout\ = (\instancia1|count\(12) & (\instancia1|Add0~23\ $ (GND))) # (!\instancia1|count\(12) & (!\instancia1|Add0~23\ & VCC))
-- \instancia1|Add0~25\ = CARRY((\instancia1|count\(12) & !\instancia1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(12),
	datad => VCC,
	cin => \instancia1|Add0~23\,
	combout => \instancia1|Add0~24_combout\,
	cout => \instancia1|Add0~25\);

-- Location: LCCOMB_X113_Y67_N20
\instancia1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~3_combout\ = (\instancia1|Add0~24_combout\ & !\instancia1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia1|Add0~24_combout\,
	datad => \instancia1|Equal0~9_combout\,
	combout => \instancia1|count~3_combout\);

-- Location: FF_X113_Y67_N21
\instancia1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(12));

-- Location: LCCOMB_X112_Y67_N28
\instancia1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~26_combout\ = (\instancia1|count\(13) & (!\instancia1|Add0~25\)) # (!\instancia1|count\(13) & ((\instancia1|Add0~25\) # (GND)))
-- \instancia1|Add0~27\ = CARRY((!\instancia1|Add0~25\) # (!\instancia1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(13),
	datad => VCC,
	cin => \instancia1|Add0~25\,
	combout => \instancia1|Add0~26_combout\,
	cout => \instancia1|Add0~27\);

-- Location: LCCOMB_X113_Y67_N4
\instancia1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~2_combout\ = (\instancia1|Add0~26_combout\ & !\instancia1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Add0~26_combout\,
	datad => \instancia1|Equal0~9_combout\,
	combout => \instancia1|count~2_combout\);

-- Location: FF_X113_Y67_N5
\instancia1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(13));

-- Location: LCCOMB_X112_Y67_N30
\instancia1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~28_combout\ = (\instancia1|count\(14) & (\instancia1|Add0~27\ $ (GND))) # (!\instancia1|count\(14) & (!\instancia1|Add0~27\ & VCC))
-- \instancia1|Add0~29\ = CARRY((\instancia1|count\(14) & !\instancia1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(14),
	datad => VCC,
	cin => \instancia1|Add0~27\,
	combout => \instancia1|Add0~28_combout\,
	cout => \instancia1|Add0~29\);

-- Location: LCCOMB_X113_Y67_N2
\instancia1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~1_combout\ = (\instancia1|Add0~28_combout\ & !\instancia1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia1|Add0~28_combout\,
	datad => \instancia1|Equal0~9_combout\,
	combout => \instancia1|count~1_combout\);

-- Location: FF_X113_Y67_N3
\instancia1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(14));

-- Location: LCCOMB_X112_Y66_N0
\instancia1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~30_combout\ = (\instancia1|count\(15) & (!\instancia1|Add0~29\)) # (!\instancia1|count\(15) & ((\instancia1|Add0~29\) # (GND)))
-- \instancia1|Add0~31\ = CARRY((!\instancia1|Add0~29\) # (!\instancia1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(15),
	datad => VCC,
	cin => \instancia1|Add0~29\,
	combout => \instancia1|Add0~30_combout\,
	cout => \instancia1|Add0~31\);

-- Location: LCCOMB_X113_Y67_N28
\instancia1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~0_combout\ = (!\instancia1|Equal0~9_combout\ & \instancia1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Equal0~9_combout\,
	datad => \instancia1|Add0~30_combout\,
	combout => \instancia1|count~0_combout\);

-- Location: FF_X113_Y67_N29
\instancia1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(15));

-- Location: LCCOMB_X112_Y66_N2
\instancia1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~32_combout\ = (\instancia1|count\(16) & (\instancia1|Add0~31\ $ (GND))) # (!\instancia1|count\(16) & (!\instancia1|Add0~31\ & VCC))
-- \instancia1|Add0~33\ = CARRY((\instancia1|count\(16) & !\instancia1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(16),
	datad => VCC,
	cin => \instancia1|Add0~31\,
	combout => \instancia1|Add0~32_combout\,
	cout => \instancia1|Add0~33\);

-- Location: FF_X112_Y66_N3
\instancia1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(16));

-- Location: LCCOMB_X112_Y66_N4
\instancia1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~34_combout\ = (\instancia1|count\(17) & (!\instancia1|Add0~33\)) # (!\instancia1|count\(17) & ((\instancia1|Add0~33\) # (GND)))
-- \instancia1|Add0~35\ = CARRY((!\instancia1|Add0~33\) # (!\instancia1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(17),
	datad => VCC,
	cin => \instancia1|Add0~33\,
	combout => \instancia1|Add0~34_combout\,
	cout => \instancia1|Add0~35\);

-- Location: LCCOMB_X113_Y66_N10
\instancia1|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~5_combout\ = (\instancia1|Add0~34_combout\ & !\instancia1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia1|Add0~34_combout\,
	datad => \instancia1|Equal0~9_combout\,
	combout => \instancia1|count~5_combout\);

-- Location: FF_X113_Y66_N11
\instancia1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(17));

-- Location: LCCOMB_X112_Y66_N6
\instancia1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~36_combout\ = (\instancia1|count\(18) & (\instancia1|Add0~35\ $ (GND))) # (!\instancia1|count\(18) & (!\instancia1|Add0~35\ & VCC))
-- \instancia1|Add0~37\ = CARRY((\instancia1|count\(18) & !\instancia1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(18),
	datad => VCC,
	cin => \instancia1|Add0~35\,
	combout => \instancia1|Add0~36_combout\,
	cout => \instancia1|Add0~37\);

-- Location: FF_X112_Y66_N7
\instancia1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(18));

-- Location: LCCOMB_X112_Y66_N8
\instancia1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~38_combout\ = (\instancia1|count\(19) & (!\instancia1|Add0~37\)) # (!\instancia1|count\(19) & ((\instancia1|Add0~37\) # (GND)))
-- \instancia1|Add0~39\ = CARRY((!\instancia1|Add0~37\) # (!\instancia1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(19),
	datad => VCC,
	cin => \instancia1|Add0~37\,
	combout => \instancia1|Add0~38_combout\,
	cout => \instancia1|Add0~39\);

-- Location: LCCOMB_X113_Y66_N8
\instancia1|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~6_combout\ = (!\instancia1|Equal0~9_combout\ & \instancia1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Equal0~9_combout\,
	datad => \instancia1|Add0~38_combout\,
	combout => \instancia1|count~6_combout\);

-- Location: FF_X113_Y66_N9
\instancia1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(19));

-- Location: LCCOMB_X112_Y66_N10
\instancia1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~40_combout\ = (\instancia1|count\(20) & (\instancia1|Add0~39\ $ (GND))) # (!\instancia1|count\(20) & (!\instancia1|Add0~39\ & VCC))
-- \instancia1|Add0~41\ = CARRY((\instancia1|count\(20) & !\instancia1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(20),
	datad => VCC,
	cin => \instancia1|Add0~39\,
	combout => \instancia1|Add0~40_combout\,
	cout => \instancia1|Add0~41\);

-- Location: LCCOMB_X113_Y66_N20
\instancia1|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~7_combout\ = (!\instancia1|Equal0~9_combout\ & \instancia1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Equal0~9_combout\,
	datad => \instancia1|Add0~40_combout\,
	combout => \instancia1|count~7_combout\);

-- Location: FF_X113_Y66_N21
\instancia1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(20));

-- Location: LCCOMB_X112_Y66_N12
\instancia1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~42_combout\ = (\instancia1|count\(21) & (!\instancia1|Add0~41\)) # (!\instancia1|count\(21) & ((\instancia1|Add0~41\) # (GND)))
-- \instancia1|Add0~43\ = CARRY((!\instancia1|Add0~41\) # (!\instancia1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(21),
	datad => VCC,
	cin => \instancia1|Add0~41\,
	combout => \instancia1|Add0~42_combout\,
	cout => \instancia1|Add0~43\);

-- Location: LCCOMB_X113_Y66_N26
\instancia1|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~8_combout\ = (!\instancia1|Equal0~9_combout\ & \instancia1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Equal0~9_combout\,
	datad => \instancia1|Add0~42_combout\,
	combout => \instancia1|count~8_combout\);

-- Location: FF_X113_Y66_N27
\instancia1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(21));

-- Location: LCCOMB_X112_Y66_N14
\instancia1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~44_combout\ = (\instancia1|count\(22) & (\instancia1|Add0~43\ $ (GND))) # (!\instancia1|count\(22) & (!\instancia1|Add0~43\ & VCC))
-- \instancia1|Add0~45\ = CARRY((\instancia1|count\(22) & !\instancia1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(22),
	datad => VCC,
	cin => \instancia1|Add0~43\,
	combout => \instancia1|Add0~44_combout\,
	cout => \instancia1|Add0~45\);

-- Location: LCCOMB_X113_Y66_N28
\instancia1|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~9_combout\ = (!\instancia1|Equal0~9_combout\ & \instancia1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Equal0~9_combout\,
	datad => \instancia1|Add0~44_combout\,
	combout => \instancia1|count~9_combout\);

-- Location: FF_X113_Y66_N29
\instancia1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(22));

-- Location: LCCOMB_X112_Y66_N16
\instancia1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~46_combout\ = (\instancia1|count\(23) & (!\instancia1|Add0~45\)) # (!\instancia1|count\(23) & ((\instancia1|Add0~45\) # (GND)))
-- \instancia1|Add0~47\ = CARRY((!\instancia1|Add0~45\) # (!\instancia1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(23),
	datad => VCC,
	cin => \instancia1|Add0~45\,
	combout => \instancia1|Add0~46_combout\,
	cout => \instancia1|Add0~47\);

-- Location: LCCOMB_X113_Y66_N6
\instancia1|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~10_combout\ = (\instancia1|Add0~46_combout\ & !\instancia1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia1|Add0~46_combout\,
	datad => \instancia1|Equal0~9_combout\,
	combout => \instancia1|count~10_combout\);

-- Location: FF_X113_Y66_N7
\instancia1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(23));

-- Location: LCCOMB_X113_Y66_N12
\instancia1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~6_combout\ = (\instancia1|count\(20) & (\instancia1|count\(22) & (\instancia1|count\(21) & \instancia1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(20),
	datab => \instancia1|count\(22),
	datac => \instancia1|count\(21),
	datad => \instancia1|count\(23),
	combout => \instancia1|Equal0~6_combout\);

-- Location: LCCOMB_X112_Y66_N18
\instancia1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~48_combout\ = (\instancia1|count\(24) & (\instancia1|Add0~47\ $ (GND))) # (!\instancia1|count\(24) & (!\instancia1|Add0~47\ & VCC))
-- \instancia1|Add0~49\ = CARRY((\instancia1|count\(24) & !\instancia1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(24),
	datad => VCC,
	cin => \instancia1|Add0~47\,
	combout => \instancia1|Add0~48_combout\,
	cout => \instancia1|Add0~49\);

-- Location: FF_X112_Y66_N19
\instancia1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(24));

-- Location: LCCOMB_X112_Y66_N20
\instancia1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~50_combout\ = (\instancia1|count\(25) & (!\instancia1|Add0~49\)) # (!\instancia1|count\(25) & ((\instancia1|Add0~49\) # (GND)))
-- \instancia1|Add0~51\ = CARRY((!\instancia1|Add0~49\) # (!\instancia1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(25),
	datad => VCC,
	cin => \instancia1|Add0~49\,
	combout => \instancia1|Add0~50_combout\,
	cout => \instancia1|Add0~51\);

-- Location: LCCOMB_X113_Y66_N30
\instancia1|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|count~11_combout\ = (!\instancia1|Equal0~9_combout\ & \instancia1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Equal0~9_combout\,
	datad => \instancia1|Add0~50_combout\,
	combout => \instancia1|count~11_combout\);

-- Location: FF_X113_Y66_N31
\instancia1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(25));

-- Location: LCCOMB_X112_Y66_N22
\instancia1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~52_combout\ = (\instancia1|count\(26) & (\instancia1|Add0~51\ $ (GND))) # (!\instancia1|count\(26) & (!\instancia1|Add0~51\ & VCC))
-- \instancia1|Add0~53\ = CARRY((\instancia1|count\(26) & !\instancia1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(26),
	datad => VCC,
	cin => \instancia1|Add0~51\,
	combout => \instancia1|Add0~52_combout\,
	cout => \instancia1|Add0~53\);

-- Location: FF_X112_Y66_N23
\instancia1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(26));

-- Location: LCCOMB_X112_Y66_N24
\instancia1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~54_combout\ = (\instancia1|count\(27) & (!\instancia1|Add0~53\)) # (!\instancia1|count\(27) & ((\instancia1|Add0~53\) # (GND)))
-- \instancia1|Add0~55\ = CARRY((!\instancia1|Add0~53\) # (!\instancia1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(27),
	datad => VCC,
	cin => \instancia1|Add0~53\,
	combout => \instancia1|Add0~54_combout\,
	cout => \instancia1|Add0~55\);

-- Location: FF_X112_Y66_N25
\instancia1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(27));

-- Location: LCCOMB_X112_Y66_N26
\instancia1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~56_combout\ = (\instancia1|count\(28) & (\instancia1|Add0~55\ $ (GND))) # (!\instancia1|count\(28) & (!\instancia1|Add0~55\ & VCC))
-- \instancia1|Add0~57\ = CARRY((\instancia1|count\(28) & !\instancia1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(28),
	datad => VCC,
	cin => \instancia1|Add0~55\,
	combout => \instancia1|Add0~56_combout\,
	cout => \instancia1|Add0~57\);

-- Location: FF_X112_Y66_N27
\instancia1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(28));

-- Location: LCCOMB_X112_Y66_N28
\instancia1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~58_combout\ = (\instancia1|count\(29) & (!\instancia1|Add0~57\)) # (!\instancia1|count\(29) & ((\instancia1|Add0~57\) # (GND)))
-- \instancia1|Add0~59\ = CARRY((!\instancia1|Add0~57\) # (!\instancia1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|count\(29),
	datad => VCC,
	cin => \instancia1|Add0~57\,
	combout => \instancia1|Add0~58_combout\,
	cout => \instancia1|Add0~59\);

-- Location: FF_X112_Y66_N29
\instancia1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(29));

-- Location: LCCOMB_X112_Y66_N30
\instancia1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~60_combout\ = \instancia1|count\(30) $ (!\instancia1|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(30),
	cin => \instancia1|Add0~59\,
	combout => \instancia1|Add0~60_combout\);

-- Location: FF_X112_Y66_N31
\instancia1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|count\(30));

-- Location: LCCOMB_X113_Y66_N16
\instancia1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~7_combout\ = (\instancia1|count\(25) & (!\instancia1|count\(27) & (!\instancia1|count\(24) & !\instancia1|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(25),
	datab => \instancia1|count\(27),
	datac => \instancia1|count\(24),
	datad => \instancia1|count\(26),
	combout => \instancia1|Equal0~7_combout\);

-- Location: LCCOMB_X113_Y66_N18
\instancia1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~8_combout\ = (!\instancia1|count\(28) & (!\instancia1|count\(30) & (!\instancia1|count\(29) & \instancia1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(28),
	datab => \instancia1|count\(30),
	datac => \instancia1|count\(29),
	datad => \instancia1|Equal0~7_combout\,
	combout => \instancia1|Equal0~8_combout\);

-- Location: LCCOMB_X113_Y66_N22
\instancia1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~5_combout\ = (\instancia1|count\(0) & (\instancia1|count\(19) & (!\instancia1|count\(18) & \instancia1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(0),
	datab => \instancia1|count\(19),
	datac => \instancia1|count\(18),
	datad => \instancia1|count\(17),
	combout => \instancia1|Equal0~5_combout\);

-- Location: LCCOMB_X113_Y67_N10
\instancia1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~2_combout\ = (\instancia1|count\(5) & (!\instancia1|count\(8) & (!\instancia1|count\(7) & \instancia1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(5),
	datab => \instancia1|count\(8),
	datac => \instancia1|count\(7),
	datad => \instancia1|count\(6),
	combout => \instancia1|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y67_N14
\instancia1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~1_combout\ = (\instancia1|count\(12) & (!\instancia1|count\(10) & (!\instancia1|count\(9) & !\instancia1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(12),
	datab => \instancia1|count\(10),
	datac => \instancia1|count\(9),
	datad => \instancia1|count\(11),
	combout => \instancia1|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y67_N0
\instancia1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~3_combout\ = (\instancia1|count\(2) & (\instancia1|count\(1) & (\instancia1|count\(3) & \instancia1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(2),
	datab => \instancia1|count\(1),
	datac => \instancia1|count\(3),
	datad => \instancia1|count\(4),
	combout => \instancia1|Equal0~3_combout\);

-- Location: LCCOMB_X113_Y67_N18
\instancia1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~0_combout\ = (\instancia1|count\(15) & (\instancia1|count\(14) & (\instancia1|count\(13) & !\instancia1|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|count\(15),
	datab => \instancia1|count\(14),
	datac => \instancia1|count\(13),
	datad => \instancia1|count\(16),
	combout => \instancia1|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y67_N8
\instancia1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~4_combout\ = (\instancia1|Equal0~2_combout\ & (\instancia1|Equal0~1_combout\ & (\instancia1|Equal0~3_combout\ & \instancia1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|Equal0~2_combout\,
	datab => \instancia1|Equal0~1_combout\,
	datac => \instancia1|Equal0~3_combout\,
	datad => \instancia1|Equal0~0_combout\,
	combout => \instancia1|Equal0~4_combout\);

-- Location: LCCOMB_X113_Y66_N0
\instancia1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~9_combout\ = (\instancia1|Equal0~6_combout\ & (\instancia1|Equal0~8_combout\ & (\instancia1|Equal0~5_combout\ & \instancia1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|Equal0~6_combout\,
	datab => \instancia1|Equal0~8_combout\,
	datac => \instancia1|Equal0~5_combout\,
	datad => \instancia1|Equal0~4_combout\,
	combout => \instancia1|Equal0~9_combout\);

-- Location: FF_X113_Y66_N1
\instancia1|T\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|T~q\);

-- Location: LCCOMB_X114_Y66_N24
\instancia2|count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia2|count[0]~3_combout\ = !\instancia2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia2|count\(0),
	combout => \instancia2|count[0]~3_combout\);

-- Location: FF_X114_Y66_N25
\instancia2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia2|count[0]~3_combout\,
	ena => \instancia1|T~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia2|count\(0));

-- Location: LCCOMB_X114_Y66_N26
\instancia2|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia2|count~2_combout\ = (\instancia2|count\(2) & (\instancia2|count\(3) $ (((\instancia2|count\(0) & \instancia2|count\(1)))))) # (!\instancia2|count\(2) & (\instancia2|count\(3) & ((\instancia2|count\(1)) # (!\instancia2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia2|count\(2),
	datab => \instancia2|count\(0),
	datac => \instancia2|count\(3),
	datad => \instancia2|count\(1),
	combout => \instancia2|count~2_combout\);

-- Location: FF_X114_Y66_N27
\instancia2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia2|count~2_combout\,
	ena => \instancia1|T~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia2|count\(3));

-- Location: LCCOMB_X114_Y66_N10
\instancia2|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia2|count~0_combout\ = (\instancia2|count\(0) & (!\instancia2|count\(1) & ((\instancia2|count\(2)) # (!\instancia2|count\(3))))) # (!\instancia2|count\(0) & (((\instancia2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia2|count\(3),
	datab => \instancia2|count\(0),
	datac => \instancia2|count\(1),
	datad => \instancia2|count\(2),
	combout => \instancia2|count~0_combout\);

-- Location: FF_X114_Y66_N11
\instancia2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia2|count~0_combout\,
	ena => \instancia1|T~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia2|count\(1));

-- Location: LCCOMB_X114_Y66_N8
\instancia2|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia2|count[2]~1_combout\ = \instancia2|count\(2) $ (((\instancia1|T~q\ & (\instancia2|count\(0) & \instancia2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|T~q\,
	datab => \instancia2|count\(0),
	datac => \instancia2|count\(2),
	datad => \instancia2|count\(1),
	combout => \instancia2|count[2]~1_combout\);

-- Location: FF_X114_Y66_N9
\instancia2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \instancia2|count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia2|count\(2));

-- Location: LCCOMB_X114_Y66_N16
\instancia3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Mux6~0_combout\ = (\instancia2|count\(2) & (!\instancia2|count\(1) & (\instancia2|count\(0) $ (!\instancia2|count\(3))))) # (!\instancia2|count\(2) & (\instancia2|count\(0) & (\instancia2|count\(3) $ (!\instancia2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia2|count\(2),
	datab => \instancia2|count\(0),
	datac => \instancia2|count\(3),
	datad => \instancia2|count\(1),
	combout => \instancia3|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y66_N6
\instancia3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Mux5~0_combout\ = (\instancia2|count\(3) & ((\instancia2|count\(0) & ((\instancia2|count\(1)))) # (!\instancia2|count\(0) & (\instancia2|count\(2))))) # (!\instancia2|count\(3) & (\instancia2|count\(2) & (\instancia2|count\(0) $ 
-- (\instancia2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia2|count\(2),
	datab => \instancia2|count\(0),
	datac => \instancia2|count\(3),
	datad => \instancia2|count\(1),
	combout => \instancia3|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y66_N0
\instancia3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Mux4~0_combout\ = (\instancia2|count\(2) & (\instancia2|count\(3) & ((\instancia2|count\(1)) # (!\instancia2|count\(0))))) # (!\instancia2|count\(2) & (!\instancia2|count\(0) & (!\instancia2|count\(3) & \instancia2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia2|count\(2),
	datab => \instancia2|count\(0),
	datac => \instancia2|count\(3),
	datad => \instancia2|count\(1),
	combout => \instancia3|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y66_N18
\instancia3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Mux3~0_combout\ = (\instancia2|count\(1) & ((\instancia2|count\(2) & (\instancia2|count\(0))) # (!\instancia2|count\(2) & (!\instancia2|count\(0) & \instancia2|count\(3))))) # (!\instancia2|count\(1) & (!\instancia2|count\(3) & 
-- (\instancia2|count\(2) $ (\instancia2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia2|count\(2),
	datab => \instancia2|count\(0),
	datac => \instancia2|count\(3),
	datad => \instancia2|count\(1),
	combout => \instancia3|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y66_N28
\instancia3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Mux2~0_combout\ = (\instancia2|count\(1) & (((\instancia2|count\(0) & !\instancia2|count\(3))))) # (!\instancia2|count\(1) & ((\instancia2|count\(2) & ((!\instancia2|count\(3)))) # (!\instancia2|count\(2) & (\instancia2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia2|count\(2),
	datab => \instancia2|count\(0),
	datac => \instancia2|count\(3),
	datad => \instancia2|count\(1),
	combout => \instancia3|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y66_N2
\instancia3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Mux1~0_combout\ = (\instancia2|count\(2) & (\instancia2|count\(0) & (\instancia2|count\(3) $ (\instancia2|count\(1))))) # (!\instancia2|count\(2) & (!\instancia2|count\(3) & ((\instancia2|count\(0)) # (\instancia2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia2|count\(2),
	datab => \instancia2|count\(0),
	datac => \instancia2|count\(3),
	datad => \instancia2|count\(1),
	combout => \instancia3|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y66_N12
\instancia3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Mux0~0_combout\ = (\instancia2|count\(0) & ((\instancia2|count\(3)) # (\instancia2|count\(2) $ (\instancia2|count\(1))))) # (!\instancia2|count\(0) & ((\instancia2|count\(1)) # (\instancia2|count\(2) $ (\instancia2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia2|count\(2),
	datab => \instancia2|count\(0),
	datac => \instancia2|count\(3),
	datad => \instancia2|count\(1),
	combout => \instancia3|Mux0~0_combout\);

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;
END structure;


