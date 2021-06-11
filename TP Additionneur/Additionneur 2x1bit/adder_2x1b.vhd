----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:16:28 12/08/2020 
-- Design Name: 
-- Module Name:    adder_2x1b - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_2x1b is
    Port ( data_A : in  STD_LOGIC;
           data_B : in  STD_LOGIC;
           carry_in : in  STD_LOGIC;
           adder_out : out  STD_LOGIC_VECTOR (1 downto 0));
end adder_2x1b;

architecture Behavioral of adder_2x1b is

signal adder_int : UNSIGNED (1 downto 0) :="00";

begin
adder_int <= ('0' & data_A) + ('0' & data_B) + ('0' & carry_in);
adder_out <= std_logic_vector (adder_int);
end Behavioral;

