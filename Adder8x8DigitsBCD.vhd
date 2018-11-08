----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:01:51 11/08/2018 
-- Design Name: 
-- Module Name:    Adder8x8DigitsBCD - Behavioral 
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

entity Adder8x8DigitsBCD is
	Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);
			 B : in  STD_LOGIC_VECTOR(31 downto 0);
			 -- Não precisa de Cin
			 Saida : out  STD_LOGIC_VECTOR(31 downto 0));
			 -- Não precisa de Cout

end Adder8x8DigitsBCD;

architecture Behavioral of Adder8x8DigitsBCD is
	
	component Adder4x4DigitsBCD 
    
		Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
             B : in  STD_LOGIC_VECTOR (15 downto 0);
			    Cin: in STD_LOGIC;
             S : out  STD_LOGIC_VECTOR (15 downto 0);
             Cout : out  STD_LOGIC);

	end component;

	signal S01, S02 : STD_LOGIC_VECTOR (15 downto 0);
	signal Cout_temp01, Cout_temp02: STD_LOGIC;

begin

	Adder4x4DigitsBCD01 : Adder4x4DigitsBCD port map
	(A(15 downto 0), B(15 downto 0), '0', S01, Cout_temp01);
	
	Adder4x4DigitsBCD02 : Adder4x4DigitsBCD port map
	(A(31 downto 16), B(31 downto 16), Cout_temp01, S02, Cout_temp02);

	Saida(15 downto 0) <= S01;
	Saida(31 downto 16) <= S02;
	
end Behavioral;

