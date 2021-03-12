
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_mux21_generic_NBIT16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_mux21_generic_NBIT16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT16.all;

entity mux21_generic_NBIT16 is

   port( a, b : in std_logic_vector (15 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (15 downto 0));

end mux21_generic_NBIT16;

architecture SYN_behavioural of mux21_generic_NBIT16 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U34 : MUX2_X1 port map( A => b(9), B => a(9), S => s, Z => y(9));
   U35 : MUX2_X1 port map( A => b(8), B => a(8), S => s, Z => y(8));
   U36 : MUX2_X1 port map( A => b(7), B => a(7), S => s, Z => y(7));
   U37 : MUX2_X1 port map( A => b(6), B => a(6), S => s, Z => y(6));
   U38 : MUX2_X1 port map( A => b(5), B => a(5), S => s, Z => y(5));
   U39 : MUX2_X1 port map( A => b(4), B => a(4), S => s, Z => y(4));
   U40 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U41 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U42 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U43 : MUX2_X1 port map( A => b(15), B => a(15), S => s, Z => y(15));
   U44 : MUX2_X1 port map( A => b(14), B => a(14), S => s, Z => y(14));
   U45 : MUX2_X1 port map( A => b(13), B => a(13), S => s, Z => y(13));
   U46 : MUX2_X1 port map( A => b(12), B => a(12), S => s, Z => y(12));
   U47 : MUX2_X1 port map( A => b(11), B => a(11), S => s, Z => y(11));
   U48 : MUX2_X1 port map( A => b(10), B => a(10), S => s, Z => y(10));
   U49 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));

end SYN_behavioural;
