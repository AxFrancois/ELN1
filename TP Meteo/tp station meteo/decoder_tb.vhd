--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:38:45 01/05/2021
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/Groupe_C/EN1/SYSTEM_METEO/EQUIPE_6/weather_system/decoder_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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
 
ENTITY decoder_tb IS
END decoder_tb;
 
ARCHITECTURE behavior OF decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         weathercock : IN  std_logic_vector(3 downto 0);
         code_select : IN  std_logic;
         wind_dir : OUT  std_logic_vector(15 downto 0);
         code_display : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal weathercock : std_logic_vector(3 downto 0) := (others => '0');
   signal code_select : std_logic := '0';

 	--Outputs
   signal wind_dir : std_logic_vector(15 downto 0);
   signal code_display : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          weathercock => weathercock,
          code_select => code_select,
          wind_dir => wind_dir,
          code_display => code_display
        );
	
weathercock <= "0000", "0001" after 100ns, "0011" after 200ns, "0010" after 300ns, "0110" after 400ns, "0111" after 500ns, "0101" after 600ns, "0100" after 700ns, "1100" after 800ns, "1101" after 900ns, "1111" after 1000ns,"1110" after 1100ns,"1010" after 1200ns,"1011" after 1300ns,"1001" after 1400ns,"1000" after 1500ns;	
code_select <= '0', '1' after 100ns, '0' after 250ns;



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
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
