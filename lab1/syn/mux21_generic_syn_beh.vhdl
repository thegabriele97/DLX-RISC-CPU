
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_mux21_generic_NBIT4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_mux21_generic_NBIT4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity mux21_generic_NBIT4 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4;

architecture SYN_behavioural of mux21_generic_NBIT4 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U10 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U11 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U12 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U13 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));

end SYN_behavioural;
