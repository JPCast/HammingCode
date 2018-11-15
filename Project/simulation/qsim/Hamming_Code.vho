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

-- DATE "11/15/2018 18:41:14"

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
	dIn : IN std_logic_vector(10 DOWNTO 0);
	dOut : BUFFER std_logic_vector(14 DOWNTO 0)
	);
END HammingEncoder;

-- Design Ports Information
-- dOut[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[9]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[13]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dOut[14]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dIn[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_dIn : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dOut : std_logic_vector(14 DOWNTO 0);
SIGNAL \dOut[0]~output_o\ : std_logic;
SIGNAL \dOut[1]~output_o\ : std_logic;
SIGNAL \dOut[2]~output_o\ : std_logic;
SIGNAL \dOut[3]~output_o\ : std_logic;
SIGNAL \dOut[4]~output_o\ : std_logic;
SIGNAL \dOut[5]~output_o\ : std_logic;
SIGNAL \dOut[6]~output_o\ : std_logic;
SIGNAL \dOut[7]~output_o\ : std_logic;
SIGNAL \dOut[8]~output_o\ : std_logic;
SIGNAL \dOut[9]~output_o\ : std_logic;
SIGNAL \dOut[10]~output_o\ : std_logic;
SIGNAL \dOut[11]~output_o\ : std_logic;
SIGNAL \dOut[12]~output_o\ : std_logic;
SIGNAL \dOut[13]~output_o\ : std_logic;
SIGNAL \dOut[14]~output_o\ : std_logic;
SIGNAL \dIn[4]~input_o\ : std_logic;
SIGNAL \dIn[8]~input_o\ : std_logic;
SIGNAL \dIn[6]~input_o\ : std_logic;
SIGNAL \dIn[0]~input_o\ : std_logic;
SIGNAL \dIn[3]~input_o\ : std_logic;
SIGNAL \dIn[2]~input_o\ : std_logic;
SIGNAL \dIn[9]~input_o\ : std_logic;
SIGNAL \dOut~0_combout\ : std_logic;
SIGNAL \dOut~1_combout\ : std_logic;
SIGNAL \dIn[1]~input_o\ : std_logic;
SIGNAL \dIn[7]~input_o\ : std_logic;
SIGNAL \dOut~2_combout\ : std_logic;
SIGNAL \dIn[5]~input_o\ : std_logic;
SIGNAL \dOut~3_combout\ : std_logic;
SIGNAL \dIn[10]~input_o\ : std_logic;
SIGNAL \dOut~4_combout\ : std_logic;
SIGNAL \dOut~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_dIn <= dIn;
dOut <= ww_dOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y22_N2
\dOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dOut~1_combout\,
	devoe => ww_devoe,
	o => \dOut[0]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\dOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dOut~3_combout\,
	devoe => ww_devoe,
	o => \dOut[1]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\dOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dOut~4_combout\,
	devoe => ww_devoe,
	o => \dOut[2]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\dOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dOut~5_combout\,
	devoe => ww_devoe,
	o => \dOut[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\dOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[0]~input_o\,
	devoe => ww_devoe,
	o => \dOut[4]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\dOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[1]~input_o\,
	devoe => ww_devoe,
	o => \dOut[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\dOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[2]~input_o\,
	devoe => ww_devoe,
	o => \dOut[6]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\dOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[3]~input_o\,
	devoe => ww_devoe,
	o => \dOut[7]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\dOut[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[4]~input_o\,
	devoe => ww_devoe,
	o => \dOut[8]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\dOut[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[5]~input_o\,
	devoe => ww_devoe,
	o => \dOut[9]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\dOut[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[6]~input_o\,
	devoe => ww_devoe,
	o => \dOut[10]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\dOut[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[7]~input_o\,
	devoe => ww_devoe,
	o => \dOut[11]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\dOut[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[8]~input_o\,
	devoe => ww_devoe,
	o => \dOut[12]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\dOut[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[9]~input_o\,
	devoe => ww_devoe,
	o => \dOut[13]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\dOut[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dIn[10]~input_o\,
	devoe => ww_devoe,
	o => \dOut[14]~output_o\);

-- Location: IOIBUF_X33_Y27_N8
\dIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(4),
	o => \dIn[4]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\dIn[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(8),
	o => \dIn[8]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\dIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(6),
	o => \dIn[6]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\dIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(0),
	o => \dIn[0]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\dIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(3),
	o => \dIn[3]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\dIn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(2),
	o => \dIn[2]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\dIn[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(9),
	o => \dIn[9]~input_o\);

-- Location: LCCOMB_X32_Y27_N24
\dOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dOut~0_combout\ = \dIn[0]~input_o\ $ (\dIn[3]~input_o\ $ (\dIn[2]~input_o\ $ (\dIn[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[0]~input_o\,
	datab => \dIn[3]~input_o\,
	datac => \dIn[2]~input_o\,
	datad => \dIn[9]~input_o\,
	combout => \dOut~0_combout\);

-- Location: LCCOMB_X32_Y27_N18
\dOut~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dOut~1_combout\ = \dIn[4]~input_o\ $ (\dIn[8]~input_o\ $ (\dIn[6]~input_o\ $ (\dOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[4]~input_o\,
	datab => \dIn[8]~input_o\,
	datac => \dIn[6]~input_o\,
	datad => \dOut~0_combout\,
	combout => \dOut~1_combout\);

-- Location: IOIBUF_X33_Y25_N8
\dIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(1),
	o => \dIn[1]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\dIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(7),
	o => \dIn[7]~input_o\);

-- Location: LCCOMB_X32_Y27_N12
\dOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dOut~2_combout\ = \dIn[1]~input_o\ $ (\dIn[0]~input_o\ $ (\dIn[7]~input_o\ $ (\dIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[1]~input_o\,
	datab => \dIn[0]~input_o\,
	datac => \dIn[7]~input_o\,
	datad => \dIn[4]~input_o\,
	combout => \dOut~2_combout\);

-- Location: IOIBUF_X33_Y16_N22
\dIn[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(5),
	o => \dIn[5]~input_o\);

-- Location: LCCOMB_X32_Y27_N30
\dOut~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dOut~3_combout\ = \dOut~2_combout\ $ (\dIn[8]~input_o\ $ (\dIn[5]~input_o\ $ (\dIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dOut~2_combout\,
	datab => \dIn[8]~input_o\,
	datac => \dIn[5]~input_o\,
	datad => \dIn[3]~input_o\,
	combout => \dOut~3_combout\);

-- Location: IOIBUF_X33_Y16_N15
\dIn[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dIn(10),
	o => \dIn[10]~input_o\);

-- Location: LCCOMB_X32_Y27_N0
\dOut~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dOut~4_combout\ = \dOut~2_combout\ $ (\dIn[10]~input_o\ $ (\dIn[2]~input_o\ $ (\dIn[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dOut~2_combout\,
	datab => \dIn[10]~input_o\,
	datac => \dIn[2]~input_o\,
	datad => \dIn[6]~input_o\,
	combout => \dOut~4_combout\);

-- Location: LCCOMB_X32_Y27_N26
\dOut~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dOut~5_combout\ = \dIn[1]~input_o\ $ (\dIn[10]~input_o\ $ (\dIn[5]~input_o\ $ (\dOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dIn[1]~input_o\,
	datab => \dIn[10]~input_o\,
	datac => \dIn[5]~input_o\,
	datad => \dOut~0_combout\,
	combout => \dOut~5_combout\);

ww_dOut(0) <= \dOut[0]~output_o\;

ww_dOut(1) <= \dOut[1]~output_o\;

ww_dOut(2) <= \dOut[2]~output_o\;

ww_dOut(3) <= \dOut[3]~output_o\;

ww_dOut(4) <= \dOut[4]~output_o\;

ww_dOut(5) <= \dOut[5]~output_o\;

ww_dOut(6) <= \dOut[6]~output_o\;

ww_dOut(7) <= \dOut[7]~output_o\;

ww_dOut(8) <= \dOut[8]~output_o\;

ww_dOut(9) <= \dOut[9]~output_o\;

ww_dOut(10) <= \dOut[10]~output_o\;

ww_dOut(11) <= \dOut[11]~output_o\;

ww_dOut(12) <= \dOut[12]~output_o\;

ww_dOut(13) <= \dOut[13]~output_o\;

ww_dOut(14) <= \dOut[14]~output_o\;
END structure;


