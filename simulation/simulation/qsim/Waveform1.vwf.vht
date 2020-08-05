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
-- Generated on "07/30/2020 02:00:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DISPLAY
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DISPLAY_vhd_vec_tst IS
END DISPLAY_vhd_vec_tst;
ARCHITECTURE DISPLAY_arch OF DISPLAY_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Q : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
COMPONENT DISPLAY
	PORT (
	CLK : IN STD_LOGIC;
	HEX0 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX1 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX2 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX3 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	Q : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	S1 : IN STD_LOGIC;
	S2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DISPLAY
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	Q => Q,
	S1 => S1,
	S2 => S2
	);

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
-- Q[11]
t_prcs_Q_11: PROCESS
BEGIN
	Q(11) <= '0';
WAIT;
END PROCESS t_prcs_Q_11;
-- Q[10]
t_prcs_Q_10: PROCESS
BEGIN
	Q(10) <= '0';
WAIT;
END PROCESS t_prcs_Q_10;
-- Q[9]
t_prcs_Q_9: PROCESS
BEGIN
	Q(9) <= '0';
WAIT;
END PROCESS t_prcs_Q_9;
-- Q[8]
t_prcs_Q_8: PROCESS
BEGIN
	Q(8) <= '0';
WAIT;
END PROCESS t_prcs_Q_8;
-- Q[7]
t_prcs_Q_7: PROCESS
BEGIN
	Q(7) <= '0';
WAIT;
END PROCESS t_prcs_Q_7;
-- Q[6]
t_prcs_Q_6: PROCESS
BEGIN
	Q(6) <= '0';
WAIT;
END PROCESS t_prcs_Q_6;
-- Q[5]
t_prcs_Q_5: PROCESS
BEGIN
	Q(5) <= '0';
WAIT;
END PROCESS t_prcs_Q_5;
-- Q[4]
t_prcs_Q_4: PROCESS
BEGIN
	Q(4) <= '0';
WAIT;
END PROCESS t_prcs_Q_4;
-- Q[3]
t_prcs_Q_3: PROCESS
BEGIN
	Q(3) <= '0';
WAIT;
END PROCESS t_prcs_Q_3;
-- Q[2]
t_prcs_Q_2: PROCESS
BEGIN
	Q(2) <= '0';
WAIT;
END PROCESS t_prcs_Q_2;
-- Q[1]
t_prcs_Q_1: PROCESS
BEGIN
	Q(1) <= '0';
WAIT;
END PROCESS t_prcs_Q_1;
-- Q[0]
t_prcs_Q_0: PROCESS
BEGIN
	Q(0) <= '1';
WAIT;
END PROCESS t_prcs_Q_0;

-- S1
t_prcs_S1: PROCESS
BEGIN
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;

-- S2
t_prcs_S2: PROCESS
BEGIN
	S2 <= '0';
WAIT;
END PROCESS t_prcs_S2;
END DISPLAY_arch;
