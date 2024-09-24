library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display is
    Port (
        binary_in : in STD_LOGIC_VECTOR (2 downto 0); -- 4-bit binary input
        seg       : out STD_LOGIC_VECTOR (6 downto 0) -- 7-segment display output
    );
end display;

architecture Behavioral of display is
begin
    process(binary_in)
    begin
        case binary_in is
				when "000" => seg <= "1111111"; -- kjhgfd
				when "001" => seg <= "1111111"; -- jhgf
            when "010" => seg <= "0100001"; -- d
            when "011" => seg <= "0000110"; -- E
				when "100" => seg <= "1111001"; -- 1
				when "101" => seg <= "1000000"; -- 0
            when others => seg <= "1111111"; -- Default to all segments off
        end case;
    end process;
end Behavioral;