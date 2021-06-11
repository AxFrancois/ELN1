----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:29:42 10/18/2013 
-- Design Name: 
-- Module Name:    counter_5bit - Behavioral 
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

entity counter_5bit is
    Port ( counter_ena : in  STD_LOGIC;
           counter_rst : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           speed_code : out  STD_LOGIC_VECTOR (4 downto 0));
end counter_5bit;

architecture Behavioral of counter_5bit is

	signal count_int         : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
	signal count_int_reg     : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
   signal counter_rst_delay : STD_LOGIC := '0';
	
begin

	U1_dff_counter_rst : process(clock)
	begin
		if (rising_edge(clock)) then
			counter_rst_delay <= counter_rst;			
		end if;
	end process;

	U2_counter_5bit : process(clock)
	begin
		if (rising_edge(clock)) then
			
			if (counter_rst_delay = '1') then
				count_int <= (others => '0');
			elsif (counter_ena = '1') then
				count_int <= count_int + 1;
			end if;
			
		end if;
	end process;
		
	U3_dff_8 : process(clock)
	begin
		if (rising_edge(clock)) then
			if (counter_rst = '1') then
				count_int_reg <= count_int;
			end if;
		end if;
	end process;

	speed_code <= count_int_reg;
	

end Behavioral;

