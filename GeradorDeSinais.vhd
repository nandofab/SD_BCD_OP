----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:29:22 12/11/2018 
-- Design Name: 
-- Module Name:    GeradorDeSinais - Behavioral 
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

entity GeradorDeSinais is
    Port (
		clk, rst, ps2d, ps2c: in std_logic;
		LCD_DB: out std_logic_vector (7 downto 0);
		OP : in std_logic;
		RS, RW, OE: out std_logic );
		--leds: out std_logic_vector (7 downto 0)
end GeradorDeSinais;

architecture Behavioral of GeradorDeSinais is

component BCD_OP 
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           OP_MUX : in  STD_LOGIC;
           SAIDA : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

-- Componente do PS/2 RX
component ps2_rx
	port (
      clk, reset: in  std_logic;
      ps2d, ps2c: in  std_logic;
      rx_en: in std_logic;
      rx_done_tick: out  std_logic;
      dout: out std_logic_vector(7 downto 0)
	);
end component;

-- Componente do parser de tecla
component key_parser
	port (
		key_code : in  STD_LOGIC_VECTOR(7 downto 0);
		binary_out : out  STD_LOGIC_VECTOR (3 downto 0)
	);
end component;

begin


end Behavioral;

