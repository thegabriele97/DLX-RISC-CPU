
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_mux21_generic_NBIT4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_mux21_generic_NBIT4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_11 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_11;

architecture SYN_arch1 of nd2_11 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_10 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_10;

architecture SYN_arch1 of nd2_10 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_9 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_9;

architecture SYN_arch1 of nd2_9 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_8 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_8;

architecture SYN_arch1 of nd2_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_7 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_7;

architecture SYN_arch1 of nd2_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_6 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_6;

architecture SYN_arch1 of nd2_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_5 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_5;

architecture SYN_arch1 of nd2_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_4 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_4;

architecture SYN_arch1 of nd2_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_3 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_3;

architecture SYN_arch1 of nd2_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_2 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_2;

architecture SYN_arch1 of nd2_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_1 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_1;

architecture SYN_arch1 of nd2_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity iv_3 is

   port( a : in std_logic;  y : out std_logic);

end iv_3;

architecture SYN_behavioural of iv_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => a, ZN => y);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity iv_2 is

   port( a : in std_logic;  y : out std_logic);

end iv_2;

architecture SYN_behavioural of iv_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => a, ZN => y);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity iv_1 is

   port( a : in std_logic;  y : out std_logic);

end iv_1;

architecture SYN_behavioural of iv_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => a, ZN => y);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_generic_NBIT4_2 is

   port( a, b : in std_logic_vector (3 downto 0);  y : out std_logic_vector (3 
         downto 0));

end nd2_generic_NBIT4_2;

architecture SYN_structural of nd2_generic_NBIT4_2 is

   component nd2_5
      port( a, b : in std_logic;  y : out std_logic);
   end component;
   
   component nd2_6
      port( a, b : in std_logic;  y : out std_logic);
   end component;
   
   component nd2_7
      port( a, b : in std_logic;  y : out std_logic);
   end component;
   
   component nd2_8
      port( a, b : in std_logic;  y : out std_logic);
   end component;

begin
   
   ndi_0 : nd2_8 port map( a => a(0), b => b(0), y => y(0));
   ndi_1 : nd2_7 port map( a => a(1), b => b(1), y => y(1));
   ndi_2 : nd2_6 port map( a => a(2), b => b(2), y => y(2));
   ndi_3 : nd2_5 port map( a => a(3), b => b(3), y => y(3));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_generic_NBIT4_1 is

   port( a, b : in std_logic_vector (3 downto 0);  y : out std_logic_vector (3 
         downto 0));

end nd2_generic_NBIT4_1;

architecture SYN_structural of nd2_generic_NBIT4_1 is

   component nd2_1
      port( a, b : in std_logic;  y : out std_logic);
   end component;
   
   component nd2_2
      port( a, b : in std_logic;  y : out std_logic);
   end component;
   
   component nd2_3
      port( a, b : in std_logic;  y : out std_logic);
   end component;
   
   component nd2_4
      port( a, b : in std_logic;  y : out std_logic);
   end component;

begin
   
   ndi_0 : nd2_4 port map( a => a(0), b => b(0), y => y(0));
   ndi_1 : nd2_3 port map( a => a(1), b => b(1), y => y(1));
   ndi_2 : nd2_2 port map( a => a(2), b => b(2), y => y(2));
   ndi_3 : nd2_1 port map( a => a(3), b => b(3), y => y(3));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_0 is

   port( a, b : in std_logic;  y : out std_logic);

end nd2_0;

architecture SYN_arch1 of nd2_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => b, A2 => a, ZN => y);

end SYN_arch1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity iv_0 is

   port( a : in std_logic;  y : out std_logic);

end iv_0;

architecture SYN_behavioural of iv_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => a, ZN => y);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity nd2_generic_NBIT4_0 is

   port( a, b : in std_logic_vector (3 downto 0);  y : out std_logic_vector (3 
         downto 0));

end nd2_generic_NBIT4_0;

architecture SYN_structural of nd2_generic_NBIT4_0 is

   component nd2_9
      port( a, b : in std_logic;  y : out std_logic);
   end component;
   
   component nd2_10
      port( a, b : in std_logic;  y : out std_logic);
   end component;
   
   component nd2_11
      port( a, b : in std_logic;  y : out std_logic);
   end component;
   
   component nd2_0
      port( a, b : in std_logic;  y : out std_logic);
   end component;

begin
   
   ndi_0 : nd2_0 port map( a => a(0), b => b(0), y => y(0));
   ndi_1 : nd2_11 port map( a => a(1), b => b(1), y => y(1));
   ndi_2 : nd2_10 port map( a => a(2), b => b(2), y => y(2));
   ndi_3 : nd2_9 port map( a => a(3), b => b(3), y => y(3));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity iv_generic_NBIT4 is

   port( a : in std_logic_vector (3 downto 0);  y : out std_logic_vector (3 
         downto 0));

end iv_generic_NBIT4;

architecture SYN_structural of iv_generic_NBIT4 is

   component iv_1
      port( a : in std_logic;  y : out std_logic);
   end component;
   
   component iv_2
      port( a : in std_logic;  y : out std_logic);
   end component;
   
   component iv_3
      port( a : in std_logic;  y : out std_logic);
   end component;
   
   component iv_0
      port( a : in std_logic;  y : out std_logic);
   end component;

begin
   
   ivi_0 : iv_0 port map( a => a(0), y => y(0));
   ivi_1 : iv_3 port map( a => a(1), y => y(1));
   ivi_2 : iv_2 port map( a => a(2), y => y(2));
   ivi_3 : iv_1 port map( a => a(3), y => y(3));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_mux21_generic_NBIT4.all;

entity mux21_generic_NBIT4 is

   port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : out 
         std_logic_vector (3 downto 0));

end mux21_generic_NBIT4;

architecture SYN_structural of mux21_generic_NBIT4 is

   component nd2_generic_NBIT4_1
      port( a, b : in std_logic_vector (3 downto 0);  y : out std_logic_vector 
            (3 downto 0));
   end component;
   
   component nd2_generic_NBIT4_2
      port( a, b : in std_logic_vector (3 downto 0);  y : out std_logic_vector 
            (3 downto 0));
   end component;
   
   component nd2_generic_NBIT4_0
      port( a, b : in std_logic_vector (3 downto 0);  y : out std_logic_vector 
            (3 downto 0));
   end component;
   
   component iv_generic_NBIT4
      port( a : in std_logic_vector (3 downto 0);  y : out std_logic_vector (3 
            downto 0));
   end component;
   
   signal sb_3_port, sb_2_port, sb_1_port, sb_0_port, y1_3_port, y1_2_port, 
      y1_1_port, y1_0_port, y2_3_port, y2_2_port, y2_1_port, y2_0_port : 
      std_logic;

begin
   
   UIV : iv_generic_NBIT4 port map( a(3) => s, a(2) => s, a(1) => s, a(0) => s,
                           y(3) => sb_3_port, y(2) => sb_2_port, y(1) => 
                           sb_1_port, y(0) => sb_0_port);
   UND1 : nd2_generic_NBIT4_0 port map( a(3) => a(3), a(2) => a(2), a(1) => 
                           a(1), a(0) => a(0), b(3) => s, b(2) => s, b(1) => s,
                           b(0) => s, y(3) => y1_3_port, y(2) => y1_2_port, 
                           y(1) => y1_1_port, y(0) => y1_0_port);
   UND2 : nd2_generic_NBIT4_2 port map( a(3) => b(3), a(2) => b(2), a(1) => 
                           b(1), a(0) => b(0), b(3) => sb_3_port, b(2) => 
                           sb_2_port, b(1) => sb_1_port, b(0) => sb_0_port, 
                           y(3) => y2_3_port, y(2) => y2_2_port, y(1) => 
                           y2_1_port, y(0) => y2_0_port);
   UND3 : nd2_generic_NBIT4_1 port map( a(3) => y1_3_port, a(2) => y1_2_port, 
                           a(1) => y1_1_port, a(0) => y1_0_port, b(3) => 
                           y2_3_port, b(2) => y2_2_port, b(1) => y2_1_port, 
                           b(0) => y2_0_port, y(3) => y(3), y(2) => y(2), y(1) 
                           => y(1), y(0) => y(0));

end SYN_structural;
