----------------------------------------------------------------------------------
-- Company: 
-- Engineer: SCHURCK Alexandre B217 Poste 12
-- 
-- Create Date:    08:41:50 12/15/2020 
-- Design Name: 
-- Module Name:    transcoder_speed - Behavioral 
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

entity transcoder_speed is
    Port ( speed_code : in  STD_LOGIC_VECTOR (4 downto 0);
           wind_speed : out  STD_LOGIC_VECTOR (19 downto 0));
end transcoder_speed;

architecture Behavioral of transcoder_speed is

begin
	wind_speed<="10000000000000000000" when speed_code="10011" else
	"11000000000000000000" when speed_code="10010" else
	"11100000000000000000" when speed_code="10001" else
	"11110000000000000000" when speed_code="10000" else
	"11111000000000000000" when speed_code="01111" else 
	"11111100000000000000" when speed_code="01110" else
	"11111110000000000000" when speed_code="01101" else
	"11111111000000000000" when speed_code="01100" else
	"11111111100000000000" when speed_code="01011" else
	"11111111110000000000" when speed_code="01010" else
	"11111111111000000000" when speed_code="01001" else
	"11111111111100000000" when speed_code="01000" else
	"11111111111110000000" when speed_code="00111" else
	"11111111111111000000" when speed_code="00110" else
	"11111111111111100000" when speed_code="00101" else
	"11111111111111110000" when speed_code="00100" else
	"11111111111111111000" when speed_code="00011" else
	"11111111111111111100" when speed_code="00010" else
	"11111111111111111110" when speed_code="00001" else
	"11111111111111111111" when speed_code="00000" else
	"00000000000000000000";

end Behavioral; 

