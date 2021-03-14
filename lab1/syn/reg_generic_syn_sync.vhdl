
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_reg_generic_NBIT4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_reg_generic_NBIT4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT4.all;

entity FD_3 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_3;

architecture SYN_PIPPO of FD_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => ENABLE, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT4.all;

entity FD_2 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_2;

architecture SYN_PIPPO of FD_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => ENABLE, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT4.all;

entity FD_1 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_PIPPO of FD_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n4, n5 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n5, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n5);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => ENABLE, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT4.all;

entity FD_0 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_0;

architecture SYN_PIPPO of FD_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n3, n1, n2, n4 : std_logic;

begin
   
   Q_reg : DFF_X1 port map( D => n3, CK => CK, Q => Q, QN => n4);
   U3 : NOR2_X1 port map( A1 => RESET, A2 => n1, ZN => n3);
   U4 : MUX2_X1 port map( A => n4, B => n2, S => ENABLE, Z => n1);
   U5 : INV_X1 port map( A => D, ZN => n2);

end SYN_PIPPO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT4.all;

entity reg_generic_NBIT4 is

   port( D : in std_logic_vector (3 downto 0);  CK, RESET, ENABLE : in 
         std_logic;  Q : out std_logic_vector (3 downto 0));

end reg_generic_NBIT4;

architecture SYN_structural_sync of reg_generic_NBIT4 is

   component FD_1
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_2
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_3
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_0
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;

begin
   
   fdi1_0 : FD_0 port map( D => D(0), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(0));
   fdi1_1 : FD_3 port map( D => D(1), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(1));
   fdi1_2 : FD_2 port map( D => D(2), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(2));
   fdi1_3 : FD_1 port map( D => D(3), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(3));

end SYN_structural_sync;
