-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/21/2018 11:03:36"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	HammingEncoder IS
    PORT (
	m : IN std_logic_vector(10 DOWNTO 0);
	x : OUT std_logic_vector(14 DOWNTO 0)
	);
END HammingEncoder;

-- Design Ports Information
-- x[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[8]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[10]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[11]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[12]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[13]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[14]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[7]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[8]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[9]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HammingEncoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(14 DOWNTO 0);
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \x[4]~output_o\ : std_logic;
SIGNAL \x[5]~output_o\ : std_logic;
SIGNAL \x[6]~output_o\ : std_logic;
SIGNAL \x[7]~output_o\ : std_logic;
SIGNAL \x[8]~output_o\ : std_logic;
SIGNAL \x[9]~output_o\ : std_logic;
SIGNAL \x[10]~output_o\ : std_logic;
SIGNAL \x[11]~output_o\ : std_logic;
SIGNAL \x[12]~output_o\ : std_logic;
SIGNAL \x[13]~output_o\ : std_logic;
SIGNAL \x[14]~output_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \m[4]~input_o\ : std_logic;
SIGNAL \m[5]~input_o\ : std_logic;
SIGNAL \m[6]~input_o\ : std_logic;
SIGNAL \m[7]~input_o\ : std_logic;
SIGNAL \m[8]~input_o\ : std_logic;
SIGNAL \m[9]~input_o\ : std_logic;
SIGNAL \m[10]~input_o\ : std_logic;
SIGNAL \xor_operator4|x~0_combout\ : std_logic;
SIGNAL \xor_operator5|x~combout\ : std_logic;
SIGNAL \xor_operator8|x~combout\ : std_logic;
SIGNAL \xor_operator13|x~0_combout\ : std_logic;
SIGNAL \xor_operator13|x~combout\ : std_logic;
SIGNAL \xor_operator17|x~0_combout\ : std_logic;
SIGNAL \xor_operator17|x~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_m <= m;
x <= ww_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y22_N9
\x[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[0]~input_o\,
	devoe => ww_devoe,
	o => \x[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\x[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[1]~input_o\,
	devoe => ww_devoe,
	o => \x[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\x[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[2]~input_o\,
	devoe => ww_devoe,
	o => \x[2]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\x[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[3]~input_o\,
	devoe => ww_devoe,
	o => \x[3]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\x[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[4]~input_o\,
	devoe => ww_devoe,
	o => \x[4]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\x[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[5]~input_o\,
	devoe => ww_devoe,
	o => \x[5]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\x[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[6]~input_o\,
	devoe => ww_devoe,
	o => \x[6]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\x[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[7]~input_o\,
	devoe => ww_devoe,
	o => \x[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\x[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[8]~input_o\,
	devoe => ww_devoe,
	o => \x[8]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\x[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[9]~input_o\,
	devoe => ww_devoe,
	o => \x[9]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\x[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[10]~input_o\,
	devoe => ww_devoe,
	o => \x[10]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\x[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_operator5|x~combout\,
	devoe => ww_devoe,
	o => \x[11]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\x[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_operator8|x~combout\,
	devoe => ww_devoe,
	o => \x[12]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\x[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_operator13|x~combout\,
	devoe => ww_devoe,
	o => \x[13]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\x[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_operator17|x~combout\,
	devoe => ww_devoe,
	o => \x[14]~output_o\);

-- Location: IOIBUF_X33_Y22_N1
\m[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\m[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\m[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\m[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\m[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(4),
	o => \m[4]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\m[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(5),
	o => \m[5]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\m[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(6),
	o => \m[6]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\m[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(7),
	o => \m[7]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\m[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(8),
	o => \m[8]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\m[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(9),
	o => \m[9]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\m[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(10),
	o => \m[10]~input_o\);

-- Location: LCCOMB_X32_Y13_N8
\xor_operator4|x~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_operator4|x~0_combout\ = \m[0]~input_o\ $ (\m[3]~input_o\ $ (\m[1]~input_o\ $ (\m[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[3]~input_o\,
	datac => \m[1]~input_o\,
	datad => \m[2]~input_o\,
	combout => \xor_operator4|x~0_combout\);

-- Location: LCCOMB_X32_Y13_N2
\xor_operator5|x\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_operator5|x~combout\ = \m[7]~input_o\ $ (\m[4]~input_o\ $ (\xor_operator4|x~0_combout\ $ (\m[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[7]~input_o\,
	datab => \m[4]~input_o\,
	datac => \xor_operator4|x~0_combout\,
	datad => \m[10]~input_o\,
	combout => \xor_operator5|x~combout\);

-- Location: LCCOMB_X32_Y13_N4
\xor_operator8|x\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_operator8|x~combout\ = \m[5]~input_o\ $ (\m[8]~input_o\ $ (\xor_operator4|x~0_combout\ $ (\m[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[5]~input_o\,
	datab => \m[8]~input_o\,
	datac => \xor_operator4|x~0_combout\,
	datad => \m[9]~input_o\,
	combout => \xor_operator8|x~combout\);

-- Location: LCCOMB_X32_Y13_N6
\xor_operator13|x~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_operator13|x~0_combout\ = \m[7]~input_o\ $ (\m[6]~input_o\ $ (\m[4]~input_o\ $ (\m[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[7]~input_o\,
	datab => \m[6]~input_o\,
	datac => \m[4]~input_o\,
	datad => \m[5]~input_o\,
	combout => \xor_operator13|x~0_combout\);

-- Location: LCCOMB_X32_Y13_N24
\xor_operator13|x\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_operator13|x~combout\ = \m[0]~input_o\ $ (\m[8]~input_o\ $ (\m[1]~input_o\ $ (\xor_operator13|x~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[8]~input_o\,
	datac => \m[1]~input_o\,
	datad => \xor_operator13|x~0_combout\,
	combout => \xor_operator13|x~combout\);

-- Location: LCCOMB_X32_Y13_N10
\xor_operator17|x~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_operator17|x~0_combout\ = \m[0]~input_o\ $ (\m[4]~input_o\ $ (\m[6]~input_o\ $ (\m[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[4]~input_o\,
	datac => \m[6]~input_o\,
	datad => \m[5]~input_o\,
	combout => \xor_operator17|x~0_combout\);

-- Location: LCCOMB_X32_Y13_N20
\xor_operator17|x\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor_operator17|x~combout\ = \xor_operator17|x~0_combout\ $ (\m[9]~input_o\ $ (\m[2]~input_o\ $ (\m[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor_operator17|x~0_combout\,
	datab => \m[9]~input_o\,
	datac => \m[2]~input_o\,
	datad => \m[10]~input_o\,
	combout => \xor_operator17|x~combout\);

ww_x(0) <= \x[0]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_x(4) <= \x[4]~output_o\;

ww_x(5) <= \x[5]~output_o\;

ww_x(6) <= \x[6]~output_o\;

ww_x(7) <= \x[7]~output_o\;

ww_x(8) <= \x[8]~output_o\;

ww_x(9) <= \x[9]~output_o\;

ww_x(10) <= \x[10]~output_o\;

ww_x(11) <= \x[11]~output_o\;

ww_x(12) <= \x[12]~output_o\;

ww_x(13) <= \x[13]~output_o\;

ww_x(14) <= \x[14]~output_o\;
END structure;


