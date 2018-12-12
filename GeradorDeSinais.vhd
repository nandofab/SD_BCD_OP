----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:29:22 12/11/2018 
-- Design Name: 
-- Module Name:    GeradorDeSinais - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GeradorDeSinais is
    Port (
		
		clk, rst, ps2d, ps2c: in std_logic;
		LCD_DB: out std_logic_vector (7 downto 0);
		OP : in std_logic;
		RS, RW, OE: out std_logic );
		--leds: out std_logic_vector (7 downto 0)
end GeradorDeSinais;

architecture Behavioral of GeradorDeSinais is

component BCD_OP 
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           OP_MUX : in  STD_LOGIC;
           SAIDA : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

-- Componente do PS/2 RX
component ps2_rx
	port (
      clk, reset: in  std_logic;
      ps2d, ps2c: in  std_logic;
      rx_en: in std_logic;
      rx_done_tick: out  std_logic;
      dout: out std_logic_vector(7 downto 0)
	);
end component;

-- Componente do parser de tecla
component key_parser
	port (
		key_code : in  STD_LOGIC_VECTOR(7 downto 0);
		binary_out : out  STD_LOGIC_VECTOR (3 downto 0)
	);
end component;

component lcd 
    Port ( LCD_DB: out std_logic_vector(7 downto 0);		--DB( 7 through 0)
           RS:out std_logic;  				--WE
           RW:out std_logic;				--ADR(0)
			  CLK:in std_logic;				--GCLK2
				--ADR1:out std_logic;				--ADR(1)
				--ADR2:out std_logic;				--ADR(2)
				--CS:out std_logic;				--CSC
			  OE:out std_logic;				--OE
			  rst:in std_logic;				--BTN
			  TecladoDado: in std_logic_vector(7 downto 0); -- Resultado do Key Parser
			  numeroPassado : in std_logic);		--AQUIIIIIIIIIIIIIIIIIIII
				--rdone: out std_logic);			--WriteDone output to work with DI05 test
			  
end component;	

	type estados is (idle, selOperacao, resultado);
	signal estadoAtual : estados := idle; 
	
	type estadosTeclado is (idle, configuraNumeros);
	signal estadoAtualTeclado : estadosTeclado := idle;
	
	signal resultMultiplicacao : std_logic_vector (31 downto 0) := (others => '0');
	signal resultSoma : std_logic_vector (19 downto 0) := (others => '0');
	
	signal codigoTeclado : std_logic_vector(7 downto 0) := (others => '0');
	signal kb_buf_empty	: std_logic;
	signal numA, numB		: std_logic_vector (15 downto 0) := (others => '0');
	
	signal contador		: integer := 0;
	signal codigoConvertidoTecladoBinario : std_logic_vector (3 downto 0) := (others => '0');
	signal recebeuNumeros : std_logic := '0';
	signal rx_done : STD_LOGIC;
   signal key_out : STD_LOGIC_VECTOR(7 downto 0);

begin

		-- Port mapping
	U0: ps2_rx port map (clk, rst, ps2d, ps2c, '1', rx_done, key_out);
	U1: key_parser port map (key_out, binary_out);
	--U2: binary_parser port map (binary_out, ascii_out);
	U2: lcd port map (LCD_DB,RS, RW, clk, OE, rst, binary_out, numeroPassado);
	--U4: contador port map (writeDelayStart, clk, rst, data, outCounter);
	--U5: contador_lcd_strobe port map (writeDelayStart, clk, rst, dataStrobe, outCounterStrobe);
	--U6: binary_parser port map (aux_vector, ascii_result);
	U3: BCD_OP port map (A, B, OP_MUX, SAIDA);

--	numTeclado <= kb_buf_empty&"000"&codigoConvertidoTecladoBinario;
	--resetTeclado
--	teclado		: kb_code port map (clock, resetTeclado, ps2d, ps2c, rd_key_code, codigoTeclado, kb_buf_empty );
--	portLcd		: lcd		 port map (LCD_DB, RS, RW, clock, OE, rstLCD, codigoTeclado, rd_key_code);

--	Multiplica 	: MultiplicadorCompleto port map (numA, numB , resultMultiplicacao);
--	Soma			: SomaCompleta port map (numA, numB, resultSoma);
	
	
	
	ObterNumerosTeclado : process (binary_out, kb_buf_empty) is -- Armazenar o numero toda vez que o buffer mudar
	begin
		
		case estadoAtualTeclado is
		
			when idle =>
				numA <= x"0000";
				numB <= x"0000";
				
				if (kb_buf_empty = '0') then
					
					estadoAtualTeclado <= configuraNumeros;
						
				end if;
				
			when configuraNumeros =>
			
				if (contador = 0) then
				
					numA (3 downto 0)	<= codigoConvertidoTecladoBinario;
				
				elsif (contador = 1) then
				
					numA (7 downto 4)	<= codigoConvertidoTecladoBinario;
				
				elsif (contador = 2) then
				
					numA (11 downto 8)	<= codigoConvertidoTecladoBinario;
					
				elsif (contador = 3) then
				
					numA (15 downto 12)	<= codigoConvertidoTecladoBinario;
					
				elsif (contador = 4) then
				
					numB (3 downto 0)	<= codigoConvertidoTecladoBinario;
					
				elsif (contador = 5) then
				
					numB (7 downto 4)	<= codigoConvertidoTecladoBinario;
					
				elsif (contador = 6) then
				
					numB (11 downto 8)	<= codigoConvertidoTecladoBinario;
				
				elsif (contador = 7) then
				
					numB (15 downto 12)	<= codigoConvertidoTecladoBinario;
					contador <= 0;
					recebeuNumeros <= '1';
					
				end if;
				
				contador <= contador + 1;
				
		end case;
	
	
	end process ObterNumerosTeclado;

	CalcProcess : process (numA, numB, operacao) is 
	begin
	
		case (estadoAtual) is
		
			when idle =>
			
				if (recebeuNumeros = '1') then
					estadoAtual <= selOperacao;
				end if;		
						
			when selOperacao =>
			
				if (operacao = '0') then
						
					result	<= X"000"&resultSoma;
					
				else
					
					result <= resultMultiplicacao;
					
				end if;
					
				estadoAtual <= resultado;
					
			when resultado =>
			
				
		
		end case;
		
		
	
	
	end process CalcProcess;


end CalculadoraArch;
