----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Chretien  Paul, salle b2165, poste 8
-- 
-- Create Date:    11:11:23 12/15/2020 
-- Design Name: 
-- Module Name:    inv_4bit - Behavioral 
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

entity inv_4bit is
    Port ( not_code_display : in  STD_LOGIC_VECTOR (3 downto 0);
           code_display : out  STD_LOGIC_VECTOR (3 downto 0));
end inv_4bit;

architecture Behavioral of inv_4bit is

begin

code_display <= NOT not_code_display;

end Behavioral;

