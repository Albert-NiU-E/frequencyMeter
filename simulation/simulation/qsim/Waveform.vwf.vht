-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- Generated on "07/30/2020 01:51:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CNT1K
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CNT1K_vhd_vec_tst IS
END CNT1K_vhd_vec_tst;
ARCHITECTURE CNT1K_arch OF CNT1K_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLEAR : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL ENABLE : STD_LOGIC;
SIGNAL FLOW : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT CNT1K
	PORT (
	CLEAR : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	ENABLE : IN STD_LOGIC;
	FLOW : BUFFER STD_LOGIC;
	Q1 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q2 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q3 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CNT1K
	PORT MAP (
-- list connections between master ports and signals
	CLEAR => CLEAR,
	CLK => CLK,
	ENABLE => ENABLE,
	FLOW => FLOW,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3
	);

-- CLEAR
t_prcs_CLEAR: PROCESS
BEGIN
	CLEAR <= '1';
WAIT;
END PROCESS t_prcs_CLEAR;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- ENABLE
t_prcs_ENABLE: PROCESS
BEGIN
	ENABLE <= '1';
WAIT;
END PROCESS t_prcs_ENABLE;
END CNT1K_arch;
