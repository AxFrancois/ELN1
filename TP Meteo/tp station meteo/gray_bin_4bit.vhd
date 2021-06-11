----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Timothée Levilly
-- Poste: 11
-- Equipe: 6 
-- 
-- Create Date:    08:53:40 12/15/2020 
-- Design Name: 
-- Module Name:    gray_bin_4bit - Behavioral 
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

entity gray_bin_4bit is
    Port ( weathercock : in  STD_LOGIC_VECTOR (3 downto 0);
           binary_code : out  STD_LOGIC_VECTOR (3 downto 0));
end gray_bin_4bit;

architecture Behavioral of gray_bin_4bit is

begin
	binary_code(3) <= weathercock(3);
	binary_code(2) <= weathercock(2) XOR weathercock(3);
	binary_code(1) <= weathercock(1) XOR weathercock(2) XOR weathercock(3);
	binary_code(0) <= weathercock(0) XOR weathercock(1) XOR weathercock(2) XOR weathercock(3);

end Behavioral;

