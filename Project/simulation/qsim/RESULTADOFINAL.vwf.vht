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
-- Generated on "11/24/2018 17:08:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          HammingEncoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY HammingEncoder_vhd_vec_tst IS
END HammingEncoder_vhd_vec_tst;
ARCHITECTURE HammingEncoder_arch OF HammingEncoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL m : STD_LOGIC_VECTOR(0 TO 10);
SIGNAL x : STD_LOGIC_VECTOR(0 TO 14);
COMPONENT HammingEncoder
	PORT (
	m : IN STD_LOGIC_VECTOR(0 TO 10);
	x : OUT STD_LOGIC_VECTOR(0 TO 14)
	);
END COMPONENT;
BEGIN
	i1 : HammingEncoder
	PORT MAP (
-- list connections between master ports and signals
	m => m,
	x => x
	);
-- m[10]
t_prcs_m_10: PROCESS
BEGIN
	m(10) <= '0';
WAIT;
END PROCESS t_prcs_m_10;
-- m[9]
t_prcs_m_9: PROCESS
BEGIN
	m(9) <= '0';
WAIT;
END PROCESS t_prcs_m_9;
-- m[8]
t_prcs_m_8: PROCESS
BEGIN
	m(8) <= '1';
WAIT;
END PROCESS t_prcs_m_8;
-- m[7]
t_prcs_m_7: PROCESS
BEGIN
	m(7) <= '0';
WAIT;
END PROCESS t_prcs_m_7;
-- m[6]
t_prcs_m_6: PROCESS
BEGIN
	m(6) <= '0';
WAIT;
END PROCESS t_prcs_m_6;
-- m[5]
t_prcs_m_5: PROCESS
BEGIN
	m(5) <= '0';
WAIT;
END PROCESS t_prcs_m_5;
-- m[4]
t_prcs_m_4: PROCESS
BEGIN
	m(4) <= '1';
WAIT;
END PROCESS t_prcs_m_4;
-- m[3]
t_prcs_m_3: PROCESS
BEGIN
	m(3) <= '0';
WAIT;
END PROCESS t_prcs_m_3;
-- m[2]
t_prcs_m_2: PROCESS
BEGIN
	m(2) <= '0';
WAIT;
END PROCESS t_prcs_m_2;
-- m[1]
t_prcs_m_1: PROCESS
BEGIN
	m(1) <= '0';
WAIT;
END PROCESS t_prcs_m_1;
-- m[0]
t_prcs_m_0: PROCESS
BEGIN
	m(0) <= '1';
WAIT;
END PROCESS t_prcs_m_0;
END HammingEncoder_arch;
