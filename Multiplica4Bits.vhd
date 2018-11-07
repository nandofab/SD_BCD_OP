----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:35 11/04/2018 
-- Design Name: 
-- Module Name:    Multiplica4Bits - Behavioral 
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

entity Multiplica4Bits is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0));
			  
			  
end Multiplica4Bits;

architecture multiplicaArch of Multiplica4Bits is

	signal soma0, soma1, soma2, soma3: std_logic_vector (3 downto 0 );
	signal parte1_soma_final, parte2_soma_final, parte3_soma_final: std_logic_vector(7 downto 0);
	signal parte4_soma_final, resultado_parcial01, resultado_parcial02: std_logic_vector(7 downto 0);
	signal saida_real: std_logic_vector(7 downto 0);
	
	component Adder8Bits 
		Port (A : in std_logic_vector ( 7 downto 0);
				B : in std_logic_vector ( 7 downto 0);
				Cin: in std_logic;
            S : out  STD_LOGIC_VECTOR (7 downto 0);
            Cout : out  std_logic);
		
	end component;
	
	
begin

	process(B, A)	
	begin
		for I in 0 to 3 loop
			soma0(I) <= B(0) and A(I);
			
			soma1(I) <= B(1) and A(I);
			 
			soma2(I) <= B(2) and A(I);

			soma3(I) <= B(3) and A(I);
		end loop;
	end process;

	parte1_soma_final <= "0000" & soma0;
	parte2_soma_final <= "000" & soma1 & '0';
	parte3_soma_final <= "00" & soma2 & "00";
	parte4_soma_final <= '0' & soma3 & "000";
			
	somaBit01: Adder8Bits port map (parte1_soma_final,parte2_soma_final,'0',resultado_parcial01); 
	somaBit23: Adder8Bits port map (parte3_soma_final,parte4_soma_final,'0',resultado_parcial02); 
	resultado_0123: Adder8Bits port map (resultado_parcial01,resultado_parcial02,'0',saida_real); 
	
	S <= saida_real; -- 8 Bits (sendo que só precisa de 7 bits - máximo 81)
	
end multiplicaArch;
