----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:45:41 12/08/2020 
-- Design Name: 
-- Module Name:    add_sub_mux - Behavioral 
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

entity add_sub_mux is
    Port ( data_A : in  STD_LOGIC_VECTOR (3 downto 0);
           data_B : in  STD_LOGIC_VECTOR (3 downto 0);
           carry_in : in  STD_LOGIC;
           func_select : in  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (3 downto 0);
           carry_out : out  STD_LOGIC;
           sign : out  STD_LOGIC);
end add_sub_mux;

architecture Behavioral of add_sub_mux is

COMPONENT add_2x4b--Zone   à   compléter   à   partir   du   fichier add_2x4b_tb.vhd
    PORT(
         data_A : IN  std_logic_vector(3 downto 0);
         data_B : IN  std_logic_vector(3 downto 0);
         carry_in : IN  std_logic;
         add_out : OUT  std_logic_vector(5 downto 0)
        );
END COMPONENT;

COMPONENT sub_2x4b--Zone   à   compléter   à   partir   dufichier sub_2x4b_tb.vhd
    PORT(
         data_A : IN  std_logic_vector(3 downto 0);
         data_B : IN  std_logic_vector(3 downto 0);
         carry_in : IN  std_logic;
         sub_out : OUT  std_logic_vector(5 downto 0)
        );
END COMPONENT;

COMPONENT mux_2x6b--Zone   à   compléter   à   partir   du   fichier mux_2x6b_tb.vhd
    PORT(
         add_out : IN  std_logic_vector(5 downto 0);
         sub_out : IN  std_logic_vector(5 downto 0);
         func_select : IN  std_logic;
         result : OUT  std_logic_vector(3 downto 0);
         carry_out : OUT  std_logic;
         sign : OUT  std_logic
        );
END COMPONENT;

--Description des signaux internes qui relient entre elles  lesentités élémentaires(signaux  internes d'interconnexion).
signal add_out_int: std_logic_vector(5 downto 0);
signal sub_out_int: std_logic_vector(5 downto 0);

begin

--Description des connexions (MAPPING) au niveau des entités élémentaires.
--On  trouve  ces  descriptions  dans  les  fichiers  Test Bench, il suffit de les copier.
--A  gauchedes  opérateurs  d'affectation  (=>)on trouve les noms des entrées ou sortie des entités.
--A  droite  des  opérateurs  d'affectation  (=>) on trouve les noms des signaux internes d'interconnexion.
U1: add_2x4b PORT MAP (

	data_A => data_A,
   data_B => data_B,
   carry_in => carry_in,
   add_out => add_out_int

);
U2: sub_2x4b 
PORT MAP (
	data_A => data_A,
   data_B => data_B,
   carry_in => carry_in,
   sub_out => sub_out_int
);
U3: mux_2x6b PORT MAP (
	add_out => add_out_int,
	sub_out => sub_out_int,
	func_select => func_select,
   result => result,
   carry_out => carry_out,
   sign =>sign
);

end Behavioral;

