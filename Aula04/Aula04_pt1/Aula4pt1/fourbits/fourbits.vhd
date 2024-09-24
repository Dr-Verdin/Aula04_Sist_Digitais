LIBRARY ieee;
USE ieee.std_logic_1164.all;
	ENTITY fourbits IS
		PORT ( Clk, T, clear : IN STD_LOGIC;
				Q1, Q2, Q3, Q4 : OUT STD_LOGIC);
END fourbits;

ARCHITECTURE Structural OF fourbits IS
component T_flip_flop is
	PORT ( Clk, T, clear : IN STD_LOGIC;
				Q : OUT STD_LOGIC);
end component;
	SIGNAL OUTPUT, OUTPUT1, T1, OUTPUT2, T2, OUTPUT3, T3 : STD_LOGIC:='0' ;
BEGIN
	tff0: T_flip_flop
	port map (
		T => T,
		Clk => Clk,
		clear => clear,
		Q => OUTPUT
		);
	T1 <= T AND OUTPUT;
	tff1: T_flip_flop
	port map(
T => T1,
	Clk => Clk,
	clear => clear,
	Q => OUTPUT1
	);
	T2 <= T1 AND OUTPUT1;
	tff2: T_flip_flop
	port map(
	T => T2,
	Clk => Clk,
	clear => clear,
	Q => OUTPUT2
	);
	T3 <= T2 AND OUTPUT2;
	tff3: T_flip_flop
	port map(
	T => T3,
	Clk => Clk,
	clear => clear,
	Q => OUTPUT3
	);
	
	Q1 <= OUTPUT;
	Q2 <= OUTPUT1;
	Q3 <= OUTPUT2;
	Q4 <= OUTPUT3;
END Structural;