----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:28:56 11/06/2018 
-- Design Name: 
-- Module Name:    Multiplica4x1Digits - Behavioral 
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

entity Multiplica4x1Digits is

    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Saida : out  STD_LOGIC_VECTOR (19 downto 0));

end Multiplica4x1Digits;

architecture Behavioral of Multiplica4x1Digits is
	
	component Multiplica2Digits 

	Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
			 B : in  STD_LOGIC_VECTOR(3 downto 0);
          Cin : in  STD_LOGIC_VECTOR (3 downto 0); 		
          Saida_Mult : out  STD_LOGIC_VECTOR(3 downto 0);
          Cout : out  STD_LOGIC_VECTOR (3 downto 0));		

	end component;
	
	signal S1,S2,S3,S4,C1,C2,C3,C4 : STD_LOGIC_VECTOR (3 downto 0);
	
begin

	Multiplica1x1: Multiplica2Digits port map (A(3 downto 0), B, "0000", S1, C1);
	Multiplica2x1: Multiplica2Digits port map (A(7 downto 4), B, C1, S2, C2);
	Multiplica3x1: Multiplica2Digits port map (A(11 downto 8), B, C2, S3, C3);
	Multiplica4x1: Multiplica2Digits port map (A(15 downto 12), B, C3, S4, C4);
	
	Saida <= C4 & S4 & S3 & S2 & S1;
	
	-- O Cout nesse módulo não será utilizado da maneira padrão
	-- pois esse módulo é auxiliar para o módulo de multiplicação geral
	
	--Saida(3 downto 0) <= S1;
	--Saida(7 downto 4) <= S2;
	--Saida(11 downto 8) <= S3;
	--Saida(15 downto 12) <= S4;
	--Saida(19 downto 16) <= C4;
	
end Behavioral;

