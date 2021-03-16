
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_GENERIC_NBIT4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_GENERIC_NBIT4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity FD_3 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_3;

architecture SYN_PLUTO of FD_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1000 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1000);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity FD_2 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_2;

architecture SYN_PLUTO of FD_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1001 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1001);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity FD_1 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_PLUTO of FD_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1002 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1002);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity FD_0 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_0;

architecture SYN_PLUTO of FD_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n3, n4, n_1003 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n4, CK => CK, RN => n3, Q => Q_port, QN => 
                           n_1003);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n4);
   U3 : INV_X1 port map( A => RESET, ZN => n3);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity reg_generic_NBIT4 is

   port( D : in std_logic_vector (3 downto 0);  CK, RESET, ENABLE : in 
         std_logic;  Q : out std_logic_vector (3 downto 0));

end reg_generic_NBIT4;

architecture SYN_structural_async of reg_generic_NBIT4 is

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
   
   fdi2_0 : FD_0 port map( D => D(0), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(0));
   fdi2_1 : FD_3 port map( D => D(1), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(1));
   fdi2_2 : FD_2 port map( D => D(2), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(2));
   fdi2_3 : FD_1 port map( D => D(3), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(3));

end SYN_structural_async;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity rca_generic_nbit4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end rca_generic_nbit4;

architecture SYN_structural of rca_generic_nbit4 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
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

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

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

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity ACC_GENERIC_NBIT4 is

   port( A, B : in std_logic_vector (3 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (3 downto 0));

end ACC_GENERIC_NBIT4;

architecture SYN_structural of ACC_GENERIC_NBIT4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component reg_generic_NBIT4
      port( D : in std_logic_vector (3 downto 0);  CK, RESET, ENABLE : in 
            std_logic;  Q : out std_logic_vector (3 downto 0));
   end component;
   
   component rca_generic_nbit4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component mux21_generic_NBIT4
      port( a, b : in std_logic_vector (3 downto 0);  s : in std_logic;  y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   signal X_Logic0_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port, m1_3_port, 
      m1_2_port, m1_1_port, m1_0_port, out_add_3_port, out_add_2_port, 
      out_add_1_port, out_add_0_port, n1, n2, n_1004 : std_logic;

begin
   Y <= ( Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   mux1 : mux21_generic_NBIT4 port map( a(3) => Y_3_port, a(2) => Y_2_port, 
                           a(1) => Y_1_port, a(0) => Y_0_port, b(3) => B(3), 
                           b(2) => B(2), b(1) => B(1), b(0) => B(0), s => 
                           ACCUMULATE, y(3) => m1_3_port, y(2) => m1_2_port, 
                           y(1) => m1_1_port, y(0) => m1_0_port);
   add1 : rca_generic_nbit4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1),
                           A(0) => A(0), B(3) => m1_3_port, B(2) => m1_2_port, 
                           B(1) => m1_1_port, B(0) => m1_0_port, Ci => 
                           X_Logic0_port, S(3) => out_add_3_port, S(2) => 
                           out_add_2_port, S(1) => out_add_1_port, S(0) => 
                           out_add_0_port, Co => n_1004);
   reg : reg_generic_NBIT4 port map( D(3) => out_add_3_port, D(2) => 
                           out_add_2_port, D(1) => out_add_1_port, D(0) => 
                           out_add_0_port, CK => CLK, RESET => n1, ENABLE => n2
                           , Q(3) => Y_3_port, Q(2) => Y_2_port, Q(1) => 
                           Y_1_port, Q(0) => Y_0_port);
   X_Logic0_port <= '0';
   U4 : INV_X1 port map( A => ACC_EN_n, ZN => n2);
   U5 : INV_X1 port map( A => RST_n, ZN => n1);

end SYN_structural;
