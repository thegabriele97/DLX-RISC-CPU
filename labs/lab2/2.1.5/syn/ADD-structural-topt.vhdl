
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_ADDER_NBIT32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_ADDER_NBIT32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U2 : INV_X1 port map( A => n6, ZN => Co);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_7 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_7;

architecture SYN_behavioural of mux21_generic_NBIT4_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n11, ZN => y(1));
   U2 : INV_X1 port map( A => n12, ZN => y(2));
   U3 : INV_X1 port map( A => n13, ZN => y(3));
   U4 : INV_X1 port map( A => n10, ZN => y(0));
   U5 : AOI22_X1 port map( A1 => a(3), A2 => s, B1 => b(3), B2 => n14, ZN => 
                           n13);
   U6 : AOI22_X1 port map( A1 => a(2), A2 => s, B1 => b(2), B2 => n14, ZN => 
                           n12);
   U7 : AOI22_X1 port map( A1 => a(1), A2 => s, B1 => b(1), B2 => n14, ZN => 
                           n11);
   U8 : AOI22_X1 port map( A1 => a(0), A2 => s, B1 => b(0), B2 => n14, ZN => 
                           n10);
   U9 : INV_X1 port map( A => s, ZN => n14);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_6 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_6;

architecture SYN_behavioural of mux21_generic_NBIT4_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n10, n11, n12, n13, n14 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n13, ZN => y(3));
   U2 : INV_X1 port map( A => n12, ZN => y(2));
   U3 : INV_X1 port map( A => n11, ZN => y(1));
   U4 : INV_X1 port map( A => n10, ZN => y(0));
   U5 : AOI22_X1 port map( A1 => a(3), A2 => s, B1 => b(3), B2 => n14, ZN => 
                           n13);
   U6 : AOI22_X1 port map( A1 => a(2), A2 => s, B1 => b(2), B2 => n14, ZN => 
                           n12);
   U7 : AOI22_X1 port map( A1 => a(1), A2 => s, B1 => b(1), B2 => n14, ZN => 
                           n11);
   U8 : AOI22_X1 port map( A1 => a(0), A2 => s, B1 => b(0), B2 => n14, ZN => 
                           n10);
   U9 : INV_X1 port map( A => s, ZN => n14);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_5 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_5;

architecture SYN_behavioural of mux21_generic_NBIT4_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n7, n6, n10, n11, n12 : std_logic;

begin
   
   U1 : INV_X1 port map( A => b(2), ZN => n6);
   U2 : INV_X1 port map( A => a(2), ZN => n10);
   U3 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U4 : MUX2_X1 port map( A => n6, B => n10, S => s, Z => n7);
   U5 : INV_X1 port map( A => n12, ZN => y(1));
   U6 : INV_X1 port map( A => n7, ZN => y(2));
   U7 : INV_X1 port map( A => n11, ZN => y(0));
   U8 : INV_X1 port map( A => s, ZN => n5);
   U9 : AOI22_X1 port map( A1 => s, A2 => a(1), B1 => n5, B2 => b(1), ZN => n12
                           );
   U10 : AOI22_X1 port map( A1 => s, A2 => a(0), B1 => n5, B2 => b(0), ZN => 
                           n11);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_4 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_4;

architecture SYN_behavioural of mux21_generic_NBIT4_4 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));
   U2 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U3 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U4 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_3 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_3;

architecture SYN_behavioural of mux21_generic_NBIT4_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));
   U2 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U3 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U4 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_2 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_2;

architecture SYN_behavioural of mux21_generic_NBIT4_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));
   U2 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));
   U3 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U4 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_1 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_1;

architecture SYN_behavioural of mux21_generic_NBIT4_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => b(0), B => a(0), S => s, Z => y(0));
   U2 : MUX2_X1 port map( A => b(1), B => a(1), S => s, Z => y(1));
   U3 : MUX2_X1 port map( A => b(2), B => a(2), S => s, Z => y(2));
   U4 : MUX2_X1 port map( A => b(3), B => a(3), S => s, Z => y(3));

end SYN_behavioural;

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

entity rca_generic_nbit4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_12;

architecture SYN_structural of rca_generic_nbit4_12 is

   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_11;

architecture SYN_structural of rca_generic_nbit4_11 is

   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_44 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_43 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_42 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_41 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_10;

architecture SYN_structural of rca_generic_nbit4_10 is

   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_40 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_39 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_38 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_37 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_9;

architecture SYN_structural of rca_generic_nbit4_9 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_36 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_35 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_34 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_33 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_8;

architecture SYN_structural of rca_generic_nbit4_8 is

   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_7;

architecture SYN_structural of rca_generic_nbit4_7 is

   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_28 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_27 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_26 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_25 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_6;

architecture SYN_structural of rca_generic_nbit4_6 is

   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_24 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_23 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_22 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_21 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_5;

architecture SYN_structural of rca_generic_nbit4_5 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_20 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_19 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_18 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_17 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_4;

architecture SYN_structural of rca_generic_nbit4_4 is

   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_3;

architecture SYN_structural of rca_generic_nbit4_3 is

   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_12 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_11 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_10 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_9 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_2;

architecture SYN_structural of rca_generic_nbit4_2 is

   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_8 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_7 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_6 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_5 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_1;

architecture SYN_structural of rca_generic_nbit4_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_4 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_3 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_2 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_1 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

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
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

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
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

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
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

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
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

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
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

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
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

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
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n2, A2 => b, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => a, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => p);
   U4 : INV_X1 port map( A => b, ZN => n1);
   U5 : INV_X1 port map( A => a, ZN => n2);
   U6 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

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
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_23 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_23;

architecture SYN_behavioral of prop_gen_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_22 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_22;

architecture SYN_behavioral of prop_gen_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_21 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_21;

architecture SYN_behavioral of prop_gen_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_20 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_20;

architecture SYN_behavioral of prop_gen_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_19 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_19;

architecture SYN_behavioral of prop_gen_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_18 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_18;

architecture SYN_behavioral of prop_gen_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_17 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_17;

architecture SYN_behavioral of prop_gen_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n2, A2 => b, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => a, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => p);
   U4 : INV_X1 port map( A => b, ZN => n1);
   U5 : INV_X1 port map( A => a, ZN => n2);
   U6 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_16 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_16;

architecture SYN_behavioral of prop_gen_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_15 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_15;

architecture SYN_behavioral of prop_gen_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_14 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_14;

architecture SYN_behavioral of prop_gen_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_13 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_13;

architecture SYN_behavioral of prop_gen_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => n2, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => a, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => p);
   U4 : INV_X1 port map( A => b, ZN => n1);
   U5 : INV_X1 port map( A => a, ZN => n2);
   U6 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_12 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_12;

architecture SYN_behavioral of prop_gen_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_11 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_11;

architecture SYN_behavioral of prop_gen_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_10 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_10;

architecture SYN_behavioral of prop_gen_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_9 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_9;

architecture SYN_behavioral of prop_gen_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => n2, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n1, A2 => a, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => p);
   U4 : INV_X1 port map( A => b, ZN => n1);
   U5 : INV_X1 port map( A => a, ZN => n2);
   U6 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_8 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_8;

architecture SYN_behavioral of prop_gen_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_7 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_7;

architecture SYN_behavioral of prop_gen_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_6 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_6;

architecture SYN_behavioral of prop_gen_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_5 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_5;

architecture SYN_behavioral of prop_gen_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_4 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_4;

architecture SYN_behavioral of prop_gen_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_3 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_3;

architecture SYN_behavioral of prop_gen_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_2 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_2;

architecture SYN_behavioral of prop_gen_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_1 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_1;

architecture SYN_behavioral of prop_gen_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

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
   
   component rca_generic_nbit4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1000, 
      n_1001 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1000);
   rca_1 : rca_generic_nbit4_11 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1001);
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

entity carry_select_block_NBIT_PER_BLOCK4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_5;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_5 is

   component mux21_generic_NBIT4_5
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1002, 
      n_1003 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_10 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1002);
   rca_1 : rca_generic_nbit4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1003);
   mux : mux21_generic_NBIT4_5 port map( a(3) => sum_mux21_1_3_port, a(2) => 
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

entity carry_select_block_NBIT_PER_BLOCK4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_4;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_4 is

   component mux21_generic_NBIT4_4
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1004, 
      n_1005 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1004);
   rca_1 : rca_generic_nbit4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1005);
   mux : mux21_generic_NBIT4_4 port map( a(3) => sum_mux21_1_3_port, a(2) => 
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

entity carry_select_block_NBIT_PER_BLOCK4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_3;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_3 is

   component mux21_generic_NBIT4_3
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1006, 
      n_1007 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1006);
   rca_1 : rca_generic_nbit4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1007);
   mux : mux21_generic_NBIT4_3 port map( a(3) => sum_mux21_1_3_port, a(2) => 
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

entity carry_select_block_NBIT_PER_BLOCK4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_2;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_2 is

   component mux21_generic_NBIT4_2
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1008, 
      n_1009 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1008);
   rca_1 : rca_generic_nbit4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1009);
   mux : mux21_generic_NBIT4_2 port map( a(3) => sum_mux21_1_3_port, a(2) => 
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

entity carry_select_block_NBIT_PER_BLOCK4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_1;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_1 is

   component mux21_generic_NBIT4_1
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1010, 
      n_1011 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1010);
   rca_1 : rca_generic_nbit4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1011);
   mux : mux21_generic_NBIT4_1 port map( a(3) => sum_mux21_1_3_port, a(2) => 
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

entity PG_26 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_26;

architecture SYN_behav of PG_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n5 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n3, A2 => n5, ZN => go);
   U2 : NAND2_X1 port map( A1 => p(1), A2 => g(0), ZN => n3);
   U3 : INV_X1 port map( A => g(1), ZN => n5);
   U4 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_25 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_25;

architecture SYN_behav of PG_25 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => go);
   U3 : INV_X1 port map( A => p(1), ZN => n3);
   U4 : INV_X1 port map( A => g(0), ZN => n4);
   U5 : INV_X1 port map( A => g(1), ZN => n5);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_24 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_24;

architecture SYN_behav of PG_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => p(1), A2 => g(1), ZN => n3);
   U2 : NOR2_X1 port map( A1 => g(0), A2 => g(1), ZN => n4);
   U3 : NOR2_X1 port map( A1 => n3, A2 => n4, ZN => go);
   U4 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_23 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_23;

architecture SYN_behav of PG_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => go);
   U2 : INV_X1 port map( A => p(1), ZN => n3);
   U3 : INV_X1 port map( A => g(0), ZN => n4);
   U4 : INV_X1 port map( A => g(1), ZN => n5);
   U5 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_22 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_22;

architecture SYN_behav of PG_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => p(1), A2 => g(1), ZN => n3);
   U2 : NOR2_X1 port map( A1 => g(0), A2 => g(1), ZN => n4);
   U3 : NOR2_X1 port map( A1 => n3, A2 => n4, ZN => go);
   U4 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

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
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U3 : AOI21_X1 port map( B1 => p(1), B2 => g(0), A => g(1), ZN => n3);

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
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_19 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_19;

architecture SYN_behav of PG_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => p(1), A2 => g(1), ZN => n3);
   U2 : NOR2_X1 port map( A1 => g(0), A2 => g(1), ZN => n4);
   U3 : NOR2_X1 port map( A1 => n3, A2 => n4, ZN => go);
   U4 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

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
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);

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
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n3, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_16 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_16;

architecture SYN_behav of PG_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_15 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_15;

architecture SYN_behav of PG_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_14 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_14;

architecture SYN_behav of PG_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_13 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_13;

architecture SYN_behav of PG_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_12 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_12;

architecture SYN_behav of PG_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => go);
   U3 : NAND2_X1 port map( A1 => g(0), A2 => p(1), ZN => n4);
   U4 : INV_X1 port map( A => g(1), ZN => n5);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_11 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_11;

architecture SYN_behav of PG_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => go);
   U3 : NAND2_X1 port map( A1 => g(0), A2 => p(1), ZN => n4);
   U4 : INV_X1 port map( A => g(1), ZN => n5);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_10 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_10;

architecture SYN_behav of PG_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => go);
   U3 : NAND2_X1 port map( A1 => g(0), A2 => p(1), ZN => n4);
   U4 : INV_X1 port map( A => g(1), ZN => n5);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_9 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_9;

architecture SYN_behav of PG_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);
   U2 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U3 : INV_X1 port map( A => n3, ZN => go);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_8 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_8;

architecture SYN_behav of PG_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);
   U2 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U3 : INV_X1 port map( A => n3, ZN => go);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_7 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_7;

architecture SYN_behav of PG_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_6 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_6;

architecture SYN_behav of PG_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_5 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_5;

architecture SYN_behav of PG_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : OAI21_X1 port map( B1 => n4, B2 => n5, A => n6, ZN => go);
   U3 : INV_X1 port map( A => g(0), ZN => n4);
   U4 : INV_X1 port map( A => p(1), ZN => n5);
   U5 : INV_X1 port map( A => g(1), ZN => n6);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_4 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_4;

architecture SYN_behav of PG_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => go);
   U2 : NAND2_X1 port map( A1 => g(0), A2 => p(1), ZN => n4);
   U3 : INV_X1 port map( A => g(1), ZN => n5);
   U4 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_3 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_3;

architecture SYN_behav of PG_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_2 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_2;

architecture SYN_behav of PG_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => p(1), A2 => g(1), ZN => n3);
   U2 : NOR2_X1 port map( A1 => g(0), A2 => g(1), ZN => n4);
   U3 : NOR2_X1 port map( A1 => n4, A2 => n3, ZN => go);
   U4 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity PG_1 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_1;

architecture SYN_behav of PG_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : INV_X1 port map( A => n3, ZN => go);
   U3 : AOI21_X1 port map( B1 => g(0), B2 => p(1), A => g(1), ZN => n3);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_8 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_8;

architecture SYN_behav of GG_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => go);
   U2 : NAND2_X1 port map( A1 => g(0), A2 => p, ZN => n4);
   U3 : INV_X1 port map( A => g(1), ZN => n5);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_7 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_7;

architecture SYN_behav of GG_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => g(0), B2 => p, A => g(1), ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => go);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_6 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_6;

architecture SYN_behav of GG_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AOI21_X1 port map( B1 => g(0), B2 => p, A => g(1), ZN => n3);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_5 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_5;

architecture SYN_behav of GG_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => g(0), B2 => p, A => g(1), ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => go);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_4 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_4;

architecture SYN_behav of GG_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => g(1), ZN => n3);
   U2 : NAND2_X1 port map( A1 => g(0), A2 => p, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => go);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_3 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_3;

architecture SYN_behav of GG_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net1820, n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => g(1), ZN => net1820);
   U2 : NAND2_X1 port map( A1 => g(0), A2 => p, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n3, A2 => net1820, ZN => go);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_2 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_2;

architecture SYN_behav of GG_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => g(1), ZN => n3);
   U2 : NAND2_X1 port map( A1 => g(0), A2 => p, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n3, ZN => go);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_1 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_1;

architecture SYN_behav of GG_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => go);
   U2 : AOI21_X1 port map( B1 => p, B2 => g(0), A => g(1), ZN => n3);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : INV_X1 port map( A => n2, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity mux21_generic_NBIT4_0 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4_0;

architecture SYN_behavioural of mux21_generic_NBIT4_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n7, ZN => y(2));
   U2 : AOI22_X1 port map( A1 => a(2), A2 => s, B1 => b(2), B2 => n5, ZN => n7)
                           ;
   U3 : INV_X1 port map( A => n8, ZN => y(1));
   U4 : AOI22_X1 port map( A1 => a(1), A2 => s, B1 => b(1), B2 => n5, ZN => n8)
                           ;
   U5 : INV_X1 port map( A => n9, ZN => y(0));
   U6 : AOI22_X1 port map( A1 => a(0), A2 => s, B1 => b(0), B2 => n5, ZN => n9)
                           ;
   U7 : INV_X1 port map( A => n6, ZN => y(3));
   U8 : AOI22_X1 port map( A1 => s, A2 => a(3), B1 => b(3), B2 => n5, ZN => n6)
                           ;
   U9 : INV_X1 port map( A => s, ZN => n5);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity rca_generic_nbit4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4_0;

architecture SYN_structural of rca_generic_nbit4_0 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
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

entity prop_gen_0 is

   port( a, b : in std_logic;  p, g : out std_logic);

end prop_gen_0;

architecture SYN_behavioral of prop_gen_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => b, B => a, Z => p);
   U1 : AND2_X1 port map( A1 => b, A2 => a, ZN => g);

end SYN_behavioral;

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

entity carry_select_block_NBIT_PER_BLOCK4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum : 
         out std_logic_vector (3 downto 0));

end carry_select_block_NBIT_PER_BLOCK4_0;

architecture SYN_structural of carry_select_block_NBIT_PER_BLOCK4_0 is

   component mux21_generic_NBIT4_0
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component rca_generic_nbit4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_mux21_0_3_port, sum_mux21_0_2_port,
      sum_mux21_0_1_port, sum_mux21_0_0_port, sum_mux21_1_3_port, 
      sum_mux21_1_2_port, sum_mux21_1_1_port, sum_mux21_1_0_port, n_1014, 
      n_1015 : std_logic;

begin
   
   rca_0 : rca_generic_nbit4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_mux21_0_3_port, S(2) => sum_mux21_0_2_port, S(1)
                           => sum_mux21_0_1_port, S(0) => sum_mux21_0_0_port, 
                           Co => n_1014);
   rca_1 : rca_generic_nbit4_15 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_mux21_1_3_port, S(2) => sum_mux21_1_2_port, S(1)
                           => sum_mux21_1_1_port, S(0) => sum_mux21_1_0_port, 
                           Co => n_1015);
   mux : mux21_generic_NBIT4_0 port map( a(3) => sum_mux21_1_3_port, a(2) => 
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

entity PG_0 is

   port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);

end PG_0;

architecture SYN_behav of PG_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => p(1), A2 => p(0), ZN => po);
   U2 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => go);
   U3 : INV_X1 port map( A => p(1), ZN => n3);
   U4 : INV_X1 port map( A => g(0), ZN => n4);
   U5 : INV_X1 port map( A => g(1), ZN => n5);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity GG_0 is

   port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
         std_logic);

end GG_0;

architecture SYN_behav of GG_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => g(0), A2 => g(1), ZN => n3);
   U2 : NOR2_X1 port map( A1 => p, A2 => g(1), ZN => n4);
   U3 : NOR2_X1 port map( A1 => n4, A2 => n3, ZN => go);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity prop_gen_generic_NBIT32 is

   port( a, b : in std_logic_vector (31 downto 0);  p, g : out std_logic_vector
         (31 downto 0));

end prop_gen_generic_NBIT32;

architecture SYN_structural of prop_gen_generic_NBIT32 is

   component prop_gen_1
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_2
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_3
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_4
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_5
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_6
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_7
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_8
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_9
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_10
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_11
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_12
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_13
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_14
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_15
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_16
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_17
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_18
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_19
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_20
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_21
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_22
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_23
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
   component prop_gen_24
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;
   
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
   
   component prop_gen_0
      port( a, b : in std_logic;  p, g : out std_logic);
   end component;

begin
   
   pg_network_i_0 : prop_gen_0 port map( a => a(0), b => b(0), p => p(0), g => 
                           g(0));
   pg_network_i_1 : prop_gen_31 port map( a => a(1), b => b(1), p => p(1), g =>
                           g(1));
   pg_network_i_2 : prop_gen_30 port map( a => a(2), b => b(2), p => p(2), g =>
                           g(2));
   pg_network_i_3 : prop_gen_29 port map( a => a(3), b => b(3), p => p(3), g =>
                           g(3));
   pg_network_i_4 : prop_gen_28 port map( a => a(4), b => b(4), p => p(4), g =>
                           g(4));
   pg_network_i_5 : prop_gen_27 port map( a => a(5), b => b(5), p => p(5), g =>
                           g(5));
   pg_network_i_6 : prop_gen_26 port map( a => a(6), b => b(6), p => p(6), g =>
                           g(6));
   pg_network_i_7 : prop_gen_25 port map( a => a(7), b => b(7), p => p(7), g =>
                           g(7));
   pg_network_i_8 : prop_gen_24 port map( a => a(8), b => b(8), p => p(8), g =>
                           g(8));
   pg_network_i_9 : prop_gen_23 port map( a => a(9), b => b(9), p => p(9), g =>
                           g(9));
   pg_network_i_10 : prop_gen_22 port map( a => a(10), b => b(10), p => p(10), 
                           g => g(10));
   pg_network_i_11 : prop_gen_21 port map( a => a(11), b => b(11), p => p(11), 
                           g => g(11));
   pg_network_i_12 : prop_gen_20 port map( a => a(12), b => b(12), p => p(12), 
                           g => g(12));
   pg_network_i_13 : prop_gen_19 port map( a => a(13), b => b(13), p => p(13), 
                           g => g(13));
   pg_network_i_14 : prop_gen_18 port map( a => a(14), b => b(14), p => p(14), 
                           g => g(14));
   pg_network_i_15 : prop_gen_17 port map( a => a(15), b => b(15), p => p(15), 
                           g => g(15));
   pg_network_i_16 : prop_gen_16 port map( a => a(16), b => b(16), p => p(16), 
                           g => g(16));
   pg_network_i_17 : prop_gen_15 port map( a => a(17), b => b(17), p => p(17), 
                           g => g(17));
   pg_network_i_18 : prop_gen_14 port map( a => a(18), b => b(18), p => p(18), 
                           g => g(18));
   pg_network_i_19 : prop_gen_13 port map( a => a(19), b => b(19), p => p(19), 
                           g => g(19));
   pg_network_i_20 : prop_gen_12 port map( a => a(20), b => b(20), p => p(20), 
                           g => g(20));
   pg_network_i_21 : prop_gen_11 port map( a => a(21), b => b(21), p => p(21), 
                           g => g(21));
   pg_network_i_22 : prop_gen_10 port map( a => a(22), b => b(22), p => p(22), 
                           g => g(22));
   pg_network_i_23 : prop_gen_9 port map( a => a(23), b => b(23), p => p(23), g
                           => g(23));
   pg_network_i_24 : prop_gen_8 port map( a => a(24), b => b(24), p => p(24), g
                           => g(24));
   pg_network_i_25 : prop_gen_7 port map( a => a(25), b => b(25), p => p(25), g
                           => g(25));
   pg_network_i_26 : prop_gen_6 port map( a => a(26), b => b(26), p => p(26), g
                           => g(26));
   pg_network_i_27 : prop_gen_5 port map( a => a(27), b => b(27), p => p(27), g
                           => g(27));
   pg_network_i_28 : prop_gen_4 port map( a => a(28), b => b(28), p => p(28), g
                           => g(28));
   pg_network_i_29 : prop_gen_3 port map( a => a(29), b => b(29), p => p(29), g
                           => g(29));
   pg_network_i_30 : prop_gen_2 port map( a => a(30), b => b(30), p => p(30), g
                           => g(30));
   pg_network_i_31 : prop_gen_1 port map( a => a(31), b => b(31), p => p(31), g
                           => g(31));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (7
         downto 0);  S : out std_logic_vector (31 downto 0));

end sum_generator_NBIT_PER_BLOCK4_NBLOCKS8;

architecture SYN_structural of sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 is

   component carry_select_block_NBIT_PER_BLOCK4_1
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_2
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_3
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_4
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_5
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_6
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_7
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT_PER_BLOCK4_0
      port( A, B : in std_logic_vector (3 downto 0);  cin : in std_logic;  sum 
            : out std_logic_vector (3 downto 0));
   end component;

begin
   
   csb_0 : carry_select_block_NBIT_PER_BLOCK4_0 port map( A(3) => A(3), A(2) =>
                           A(2), A(1) => A(1), A(0) => A(0), B(3) => B(3), B(2)
                           => B(2), B(1) => B(1), B(0) => B(0), cin => Ci(0), 
                           sum(3) => S(3), sum(2) => S(2), sum(1) => S(1), 
                           sum(0) => S(0));
   csb_1 : carry_select_block_NBIT_PER_BLOCK4_7 port map( A(3) => A(7), A(2) =>
                           A(6), A(1) => A(5), A(0) => A(4), B(3) => B(7), B(2)
                           => B(6), B(1) => B(5), B(0) => B(4), cin => Ci(1), 
                           sum(3) => S(7), sum(2) => S(6), sum(1) => S(5), 
                           sum(0) => S(4));
   csb_2 : carry_select_block_NBIT_PER_BLOCK4_6 port map( A(3) => A(11), A(2) 
                           => A(10), A(1) => A(9), A(0) => A(8), B(3) => B(11),
                           B(2) => B(10), B(1) => B(9), B(0) => B(8), cin => 
                           Ci(2), sum(3) => S(11), sum(2) => S(10), sum(1) => 
                           S(9), sum(0) => S(8));
   csb_3 : carry_select_block_NBIT_PER_BLOCK4_5 port map( A(3) => A(15), A(2) 
                           => A(14), A(1) => A(13), A(0) => A(12), B(3) => 
                           B(15), B(2) => B(14), B(1) => B(13), B(0) => B(12), 
                           cin => Ci(3), sum(3) => S(15), sum(2) => S(14), 
                           sum(1) => S(13), sum(0) => S(12));
   csb_4 : carry_select_block_NBIT_PER_BLOCK4_4 port map( A(3) => A(19), A(2) 
                           => A(18), A(1) => A(17), A(0) => A(16), B(3) => 
                           B(19), B(2) => B(18), B(1) => B(17), B(0) => B(16), 
                           cin => Ci(4), sum(3) => S(19), sum(2) => S(18), 
                           sum(1) => S(17), sum(0) => S(16));
   csb_5 : carry_select_block_NBIT_PER_BLOCK4_3 port map( A(3) => A(23), A(2) 
                           => A(22), A(1) => A(21), A(0) => A(20), B(3) => 
                           B(23), B(2) => B(22), B(1) => B(21), B(0) => B(20), 
                           cin => Ci(5), sum(3) => S(23), sum(2) => S(22), 
                           sum(1) => S(21), sum(0) => S(20));
   csb_6 : carry_select_block_NBIT_PER_BLOCK4_2 port map( A(3) => A(27), A(2) 
                           => A(26), A(1) => A(25), A(0) => A(24), B(3) => 
                           B(27), B(2) => B(26), B(1) => B(25), B(0) => B(24), 
                           cin => Ci(6), sum(3) => S(27), sum(2) => S(26), 
                           sum(1) => S(25), sum(0) => S(24));
   csb_7 : carry_select_block_NBIT_PER_BLOCK4_1 port map( A(3) => A(31), A(2) 
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

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GG_1
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component GG_2
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component GG_3
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component GG_4
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component PG_1
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_2
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component GG_5
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component GG_6
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component PG_3
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_4
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_5
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component GG_7
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component PG_6
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_7
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_8
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_9
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_10
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_11
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_12
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component GG_8
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component PG_13
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_14
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_15
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_16
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component PG_17
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
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
   
   component PG_0
      port( p, g : in std_logic_vector (1 downto 0);  po, go : out std_logic);
   end component;
   
   component GG_0
      port( p : in std_logic;  g : in std_logic_vector (1 downto 0);  go : out 
            std_logic);
   end component;
   
   component prop_gen_generic_NBIT32
      port( a, b : in std_logic_vector (31 downto 0);  p, g : out 
            std_logic_vector (31 downto 0));
   end component;
   
   signal Co_7_port, Co_6_port, Co_5_port, Co_4_port, n7, Co_2_port, n8, n9, 
      sigmtx_0_0_32_port, sigmtx_0_0_31_port, sigmtx_0_0_30_port, 
      sigmtx_0_0_29_port, sigmtx_0_0_28_port, sigmtx_0_0_27_port, 
      sigmtx_0_0_26_port, sigmtx_0_0_25_port, sigmtx_0_0_24_port, 
      sigmtx_0_0_23_port, sigmtx_0_0_22_port, sigmtx_0_0_21_port, 
      sigmtx_0_0_20_port, sigmtx_0_0_19_port, sigmtx_0_0_18_port, 
      sigmtx_0_0_17_port, sigmtx_0_0_16_port, sigmtx_0_0_15_port, 
      sigmtx_0_0_14_port, sigmtx_0_0_13_port, sigmtx_0_0_12_port, 
      sigmtx_0_0_11_port, sigmtx_0_0_10_port, sigmtx_0_0_9_port, 
      sigmtx_0_0_8_port, sigmtx_0_0_7_port, sigmtx_0_0_6_port, 
      sigmtx_0_0_5_port, sigmtx_0_0_4_port, sigmtx_0_0_3_port, 
      sigmtx_0_0_2_port, sigmtx_0_0_1_port, sigmtx_0_1_32_port, 
      sigmtx_0_1_30_port, sigmtx_0_1_28_port, sigmtx_0_1_26_port, 
      sigmtx_0_1_24_port, sigmtx_0_1_22_port, sigmtx_0_1_20_port, 
      sigmtx_0_1_18_port, sigmtx_0_1_16_port, sigmtx_0_1_14_port, 
      sigmtx_0_1_12_port, sigmtx_0_1_10_port, sigmtx_0_1_8_port, 
      sigmtx_0_1_6_port, sigmtx_0_1_4_port, sigmtx_0_1_2_port, 
      sigmtx_0_2_32_port, sigmtx_0_2_28_port, sigmtx_0_2_24_port, 
      sigmtx_0_2_20_port, sigmtx_0_2_16_port, sigmtx_0_2_12_port, 
      sigmtx_0_2_8_port, sigmtx_0_3_32_port, sigmtx_0_3_24_port, 
      sigmtx_0_3_16_port, sigmtx_0_4_32_port, sigmtx_0_4_28_port, 
      sigmtx_1_0_32_port, sigmtx_1_0_31_port, sigmtx_1_0_30_port, 
      sigmtx_1_0_29_port, sigmtx_1_0_28_port, sigmtx_1_0_27_port, 
      sigmtx_1_0_26_port, sigmtx_1_0_25_port, sigmtx_1_0_24_port, 
      sigmtx_1_0_23_port, sigmtx_1_0_22_port, sigmtx_1_0_21_port, 
      sigmtx_1_0_20_port, sigmtx_1_0_19_port, sigmtx_1_0_18_port, 
      sigmtx_1_0_17_port, sigmtx_1_0_16_port, sigmtx_1_0_15_port, 
      sigmtx_1_0_14_port, sigmtx_1_0_13_port, sigmtx_1_0_12_port, 
      sigmtx_1_0_11_port, sigmtx_1_0_10_port, sigmtx_1_0_9_port, 
      sigmtx_1_0_8_port, sigmtx_1_0_7_port, sigmtx_1_0_6_port, 
      sigmtx_1_0_5_port, sigmtx_1_0_4_port, sigmtx_1_0_3_port, 
      sigmtx_1_0_2_port, sigmtx_1_1_32_port, sigmtx_1_1_30_port, 
      sigmtx_1_1_28_port, sigmtx_1_1_26_port, sigmtx_1_1_24_port, 
      sigmtx_1_1_22_port, sigmtx_1_1_20_port, sigmtx_1_1_18_port, 
      sigmtx_1_1_16_port, sigmtx_1_1_14_port, sigmtx_1_1_12_port, 
      sigmtx_1_1_10_port, sigmtx_1_1_8_port, sigmtx_1_1_6_port, 
      sigmtx_1_1_4_port, sigmtx_1_2_32_port, sigmtx_1_2_28_port, 
      sigmtx_1_2_24_port, sigmtx_1_2_20_port, sigmtx_1_2_16_port, 
      sigmtx_1_2_12_port, sigmtx_1_2_8_port, sigmtx_1_3_32_port, 
      sigmtx_1_3_24_port, sigmtx_1_3_16_port, sigmtx_1_4_32_port, 
      sigmtx_1_4_28_port, Co_3_port, Co_1_port, n3, n4, Co_0_port, n6, n_1016 :
      std_logic;

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
   GGi_1_2 : GG_0 port map( p => sigmtx_1_0_2_port, g(1) => sigmtx_0_0_2_port, 
                           g(0) => sigmtx_0_0_1_port, go => sigmtx_0_1_2_port);
   PGi_1_4 : PG_0 port map( p(1) => sigmtx_1_0_4_port, p(0) => 
                           sigmtx_1_0_3_port, g(1) => sigmtx_0_0_4_port, g(0) 
                           => sigmtx_0_0_3_port, po => sigmtx_1_1_4_port, go =>
                           sigmtx_0_1_4_port);
   PGi_1_6 : PG_26 port map( p(1) => sigmtx_1_0_6_port, p(0) => 
                           sigmtx_1_0_5_port, g(1) => sigmtx_0_0_6_port, g(0) 
                           => sigmtx_0_0_5_port, po => sigmtx_1_1_6_port, go =>
                           sigmtx_0_1_6_port);
   PGi_1_8 : PG_25 port map( p(1) => sigmtx_1_0_8_port, p(0) => 
                           sigmtx_1_0_7_port, g(1) => sigmtx_0_0_8_port, g(0) 
                           => sigmtx_0_0_7_port, po => sigmtx_1_1_8_port, go =>
                           sigmtx_0_1_8_port);
   PGi_1_10 : PG_24 port map( p(1) => sigmtx_1_0_10_port, p(0) => 
                           sigmtx_1_0_9_port, g(1) => sigmtx_0_0_10_port, g(0) 
                           => sigmtx_0_0_9_port, po => sigmtx_1_1_10_port, go 
                           => sigmtx_0_1_10_port);
   PGi_1_12 : PG_23 port map( p(1) => sigmtx_1_0_12_port, p(0) => 
                           sigmtx_1_0_11_port, g(1) => sigmtx_0_0_12_port, g(0)
                           => sigmtx_0_0_11_port, po => sigmtx_1_1_12_port, go 
                           => sigmtx_0_1_12_port);
   PGi_1_14 : PG_22 port map( p(1) => sigmtx_1_0_14_port, p(0) => 
                           sigmtx_1_0_13_port, g(1) => sigmtx_0_0_14_port, g(0)
                           => sigmtx_0_0_13_port, po => sigmtx_1_1_14_port, go 
                           => sigmtx_0_1_14_port);
   PGi_1_16 : PG_21 port map( p(1) => sigmtx_1_0_16_port, p(0) => 
                           sigmtx_1_0_15_port, g(1) => sigmtx_0_0_16_port, g(0)
                           => sigmtx_0_0_15_port, po => sigmtx_1_1_16_port, go 
                           => sigmtx_0_1_16_port);
   PGi_1_18 : PG_20 port map( p(1) => sigmtx_1_0_18_port, p(0) => 
                           sigmtx_1_0_17_port, g(1) => sigmtx_0_0_18_port, g(0)
                           => sigmtx_0_0_17_port, po => sigmtx_1_1_18_port, go 
                           => sigmtx_0_1_18_port);
   PGi_1_20 : PG_19 port map( p(1) => sigmtx_1_0_20_port, p(0) => 
                           sigmtx_1_0_19_port, g(1) => sigmtx_0_0_20_port, g(0)
                           => sigmtx_0_0_19_port, po => sigmtx_1_1_20_port, go 
                           => sigmtx_0_1_20_port);
   PGi_1_22 : PG_18 port map( p(1) => sigmtx_1_0_22_port, p(0) => 
                           sigmtx_1_0_21_port, g(1) => sigmtx_0_0_22_port, g(0)
                           => sigmtx_0_0_21_port, po => sigmtx_1_1_22_port, go 
                           => sigmtx_0_1_22_port);
   PGi_1_24 : PG_17 port map( p(1) => sigmtx_1_0_24_port, p(0) => 
                           sigmtx_1_0_23_port, g(1) => sigmtx_0_0_24_port, g(0)
                           => sigmtx_0_0_23_port, po => sigmtx_1_1_24_port, go 
                           => sigmtx_0_1_24_port);
   PGi_1_26 : PG_16 port map( p(1) => sigmtx_1_0_26_port, p(0) => 
                           sigmtx_1_0_25_port, g(1) => sigmtx_0_0_26_port, g(0)
                           => sigmtx_0_0_25_port, po => sigmtx_1_1_26_port, go 
                           => sigmtx_0_1_26_port);
   PGi_1_28 : PG_15 port map( p(1) => sigmtx_1_0_28_port, p(0) => 
                           sigmtx_1_0_27_port, g(1) => sigmtx_0_0_28_port, g(0)
                           => sigmtx_0_0_27_port, po => sigmtx_1_1_28_port, go 
                           => sigmtx_0_1_28_port);
   PGi_1_30 : PG_14 port map( p(1) => sigmtx_1_0_30_port, p(0) => 
                           sigmtx_1_0_29_port, g(1) => sigmtx_0_0_30_port, g(0)
                           => sigmtx_0_0_29_port, po => sigmtx_1_1_30_port, go 
                           => sigmtx_0_1_30_port);
   PGi_1_32 : PG_13 port map( p(1) => sigmtx_1_0_32_port, p(0) => 
                           sigmtx_1_0_31_port, g(1) => sigmtx_0_0_32_port, g(0)
                           => sigmtx_0_0_31_port, po => sigmtx_1_1_32_port, go 
                           => sigmtx_0_1_32_port);
   GGi_2_4 : GG_8 port map( p => sigmtx_1_1_4_port, g(1) => sigmtx_0_1_4_port, 
                           g(0) => sigmtx_0_1_2_port, go => n9);
   PGi_2_8 : PG_12 port map( p(1) => sigmtx_1_1_8_port, p(0) => 
                           sigmtx_1_1_6_port, g(1) => sigmtx_0_1_8_port, g(0) 
                           => sigmtx_0_1_6_port, po => sigmtx_1_2_8_port, go =>
                           sigmtx_0_2_8_port);
   PGi_2_12 : PG_11 port map( p(1) => sigmtx_1_1_12_port, p(0) => 
                           sigmtx_1_1_10_port, g(1) => sigmtx_0_1_12_port, g(0)
                           => sigmtx_0_1_10_port, po => sigmtx_1_2_12_port, go 
                           => sigmtx_0_2_12_port);
   PGi_2_16 : PG_10 port map( p(1) => sigmtx_1_1_16_port, p(0) => 
                           sigmtx_1_1_14_port, g(1) => sigmtx_0_1_16_port, g(0)
                           => sigmtx_0_1_14_port, po => sigmtx_1_2_16_port, go 
                           => sigmtx_0_2_16_port);
   PGi_2_20 : PG_9 port map( p(1) => sigmtx_1_1_20_port, p(0) => 
                           sigmtx_1_1_18_port, g(1) => sigmtx_0_1_20_port, g(0)
                           => sigmtx_0_1_18_port, po => sigmtx_1_2_20_port, go 
                           => sigmtx_0_2_20_port);
   PGi_2_24 : PG_8 port map( p(1) => sigmtx_1_1_24_port, p(0) => 
                           sigmtx_1_1_22_port, g(1) => sigmtx_0_1_24_port, g(0)
                           => sigmtx_0_1_22_port, po => sigmtx_1_2_24_port, go 
                           => sigmtx_0_2_24_port);
   PGi_2_28 : PG_7 port map( p(1) => sigmtx_1_1_28_port, p(0) => 
                           sigmtx_1_1_26_port, g(1) => sigmtx_0_1_28_port, g(0)
                           => sigmtx_0_1_26_port, po => sigmtx_1_2_28_port, go 
                           => sigmtx_0_2_28_port);
   PGi_2_32 : PG_6 port map( p(1) => sigmtx_1_1_32_port, p(0) => 
                           sigmtx_1_1_30_port, g(1) => sigmtx_0_1_32_port, g(0)
                           => sigmtx_0_1_30_port, po => sigmtx_1_2_32_port, go 
                           => sigmtx_0_2_32_port);
   GGi_3_8 : GG_7 port map( p => sigmtx_1_2_8_port, g(1) => sigmtx_0_2_8_port, 
                           g(0) => n9, go => n8);
   PGi_3_16 : PG_5 port map( p(1) => sigmtx_1_2_16_port, p(0) => 
                           sigmtx_1_2_12_port, g(1) => sigmtx_0_2_16_port, g(0)
                           => sigmtx_0_2_12_port, po => sigmtx_1_3_16_port, go 
                           => sigmtx_0_3_16_port);
   PGi_3_24 : PG_4 port map( p(1) => sigmtx_1_2_24_port, p(0) => 
                           sigmtx_1_2_20_port, g(1) => sigmtx_0_2_24_port, g(0)
                           => sigmtx_0_2_20_port, po => sigmtx_1_3_24_port, go 
                           => sigmtx_0_3_24_port);
   PGi_3_32 : PG_3 port map( p(1) => sigmtx_1_2_32_port, p(0) => 
                           sigmtx_1_2_28_port, g(1) => sigmtx_0_2_32_port, g(0)
                           => sigmtx_0_2_28_port, po => sigmtx_1_3_32_port, go 
                           => sigmtx_0_3_32_port);
   GGi_4_12 : GG_6 port map( p => sigmtx_1_2_12_port, g(1) => n3, g(0) => n6, 
                           go => Co_2_port);
   GGi_4_16 : GG_5 port map( p => sigmtx_1_3_16_port, g(1) => 
                           sigmtx_0_3_16_port, g(0) => n8, go => n7);
   PGi_4_28 : PG_2 port map( p(1) => sigmtx_1_2_28_port, p(0) => 
                           sigmtx_1_3_24_port, g(1) => sigmtx_0_2_28_port, g(0)
                           => sigmtx_0_3_24_port, po => sigmtx_1_4_28_port, go 
                           => sigmtx_0_4_28_port);
   PGi_4_32 : PG_1 port map( p(1) => sigmtx_1_3_32_port, p(0) => 
                           sigmtx_1_3_24_port, g(1) => sigmtx_0_3_32_port, g(0)
                           => n4, po => sigmtx_1_4_32_port, go => 
                           sigmtx_0_4_32_port);
   GGi_5_20 : GG_4 port map( p => sigmtx_1_2_20_port, g(1) => 
                           sigmtx_0_2_20_port, g(0) => n7, go => Co_4_port);
   GGi_5_24 : GG_3 port map( p => sigmtx_1_3_24_port, g(1) => n4, g(0) => n7, 
                           go => Co_5_port);
   GGi_5_28 : GG_2 port map( p => sigmtx_1_4_28_port, g(1) => 
                           sigmtx_0_4_28_port, g(0) => n7, go => Co_6_port);
   GGi_5_32 : GG_1 port map( p => sigmtx_1_4_32_port, g(1) => 
                           sigmtx_0_4_32_port, g(0) => Co_3_port, go => 
                           Co_7_port);
   U1 : BUF_X1 port map( A => n6, Z => Co_1_port);
   U2 : BUF_X1 port map( A => n7, Z => Co_3_port);
   U3 : BUF_X1 port map( A => n8, Z => n6);
   U4 : CLKBUF_X1 port map( A => sigmtx_0_2_12_port, Z => n3);
   U5 : CLKBUF_X1 port map( A => sigmtx_0_3_24_port, Z => n4);
   U6 : CLKBUF_X1 port map( A => n9, Z => Co_0_port);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32.all;

entity P4_ADDER_NBIT32 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end P4_ADDER_NBIT32;

architecture SYN_structural of P4_ADDER_NBIT32 is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component sum_generator_NBIT_PER_BLOCK4_NBLOCKS8
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector
            (7 downto 0);  S : out std_logic_vector (31 downto 0));
   end component;
   
   component CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal X_Logic0_port, carry_sum_7_port, carry_sum_6_port, carry_sum_5_port, 
      carry_sum_4_port, carry_sum_3_port, carry_sum_2_port, carry_sum_1_port, 
      n1, n2, n3, n4, n5, n6, n7 : std_logic;

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
                           A(15) => n7, A(14) => A(14), A(13) => n1, A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => n2, 
                           A(8) => A(8), A(7) => n4, A(6) => A(6), A(5) => n3, 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => n6, B(14) 
                           => B(14), B(13) => B(13), B(12) => B(12), B(11) => 
                           B(11), B(10) => B(10), B(9) => B(9), B(8) => B(8), 
                           B(7) => n5, B(6) => B(6), B(5) => B(5), B(4) => B(4)
                           , B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0) => 
                           B(0), Ci(7) => carry_sum_7_port, Ci(6) => 
                           carry_sum_6_port, Ci(5) => carry_sum_5_port, Ci(4) 
                           => carry_sum_4_port, Ci(3) => carry_sum_3_port, 
                           Ci(2) => carry_sum_2_port, Ci(1) => carry_sum_1_port
                           , Ci(0) => X_Logic0_port, S(31) => S(31), S(30) => 
                           S(30), S(29) => S(29), S(28) => S(28), S(27) => 
                           S(27), S(26) => S(26), S(25) => S(25), S(24) => 
                           S(24), S(23) => S(23), S(22) => S(22), S(21) => 
                           S(21), S(20) => S(20), S(19) => S(19), S(18) => 
                           S(18), S(17) => S(17), S(16) => S(16), S(15) => 
                           S(15), S(14) => S(14), S(13) => S(13), S(12) => 
                           S(12), S(11) => S(11), S(10) => S(10), S(9) => S(9),
                           S(8) => S(8), S(7) => S(7), S(6) => S(6), S(5) => 
                           S(5), S(4) => S(4), S(3) => S(3), S(2) => S(2), S(1)
                           => S(1), S(0) => S(0));
   X_Logic0_port <= '0';
   U2 : BUF_X1 port map( A => A(9), Z => n2);
   U3 : BUF_X1 port map( A => A(5), Z => n3);
   U4 : BUF_X1 port map( A => A(13), Z => n1);
   U5 : BUF_X1 port map( A => A(7), Z => n4);
   U6 : BUF_X1 port map( A => B(7), Z => n5);
   U7 : BUF_X1 port map( A => B(15), Z => n6);
   U8 : BUF_X1 port map( A => A(15), Z => n7);

end SYN_structural;
