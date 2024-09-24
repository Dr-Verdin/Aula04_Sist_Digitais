library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aulaumpartetres is
	port(
		Clk : in std_logic;
		hex0: out std_logic_vector(6 downto 0)
	);
end aulaumpartetres;

architecture behavior of aulaumpartetres is
	signal T_1s : std_logic;
	signal digit : unsigned(3 downto 0);
begin
	instancia1 : entity work.contador_um_segundo
		port map(
			Clk => Clk,
			T => T_1s
		);
		
	instancia2 : entity work.numeros
		port map(
			Clk => Clk,
			T => T_1s,
			num => digit
		);
		
	instancia3 : entity work.display
		port map(
			digit => digit,
			seg => hex0
		);
end behavior;