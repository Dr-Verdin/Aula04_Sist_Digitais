library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Adiciona suporte para operações numéricas

entity word is
    Port (
        Clk     : in  STD_LOGIC;
        Clear   : in  STD_LOGIC;
        displays: out STD_LOGIC_VECTOR (27 downto 0)  -- 4 displays de 7 segmentos
    );
end word;

architecture Behavioral of word is
    signal cnt     : STD_LOGIC_VECTOR (1 downto 0) := (others => '0'); -- Valor inicial do contador
    signal dig0    : STD_LOGIC_VECTOR (1 downto 0); -- Nibble 0 (menor ordem)
    signal dig1    : STD_LOGIC_VECTOR (1 downto 0);
    signal dig2    : STD_LOGIC_VECTOR (1 downto 0);
    signal dig3    : STD_LOGIC_VECTOR (1 downto 0); -- Nibble 3 (maior ordem)
    signal seg0    : STD_LOGIC_VECTOR (6 downto 0); -- Saída dos segmentos DISPLAY 0
    signal seg1    : STD_LOGIC_VECTOR (6 downto 0);
    signal seg2    : STD_LOGIC_VECTOR (6 downto 0);
    signal seg3    : STD_LOGIC_VECTOR (6 downto 0); -- Saída dos segmentos DISPLAY 3
    signal T_1s    : STD_LOGIC;
	 signal n0 : std_logic_vector (7 downto 0) := "00011011";
	 signal n1 : std_logic_vector (7 downto 0) := "01101100";
	 signal n2 : std_logic_vector (7 downto 0) := "10110001";
	 signal n3 : std_logic_vector (7 downto 0) := "11000110";
	 signal Q : std_logic_vector (7 downto 0) := "00000000";
	 
    
    -- Componentes instanciados
    component contador_um_segundo
        Port (
            Clk  : in  std_logic;
            T    : out std_logic 
        );
    end component;

    component display
        Port ( 
            binary_in : in  STD_LOGIC_VECTOR (1 downto 0); -- Entrada de 4 bits
            seg       : out STD_LOGIC_VECTOR (6 downto 0) -- Saída dos 7 segmentos
        );
    end component;

begin
    -- Instancia o contador de 16 bits
    U1: contador_um_segundo
        Port map (
            Clk   => Clk,
            T     => T_1s
        );

    -- Atualiza o valor do contador a cada segundo
    process(Clk, Clear)
    begin
        if Clear = '1' then
            cnt <= (others => '0');
        elsif rising_edge(Clk) then
            if T_1s = '1' then
					if (cnt = "11") THEN
						cnt <= "00";
					else
                cnt <= std_logic_vector(unsigned(cnt) + 1);
					 end if;
            end if;
        end if;
    end process;
	 
	 process (cnt)
	 begin
		case(cnt) IS
			when "00" => Q <= n0;
			when "01" => Q <= n1;
			when "10" => Q <= n2;
			when "11" => Q <= n3;
		end case;
	end process;

    -- Divide o valor de 16 bits em 4 nibbles
    dig0 <= Q(1 downto 0); -- Nibble Menos Significativo
    dig1 <= Q(3 downto 2);
    dig2 <= Q(5 downto 4);
    dig3 <= Q(7 downto 6); -- Nibble Mais Significativo

    -- Instancia o display para cada nibble
    U2: display
        Port map (
            binary_in => dig3, -- Conecta o nibble 
            seg       => seg0 -- Conecta a saída 
        );

    U3: display
        Port map (
            binary_in => dig2,
            seg       => seg1
        );

    U4: display
        Port map (
            binary_in => dig1,
            seg       => seg2
        );

    U5: display
        Port map (
            binary_in => dig0,
            seg       => seg3
        );

    -- Concatena as saídas dos displays em um vetor de 28 bits
    displays <= seg0 & seg1 & seg2 & seg3;

end Behavioral;