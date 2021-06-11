	 ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Chretien Paul,labo B216, poste 8
-- 
-- Create Date:    08:42:55 12/15/2020 
-- Design Name: 
-- Module Name:    gray_decoder_4bit - Behavioral 
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

entity gray_decoder_4bit is
    Port ( weathercock : in  STD_LOGIC_VECTOR (3 downto 0);
           wind_dir : out  STD_LOGIC_VECTOR (15 downto 0));
end gray_decoder_4bit;

architecture Behavioral of gray_decoder_4bit is

begin

wind_dir(0)<= weathercock(3) OR weathercock(2) OR weathercock(1) OR weathercock(0);
wind_dir(1)<= weathercock(3) OR weathercock(2) OR weathercock(1) OR NOT weathercock(0);
wind_dir(2)<= weathercock(3) OR weathercock(2) OR NOT weathercock(1) OR NOT weathercock(0);
wind_dir(3)<= weathercock(3) OR weathercock(2) OR NOT weathercock(1) OR weathercock(0);
wind_dir(4)<= weathercock(3) OR NOT weathercock(2) OR NOT weathercock(1) OR weathercock(0);
wind_dir(5)<= weathercock(3) OR NOT weathercock(2) OR NOT weathercock(1) OR NOT weathercock(0);
wind_dir(6)<= weathercock(3) OR NOT weathercock(2) OR weathercock(1) OR NOT weathercock(0);
wind_dir(7)<= weathercock(3) OR NOT weathercock(2) OR weathercock(1) OR weathercock(0);
wind_dir(8)<= NOT weathercock(3) OR NOT weathercock(2) OR weathercock(1) OR weathercock(0);
wind_dir(9)<= NOT weathercock(3) OR NOT weathercock(2) OR weathercock(1) OR NOT weathercock(0);
wind_dir(10)<= NOT weathercock(3) OR NOT weathercock(2) OR NOT weathercock(1) OR NOT weathercock(0);
wind_dir(11)<= NOT weathercock(3) OR NOT weathercock(2) OR NOT weathercock(1) OR weathercock(0);
wind_dir(12)<= NOT weathercock(3) OR weathercock(2) OR NOT weathercock(1) OR weathercock(0);
wind_dir(13)<= NOT weathercock(3) OR weathercock(2) OR NOT weathercock(1) OR NOT weathercock(0);
wind_dir(14)<= NOT weathercock(3) OR weathercock(2) OR weathercock(1) OR NOT weathercock(0);
wind_dir(15)<= NOT weathercock(3) OR weathercock(2) OR weathercock(1) OR weathercock(0);

end Behavioral;

