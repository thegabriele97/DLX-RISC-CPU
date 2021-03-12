
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_reg_generic_NBIT16_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_reg_generic_NBIT16_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_31 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_31;

architecture SYN_PLUTO of FD_31 is

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

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_30 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_30;

architecture SYN_PLUTO of FD_30 is

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

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_29 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_29;

architecture SYN_PLUTO of FD_29 is

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

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_28 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_28;

architecture SYN_PLUTO of FD_28 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1003 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1003);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_27 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_27;

architecture SYN_PLUTO of FD_27 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1004 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1004);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_26 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_26;

architecture SYN_PLUTO of FD_26 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1005 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1005);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_25 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_25;

architecture SYN_PLUTO of FD_25 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1006 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1006);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_24 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_24;

architecture SYN_PLUTO of FD_24 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1007 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1007);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_23 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_23;

architecture SYN_PLUTO of FD_23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1008 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1008);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_22 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_22;

architecture SYN_PLUTO of FD_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1009 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1009);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_21 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_21;

architecture SYN_PLUTO of FD_21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1010 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1010);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_20 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_20;

architecture SYN_PLUTO of FD_20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1011 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1011);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_19 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_19;

architecture SYN_PLUTO of FD_19 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1012 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1012);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_18 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_18;

architecture SYN_PLUTO of FD_18 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1013 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1013);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_17 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_17;

architecture SYN_PLUTO of FD_17 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n1, n2, n_1014 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n1, CK => CK, RN => n2, Q => Q_port, QN => 
                           n_1014);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n1);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity FD_16 is

   port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);

end FD_16;

architecture SYN_PLUTO of FD_16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_port, n3, n4, n_1015 : std_logic;

begin
   Q <= Q_port;
   
   Q_reg : DFFR_X1 port map( D => n4, CK => CK, RN => n3, Q => Q_port, QN => 
                           n_1015);
   U2 : MUX2_X1 port map( A => Q_port, B => D, S => ENABLE, Z => n4);
   U3 : INV_X1 port map( A => RESET, ZN => n3);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_reg_generic_NBIT16_1.all;

entity reg_generic_NBIT16_1 is

   port( D : in std_logic_vector (15 downto 0);  CK, RESET, ENABLE : in 
         std_logic;  Q : out std_logic_vector (15 downto 0));

end reg_generic_NBIT16_1;

architecture SYN_structural_sync of reg_generic_NBIT16_1 is

   component FD_17
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_18
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_19
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_20
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_21
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_22
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_23
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_24
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_25
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_26
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_27
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_28
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_29
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_30
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_31
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_16
      port( D, CK, RESET, ENABLE : in std_logic;  Q : out std_logic);
   end component;

begin
   
   fdi1_0 : FD_16 port map( D => D(0), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(0));
   fdi1_1 : FD_31 port map( D => D(1), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(1));
   fdi1_2 : FD_30 port map( D => D(2), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(2));
   fdi1_3 : FD_29 port map( D => D(3), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(3));
   fdi1_4 : FD_28 port map( D => D(4), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(4));
   fdi1_5 : FD_27 port map( D => D(5), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(5));
   fdi1_6 : FD_26 port map( D => D(6), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(6));
   fdi1_7 : FD_25 port map( D => D(7), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(7));
   fdi1_8 : FD_24 port map( D => D(8), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(8));
   fdi1_9 : FD_23 port map( D => D(9), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(9));
   fdi1_10 : FD_22 port map( D => D(10), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(10));
   fdi1_11 : FD_21 port map( D => D(11), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(11));
   fdi1_12 : FD_20 port map( D => D(12), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(12));
   fdi1_13 : FD_19 port map( D => D(13), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(13));
   fdi1_14 : FD_18 port map( D => D(14), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(14));
   fdi1_15 : FD_17 port map( D => D(15), CK => CK, RESET => RESET, ENABLE => 
                           ENABLE, Q => Q(15));

end SYN_structural_sync;
