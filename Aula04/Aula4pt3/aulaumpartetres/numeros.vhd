library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity numeros is
	port(
		Clk : in std_logic;
		T : in std_logic; --aqui T é entrda , pois vai receber o sinal de habilitação do contador de 1 segundo para começar a contar e determina quando para.
		num : out unsigned(3 downto 0)
	);
end numeros;

architecture behavior of numeros is
	signal count : unsigned(3 downto 0) := (others => '0');
	begin
		process(Clk)
		begin
			if rising_edge(Clk) then
				if T = '1' then
					if count = 9 then
						count <= (others => '0'); --faz voltar para 0 quando chega  no 9
					else
						count <= count + 1;
					end if;
				end if;
			end if;
		end process;
		num <= count;
end behavior;
		