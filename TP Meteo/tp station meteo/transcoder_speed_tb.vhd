--------------------------------------------------------------------------------
-- Company: 
-- Engineer:SCHURCK Alexandre poste 12 groupe C
--
-- Create Date:   09:29:30 12/15/2020
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_C/ELN1/TUTORIAL/Schurck/systeme_meteo/EQUIPE_6/weather_systeme/transcoder_speed_tb.vhd
-- Project Name:  weather_systeme
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: transcoder_speed
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
 
ENTITY transcoder_speed_tb IS
END transcoder_speed_tb;
 
ARCHITECTURE behavior OF transcoder_speed_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT transcoder_speed
    PORT(
         speed_code : IN  std_logic_vector(4 downto 0);
         wind_speed : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal speed_code : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal wind_speed : std_logic_vector(19 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: transcoder_speed PORT MAP (
          speed_code => speed_code,
          wind_speed => wind_speed
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
--   stim_proc: process
--   begin		
speed_code<="00000", "00001" after 50 ns, "00010" after 100 ns,"00011" after 150 ns, "00100" after 200 ns, "00101" after 250 ns, "00110" after 300 ns, "00111" after 350 ns, "01000" after 400 ns,"01001" after 450 ns, "01010" after 500 ns, "01011" after 550 ns, "01100" after 600 ns,"01101" after 650 ns,"01110" after 700 ns, "01111" after 750 ns, "10000" after 800 ns, "10001"  after 850 ns, "10010" after 900 ns, "10011" after 950 ns, "10100" after 1000 ns ,"11111" after 1050 ns;
	
	
	
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;

      -- insert stimulus here 
--
--      wait;
--   end process;

END;
