--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:19:08 12/15/2020
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/CR_C/ELN1/SYSTEME_METEO/EQUIPE_6/weather_system/inv_4bit_tb.vhd
-- Project Name:  weather_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: inv_4bit
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
 
ENTITY inv_4bit_tb IS
END inv_4bit_tb;
 
ARCHITECTURE behavior OF inv_4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT inv_4bit
    PORT(
         not_code_display : IN  std_logic_vector(3 downto 0);
         code_display : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal not_code_display : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal code_display : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: inv_4bit PORT MAP (
          not_code_display => not_code_display,
          code_display => code_display
        );

not_code_display <= "0000", "0001" after 100ns, "0011" after 200ns, "0010" after 300ns, "0110" after 400ns, "0111" after 500ns, "0101" after 600ns, "0100" after 700ns, "1100" after 800ns, "1101" after 900ns, "1111" after 1000ns, "1110" after 1100ns, "1010" after 1200ns,"1011" after 1300ns,"1001" after 1400ns,"1000" after 1500ns;

END;
