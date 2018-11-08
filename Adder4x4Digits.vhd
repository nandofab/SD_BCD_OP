----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:31:35 11/06/2018 
-- Design Name: 
-- Module Name:    Adder4DigitsBCD - Behavioral 
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

-- ALOU ALOU GALERA DE COWBOY

entity Adder4x4DigitsBCD is
    
	 Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
			  Cin: in STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (15 downto 0);
           Cout : out  STD_LOGIC);

end Adder4x4DigitsBCD;

architecture Behavioral of Adder4x4DigitsBCD is
	
	signal Cout4DigitsBCD: std_logic_vector (3 downto 0); 

	component Adder2DigitsBCD
	
		Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
				 B : in  STD_LOGIC_VECTOR(3 downto 0);
             Cin : in  STD_LOGIC;
             Saida : out  STD_LOGIC_VECTOR(3 downto 0);
             Cout : out  STD_LOGIC);
	end component;	
	
begin

	Ad0_BCD: Adder2DigitsBCD port map 
	(A(3 downto 0), B(3 downto 0), Cin, S(3 downto 0), Cout4DigitsBCD(0)); 
	
	Ad1_BCD: Adder2DigitsBCD port map (A(7 downto 4),B(7 downto 4),
	Cout4DigitsBCD(0) ,S(7 downto 4), Cout4DigitsBCD(1)); 
	
	Ad2_BCD: Adder2DigitsBCD port map (A(11 downto 8),B(11 downto 8),
	Cout4DigitsBCD(1),S(11 downto 8), Cout4DigitsBCD(2)); 
	
	Ad3_BCD: Adder2DigitsBCD port map (A(15 downto 12),B(15 downto 12),
	Cout4DigitsBCD(2),S(15 downto 12), Cout4DigitsBCD(3)); 

   Cout <= Cout4DigitsBCD(3);

end Behavioral;
