----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:17 11/06/2018 
-- Design Name: 
-- Module Name:    Multiplica2Digits - Behavioral 
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

entity Multiplica2Digits is

	Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
			 B : in  STD_LOGIC_VECTOR(3 downto 0);
          Cin : in  STD_LOGIC_VECTOR (3 downto 0); 				-- Caso máximo 1000
          Saida_Mult : out  STD_LOGIC_VECTOR(3 downto 0);
          Cout : out  STD_LOGIC_VECTOR (3 downto 0));			-- Caso máximo 1000

end Multiplica2Digits;

architecture Behavioral of Multiplica2Digits is

	component Multiplica4Bits 
	
		Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
				 B : in  STD_LOGIC_VECTOR (3 downto 0);
				 S : out  STD_LOGIC_VECTOR (7 downto 0));
	
	end component;
	
	component Adder8Bits
		Port (	A : in std_logic_vector ( 7 downto 0);
					B : in std_logic_vector ( 7 downto 0);
					Cin: in std_logic;
					S : out  STD_LOGIC_VECTOR (7 downto 0);
					Cout : out  std_logic);				
	end component;


	component Adder2DigitsBCD 

		Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
				 B : in  STD_LOGIC_VECTOR(3 downto 0);
				 Cin : in  STD_LOGIC;
				 Saida : out  STD_LOGIC_VECTOR(3 downto 0);
				 Cout : out  STD_LOGIC);

	end component;

	signal Somar_Cout: std_logic;
	signal Saida_temp01, Cin_temp, Saida_temp02: std_logic_vector(7 downto 0);
	signal Somar_saida, Cout_temp: std_logic_vector(3 downto 0);
	
begin

	Cin_temp <= "0000" & Cin;

	Multiplica1: Multiplica4Bits port map ( A, B, Saida_temp01);
	
	Adder8Bits01: Adder8Bits port map ( Saida_temp01, Cin_temp, '0', Saida_temp02);
	
	Adder2DigitsBCD01: Adder2DigitsBCD port map ( Saida_temp02(3 downto 0),
	Somar_saida, '0', Saida_Mult, Somar_Cout);
	
	Adder2DigitsBCD02: Adder2DigitsBCD port map ( Cout_temp, "0000", Somar_Cout, Cout);
	
	WITH Saida_temp02(7 downto 4) select
		Somar_saida <= 			-- unidade
			"0000" when "0000", 
			"0110" when "0001",
         "0010" when "0010",
         "1000" when "0011",
			"0100" when "0100",
			"0000" when "0101",
			"0000" WHEN OTHERS;
			
	WITH Saida_temp02(7 downto 4) select
		Cout_temp <= 				-- dezena (da no Cout que sera o Cin do proximo)
			"0000" when "0000", 
			"0001" when "0001",
         "0011" when "0010",
         "0100" when "0011",
			"0110" when "0100",
			"1000" when "0101",
			"0000" WHEN OTHERS;
			
	
end Behavioral;


