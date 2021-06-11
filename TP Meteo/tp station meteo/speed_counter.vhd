----------------------------------------------------------------------------------
-- Company: CPE
-- Engineer: SCHURCK & FRANCOIS B216 Poste 7 
-- 
-- Create Date:    11:45:48 12/15/2020 
-- Design Name: 
-- Module Name:    speed_counter - Behavioral 
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

entity speed_counter is
    Port ( anemometer : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           wind_speed : out  STD_LOGIC_VECTOR (19 downto 0));
end speed_counter;

architecture Behavioral of speed_counter is

    COMPONENT counter_5bit
    PORT(
         counter_ena : IN  std_logic;
         counter_rst : IN  std_logic;
         clock : IN  std_logic;
         speed_code : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT freq_divider
    PORT(
         clock : IN  std_logic;
         counter_rst : OUT  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT risingedge_detector
    PORT(
         anemometer : IN  std_logic;
         clock : IN  std_logic;
         counter_ena : OUT  std_logic
        );
    END COMPONENT;
	 
	COMPONENT transcoder_speed
    PORT(
         speed_code : IN  std_logic_vector(4 downto 0);
         wind_speed : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
	 
signal counter_ena_int: std_logic;
signal counter_rst_int: std_logic;
signal spend_code_int: std_logic_vector(4 downto 0);

begin

U10: risingedge_detector PORT MAP (

	anemometer => anemometer,
   clock => clock,
   counter_ena => counter_ena_int

);

U11 : freq_divider PORT MAP (

	clock => clock,
	counter_rst => counter_rst_int
	
);
	
U12: counter_5bit PORT MAP (

	counter_rst => counter_rst_int,
   clock => clock,
   counter_ena => counter_ena_int,
	speed_code => spend_code_int	

);

U13 : transcoder_speed PORT MAP (

	speed_code => spend_code_int,
	wind_speed => wind_speed
	
);


end Behavioral;

