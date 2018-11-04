----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:57:28 10/26/2018 
-- Design Name: 
-- Module Name:    Adder4Bits - Behavioral 
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

entity Adder4Bits is
	
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  std_logic);
end Adder4Bits;

architecture Behavioral of Adder4Bits is
	
	signal c: std_logic_vector(4 downto 1);
	
	component Adder1Bit 
	
		port (A,B,Cin: in std_logic;
				S,Cout: out std_logic);
	
	end component;
									
begin

	Ad0: Adder1Bit port map (A(0),B(0),Cin,S(0),c(1)); 
	Ad1: Adder1Bit port map (A(1),B(1),c(1),S(1),c(2)); 
	Ad2: Adder1Bit port map (A(2),B(2),c(2),S(2),c(3)); 
	Ad3: Adder1Bit port map (A(3),B(3),c(3),S(3),c(4)); 
	
	Cout<= c(4);

end Behavioral;


