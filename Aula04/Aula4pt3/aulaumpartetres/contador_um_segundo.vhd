--1.O que é um signal?
	--Definição:
		--Um signal em VHDL é uma variável que representa uma linha de comunicação dentro de um circuito digital. 
		--Ele pode transportar valores entre diferentes partes do design, como entre processos, entidades ou arquiteturas.
  --2.Características:
	-- -Persistência: Ao contrário das variáveis (variable), que têm escopo limitado ao processo em que são usadas, 
	 -- os sinais são persistentes e mantêm seu valor entre as bordas de clock.
	-- -Sensibilidade a Eventos: Os sinais são atualizados quando ocorre um evento, 
	 -- como uma borda de subida ou descida de um clock, ou quando o valor de outro sinal ao qual estão associados muda.
	-- -Atribuição: Os sinais são atualizados dentro de processos em resposta a eventos e atribuições.
  --3.Como é Declarado um signal?
	 --Os sinais são declarados na seção architecture ou na seção entity do código VHDL. 
	 --Aqui está a sintaxe básica para declarar um sinal:
	 --signal nome_do_sinal : tipo [:= valor_inicial];
	 --*nome_do_sinal: Nome do sinal.
	 --*tipo: Tipo de dado do sinal, como std_logic, integer, unsigned, etc.
	 --*valor_inicial (opcional): Valor inicial do sinal.
	 
--others:
	 --:= (others => '0'):
	 -- -Essa atribuição inicializa todos os bits do vetor com o valor '0'.
	 -- -O termo others é um atalho que indica "todos os outros bits não especificados individualmente".
	 -- -'0' é o valor atribuído a cada bit.
	 --exemplo:
	 --O comando:
	 --signal count : unsigned(25 downto 0) := (others => '0');
	 --é equivalente a escrever:
	 --signal count : unsigned(25 downto 0) := "00000000000000000000000000";

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
  --O propósito do sinal enable é permitir ou ativar a operação de outros módulos ou circuitos. 
  --Por exemplo, ele pode ser usado para habilitar um contador, iniciar uma operação,ou acionar um componente em um sistema.
  --Como enable está sinalizando ou controlando a operação de outros módulos, 
  --ele precisa ser uma saída para que essas outras partes do sistema possam receber o sinal de controle.
entity contador_um_segundo is 
	port(
	Clk : in std_logic;
	T : out std_logic
	);
end contador_um_segundo;

architecture behavior of contador_um_segundo is
    signal count : unsigned(30 downto 0) := (others => '0');
	   --como um ciclo dura 50MHz e cada  bit pode ter 2 valores possíveis - 0 ou 1 - é necessario ter uma
	   --quantidade de bits que possa representar pelo menos 50.000.000 de valores.
	   --2^1bit = 2 valores;
	   --2^2bits = 4 valores;
	   --...
	   --2^25 = 33.554.432 valores;
	   --2^26 = 67.108.864 valores;
begin
	process(Clk)
	begin
		if rising_edge(Clk) then
			if count = 49999999 then --como irá começar a contar a partir do 0 e estamos usando um vetor que começa na posição 0, então, se faz 5000000 - 1
				count <= (others => '0');
				T <= '1';
			else
				count <= count + 1;
				T <= '0';
			end if;
		end if;
	end process;
end behavior;


				