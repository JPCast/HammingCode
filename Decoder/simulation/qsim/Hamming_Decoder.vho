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

-- DATE "11/24/2018 16:06:59"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	HammingDecoder IS
    PORT (
	clk : IN std_logic;
	y : IN std_logic;
	m_linha : OUT std_logic_vector(10 DOWNTO 0)
	);
END HammingDecoder;

ARCHITECTURE structure OF HammingDecoder IS
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
SIGNAL ww_y : std_logic;
SIGNAL ww_m_linha : std_logic_vector(10 DOWNTO 0);
SIGNAL \m_linha[0]~output_o\ : std_logic;
SIGNAL \m_linha[1]~output_o\ : std_logic;
SIGNAL \m_linha[2]~output_o\ : std_logic;
SIGNAL \m_linha[3]~output_o\ : std_logic;
SIGNAL \m_linha[4]~output_o\ : std_logic;
SIGNAL \m_linha[5]~output_o\ : std_logic;
SIGNAL \m_linha[6]~output_o\ : std_logic;
SIGNAL \m_linha[7]~output_o\ : std_logic;
SIGNAL \m_linha[8]~output_o\ : std_logic;
SIGNAL \m_linha[9]~output_o\ : std_logic;
SIGNAL \m_linha[10]~output_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Controlo_Unidade|Counter1|s[0]~3_combout\ : std_logic;
SIGNAL \Controlo_Unidade|Counter1|s[1]~0_combout\ : std_logic;
SIGNAL \Controlo_Unidade|Counter1|s[2]~1_combout\ : std_logic;
SIGNAL \Controlo_Unidade|Counter1|s[3]~2_combout\ : std_logic;
SIGNAL \Controlo_Unidade|Matrix_H|Mux0~0_combout\ : std_logic;
SIGNAL \flipFlopD1|Q~0_combout\ : std_logic;
SIGNAL \flipFlopD1|Q~q\ : std_logic;
SIGNAL \xor1|cout~combout\ : std_logic;
SIGNAL \Controlo_Unidade|Matrix_H|Mux1~0_combout\ : std_logic;
SIGNAL \flipFlopD2|Q~0_combout\ : std_logic;
SIGNAL \flipFlopD2|Q~q\ : std_logic;
SIGNAL \xor2|cout~combout\ : std_logic;
SIGNAL \Controlo_Unidade|Matrix_H|Mux2~0_combout\ : std_logic;
SIGNAL \flipFlopD3|Q~0_combout\ : std_logic;
SIGNAL \flipFlopD3|Q~q\ : std_logic;
SIGNAL \xor3|cout~combout\ : std_logic;
SIGNAL \Controlo_Unidade|Matrix_H|Mux3~0_combout\ : std_logic;
SIGNAL \flipFlopD4|Q~0_combout\ : std_logic;
SIGNAL \flipFlopD4|Q~q\ : std_logic;
SIGNAL \xor4|cout~combout\ : std_logic;
SIGNAL \Controlo_Unidade|Counter1|s\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_y <= y;
m_linha <= ww_m_linha;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\m_linha[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor1|cout~combout\,
	devoe => ww_devoe,
	o => \m_linha[0]~output_o\);

\m_linha[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor2|cout~combout\,
	devoe => ww_devoe,
	o => \m_linha[1]~output_o\);

\m_linha[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor3|cout~combout\,
	devoe => ww_devoe,
	o => \m_linha[2]~output_o\);

\m_linha[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor4|cout~combout\,
	devoe => ww_devoe,
	o => \m_linha[3]~output_o\);

\m_linha[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_linha[4]~output_o\);

\m_linha[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_linha[5]~output_o\);

\m_linha[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_linha[6]~output_o\);

\m_linha[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_linha[7]~output_o\);

\m_linha[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_linha[8]~output_o\);

\m_linha[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_linha[9]~output_o\);

\m_linha[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_linha[10]~output_o\);

\y~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\Controlo_Unidade|Counter1|s[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controlo_Unidade|Counter1|s[0]~3_combout\ = !\Controlo_Unidade|Counter1|s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlo_Unidade|Counter1|s\(0),
	combout => \Controlo_Unidade|Counter1|s[0]~3_combout\);

\Controlo_Unidade|Counter1|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Controlo_Unidade|Counter1|s[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlo_Unidade|Counter1|s\(0));

\Controlo_Unidade|Counter1|s[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controlo_Unidade|Counter1|s[1]~0_combout\ = \Controlo_Unidade|Counter1|s\(0) $ (\Controlo_Unidade|Counter1|s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controlo_Unidade|Counter1|s\(0),
	datad => \Controlo_Unidade|Counter1|s\(1),
	combout => \Controlo_Unidade|Counter1|s[1]~0_combout\);

\Controlo_Unidade|Counter1|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Controlo_Unidade|Counter1|s[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlo_Unidade|Counter1|s\(1));

\Controlo_Unidade|Counter1|s[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controlo_Unidade|Counter1|s[2]~1_combout\ = \Controlo_Unidade|Counter1|s\(2) $ (((\Controlo_Unidade|Counter1|s\(0) & \Controlo_Unidade|Counter1|s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controlo_Unidade|Counter1|s\(2),
	datac => \Controlo_Unidade|Counter1|s\(0),
	datad => \Controlo_Unidade|Counter1|s\(1),
	combout => \Controlo_Unidade|Counter1|s[2]~1_combout\);

\Controlo_Unidade|Counter1|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Controlo_Unidade|Counter1|s[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlo_Unidade|Counter1|s\(2));

\Controlo_Unidade|Counter1|s[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controlo_Unidade|Counter1|s[3]~2_combout\ = \Controlo_Unidade|Counter1|s\(3) $ (((\Controlo_Unidade|Counter1|s\(0) & (\Controlo_Unidade|Counter1|s\(1) & \Controlo_Unidade|Counter1|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlo_Unidade|Counter1|s\(3),
	datab => \Controlo_Unidade|Counter1|s\(0),
	datac => \Controlo_Unidade|Counter1|s\(1),
	datad => \Controlo_Unidade|Counter1|s\(2),
	combout => \Controlo_Unidade|Counter1|s[3]~2_combout\);

\Controlo_Unidade|Counter1|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Controlo_Unidade|Counter1|s[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controlo_Unidade|Counter1|s\(3));

\Controlo_Unidade|Matrix_H|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controlo_Unidade|Matrix_H|Mux0~0_combout\ = (\Controlo_Unidade|Counter1|s\(0) & ((\Controlo_Unidade|Counter1|s\(2) & ((!\Controlo_Unidade|Counter1|s\(3)))) # (!\Controlo_Unidade|Counter1|s\(2) & (\Controlo_Unidade|Counter1|s\(1))))) # 
-- (!\Controlo_Unidade|Counter1|s\(0) & (\Controlo_Unidade|Counter1|s\(2) $ (((!\Controlo_Unidade|Counter1|s\(1) & \Controlo_Unidade|Counter1|s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlo_Unidade|Counter1|s\(0),
	datab => \Controlo_Unidade|Counter1|s\(1),
	datac => \Controlo_Unidade|Counter1|s\(2),
	datad => \Controlo_Unidade|Counter1|s\(3),
	combout => \Controlo_Unidade|Matrix_H|Mux0~0_combout\);

\flipFlopD1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopD1|Q~0_combout\ = !\xor1|cout~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor1|cout~combout\,
	combout => \flipFlopD1|Q~0_combout\);

\flipFlopD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \flipFlopD1|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopD1|Q~q\);

\xor1|cout\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor1|cout~combout\ = \flipFlopD1|Q~q\ $ (((!\Controlo_Unidade|Matrix_H|Mux0~0_combout\) # (!\y~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \Controlo_Unidade|Matrix_H|Mux0~0_combout\,
	datac => \flipFlopD1|Q~q\,
	combout => \xor1|cout~combout\);

\Controlo_Unidade|Matrix_H|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controlo_Unidade|Matrix_H|Mux1~0_combout\ = (\Controlo_Unidade|Counter1|s\(0) & ((\Controlo_Unidade|Counter1|s\(3) & (!\Controlo_Unidade|Counter1|s\(1))) # (!\Controlo_Unidade|Counter1|s\(3) & ((\Controlo_Unidade|Counter1|s\(2)))))) # 
-- (!\Controlo_Unidade|Counter1|s\(0) & ((\Controlo_Unidade|Counter1|s\(1) & ((!\Controlo_Unidade|Counter1|s\(3)))) # (!\Controlo_Unidade|Counter1|s\(1) & (\Controlo_Unidade|Counter1|s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlo_Unidade|Counter1|s\(0),
	datab => \Controlo_Unidade|Counter1|s\(1),
	datac => \Controlo_Unidade|Counter1|s\(2),
	datad => \Controlo_Unidade|Counter1|s\(3),
	combout => \Controlo_Unidade|Matrix_H|Mux1~0_combout\);

\flipFlopD2|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopD2|Q~0_combout\ = !\xor2|cout~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor2|cout~combout\,
	combout => \flipFlopD2|Q~0_combout\);

\flipFlopD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \flipFlopD2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopD2|Q~q\);

\xor2|cout\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor2|cout~combout\ = \flipFlopD2|Q~q\ $ (((!\Controlo_Unidade|Matrix_H|Mux1~0_combout\) # (!\y~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \Controlo_Unidade|Matrix_H|Mux1~0_combout\,
	datac => \flipFlopD2|Q~q\,
	combout => \xor2|cout~combout\);

\Controlo_Unidade|Matrix_H|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controlo_Unidade|Matrix_H|Mux2~0_combout\ = (\Controlo_Unidade|Counter1|s\(0) & ((\Controlo_Unidade|Counter1|s\(3) & ((!\Controlo_Unidade|Counter1|s\(2)))) # (!\Controlo_Unidade|Counter1|s\(3) & (!\Controlo_Unidade|Counter1|s\(1))))) # 
-- (!\Controlo_Unidade|Counter1|s\(0) & ((\Controlo_Unidade|Counter1|s\(2) & (!\Controlo_Unidade|Counter1|s\(1))) # (!\Controlo_Unidade|Counter1|s\(2) & ((\Controlo_Unidade|Counter1|s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlo_Unidade|Counter1|s\(0),
	datab => \Controlo_Unidade|Counter1|s\(1),
	datac => \Controlo_Unidade|Counter1|s\(2),
	datad => \Controlo_Unidade|Counter1|s\(3),
	combout => \Controlo_Unidade|Matrix_H|Mux2~0_combout\);

\flipFlopD3|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopD3|Q~0_combout\ = !\xor3|cout~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor3|cout~combout\,
	combout => \flipFlopD3|Q~0_combout\);

\flipFlopD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \flipFlopD3|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopD3|Q~q\);

\xor3|cout\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor3|cout~combout\ = \flipFlopD3|Q~q\ $ (((!\Controlo_Unidade|Matrix_H|Mux2~0_combout\) # (!\y~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \Controlo_Unidade|Matrix_H|Mux2~0_combout\,
	datac => \flipFlopD3|Q~q\,
	combout => \xor3|cout~combout\);

\Controlo_Unidade|Matrix_H|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Controlo_Unidade|Matrix_H|Mux3~0_combout\ = (\Controlo_Unidade|Counter1|s\(0) & ((\Controlo_Unidade|Counter1|s\(1)) # ((!\Controlo_Unidade|Counter1|s\(3))))) # (!\Controlo_Unidade|Counter1|s\(0) & ((\Controlo_Unidade|Counter1|s\(1) & 
-- (!\Controlo_Unidade|Counter1|s\(2) & !\Controlo_Unidade|Counter1|s\(3))) # (!\Controlo_Unidade|Counter1|s\(1) & (\Controlo_Unidade|Counter1|s\(2) & \Controlo_Unidade|Counter1|s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controlo_Unidade|Counter1|s\(0),
	datab => \Controlo_Unidade|Counter1|s\(1),
	datac => \Controlo_Unidade|Counter1|s\(2),
	datad => \Controlo_Unidade|Counter1|s\(3),
	combout => \Controlo_Unidade|Matrix_H|Mux3~0_combout\);

\flipFlopD4|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flipFlopD4|Q~0_combout\ = !\xor4|cout~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor4|cout~combout\,
	combout => \flipFlopD4|Q~0_combout\);

\flipFlopD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \flipFlopD4|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopD4|Q~q\);

\xor4|cout\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4|cout~combout\ = \flipFlopD4|Q~q\ $ (((\Controlo_Unidade|Matrix_H|Mux3~0_combout\) # (!\y~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datac => \Controlo_Unidade|Matrix_H|Mux3~0_combout\,
	datad => \flipFlopD4|Q~q\,
	combout => \xor4|cout~combout\);

ww_m_linha(0) <= \m_linha[0]~output_o\;

ww_m_linha(1) <= \m_linha[1]~output_o\;

ww_m_linha(2) <= \m_linha[2]~output_o\;

ww_m_linha(3) <= \m_linha[3]~output_o\;

ww_m_linha(4) <= \m_linha[4]~output_o\;

ww_m_linha(5) <= \m_linha[5]~output_o\;

ww_m_linha(6) <= \m_linha[6]~output_o\;

ww_m_linha(7) <= \m_linha[7]~output_o\;

ww_m_linha(8) <= \m_linha[8]~output_o\;

ww_m_linha(9) <= \m_linha[9]~output_o\;

ww_m_linha(10) <= \m_linha[10]~output_o\;
END structure;


