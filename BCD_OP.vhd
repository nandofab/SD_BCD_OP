----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:29:22 12/11/2018 
-- Design Name: 
-- Module Name:    BCD_OP - Behavioral 
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

entity BCD_OP is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           OP_MUX : in  STD_LOGIC;
           SAIDA : out  STD_LOGIC_VECTOR (31 downto 0));
end BCD_OP;

architecture Behavioral of BCD_OP is

-- Multiplicador
component Multiplica4x4DigitsBCD 
	
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           Saida : out  STD_LOGIC_VECTOR (31 downto 0));

end component;

-- Somador
component Adder4x4DigitsBCD 
    
	 Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
			  Cin: in STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (15 downto 0);
           Cout : out  STD_LOGIC);

end component;

signal result_add: std_logic_vector(15 downto 0);
signal result_mult: std_logic_vector(31 downto 0);

begin

	Operation_0: Adder4x4DigitsBCD port map(A, B, '0', result_add);
	Operation_1: Multiplica4x4DigitsBCD port map(A, B, result_mult);
	
	-- Selecionador 0 -> saida do somador ; 1 -> saida do multiplicador
	-- Colocar OP_MUX como um switch
	WITH OP_MUX select
		SAIDA <= 
			(X"0000" & result_add) when '0',
			result_mult when '1',
			X"00000000" WHEN OTHERS;
			
end Behavioral;

