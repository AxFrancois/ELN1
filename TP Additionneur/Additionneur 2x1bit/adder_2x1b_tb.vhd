--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:36:40 12/08/2020
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/Groupe_C/TUTORIAL/FRANCOIS-CHARLOT/ADDITION_ELEMENTAIRE/adder_2x1b_tb.vhd
-- Project Name:  ADDITION_ELEMENTAIRE
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_2x1b
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
 
ENTITY adder_2x1b_tb IS
END adder_2x1b_tb;
 
ARCHITECTURE behavior OF adder_2x1b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_2x1b
    PORT(
         data_A : IN  std_logic;
         data_B : IN  std_logic;
         carry_in : IN  std_logic;
         adder_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data_A : std_logic := '0';
   signal data_B : std_logic := '0';
   signal carry_in : std_logic := '0';

 	--Outputs
   signal adder_out : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_2x1b PORT MAP (
          data_A => data_A,
          data_B => data_B,
          carry_in => carry_in,
          adder_out => adder_out
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

data_A <= '0', '1' after 40 ns, '0' after 80 ns, '1' after 160 ns, '0' after 240 ns, '1' after 280 ns;
data_B <= '0', '1' after 80 ns, '0' after 120 ns, '1' after 160 ns, '0' after 200 ns, '1' after 240 ns;
carry_in <= '0', '1' after 120 ns, '0' after 160 ns, '1' after 200 ns;


END;
