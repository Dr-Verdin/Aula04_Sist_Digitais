library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display is
    Port (
        binary_in : in STD_LOGIC_VECTOR (1 downto 0); -- 4-bit binary input
        seg       : out STD_LOGIC_VECTOR (6 downto 0) -- 7-segment display output
    );
end display;

architecture Behavioral of display is
begin
    process(binary_in)
    begin
        case binary_in is
				when "00" => seg <= "1111111"; -- 0
            when "01" => seg <= "0100001"; -- d
            when "10" => seg <= "0000110"; -- E
				when "11" => seg <= "0100100"; -- 2
            when others => seg <= "1111111"; -- Default to all segments off
        end case;
    end process;
end Behavioral;