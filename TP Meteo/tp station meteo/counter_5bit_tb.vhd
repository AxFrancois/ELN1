--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:37:28 12/15/2020
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/Groupe_C/EN1/SYSTEM_METEO/EQUIPE_6/weather_system/counter_5bit_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter_5bit
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
 
ENTITY counter_5bit_tb IS
END counter_5bit_tb;
 
ARCHITECTURE behavior OF counter_5bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter_5bit
    PORT(
         counter_ena : IN  std_logic;
         counter_rst : IN  std_logic;
         clock : IN  std_logic;
         speed_code : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal counter_ena : std_logic := '0';
   signal counter_rst : std_logic := '0';
   signal clock : std_logic := '0';

 	--Outputs
   signal speed_code : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter_5bit PORT MAP (
          counter_ena => counter_ena,
          counter_rst => counter_rst,
          clock => clock,
          speed_code => speed_code
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
