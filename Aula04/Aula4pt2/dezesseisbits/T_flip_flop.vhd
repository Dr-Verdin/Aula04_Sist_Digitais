LIBRARY ieee;
USE ieee.std_logic_1164.all;
	ENTITY T_flip_flop IS
		PORT ( Clk, T, clear : IN STD_LOGIC;
				Q : OUT STD_LOGIC);
END T_flip_flop;

ARCHITECTURE Structural OF T_flip_flop IS
	SIGNAL OUTPUT : STD_LOGIC:='0' ;
BEGIN
PROCESS(clk)
BEGIN
	IF falling_edge(Clk) THEN
		IF clear = '1' THEN
			OUTPUT <= '0';
		ELSIF T = '1' THEN
			OUTPUT <= NOT(OUTPUT);
		END IF;	
	END IF;
END PROCESS;
	Q <= OUTPUT;
END Structural;