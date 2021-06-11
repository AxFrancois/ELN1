--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:23:06 01/05/2021
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/Groupe_C/EN1/SYSTEM_METEO/EQUIPE_6/weather_system/weather_systeme_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: weather_system
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY weather_systeme_tb IS
END weather_systeme_tb;
 
ARCHITECTURE behavior OF weather_systeme_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT weather_system
    PORT(
         weathercock : IN  std_logic_vector(3 downto 0);
         code_select : IN  std_logic;
         mode_select : IN  std_logic;
         anemometer : IN  std_logic;
         clock : IN  std_logic;
         code_wind_speed : OUT  std_logic_vector(3 downto 0);
         wind_dir_speed : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal weathercock : std_logic_vector(3 downto 0) := (others => '0');
   signal code_select : std_logic := '0';
   signal mode_select : std_logic := '0';
   signal anemometer : std_logic := '0';
   signal clock : std_logic := '0';

 	--Outputs
   signal code_wind_speed : std_logic_vector(3 downto 0);
   signal wind_dir_speed : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: weather_system PORT MAP (
          weathercock => weathercock,
          code_select => code_select,
          mode_select => mode_select,
          anemometer => anemometer,
          clock => clock,
          code_wind_speed => code_wind_speed,
          wind_dir_speed => wind_dir_speed
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
