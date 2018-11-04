----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:26:00 11/04/2018 
-- Design Name: 
-- Module Name:    Adder8Bits - Behavioral 
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
entity Adder8Bits is
	Port (	A : in std_logic_vector ( 7 downto 0);
				B : in std_logic_vector ( 7 downto 0);
				Cin: in std_logic;
            S : out  STD_LOGIC_VECTOR (7 downto 0);
            Cout : out  std_logic);
		--	   OV : out std_logic);
		
		-- Sem overflow porque essa funcionalidade não interessa no projeto
		-- Só foi criado essa source para ajudar na função de multiplicar
				
end Adder8Bits;

architecture Adder8Bits of Adder8Bits is

	signal cout_signal: std_logic_vector(1 downto 0);
	
	component Adder4Bits 
		Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
				 B : in  STD_LOGIC_VECTOR (3 downto 0);
				 Cin : in  STD_LOGIC;
				 S : out  STD_LOGIC_VECTOR (3 downto 0);
				 Cout : out  std_logic);

	end component;

begin
	
	 Adder4Bits01: Adder4Bits port map 
	(A(3 downto 0), B(3 downto 0), Cin, S(3 downto 0), cout_signal(0));
	
	 Adder4Bits02: Adder4Bits port map 
	(A(7 downto 4), B(7 downto 4), cout_signal(0), S(7 downto 4), cout_signal(1));
	
	Cout <= cout_signal(1);

end Adder8Bits;
