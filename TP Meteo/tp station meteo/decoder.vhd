----------------------------------------------------------------------------------
-- Company: CPE
-- Engineer: SCHURCK & FRANCOIS B216 Poste 7 
-- 
-- Create Date:    11:45:48 12/15/2020 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
    Port ( weathercock : in  STD_LOGIC_VECTOR (3 downto 0);
           code_select : in  STD_LOGIC;
           wind_dir : out  STD_LOGIC_VECTOR (15 downto 0);
		   code_display : out  STD_LOGIC_VECTOR (3 downto 0));
end decoder;

architecture Behavioral of decoder is

    COMPONENT gray_bin_4bit
    PORT(
         weathercock : IN  std_logic_vector(3 downto 0);
         binary_code : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	COMPONENT mux_2x1x4bit
    PORT(
         code_select : IN  std_logic;
         weathercock : IN  std_logic_vector(3 downto 0);
         binary_code : IN  std_logic_vector(3 downto 0);
         not_code_display : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	COMPONENT gray_decoder_4bit
    PORT(
         weathercock : IN  std_logic_vector(3 downto 0);
         wind_dir : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	COMPONENT inv_4bit
    PORT(
         not_code_display : IN  std_logic_vector(3 downto 0);
         code_display : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
signal binary_code_int: std_logic_vector(3 downto 0);
signal not_code_display_int: std_logic_vector(3 downto 0);

begin

U00: gray_bin_4bit PORT MAP (

	weathercock => weathercock,
	binary_code => binary_code_int

);

U01: gray_decoder_4bit PORT MAP (

	weathercock => weathercock,
	wind_dir => wind_dir

);

U02 : mux_2x1x4bit PORT MAP (

	binary_code => binary_code_int,
	weathercock => weathercock,
	code_select => code_select,
	not_code_display => not_code_display_int
	
);

U03 : inv_4bit PORT MAP (

	not_code_display => not_code_display_int,
	code_display => code_display
	
);


end Behavioral;

