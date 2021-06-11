--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:15:48 12/15/2020
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_C/ELN1/SYSTEME_METEO/EQUIPE_6/weather_system/mux_2x1x4bit_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_2x1x4bit
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
 
ENTITY mux_2x1x4bit_tb IS
END mux_2x1x4bit_tb;
 
ARCHITECTURE behavior OF mux_2x1x4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_2x1x4bit
    PORT(
         code_select : IN  std_logic;
         weathercock : IN  std_logic_vector(3 downto 0);
         binary_code : IN  std_logic_vector(3 downto 0);
         not_display_code : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal code_select : std_logic := '0';
   signal weathercock : std_logic_vector(3 downto 0) := (others => '0');
   signal binary_code : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal not_display_code : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2x1x4bit PORT MAP (
          code_select => code_select,
          weathercock => weathercock,
          binary_code => binary_code,
          not_display_code => not_display_code
        );
	
	code_select <= '0', '1' after 100ns, '0' after 250ns;
	weathercock <= "0000", "1111" after 100ns, "0000" after 200ns, "1000" after 300ns, "1010" after 500ns, "1110" after 650ns;
	binary_code <= "0000", "1111" after 100ns, "0000" after 200ns, "1000" after 300ns, "1010" after 500ns, "1110" after 650ns;

END;
