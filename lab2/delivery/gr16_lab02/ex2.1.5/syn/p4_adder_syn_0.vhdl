
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_ADDER_NBIT32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_ADDER_NBIT32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_111 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_111;

architecture SYN_BEHAVIORAL of FA_111 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_110 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_110;

architecture SYN_BEHAVIORAL of FA_110 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_109 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_109;

architecture SYN_BEHAVIORAL of FA_109 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_108 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_108;

architecture SYN_BEHAVIORAL of FA_108 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_107 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_107;

architecture SYN_BEHAVIORAL of FA_107 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_106 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_106;

architecture SYN_BEHAVIORAL of FA_106 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_105 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_105;

architecture SYN_BEHAVIORAL of FA_105 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_104 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_104;

architecture SYN_BEHAVIORAL of FA_104 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_103 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_103;

architecture SYN_BEHAVIORAL of FA_103 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_102 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_102;

architecture SYN_BEHAVIORAL of FA_102 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_101 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_101;

architecture SYN_BEHAVIORAL of FA_101 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_100 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_100;

architecture SYN_BEHAVIORAL of FA_100 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_99 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_99;

architecture SYN_BEHAVIORAL of FA_99 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_98 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_98;

architecture SYN_BEHAVIORAL of FA_98 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_97 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_97;

architecture SYN_BEHAVIORAL of FA_97 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_96 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_96;

architecture SYN_BEHAVIORAL of FA_96 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_95 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_95;

architecture SYN_BEHAVIORAL of FA_95 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_94 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_94;

architecture SYN_BEHAVIORAL of FA_94 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_93 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_93;

architecture SYN_BEHAVIORAL of FA_93 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_92 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_92;

architecture SYN_BEHAVIORAL of FA_92 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_91 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_91;

architecture SYN_BEHAVIORAL of FA_91 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_90 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_90;

architecture SYN_BEHAVIORAL of FA_90 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_89 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_89;

architecture SYN_BEHAVIORAL of FA_89 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_88 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_88;

architecture SYN_BEHAVIORAL of FA_88 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_87 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_87;

architecture SYN_BEHAVIORAL of FA_87 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_86 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_86;

architecture SYN_BEHAVIORAL of FA_86 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_85 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_85;

architecture SYN_BEHAVIORAL of FA_85 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_84 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_84;

architecture SYN_BEHAVIORAL of FA_84 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_83 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_83;

architecture SYN_BEHAVIORAL of FA_83 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_82 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_82;

architecture SYN_BEHAVIORAL of FA_82 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_81 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_81;

architecture SYN_BEHAVIORAL of FA_81 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_80 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_80;

architecture SYN_BEHAVIORAL of FA_80 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_79 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_79;

architecture SYN_BEHAVIORAL of FA_79 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_78 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_78;

architecture SYN_BEHAVIORAL of FA_78 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_77 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_77;

architecture SYN_BEHAVIORAL of FA_77 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_76 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_76;

architecture SYN_BEHAVIORAL of FA_76 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_75 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_75;

architecture SYN_BEHAVIORAL of FA_75 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_74 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_74;

architecture SYN_BEHAVIORAL of FA_74 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_73 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_73;

architecture SYN_BEHAVIORAL of FA_73 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_72 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_72;

architecture SYN_BEHAVIORAL of FA_72 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_71 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_71;

architecture SYN_BEHAVIORAL of FA_71 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_70 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_70;

architecture SYN_BEHAVIORAL of FA_70 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_69 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_69;

architecture SYN_BEHAVIORAL of FA_69 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_68 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_68;

architecture SYN_BEHAVIORAL of FA_68 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_67 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_67;

architecture SYN_BEHAVIORAL of FA_67 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_66 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_66;

architecture SYN_BEHAVIORAL of FA_66 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_65 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_65;

architecture SYN_BEHAVIORAL of FA_65 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_64 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_64;

architecture SYN_BEHAVIORAL of FA_64 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_13 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_13;

architecture SYN_behavioural of mux21_generic_NBIT4_13 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U2 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U3 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U4 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_12 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_12;

architecture SYN_behavioural of mux21_generic_NBIT4_12 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U2 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U3 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U4 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_11 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_11;

architecture SYN_behavioural of mux21_generic_NBIT4_11 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U2 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U3 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U4 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_10 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_10;

architecture SYN_behavioural of mux21_generic_NBIT4_10 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U2 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U3 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U4 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_9 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_9;

architecture SYN_behavioural of mux21_generic_NBIT4_9 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U2 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U3 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U4 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_8 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_8;

architecture SYN_behavioural of mux21_generic_NBIT4_8 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U2 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U3 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U4 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_7 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_7;

architecture SYN_behavioural of mux21_generic_NBIT4_7 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U2 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U3 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U4 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_27 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_27;

architecture SYN_structural of rca_generic_nbit4_27 is

   component FA_105
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_106
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_107
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_108
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_108 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_107 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1),
                           Co => CTMP_2_port);
   FAI_3 : FA_106 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2),
                           Co => CTMP_3_port);
   FAI_4 : FA_105 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3),
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_26 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_26;

architecture SYN_structural of rca_generic_nbit4_26 is

   component FA_101
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_102
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_103
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_104
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_104 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_103 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1),
                           Co => CTMP_2_port);
   FAI_3 : FA_102 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2),
                           Co => CTMP_3_port);
   FAI_4 : FA_101 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3),
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_25 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_25;

architecture SYN_structural of rca_generic_nbit4_25 is

   component FA_97
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_98
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_99
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_100
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_100 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_99 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_98 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_97 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_24 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_24;

architecture SYN_structural of rca_generic_nbit4_24 is

   component FA_93
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_94
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_95
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_96
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_96 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_95 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_94 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_93 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_23 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_23;

architecture SYN_structural of rca_generic_nbit4_23 is

   component FA_89
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_90
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_91
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_92
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_92 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_91 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_90 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_89 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_22 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_22;

architecture SYN_structural of rca_generic_nbit4_22 is

   component FA_85
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_86
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_87
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_88
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_88 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_87 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_86 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_85 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_21 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_21;

architecture SYN_structural of rca_generic_nbit4_21 is

   component FA_81
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_82
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_83
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_84
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_84 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_83 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_82 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_81 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_20 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_20;

architecture SYN_structural of rca_generic_nbit4_20 is

   component FA_77
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_78
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_79
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_80
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_80 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_79 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_78 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_77 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_19 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_19;

architecture SYN_structural of rca_generic_nbit4_19 is

   component FA_73
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_74
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_75
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_76
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_76 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_75 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_74 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_73 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_18 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_18;

architecture SYN_structural of rca_generic_nbit4_18 is

   component FA_69
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_70
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_71
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_72
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_72 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_71 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_70 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_69 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_17 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_17;

architecture SYN_structural of rca_generic_nbit4_17 is

   component FA_65
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_66
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_67
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_68
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_68 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_67 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_66 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_65 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_16 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_16;

architecture SYN_structural of rca_generic_nbit4_16 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_64
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_64 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_15;

architecture SYN_structural of rca_generic_nbit4_15 is

   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_60 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_59 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_58 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_57 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_14;

architecture SYN_structural of rca_generic_nbit4_14 is

   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_56 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_55 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_54 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_53 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_13;

architecture SYN_structural of rca_generic_nbit4_13 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_52 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_51 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_50 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_49 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_55 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_55;

architecture SYN_behavioral of prop_gen_55 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_54 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_54;

architecture SYN_behavioral of prop_gen_54 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_53 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_53;

architecture SYN_behavioral of prop_gen_53 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_52 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_52;

architecture SYN_behavioral of prop_gen_52 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_51 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_51;

architecture SYN_behavioral of prop_gen_51 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_50 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_50;

architecture SYN_behavioral of prop_gen_50 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_49 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_49;

architecture SYN_behavioral of prop_gen_49 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_48 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_48;

architecture SYN_behavioral of prop_gen_48 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_47 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_47;

architecture SYN_behavioral of prop_gen_47 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_46 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_46;

architecture SYN_behavioral of prop_gen_46 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_45 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_45;

architecture SYN_behavioral of prop_gen_45 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_44 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_44;

architecture SYN_behavioral of prop_gen_44 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_43 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_43;

architecture SYN_behavioral of prop_gen_43 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_42 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_42;

architecture SYN_behavioral of prop_gen_42 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_41 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_41;

architecture SYN_behavioral of prop_gen_41 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_40 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_40;

architecture SYN_behavioral of prop_gen_40 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_39 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_39;

architecture SYN_behavioral of prop_gen_39 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_38 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_38;

architecture SYN_behavioral of prop_gen_38 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_37 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_37;

architecture SYN_behavioral of prop_gen_37 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_36 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_36;

architecture SYN_behavioral of prop_gen_36 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_35 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_35;

architecture SYN_behavioral of prop_gen_35 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_34 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_34;

architecture SYN_behavioral of prop_gen_34 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_33 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_33;

architecture SYN_behavioral of prop_gen_33 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_32 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_32;

architecture SYN_behavioral of prop_gen_32 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_31 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_31;

architecture SYN_behavioral of prop_gen_31 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_30 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_30;

architecture SYN_behavioral of prop_gen_30 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_29 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_29;

architecture SYN_behavioral of prop_gen_29 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_28 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_28;

architecture SYN_behavioral of prop_gen_28 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_27 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_27;

architecture SYN_behavioral of prop_gen_27 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_26 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_26;

architecture SYN_behavioral of prop_gen_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_25 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_25;

architecture SYN_behavioral of prop_gen_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity carry_select_block_NBIT_PER_BLOCK4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_13;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_13 is

   component mux21_generic_NBIT4_13
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_25
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_26
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1000, 
      n_1001 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_26 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1000);
   rca_1 : rca_generic_nbit4_25 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1001);
   mux : mux21_generic_NBIT4_13 port map( a(3) => sum_mux21_1_3_port, a(2) => 
                           sum_mux21_1_2_port, a(1) => sum_mux21_1_1_port, a(0)
                           => sum_mux21_1_0_port, b(3) => sum_mux21_0_3_port, 
                           b(2) => sum_mux21_0_2_port, b(1) => 
                           sum_mux21_0_1_port, b(0) => sum_mux21_0_0_port, s =>
                           cin, y(3) => sum(3), y(2) => sum(2), y(1) => sum(1),
                           y(0) => sum(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity carry_select_block_NBIT_PER_BLOCK4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_12;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_12 is

   component mux21_generic_NBIT4_12
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_23
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_24
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1002, 
      n_1003 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_24 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1002);
   rca_1 : rca_generic_nbit4_23 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1003);
   mux : mux21_generic_NBIT4_12 port map( a(3) => sum_mux21_1_3_port, a(2) => 
                           sum_mux21_1_2_port, a(1) => sum_mux21_1_1_port, a(0)
                           => sum_mux21_1_0_port, b(3) => sum_mux21_0_3_port, 
                           b(2) => sum_mux21_0_2_port, b(1) => 
                           sum_mux21_0_1_port, b(0) => sum_mux21_0_0_port, s =>
                           cin, y(3) => sum(3), y(2) => sum(2), y(1) => sum(1),
                           y(0) => sum(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity carry_select_block_NBIT_PER_BLOCK4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_11;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_11 is

   component mux21_generic_NBIT4_11
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_21
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_22
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1004, 
      n_1005 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_22 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1004);
   rca_1 : rca_generic_nbit4_21 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1005);
   mux : mux21_generic_NBIT4_11 port map( a(3) => sum_mux21_1_3_port, a(2) => 
                           sum_mux21_1_2_port, a(1) => sum_mux21_1_1_port, a(0)
                           => sum_mux21_1_0_port, b(3) => sum_mux21_0_3_port, 
                           b(2) => sum_mux21_0_2_port, b(1) => 
                           sum_mux21_0_1_port, b(0) => sum_mux21_0_0_port, s =>
                           cin, y(3) => sum(3), y(2) => sum(2), y(1) => sum(1),
                           y(0) => sum(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity carry_select_block_NBIT_PER_BLOCK4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_10;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_10 is

   component mux21_generic_NBIT4_10
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_19
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_20
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1006, 
      n_1007 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_20 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1006);
   rca_1 : rca_generic_nbit4_19 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1007);
   mux : mux21_generic_NBIT4_10 port map( a(3) => sum_mux21_1_3_port, a(2) => 
                           sum_mux21_1_2_port, a(1) => sum_mux21_1_1_port, a(0)
                           => sum_mux21_1_0_port, b(3) => sum_mux21_0_3_port, 
                           b(2) => sum_mux21_0_2_port, b(1) => 
                           sum_mux21_0_1_port, b(0) => sum_mux21_0_0_port, s =>
                           cin, y(3) => sum(3), y(2) => sum(2), y(1) => sum(1),
                           y(0) => sum(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity carry_select_block_NBIT_PER_BLOCK4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_9;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_9 is

   component mux21_generic_NBIT4_9
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_17
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_18
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1008, 
      n_1009 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_18 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1008);
   rca_1 : rca_generic_nbit4_17 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1009);
   mux : mux21_generic_NBIT4_9 port map( a(3) => sum_mux21_1_3_port, a(2) => 
                           sum_mux21_1_2_port, a(1) => sum_mux21_1_1_port, a(0)
                           => sum_mux21_1_0_port, b(3) => sum_mux21_0_3_port, 
                           b(2) => sum_mux21_0_2_port, b(1) => 
                           sum_mux21_0_1_port, b(0) => sum_mux21_0_0_port, s =>
                           cin, y(3) => sum(3), y(2) => sum(2), y(1) => sum(1),
                           y(0) => sum(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity carry_select_block_NBIT_PER_BLOCK4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_8;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_8 is

   component mux21_generic_NBIT4_8
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_16
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1010, 
      n_1011 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_16 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1010);
   rca_1 : rca_generic_nbit4_15 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1011);
   mux : mux21_generic_NBIT4_8 port map( a(3) => sum_mux21_1_3_port, a(2) => 
                           sum_mux21_1_2_port, a(1) => sum_mux21_1_1_port, a(0)
                           => sum_mux21_1_0_port, b(3) => sum_mux21_0_3_port, 
                           b(2) => sum_mux21_0_2_port, b(1) => 
                           sum_mux21_0_1_port, b(0) => sum_mux21_0_0_port, s =>
                           cin, y(3) => sum(3), y(2) => sum(2), y(1) => sum(1),
                           y(0) => sum(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity carry_select_block_NBIT_PER_BLOCK4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_7;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_7 is

   component mux21_generic_NBIT4_7
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1012, 
      n_1013 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_14 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1012);
   rca_1 : rca_generic_nbit4_13 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1013);
   mux : mux21_generic_NBIT4_7 port map( a(3) => sum_mux21_1_3_port, a(2) => 
                           sum_mux21_1_2_port, a(1) => sum_mux21_1_1_port, a(0)
                           => sum_mux21_1_0_port, b(3) => sum_mux21_0_3_port, 
                           b(2) => sum_mux21_0_2_port, b(1) => 
                           sum_mux21_0_1_port, b(0) => sum_mux21_0_0_port, s =>
                           cin, y(3) => sum(3), y(2) => sum(2), y(1) => sum(1),
                           y(0) => sum(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_41 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_41;

architecture SYN_behav of PG_41 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_40 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_40;

architecture SYN_behav of PG_40 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_39 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_39;

architecture SYN_behav of PG_39 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_38 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_38;

architecture SYN_behav of PG_38 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_37 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_37;

architecture SYN_behav of PG_37 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_36 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_36;

architecture SYN_behav of PG_36 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_35 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_35;

architecture SYN_behav of PG_35 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_34 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_34;

architecture SYN_behav of PG_34 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_33 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_33;

architecture SYN_behav of PG_33 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_32 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_32;

architecture SYN_behav of PG_32 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_31 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_31;

architecture SYN_behav of PG_31 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_30 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_30;

architecture SYN_behav of PG_30 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_29 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_29;

architecture SYN_behav of PG_29 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_28 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_28;

architecture SYN_behav of PG_28 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_27 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_27;

architecture SYN_behav of PG_27 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_26 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_26;

architecture SYN_behav of PG_26 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_25 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_25;

architecture SYN_behav of PG_25 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_24 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_24;

architecture SYN_behav of PG_24 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_23 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_23;

architecture SYN_behav of PG_23 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_22 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_22;

architecture SYN_behav of PG_22 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_21 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_21;

architecture SYN_behav of PG_21 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_20 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_20;

architecture SYN_behav of PG_20 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_19 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_19;

architecture SYN_behav of PG_19 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_18 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_18;

architecture SYN_behav of PG_18 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_17 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_17;

architecture SYN_behav of PG_17 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_16 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_16;

architecture SYN_behav of PG_16 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_16 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_16;

architecture SYN_behav of GG_16 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => go);
   U2 : AOI21_X1 port map( B1 => p, B2 => g(0), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_15 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_15;

architecture SYN_behav of GG_15 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => go);
   U2 : AOI21_X1 port map( B1 => p, B2 => g(0), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_14 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_14;

architecture SYN_behav of GG_14 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => go);
   U2 : AOI21_X1 port map( B1 => p, B2 => g(0), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_13 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_13;

architecture SYN_behav of GG_13 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => go);
   U2 : AOI21_X1 port map( B1 => p, B2 => g(0), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_12 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_12;

architecture SYN_behav of GG_12 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => go);
   U2 : AOI21_X1 port map( B1 => p, B2 => g(0), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_11 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_11;

architecture SYN_behav of GG_11 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => go);
   U2 : AOI21_X1 port map( B1 => p, B2 => g(0), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_10 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_10;

architecture SYN_behav of GG_10 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => go);
   U2 : AOI21_X1 port map( B1 => p, B2 => g(0), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_9 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_9;

architecture SYN_behav of GG_9 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => go);
   U2 : AOI21_X1 port map( B1 => p, B2 => g(0), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_6 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_6;

architecture SYN_behavioural of mux21_generic_NBIT4_6 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U2 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U3 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U4 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_12;

architecture SYN_structural of rca_generic_nbit4_12 is

   component FA_109
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_110
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_111
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_111 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1),
                           Co => CTMP_2_port);
   FAI_3 : FA_110 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2),
                           Co => CTMP_3_port);
   FAI_4 : FA_109 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3),
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_24 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_24;

architecture SYN_behavioral of prop_gen_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => b, B => a, Z => p);
   U2 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity carry_select_block_NBIT_PER_BLOCK4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_6;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_6 is

   component mux21_generic_NBIT4_6
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_27
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1014, 
      n_1015 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1014);
   rca_1 : rca_generic_nbit4_27 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1015);
   mux : mux21_generic_NBIT4_6 port map( a(3) => sum_mux21_1_3_port, a(2) => 
                           sum_mux21_1_2_port, a(1) => sum_mux21_1_1_port, a(0)
                           => sum_mux21_1_0_port, b(3) => sum_mux21_0_3_port, 
                           b(2) => sum_mux21_0_2_port, b(1) => 
                           sum_mux21_0_1_port, b(0) => sum_mux21_0_0_port, s =>
                           cin, y(3) => sum(3), y(2) => sum(2), y(1) => sum(1),
                           y(0) => sum(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_15 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_15;

architecture SYN_behav of PG_15 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n1, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_8 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_8;

architecture SYN_behav of GG_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => go);
   U2 : AOI21_X1 port map( B1 => p, B2 => g(0), A => g(1), ZN => n1);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_generic_NBIT32 is

   port( a, b : in std_logic_vector (31 downto 0);  p, g : out std_logic_vector
         (31 downto 0));

end prop_gen_generic_NBIT32;

architecture SYN_structural of prop_gen_generic_NBIT32 is

   component prop_gen_25
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_26
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_27
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_28
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_29
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_30
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_31
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_32
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_33
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_34
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_35
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_36
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_37
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_38
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_39
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_40
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_41
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_42
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_43
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_44
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_45
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_46
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_47
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_48
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_49
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_50
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_51
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_52
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_53
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_54
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_55
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_24
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;

begin
   
   pg_network_i_0 : prop_gen_24 port map( a => a(0), b => b(0), p => p(0), g =>
                           g(0));
   pg_network_i_1 : prop_gen_55 port map( a => a(1), b => b(1), p => p(1), g =>
                           g(1));
   pg_network_i_2 : prop_gen_54 port map( a => a(2), b => b(2), p => p(2), g =>
                           g(2));
   pg_network_i_3 : prop_gen_53 port map( a => a(3), b => b(3), p => p(3), g =>
                           g(3));
   pg_network_i_4 : prop_gen_52 port map( a => a(4), b => b(4), p => p(4), g =>
                           g(4));
   pg_network_i_5 : prop_gen_51 port map( a => a(5), b => b(5), p => p(5), g =>
                           g(5));
   pg_network_i_6 : prop_gen_50 port map( a => a(6), b => b(6), p => p(6), g =>
                           g(6));
   pg_network_i_7 : prop_gen_49 port map( a => a(7), b => b(7), p => p(7), g =>
                           g(7));
   pg_network_i_8 : prop_gen_48 port map( a => a(8), b => b(8), p => p(8), g =>
                           g(8));
   pg_network_i_9 : prop_gen_47 port map( a => a(9), b => b(9), p => p(9), g =>
                           g(9));
   pg_network_i_10 : prop_gen_46 port map( a => a(10), b => b(10), p => p(10), 
                           g => g(10));
   pg_network_i_11 : prop_gen_45 port map( a => a(11), b => b(11), p => p(11), 
                           g => g(11));
   pg_network_i_12 : prop_gen_44 port map( a => a(12), b => b(12), p => p(12), 
                           g => g(12));
   pg_network_i_13 : prop_gen_43 port map( a => a(13), b => b(13), p => p(13), 
                           g => g(13));
   pg_network_i_14 : prop_gen_42 port map( a => a(14), b => b(14), p => p(14), 
                           g => g(14));
   pg_network_i_15 : prop_gen_41 port map( a => a(15), b => b(15), p => p(15), 
                           g => g(15));
   pg_network_i_16 : prop_gen_40 port map( a => a(16), b => b(16), p => p(16), 
                           g => g(16));
   pg_network_i_17 : prop_gen_39 port map( a => a(17), b => b(17), p => p(17), 
                           g => g(17));
   pg_network_i_18 : prop_gen_38 port map( a => a(18), b => b(18), p => p(18), 
                           g => g(18));
   pg_network_i_19 : prop_gen_37 port map( a => a(19), b => b(19), p => p(19), 
                           g => g(19));
   pg_network_i_20 : prop_gen_36 port map( a => a(20), b => b(20), p => p(20), 
                           g => g(20));
   pg_network_i_21 : prop_gen_35 port map( a => a(21), b => b(21), p => p(21), 
                           g => g(21));
   pg_network_i_22 : prop_gen_34 port map( a => a(22), b => b(22), p => p(22), 
                           g => g(22));
   pg_network_i_23 : prop_gen_33 port map( a => a(23), b => b(23), p => p(23), 
                           g => g(23));
   pg_network_i_24 : prop_gen_32 port map( a => a(24), b => b(24), p => p(24), 
                           g => g(24));
   pg_network_i_25 : prop_gen_31 port map( a => a(25), b => b(25), p => p(25), 
                           g => g(25));
   pg_network_i_26 : prop_gen_30 port map( a => a(26), b => b(26), p => p(26), 
                           g => g(26));
   pg_network_i_27 : prop_gen_29 port map( a => a(27), b => b(27), p => p(27), 
                           g => g(27));
   pg_network_i_28 : prop_gen_28 port map( a => a(28), b => b(28), p => p(28), 
                           g => g(28));
   pg_network_i_29 : prop_gen_27 port map( a => a(29), b => b(29), p => p(29), 
                           g => g(29));
   pg_network_i_30 : prop_gen_26 port map( a => a(30), b => b(30), p => p(30), 
                           g => g(30));
   pg_network_i_31 : prop_gen_25 port map( a => a(31), b => b(31), p => p(31), 
                           g => g(31));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (7
         downto 0);  S : out std_logic_vector (31 downto 0));

end sum_generator_NBIT_PER_BLOCK4_NBLOCKS8;

architecture SYN_structural of sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 is

   component carry_select_block_NBIT_PER_BLOCK4_7
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_8
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_9
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_10
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_11
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_12
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_13
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_6
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;

begin
   
   csb_0 : carry_select_block_NBIT_PER_BLOCK4_6 port map( A(3) => A(3), A(2) =>
                           A(2), A(1) => A(1), A(0) => A(0), B(3) => B(3), B(2)
                           => B(2), B(1) => B(1), B(0) => B(0), cin => Ci(0), 
                           sum(3) => S(3), sum(2) => S(2), sum(1) => S(1), 
                           sum(0) => S(0));
   csb_1 : carry_select_block_NBIT_PER_BLOCK4_13 port map( A(3) => A(7), A(2) 
                           => A(6), A(1) => A(5), A(0) => A(4), B(3) => B(7), 
                           B(2) => B(6), B(1) => B(5), B(0) => B(4), cin => 
                           Ci(1), sum(3) => S(7), sum(2) => S(6), sum(1) => 
                           S(5), sum(0) => S(4));
   csb_2 : carry_select_block_NBIT_PER_BLOCK4_12 port map( A(3) => A(11), A(2) 
                           => A(10), A(1) => A(9), A(0) => A(8), B(3) => B(11),
                           B(2) => B(10), B(1) => B(9), B(0) => B(8), cin => 
                           Ci(2), sum(3) => S(11), sum(2) => S(10), sum(1) => 
                           S(9), sum(0) => S(8));
   csb_3 : carry_select_block_NBIT_PER_BLOCK4_11 port map( A(3) => A(15), A(2) 
                           => A(14), A(1) => A(13), A(0) => A(12), B(3) => 
                           B(15), B(2) => B(14), B(1) => B(13), B(0) => B(12), 
                           cin => Ci(3), sum(3) => S(15), sum(2) => S(14), 
                           sum(1) => S(13), sum(0) => S(12));
   csb_4 : carry_select_block_NBIT_PER_BLOCK4_10 port map( A(3) => A(19), A(2) 
                           => A(18), A(1) => A(17), A(0) => A(16), B(3) => 
                           B(19), B(2) => B(18), B(1) => B(17), B(0) => B(16), 
                           cin => Ci(4), sum(3) => S(19), sum(2) => S(18), 
                           sum(1) => S(17), sum(0) => S(16));
   csb_5 : carry_select_block_NBIT_PER_BLOCK4_9 port map( A(3) => A(23), A(2) 
                           => A(22), A(1) => A(21), A(0) => A(20), B(3) => 
                           B(23), B(2) => B(22), B(1) => B(21), B(0) => B(20), 
                           cin => Ci(5), sum(3) => S(23), sum(2) => S(22), 
                           sum(1) => S(21), sum(0) => S(20));
   csb_6 : carry_select_block_NBIT_PER_BLOCK4_8 port map( A(3) => A(27), A(2) 
                           => A(26), A(1) => A(25), A(0) => A(24), B(3) => 
                           B(27), B(2) => B(26), B(1) => B(25), B(0) => B(24), 
                           cin => Ci(6), sum(3) => S(27), sum(2) => S(26), 
                           sum(1) => S(25), sum(0) => S(24));
   csb_7 : carry_select_block_NBIT_PER_BLOCK4_7 port map( A(3) => A(31), A(2) 
                           => A(30), A(1) => A(29), A(0) => A(28), B(3) => 
                           B(31), B(2) => B(30), B(1) => B(29), B(0) => B(28), 
                           cin => Ci(7), sum(3) => S(31), sum(2) => S(30), 
                           sum(1) => S(29), sum(0) => S(28));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (7 downto 0));

end CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_structural of CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   component GG_9
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component GG_10
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component GG_11
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component GG_12
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component PG_16
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_17
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component GG_13
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component GG_14
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component PG_18
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_19
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_20
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component GG_15
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component PG_21
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_22
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_23
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_24
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_25
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_26
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_27
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component GG_16
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component PG_28
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_29
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_30
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_31
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_32
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_33
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_34
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_35
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_36
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_37
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_38
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_39
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_40
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_41
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_15
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component GG_8
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component prop_gen_generic_NBIT32
      port( a, b : in std_logic_vector (31 downto 0);  p, g : out 
            std_logic_vector (31 downto 0));
   end component;
   
   signal Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, Co_2_port, 
      Co_1_port, Co_0_port, sigmtx_0_0_32_port, sigmtx_0_0_31_port, 
      sigmtx_0_0_30_port, sigmtx_0_0_29_port, sigmtx_0_0_28_port, 
      sigmtx_0_0_27_port, sigmtx_0_0_26_port, sigmtx_0_0_25_port, 
      sigmtx_0_0_24_port, sigmtx_0_0_23_port, sigmtx_0_0_22_port, 
      sigmtx_0_0_21_port, sigmtx_0_0_20_port, sigmtx_0_0_19_port, 
      sigmtx_0_0_18_port, sigmtx_0_0_17_port, sigmtx_0_0_16_port, 
      sigmtx_0_0_15_port, sigmtx_0_0_14_port, sigmtx_0_0_13_port, 
      sigmtx_0_0_12_port, sigmtx_0_0_11_port, sigmtx_0_0_10_port, 
      sigmtx_0_0_9_port, sigmtx_0_0_8_port, sigmtx_0_0_7_port, 
      sigmtx_0_0_6_port, sigmtx_0_0_5_port, sigmtx_0_0_4_port, 
      sigmtx_0_0_3_port, sigmtx_0_0_2_port, sigmtx_0_0_1_port, 
      sigmtx_0_1_32_port, sigmtx_0_1_30_port, sigmtx_0_1_28_port, 
      sigmtx_0_1_26_port, sigmtx_0_1_24_port, sigmtx_0_1_22_port, 
      sigmtx_0_1_20_port, sigmtx_0_1_18_port, sigmtx_0_1_16_port, 
      sigmtx_0_1_14_port, sigmtx_0_1_12_port, sigmtx_0_1_10_port, 
      sigmtx_0_1_8_port, sigmtx_0_1_6_port, sigmtx_0_1_4_port, 
      sigmtx_0_1_2_port, sigmtx_0_2_32_port, sigmtx_0_2_28_port, 
      sigmtx_0_2_24_port, sigmtx_0_2_20_port, sigmtx_0_2_16_port, 
      sigmtx_0_2_12_port, sigmtx_0_2_8_port, sigmtx_0_3_32_port, 
      sigmtx_0_3_24_port, sigmtx_0_3_16_port, sigmtx_0_4_32_port, 
      sigmtx_0_4_28_port, sigmtx_1_0_32_port, sigmtx_1_0_31_port, 
      sigmtx_1_0_30_port, sigmtx_1_0_29_port, sigmtx_1_0_28_port, 
      sigmtx_1_0_27_port, sigmtx_1_0_26_port, sigmtx_1_0_25_port, 
      sigmtx_1_0_24_port, sigmtx_1_0_23_port, sigmtx_1_0_22_port, 
      sigmtx_1_0_21_port, sigmtx_1_0_20_port, sigmtx_1_0_19_port, 
      sigmtx_1_0_18_port, sigmtx_1_0_17_port, sigmtx_1_0_16_port, 
      sigmtx_1_0_15_port, sigmtx_1_0_14_port, sigmtx_1_0_13_port, 
      sigmtx_1_0_12_port, sigmtx_1_0_11_port, sigmtx_1_0_10_port, 
      sigmtx_1_0_9_port, sigmtx_1_0_8_port, sigmtx_1_0_7_port, 
      sigmtx_1_0_6_port, sigmtx_1_0_5_port, sigmtx_1_0_4_port, 
      sigmtx_1_0_3_port, sigmtx_1_0_2_port, sigmtx_1_1_32_port, 
      sigmtx_1_1_30_port, sigmtx_1_1_28_port, sigmtx_1_1_26_port, 
      sigmtx_1_1_24_port, sigmtx_1_1_22_port, sigmtx_1_1_20_port, 
      sigmtx_1_1_18_port, sigmtx_1_1_16_port, sigmtx_1_1_14_port, 
      sigmtx_1_1_12_port, sigmtx_1_1_10_port, sigmtx_1_1_8_port, 
      sigmtx_1_1_6_port, sigmtx_1_1_4_port, sigmtx_1_2_32_port, 
      sigmtx_1_2_28_port, sigmtx_1_2_24_port, sigmtx_1_2_20_port, 
      sigmtx_1_2_16_port, sigmtx_1_2_12_port, sigmtx_1_2_8_port, 
      sigmtx_1_3_32_port, sigmtx_1_3_24_port, sigmtx_1_3_16_port, 
      sigmtx_1_4_32_port, sigmtx_1_4_28_port, n_1016 : std_logic;

begin
   Co <= ( Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, Co_2_port, 
      Co_1_port, Co_0_port );
   
   PGNet : prop_gen_generic_NBIT32 port map( a(31) => A(31), a(30) => A(30), 
                           a(29) => A(29), a(28) => A(28), a(27) => A(27), 
                           a(26) => A(26), a(25) => A(25), a(24) => A(24), 
                           a(23) => A(23), a(22) => A(22), a(21) => A(21), 
                           a(20) => A(20), a(19) => A(19), a(18) => A(18), 
                           a(17) => A(17), a(16) => A(16), a(15) => A(15), 
                           a(14) => A(14), a(13) => A(13), a(12) => A(12), 
                           a(11) => A(11), a(10) => A(10), a(9) => A(9), a(8) 
                           => A(8), a(7) => A(7), a(6) => A(6), a(5) => A(5), 
                           a(4) => A(4), a(3) => A(3), a(2) => A(2), a(1) => 
                           A(1), a(0) => A(0), b(31) => B(31), b(30) => B(30), 
                           b(29) => B(29), b(28) => B(28), b(27) => B(27), 
                           b(26) => B(26), b(25) => B(25), b(24) => B(24), 
                           b(23) => B(23), b(22) => B(22), b(21) => B(21), 
                           b(20) => B(20), b(19) => B(19), b(18) => B(18), 
                           b(17) => B(17), b(16) => B(16), b(15) => B(15), 
                           b(14) => B(14), b(13) => B(13), b(12) => B(12), 
                           b(11) => B(11), b(10) => B(10), b(9) => B(9), b(8) 
                           => B(8), b(7) => B(7), b(6) => B(6), b(5) => B(5), 
                           b(4) => B(4), b(3) => B(3), b(2) => B(2), b(1) => 
                           B(1), b(0) => B(0), p(31) => sigmtx_1_0_32_port, 
                           p(30) => sigmtx_1_0_31_port, p(29) => 
                           sigmtx_1_0_30_port, p(28) => sigmtx_1_0_29_port, 
                           p(27) => sigmtx_1_0_28_port, p(26) => 
                           sigmtx_1_0_27_port, p(25) => sigmtx_1_0_26_port, 
                           p(24) => sigmtx_1_0_25_port, p(23) => 
                           sigmtx_1_0_24_port, p(22) => sigmtx_1_0_23_port, 
                           p(21) => sigmtx_1_0_22_port, p(20) => 
                           sigmtx_1_0_21_port, p(19) => sigmtx_1_0_20_port, 
                           p(18) => sigmtx_1_0_19_port, p(17) => 
                           sigmtx_1_0_18_port, p(16) => sigmtx_1_0_17_port, 
                           p(15) => sigmtx_1_0_16_port, p(14) => 
                           sigmtx_1_0_15_port, p(13) => sigmtx_1_0_14_port, 
                           p(12) => sigmtx_1_0_13_port, p(11) => 
                           sigmtx_1_0_12_port, p(10) => sigmtx_1_0_11_port, 
                           p(9) => sigmtx_1_0_10_port, p(8) => 
                           sigmtx_1_0_9_port, p(7) => sigmtx_1_0_8_port, p(6) 
                           => sigmtx_1_0_7_port, p(5) => sigmtx_1_0_6_port, 
                           p(4) => sigmtx_1_0_5_port, p(3) => sigmtx_1_0_4_port
                           , p(2) => sigmtx_1_0_3_port, p(1) => 
                           sigmtx_1_0_2_port, p(0) => n_1016, g(31) => 
                           sigmtx_0_0_32_port, g(30) => sigmtx_0_0_31_port, 
                           g(29) => sigmtx_0_0_30_port, g(28) => 
                           sigmtx_0_0_29_port, g(27) => sigmtx_0_0_28_port, 
                           g(26) => sigmtx_0_0_27_port, g(25) => 
                           sigmtx_0_0_26_port, g(24) => sigmtx_0_0_25_port, 
                           g(23) => sigmtx_0_0_24_port, g(22) => 
                           sigmtx_0_0_23_port, g(21) => sigmtx_0_0_22_port, 
                           g(20) => sigmtx_0_0_21_port, g(19) => 
                           sigmtx_0_0_20_port, g(18) => sigmtx_0_0_19_port, 
                           g(17) => sigmtx_0_0_18_port, g(16) => 
                           sigmtx_0_0_17_port, g(15) => sigmtx_0_0_16_port, 
                           g(14) => sigmtx_0_0_15_port, g(13) => 
                           sigmtx_0_0_14_port, g(12) => sigmtx_0_0_13_port, 
                           g(11) => sigmtx_0_0_12_port, g(10) => 
                           sigmtx_0_0_11_port, g(9) => sigmtx_0_0_10_port, g(8)
                           => sigmtx_0_0_9_port, g(7) => sigmtx_0_0_8_port, 
                           g(6) => sigmtx_0_0_7_port, g(5) => sigmtx_0_0_6_port
                           , g(4) => sigmtx_0_0_5_port, g(3) => 
                           sigmtx_0_0_4_port, g(2) => sigmtx_0_0_3_port, g(1) 
                           => sigmtx_0_0_2_port, g(0) => sigmtx_0_0_1_port);
   GGi_1_2 : GG_8 port map( p => sigmtx_1_0_2_port, g(1) => sigmtx_0_0_2_port, 
                           g(0) => sigmtx_0_0_1_port, go => sigmtx_0_1_2_port);
   PGi_1_4 : PG_15 port map( p(1) => sigmtx_1_0_4_port, p(0) => 
                           sigmtx_1_0_3_port, g(1) => sigmtx_0_0_4_port, g(0) 
                           => sigmtx_0_0_3_port, po => sigmtx_1_1_4_port, go =>
                           sigmtx_0_1_4_port);
   PGi_1_6 : PG_41 port map( p(1) => sigmtx_1_0_6_port, p(0) => 
                           sigmtx_1_0_5_port, g(1) => sigmtx_0_0_6_port, g(0) 
                           => sigmtx_0_0_5_port, po => sigmtx_1_1_6_port, go =>
                           sigmtx_0_1_6_port);
   PGi_1_8 : PG_40 port map( p(1) => sigmtx_1_0_8_port, p(0) => 
                           sigmtx_1_0_7_port, g(1) => sigmtx_0_0_8_port, g(0) 
                           => sigmtx_0_0_7_port, po => sigmtx_1_1_8_port, go =>
                           sigmtx_0_1_8_port);
   PGi_1_10 : PG_39 port map( p(1) => sigmtx_1_0_10_port, p(0) => 
                           sigmtx_1_0_9_port, g(1) => sigmtx_0_0_10_port, g(0) 
                           => sigmtx_0_0_9_port, po => sigmtx_1_1_10_port, go 
                           => sigmtx_0_1_10_port);
   PGi_1_12 : PG_38 port map( p(1) => sigmtx_1_0_12_port, p(0) => 
                           sigmtx_1_0_11_port, g(1) => sigmtx_0_0_12_port, g(0)
                           => sigmtx_0_0_11_port, po => sigmtx_1_1_12_port, go 
                           => sigmtx_0_1_12_port);
   PGi_1_14 : PG_37 port map( p(1) => sigmtx_1_0_14_port, p(0) => 
                           sigmtx_1_0_13_port, g(1) => sigmtx_0_0_14_port, g(0)
                           => sigmtx_0_0_13_port, po => sigmtx_1_1_14_port, go 
                           => sigmtx_0_1_14_port);
   PGi_1_16 : PG_36 port map( p(1) => sigmtx_1_0_16_port, p(0) => 
                           sigmtx_1_0_15_port, g(1) => sigmtx_0_0_16_port, g(0)
                           => sigmtx_0_0_15_port, po => sigmtx_1_1_16_port, go 
                           => sigmtx_0_1_16_port);
   PGi_1_18 : PG_35 port map( p(1) => sigmtx_1_0_18_port, p(0) => 
                           sigmtx_1_0_17_port, g(1) => sigmtx_0_0_18_port, g(0)
                           => sigmtx_0_0_17_port, po => sigmtx_1_1_18_port, go 
                           => sigmtx_0_1_18_port);
   PGi_1_20 : PG_34 port map( p(1) => sigmtx_1_0_20_port, p(0) => 
                           sigmtx_1_0_19_port, g(1) => sigmtx_0_0_20_port, g(0)
                           => sigmtx_0_0_19_port, po => sigmtx_1_1_20_port, go 
                           => sigmtx_0_1_20_port);
   PGi_1_22 : PG_33 port map( p(1) => sigmtx_1_0_22_port, p(0) => 
                           sigmtx_1_0_21_port, g(1) => sigmtx_0_0_22_port, g(0)
                           => sigmtx_0_0_21_port, po => sigmtx_1_1_22_port, go 
                           => sigmtx_0_1_22_port);
   PGi_1_24 : PG_32 port map( p(1) => sigmtx_1_0_24_port, p(0) => 
                           sigmtx_1_0_23_port, g(1) => sigmtx_0_0_24_port, g(0)
                           => sigmtx_0_0_23_port, po => sigmtx_1_1_24_port, go 
                           => sigmtx_0_1_24_port);
   PGi_1_26 : PG_31 port map( p(1) => sigmtx_1_0_26_port, p(0) => 
                           sigmtx_1_0_25_port, g(1) => sigmtx_0_0_26_port, g(0)
                           => sigmtx_0_0_25_port, po => sigmtx_1_1_26_port, go 
                           => sigmtx_0_1_26_port);
   PGi_1_28 : PG_30 port map( p(1) => sigmtx_1_0_28_port, p(0) => 
                           sigmtx_1_0_27_port, g(1) => sigmtx_0_0_28_port, g(0)
                           => sigmtx_0_0_27_port, po => sigmtx_1_1_28_port, go 
                           => sigmtx_0_1_28_port);
   PGi_1_30 : PG_29 port map( p(1) => sigmtx_1_0_30_port, p(0) => 
                           sigmtx_1_0_29_port, g(1) => sigmtx_0_0_30_port, g(0)
                           => sigmtx_0_0_29_port, po => sigmtx_1_1_30_port, go 
                           => sigmtx_0_1_30_port);
   PGi_1_32 : PG_28 port map( p(1) => sigmtx_1_0_32_port, p(0) => 
                           sigmtx_1_0_31_port, g(1) => sigmtx_0_0_32_port, g(0)
                           => sigmtx_0_0_31_port, po => sigmtx_1_1_32_port, go 
                           => sigmtx_0_1_32_port);
   GGi_2_4 : GG_16 port map( p => sigmtx_1_1_4_port, g(1) => sigmtx_0_1_4_port,
                           g(0) => sigmtx_0_1_2_port, go => Co_0_port);
   PGi_2_8 : PG_27 port map( p(1) => sigmtx_1_1_8_port, p(0) => 
                           sigmtx_1_1_6_port, g(1) => sigmtx_0_1_8_port, g(0) 
                           => sigmtx_0_1_6_port, po => sigmtx_1_2_8_port, go =>
                           sigmtx_0_2_8_port);
   PGi_2_12 : PG_26 port map( p(1) => sigmtx_1_1_12_port, p(0) => 
                           sigmtx_1_1_10_port, g(1) => sigmtx_0_1_12_port, g(0)
                           => sigmtx_0_1_10_port, po => sigmtx_1_2_12_port, go 
                           => sigmtx_0_2_12_port);
   PGi_2_16 : PG_25 port map( p(1) => sigmtx_1_1_16_port, p(0) => 
                           sigmtx_1_1_14_port, g(1) => sigmtx_0_1_16_port, g(0)
                           => sigmtx_0_1_14_port, po => sigmtx_1_2_16_port, go 
                           => sigmtx_0_2_16_port);
   PGi_2_20 : PG_24 port map( p(1) => sigmtx_1_1_20_port, p(0) => 
                           sigmtx_1_1_18_port, g(1) => sigmtx_0_1_20_port, g(0)
                           => sigmtx_0_1_18_port, po => sigmtx_1_2_20_port, go 
                           => sigmtx_0_2_20_port);
   PGi_2_24 : PG_23 port map( p(1) => sigmtx_1_1_24_port, p(0) => 
                           sigmtx_1_1_22_port, g(1) => sigmtx_0_1_24_port, g(0)
                           => sigmtx_0_1_22_port, po => sigmtx_1_2_24_port, go 
                           => sigmtx_0_2_24_port);
   PGi_2_28 : PG_22 port map( p(1) => sigmtx_1_1_28_port, p(0) => 
                           sigmtx_1_1_26_port, g(1) => sigmtx_0_1_28_port, g(0)
                           => sigmtx_0_1_26_port, po => sigmtx_1_2_28_port, go 
                           => sigmtx_0_2_28_port);
   PGi_2_32 : PG_21 port map( p(1) => sigmtx_1_1_32_port, p(0) => 
                           sigmtx_1_1_30_port, g(1) => sigmtx_0_1_32_port, g(0)
                           => sigmtx_0_1_30_port, po => sigmtx_1_2_32_port, go 
                           => sigmtx_0_2_32_port);
   GGi_3_8 : GG_15 port map( p => sigmtx_1_2_8_port, g(1) => sigmtx_0_2_8_port,
                           g(0) => Co_0_port, go => Co_1_port);
   PGi_3_16 : PG_20 port map( p(1) => sigmtx_1_2_16_port, p(0) => 
                           sigmtx_1_2_12_port, g(1) => sigmtx_0_2_16_port, g(0)
                           => sigmtx_0_2_12_port, po => sigmtx_1_3_16_port, go 
                           => sigmtx_0_3_16_port);
   PGi_3_24 : PG_19 port map( p(1) => sigmtx_1_2_24_port, p(0) => 
                           sigmtx_1_2_20_port, g(1) => sigmtx_0_2_24_port, g(0)
                           => sigmtx_0_2_20_port, po => sigmtx_1_3_24_port, go 
                           => sigmtx_0_3_24_port);
   PGi_3_32 : PG_18 port map( p(1) => sigmtx_1_2_32_port, p(0) => 
                           sigmtx_1_2_28_port, g(1) => sigmtx_0_2_32_port, g(0)
                           => sigmtx_0_2_28_port, po => sigmtx_1_3_32_port, go 
                           => sigmtx_0_3_32_port);
   GGi_4_12 : GG_14 port map( p => sigmtx_1_2_12_port, g(1) => 
                           sigmtx_0_2_12_port, g(0) => Co_1_port, go => 
                           Co_2_port);
   GGi_4_16 : GG_13 port map( p => sigmtx_1_3_16_port, g(1) => 
                           sigmtx_0_3_16_port, g(0) => Co_1_port, go => 
                           Co_3_port);
   PGi_4_28 : PG_17 port map( p(1) => sigmtx_1_2_28_port, p(0) => 
                           sigmtx_1_3_24_port, g(1) => sigmtx_0_2_28_port, g(0)
                           => sigmtx_0_3_24_port, po => sigmtx_1_4_28_port, go 
                           => sigmtx_0_4_28_port);
   PGi_4_32 : PG_16 port map( p(1) => sigmtx_1_3_32_port, p(0) => 
                           sigmtx_1_3_24_port, g(1) => sigmtx_0_3_32_port, g(0)
                           => sigmtx_0_3_24_port, po => sigmtx_1_4_32_port, go 
                           => sigmtx_0_4_32_port);
   GGi_5_20 : GG_12 port map( p => sigmtx_1_2_20_port, g(1) => 
                           sigmtx_0_2_20_port, g(0) => Co_3_port, go => 
                           Co_4_port);
   GGi_5_24 : GG_11 port map( p => sigmtx_1_3_24_port, g(1) => 
                           sigmtx_0_3_24_port, g(0) => Co_3_port, go => 
                           Co_5_port);
   GGi_5_28 : GG_10 port map( p => sigmtx_1_4_28_port, g(1) => 
                           sigmtx_0_4_28_port, g(0) => Co_3_port, go => 
                           Co_6_port);
   GGi_5_32 : GG_9 port map( p => sigmtx_1_4_32_port, g(1) => 
                           sigmtx_0_4_32_port, g(0) => Co_3_port, go => 
                           Co_7_port);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity P4_ADDER_NBIT32 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end P4_ADDER_NBIT32;

architecture SYN_structural of P4_ADDER_NBIT32 is

   component sum_generator_NBIT_PER_BLOCK4_NBLOCKS8
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector
            (7 downto 0);  S : out std_logic_vector (31 downto 0));
   end component;
   
   component CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal X_Logic0_port, carry_sum_7_port, carry_sum_6_port, carry_sum_5_port, 
      carry_sum_4_port, carry_sum_3_port, carry_sum_2_port, carry_sum_1_port : 
      std_logic;

begin
   
   CARRYGEN : CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 port map( A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Cin => 
                           X_Logic0_port, Co(7) => Cout, Co(6) => 
                           carry_sum_7_port, Co(5) => carry_sum_6_port, Co(4) 
                           => carry_sum_5_port, Co(3) => carry_sum_4_port, 
                           Co(2) => carry_sum_3_port, Co(1) => carry_sum_2_port
                           , Co(0) => carry_sum_1_port);
   SUMGEM : sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 port map( A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Ci(7) => 
                           carry_sum_7_port, Ci(6) => carry_sum_6_port, Ci(5) 
                           => carry_sum_5_port, Ci(4) => carry_sum_4_port, 
                           Ci(3) => carry_sum_3_port, Ci(2) => carry_sum_2_port
                           , Ci(1) => carry_sum_1_port, Ci(0) => X_Logic0_port,
                           S(31) => S(31), S(30) => S(30), S(29) => S(29), 
                           S(28) => S(28), S(27) => S(27), S(26) => S(26), 
                           S(25) => S(25), S(24) => S(24), S(23) => S(23), 
                           S(22) => S(22), S(21) => S(21), S(20) => S(20), 
                           S(19) => S(19), S(18) => S(18), S(17) => S(17), 
                           S(16) => S(16), S(15) => S(15), S(14) => S(14), 
                           S(13) => S(13), S(12) => S(12), S(11) => S(11), 
                           S(10) => S(10), S(9) => S(9), S(8) => S(8), S(7) => 
                           S(7), S(6) => S(6), S(5) => S(5), S(4) => S(4), S(3)
                           => S(3), S(2) => S(2), S(1) => S(1), S(0) => S(0));
   X_Logic0_port <= '0';

end SYN_structural;
