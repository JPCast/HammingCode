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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/24/2018 16:06:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          HammingDecoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY HammingDecoder_vhd_vec_tst IS
END HammingDecoder_vhd_vec_tst;
ARCHITECTURE HammingDecoder_arch OF HammingDecoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL m_linha : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL y : STD_LOGIC;
COMPONENT HammingDecoder
	PORT (
	clk : IN STD_LOGIC;
	m_linha : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : HammingDecoder
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	m_linha => m_linha,
	y => y
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- y
t_prcs_y: PROCESS
BEGIN
	y <= '0';
	WAIT FOR 20000 ps;
	y <= '1';
	WAIT FOR 40000 ps;
	y <= '0';
	WAIT FOR 60000 ps;
	y <= '1';
	WAIT FOR 90000 ps;
	y <= '0';
	WAIT FOR 110000 ps;
	y <= '1';
	WAIT FOR 140000 ps;
	y <= '0';
	WAIT FOR 110000 ps;
	y <= '1';
	WAIT FOR 190000 ps;
	y <= '0';
	WAIT FOR 10000 ps;
	y <= '1';
	WAIT FOR 40000 ps;
	y <= '0';
	WAIT FOR 60000 ps;
	y <= '1';
	WAIT FOR 90000 ps;
	y <= '0';
WAIT;
END PROCESS t_prcs_y;
END HammingDecoder_arch;
