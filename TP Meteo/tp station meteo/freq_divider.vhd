----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:42 10/18/2013 
-- Design Name: 
-- Module Name:    freq_divider - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity freq_divider is
    Port ( clock : in  STD_LOGIC;
           counter_rst : out  STD_LOGIC);
end freq_divider;

architecture Behavioral of freq_divider is


	signal count_int : std_logic_vector (20 downto 0) := (others => '0');
	constant raz : std_logic_vector (20 downto 0) := (others => '0');
	
begin

	process(clock)
	begin
		if (rising_edge(clock)) then
			count_int <= count_int + 1;
			if (count_int = raz) then
				counter_rst <= '1';
			else
				counter_rst <= '0';
			end if;
		end if;
	end process;

end Behavioral;

