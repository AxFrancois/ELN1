--------------------------------------------------------------------------------
-- Company: CPE
-- Engineer: Axel François B216 Poste 7
--
-- Create Date:   09:15:19 12/15/2020
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/Groupe_C/EN1/SYSTEM_METEO/EQUIPE_6/weather_system/mux_2x1x20bit_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_2x1x20bit
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
 
ENTITY mux_2x1x20bit_tb IS
END mux_2x1x20bit_tb;
 
ARCHITECTURE behavior OF mux_2x1x20bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
    

   --Inputs
   signal mode_select : std_logic := '0';
   signal code_display : std_logic_vector(3 downto 0) := (others => '0');
   signal wind_dir : std_logic_vector(15 downto 0) := (others => '0');
   signal wind_speed : std_logic_vector(19 downto 0) := (others => '0');

 	--Outputs
   signal code_wind_speed : std_logic_vector(3 downto 0);
   signal wind_dir_speed : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2x1x20bit PORT MAP (
          mode_select => mode_select,
          code_display => code_display,
          wind_dir => wind_dir,
          wind_speed => wind_speed,
          code_wind_speed => code_wind_speed,
          wind_dir_speed => wind_dir_speed
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--  end process;
 

   -- Stimulus process
--   stim_proc: process
--   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 

--      wait;
--   end process;

mode_select <=  '0', '1' after 400 ns;
code_display <= "0000", "0001" after 50 ns, "1111" after 200 ns, "0001" after 500 ns;
wind_dir <=  "0000000000000000", "0000000000000001" after 150 ns, "1111111111111111" after 250 ns, "0000000000000001" after 550 ns;
wind_speed <=  "00000000000000000000", "11111111111111111111" after 300 ns, "00000000000000000000" after 350 ns, "10011000000000000001" after 450 ns;


END;
