----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:54:33 11/07/2018 
-- Design Name: 
-- Module Name:    Multiplica4x4Digits - Behavioral 
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

entity Multiplica4x4DigitsBCD is
	
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           Saida : out  STD_LOGIC_VECTOR (31 downto 0));

end Multiplica4x4DigitsBCD;

architecture Behavioral of Multiplica4x4DigitsBCD is
	
	component Multiplica4x1Digits 
		Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
				 B : in  STD_LOGIC_VECTOR (3 downto 0);
				 Saida : out  STD_LOGIC_VECTOR (19 downto 0));

	end component;
	
	component Adder8x8DigitsBCD 

		Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);
				 B : in  STD_LOGIC_VECTOR(31 downto 0);
				 -- Não precisa de Cin
				 Saida : out  STD_LOGIC_VECTOR(31 downto 0));
				 -- Não precisa de Cout

	end component;
	
	signal soma0, soma1, soma2, soma3: std_logic_vector (19 downto 0);
	signal parte1_soma, parte2_soma, parte3_soma: std_logic_vector(31 downto 0);
	signal parte4_soma, resultado01, resultado02: std_logic_vector(31 downto 0);
	signal saida_real: std_logic_vector(31 downto 0);

begin
	
	Multiplica4x1Digits: Multiplica4x1Digits port map
	(A, B(3 downto 0), soma0);
	
	Multiplica4x2Digits: Multiplica4x1Digits port map
	(A, B(7 downto 4), soma1);
	
	Multiplica4x3Digits: Multiplica4x1Digits port map
	(A, B(11 downto 8), soma2);
	
	Multiplica4x4Digits: Multiplica4x1Digits port map
	(A, B(15 downto 12), soma3);
	
	parte1_soma <= "000000000000" & soma0;
	parte2_soma <= "00000000" & soma1 & "0000";
	parte3_soma <= "0000" & soma2 & "00000000";
	parte4_soma <= soma3 & "000000000000";
	
	
	somaBCD01: Adder8x8DigitsBCD port map ( parte1_soma, parte2_soma, resultado01); 
	somaBCD23: Adder8x8DigitsBCD port map ( parte3_soma, parte4_soma, resultado02); 
	resultado_0123: Adder8x8DigitsBCD port map ( resultado01, resultado02, saida_real); 
	
	Saida <= saida_real; 

end Behavioral;