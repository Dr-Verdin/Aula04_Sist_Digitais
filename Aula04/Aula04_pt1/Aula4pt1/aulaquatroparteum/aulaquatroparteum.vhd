LIBRARY ieee;
USE ieee.std_logic_1164.all;
	ENTITY aulaquatroparteum IS
		PORT ( Clk, T, clear : IN STD_LOGIC;
				Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14 : OUT STD_LOGIC);
END aulaquatroparteum;

ARCHITECTURE Structural OF aulaquatroparteum IS
component T_flip_flop is
	PORT ( Clk, T, clear : IN STD_LOGIC;
				Q : OUT STD_LOGIC);
end component;

component display is
	port ( B1, B2, B3, B4 : IN STD_LOGIC;
			A, B, C, D, E, F, G: OUT STD_LOGIC);
end component;

	SIGNAL OUTPUT, OUTPUT1, T1, OUTPUT2, T2, OUTPUT3, T3, OUTPUT4, T4, OUTPUT5, T5, OUTPUT6, T6, OUTPUT7, T7: STD_LOGIC:='0' ;
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
	
	T4 <= T3 AND OUTPUT3;
	tff4: T_flip_flop
	port map(
	T => T4,
	Clk => Clk,
	clear => clear,
	Q => OUTPUT4
	);
	
	T5 <= T4 AND OUTPUT4;
	tff5: T_flip_flop
	port map(
	T => T5,
	Clk => Clk,
	clear => clear,
	Q => OUTPUT5
	);
	
	T6 <= T5 AND OUTPUT5;
	tff6: T_flip_flop
	port map(
	T => T6,
	Clk => Clk,
	clear => clear,
	Q => OUTPUT6
	);
	
	T7 <= T6 AND OUTPUT6;
	tff7: T_flip_flop
	port map(
	T => T7,
	Clk => Clk,
	clear => clear,
	Q => OUTPUT7
	);
	
	
	
	cookie : display
	port map(
	B1 => OUTPUT3,
	B2 => OUTPUT2,
	B3 => OUTPUT1,
	B4 => OUTPUT,
	A => Q1,
	B => Q2,
	C => Q3,
	D => Q4,
	E => Q5,
	F => Q6,
	G => Q7
	);
	
	biscoito : display
	port map(
	B1 => OUTPUT7,
	B2 => OUTPUT6,
	B3 => OUTPUT5,
	B4 => OUTPUT4,
	A => Q8,
	B => Q9,
	C => Q10,
	D => Q11,
	E => Q12,
	F => Q13,
	G => Q14
	);
END Structural;