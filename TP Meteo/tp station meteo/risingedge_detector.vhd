----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:04 10/18/2013 
-- Design Name: 
-- Module Name:    risingedge_detector - Behavioral 
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

entity risingedge_detector is
    Port ( anemometer : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           counter_ena : out  STD_LOGIC);
end risingedge_detector;

architecture Behavioral of risingedge_detector is

	signal last_state : std_logic :='0';
	signal anemometer_reg : STD_LOGIC := '0';
	signal counter_ena_int : STD_LOGIC := '0';
	signal counter_ena_reg : STD_LOGIC := '0';

begin

dff_anemo_synch : process(clock)
	begin
		if (rising_edge(clock)) then
			anemometer_reg <= anemometer;
		end if;
	end process;
		
-- rising edge of anemometer only
	counter_ena_int <= (anemometer_reg xor anemometer); 
	 
	
dff_counterena_synch : process(clock)
	begin
		if (rising_edge(clock)) then
			counter_ena_reg <= counter_ena_int;
		end if;
	end process;	
	
	
	counter_ena <= counter_ena_reg;
	
	
end Behavioral;

