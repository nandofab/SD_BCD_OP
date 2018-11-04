----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:00:57 10/26/2018 
-- Design Name: 
-- Module Name:    Adder2DigitsBCD - Behavioral 
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

entity Adder2DigitsBCD is

  Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
         B : in  STD_LOGIC_VECTOR(3 downto 0);
         Cin : in  STD_LOGIC;
         S_BCD : out  STD_LOGIC_VECTOR(3 downto 0);
         Cout : out  STD_LOGIC);

end Adder2DigitsBCD;

/architecture Behavioral of Adder2DigitsBCD is
	
	signal SomaOuNao_6: std_logic; -- Flag de somar 6 ou nao
	signal c: std_logic; -- Cout temporario
	signal S: std_logic_vector(3 downto 0); -- Resultado da soma temporário
	signal Soma_6: std_logic_vector(3 downto 0); -- "0000" ou "0110" dependendo do SomaOuNao_6
	
	component Adder4Bits 
	
		port (A : in  STD_LOGIC_VECTOR (3 downto 0);
            B : in  STD_LOGIC_VECTOR (3 downto 0);
            Cin : in  STD_LOGIC;
            S : out  STD_LOGIC_VECTOR (3 downto 0);
            Cout : out  std_logic);	
	end component;
									
begin

	Adder: Adder4Bits port map (A,B,Cin,S,c); 

	SomaOuNao_6 <= (S(3) AND (S(2) OR S(1))) OR c ;
	
	Soma_6(0) <= '0';
	Soma_6(1) <= SomaOuNao_6;
	Soma_6(2) <= SomaOuNao_6;
	Soma_6(3) <= '0';
	
	Cout <= SomaOuNao_6;
	
	Adder_6: Adder4Bits port map (S,Soma_6,'0',S_BCD); -- Cout solto porque não precisa
	
end Behavioral;
