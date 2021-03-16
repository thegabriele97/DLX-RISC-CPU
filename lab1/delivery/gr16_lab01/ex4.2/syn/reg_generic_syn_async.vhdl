
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

use work.CONV_PACK_reg_generic_NBIT4.all;

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

use work.CONV_PACK_reg_generic_NBIT4.all;

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

use work.CONV_PACK_reg_generic_NBIT4.all;

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

use work.CONV_PACK_reg_generic_NBIT4.all;

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
