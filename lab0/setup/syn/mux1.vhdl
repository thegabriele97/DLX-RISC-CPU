
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21.all;

entity MUX21 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21;

architecture SYN_BEHAVIORAL_1 of MUX21 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U4 : MUX2_X1 port map( A => B, B => A, S => S, Z => Y);

end SYN_BEHAVIORAL_1;
