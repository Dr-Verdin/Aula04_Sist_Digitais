library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Adiciona suporte para operações numéricas

entity wordkk is
    Port (
        Clk     : in  STD_LOGIC;
        Clear   : in  STD_LOGIC;
        displays: out STD_LOGIC_VECTOR (41 downto 0)  -- 4 displays de 7 segmentos
    );
end wordkk;

architecture Behavioral of wordkk is
    signal cnt     : STD_LOGIC_VECTOR (2 downto 0) := (others => '0'); -- Valor inicial do contador
    signal dig0    : STD_LOGIC_VECTOR (2 downto 0); -- Nibble 0 (menor ordem)
    signal dig1    : STD_LOGIC_VECTOR (2 downto 0);
    signal dig2    : STD_LOGIC_VECTOR (2 downto 0);
    signal dig3    : STD_LOGIC_VECTOR (2 downto 0); 
	 signal dig4    : STD_LOGIC_VECTOR (2 downto 0); 
	 signal dig5    : STD_LOGIC_VECTOR (2 downto 0); -- Nibble 3 (maior ordem)
    signal seg0    : STD_LOGIC_VECTOR (6 downto 0); -- Saída dos segmentos DISPLAY 0
    signal seg1    : STD_LOGIC_VECTOR (6 downto 0);
    signal seg2    : STD_LOGIC_VECTOR (6 downto 0);
    signal seg3    : STD_LOGIC_VECTOR (6 downto 0); 
	 signal seg4    : STD_LOGIC_VECTOR (6 downto 0); 
	 signal seg5    : STD_LOGIC_VECTOR (6 downto 0); -- Saída dos segmentos DISPLAY 3
    signal T_1s    : STD_LOGIC;
	 signal n0 : std_logic_vector (17 downto 0) := "000001010011100101";
	 signal n1 : std_logic_vector (17 downto 0) := "001010011100101000";
	 signal n2 : std_logic_vector (17 downto 0) := "010011100101000001";
	 signal n3 : std_logic_vector (17 downto 0) := "011100101000001010";
	 signal n4 : std_logic_vector (17 downto 0) := "100101000001010011";
	 signal n5 : std_logic_vector (17 downto 0) := "101000001010011100";
	 signal Q : std_logic_vector (17 downto 0) := "000000000000000000";
	 
    
    -- Componentes instanciados
    component contador_um_segundo
        Port (
            Clk  : in  std_logic;
            T    : out std_logic 
        );
    end component;

    component display
        Port ( 
            binary_in : in  STD_LOGIC_VECTOR (2 downto 0); -- Entrada de 4 bits
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
					if (cnt = "101") THEN
						cnt <= "000";
					else
                cnt <= std_logic_vector(unsigned(cnt) + 1);
					 end if;
            end if;
        end if;
    end process;
	 
	 process (cnt)
	 begin
		case(cnt) IS
			when "000" => Q <= n0;
			when "001" => Q <= n1;
			when "010" => Q <= n2;
			when "011" => Q <= n3;
			when "100" => Q <= n4;
			when "101" => Q <= n5;
			when others => Q <= n5;
		end case;
	end process;

    -- Divide o valor de 16 bits em 4 nibbles
    dig0 <= Q(2 downto 0); -- Nibble Menos Significativo
    dig1 <= Q(5 downto 3);
    dig2 <= Q(8 downto 6);
    dig3 <= Q(11 downto 9); 
	 dig4 <= Q(14 downto 12); 
	 dig5 <= Q(17 downto 15); -- Nibble Mais Significativo

    -- Instancia o display para cada nibble
    U2: display
        Port map (
            binary_in => dig5, -- Conecta o nibble 
            seg       => seg0 -- Conecta a saída 
        );

    U3: display
        Port map (
            binary_in => dig4,
            seg       => seg1
        );

    U4: display
        Port map (
            binary_in => dig3,
            seg       => seg2
        );

    U5: display
        Port map (
            binary_in => dig2,
            seg       => seg3
        );
		  
		U6: display
        Port map (
            binary_in => dig1,
            seg       => seg4
        );
		
		U7: display
        Port map (
            binary_in => dig0,
            seg       => seg5
        );

    -- Concatena as saídas dos displays em um vetor de 28 bits
    displays <= seg0 & seg1 & seg2 & seg3 & seg4 & seg5;

end Behavioral;