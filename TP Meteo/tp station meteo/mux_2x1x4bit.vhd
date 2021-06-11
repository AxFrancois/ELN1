----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:04:49 12/15/2020 
-- Design Name: 
-- Module Name:    mux_2x1x4bit - Behavioral 
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

entity mux_2x1x4bit is
    Port ( code_select : in  STD_LOGIC;
           weathercock : in  STD_LOGIC_VECTOR (3 downto 0);
           binary_code : in  STD_LOGIC_VECTOR (3 downto 0);
           not_code_display : out  STD_LOGIC_VECTOR (3 downto 0));
end mux_2x1x4bit;

architecture Behavioral of mux_2x1x4bit is

begin
	with code_select select
		not_code_display <= weathercock when '0',
								  binary_code when others;

end Behavioral;

