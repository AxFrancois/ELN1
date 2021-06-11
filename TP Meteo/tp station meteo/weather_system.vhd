----------------------------------------------------------------------------------
-- Company: CPE
-- Engineer: SCHURCK & FRANCOIS B216 Poste 7 
-- 
-- Create Date:    11:45:48 12/15/2020 
-- Design Name: 
-- Module Name:    weather_system - Behavioral 
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

entity weather_system is
    Port ( weathercock : in  STD_LOGIC_VECTOR (3 downto 0);
           code_select : in  STD_LOGIC;
		   mode_select : in  STD_LOGIC;
		   anemometer : in  STD_LOGIC;
           clock : in  STD_LOGIC;
		   code_wind_speed : out  std_logic_vector(3 downto 0);
		   wind_dir_speed : out  std_logic_vector(15 downto 0));
end weather_system;

architecture Behavioral of weather_system is

    COMPONENT decoder
    PORT(
         weathercock : IN  STD_LOGIC_VECTOR (3 downto 0);
         code_select : IN  STD_LOGIC;
         wind_dir : OUT  STD_LOGIC_VECTOR (15 downto 0);
			code_display : OUT  STD_LOGIC_VECTOR (3 downto 0)
        );
    END COMPONENT;
	 
	COMPONENT speed_counter
    PORT(
         anemometer : in  STD_LOGIC;
         clock : in  STD_LOGIC;
         wind_speed : out  STD_LOGIC_VECTOR (19 downto 0)
        );
    END COMPONENT;
	 
	COMPONENT mux_2x1x20bit
    PORT(
         mode_select : IN  std_logic;
         code_display : IN  std_logic_vector(3 downto 0);
         wind_dir : IN  std_logic_vector(15 downto 0);
         wind_speed : IN  std_logic_vector(19 downto 0);
         code_wind_speed : OUT  std_logic_vector(3 downto 0);
         wind_dir_speed : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
signal code_display_int: std_logic_vector(3 downto 0);
signal wind_dir_int: std_logic_vector(15 downto 0);
signal wind_speed_int: std_logic_vector(19 downto 0);

begin

U0: decoder PORT MAP (

	weathercock => weathercock,
	code_select => code_select,
	code_display => code_display_int,
	wind_dir => wind_dir_int

);

U1 : speed_counter PORT MAP (

	anemometer => anemometer,
	clock => clock,
	wind_speed => wind_speed_int
	
);
	
U2: mux_2x1x20bit PORT MAP (

	code_display => code_display_int,
	wind_dir => wind_dir_int,
	wind_speed => wind_speed_int,
	mode_select => mode_select,
	code_wind_speed => code_wind_speed,
	wind_dir_speed => wind_dir_speed

);

end Behavioral;

