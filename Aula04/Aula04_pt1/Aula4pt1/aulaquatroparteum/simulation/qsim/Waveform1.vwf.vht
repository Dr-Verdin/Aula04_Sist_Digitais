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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/10/2024 16:17:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          T_flip_flop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY T_flip_flop_vhd_vec_tst IS
END T_flip_flop_vhd_vec_tst;
ARCHITECTURE T_flip_flop_arch OF T_flip_flop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL T : STD_LOGIC;
COMPONENT T_flip_flop
	PORT (
	clear : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	T : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : T_flip_flop
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	Clk => Clk,
	Q => Q,
	T => T
	);

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 50000 ps;
	Clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- T
t_prcs_T: PROCESS
BEGIN
	T <= '1';
WAIT;
END PROCESS t_prcs_T;
END T_flip_flop_arch;
