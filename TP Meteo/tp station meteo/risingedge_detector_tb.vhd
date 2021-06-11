--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:40:38 12/15/2020
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/Groupe_C/EN1/SYSTEM_METEO/EQUIPE_6/weather_system/risingedge_detector_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: risingedge_detector
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
 
ENTITY risingedge_detector_tb IS
END risingedge_detector_tb;
 
ARCHITECTURE behavior OF risingedge_detector_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT risingedge_detector
    PORT(
         anemometer : IN  std_logic;
         clock : IN  std_logic;
         counter_ena : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal anemometer : std_logic := '0';
   signal clock : std_logic := '0';

 	--Outputs
   signal counter_ena : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: risingedge_detector PORT MAP (
          anemometer => anemometer,
          clock => clock,
          counter_ena => counter_ena
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
