----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:02:21 10/28/2018 
-- Design Name: 
-- Module Name:    Adder8DigitsBCD - Behavioral 
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

entity Adder8DigitsBCD is

	port (A : in  STD_LOGIC_VECTOR (15 downto 0);
         B : in  STD_LOGIC_VECTOR (15 downto 0);
         Cin : in  STD_LOGIC_VECTOR (3 downto 0);
         S : out  STD_LOGIC_VECTOR (15 downto 0);
         Cout : out  std_logic_vector (3 downto 0)); -- Carry out = 8 (multiplicação)	

end Adder8DigitsBCD;

architecture Behavioral of Adder8DigitsBCD is

begin


end Behavioral;

