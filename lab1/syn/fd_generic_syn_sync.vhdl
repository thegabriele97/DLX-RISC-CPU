
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD_GENERIC_NBIT16_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD_GENERIC_NBIT16_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT16_1.all;

entity FD_GENERIC_NBIT16_1 is

   port( D : in std_logic_vector (15 downto 0);  CK, RESET, ENABLE : in 
         std_logic;  Q : out std_logic_vector (15 downto 0));

end FD_GENERIC_NBIT16_1;

architecture SYN_PLUTO_GENERIC of FD_GENERIC_NBIT16_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Q_15_port, Q_14_port, Q_13_port, Q_12_port, Q_11_port, Q_10_port, 
      Q_9_port, Q_8_port, Q_7_port, Q_6_port, Q_5_port, Q_4_port, Q_3_port, 
      Q_2_port, Q_1_port, Q_0_port, n33, n34, n35, n36, n37, n38, n39, n40, n41
      , n42, n43, n44, n45, n46, n47, n48, n49, n_1000, n_1001, n_1002, n_1003,
      n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, 
      n_1013, n_1014, n_1015 : std_logic;

begin
   Q <= ( Q_15_port, Q_14_port, Q_13_port, Q_12_port, Q_11_port, Q_10_port, 
      Q_9_port, Q_8_port, Q_7_port, Q_6_port, Q_5_port, Q_4_port, Q_3_port, 
      Q_2_port, Q_1_port, Q_0_port );
   
   Q_reg_15_inst : DFFR_X1 port map( D => n49, CK => CK, RN => n33, Q => 
                           Q_15_port, QN => n_1000);
   Q_reg_14_inst : DFFR_X1 port map( D => n48, CK => CK, RN => n33, Q => 
                           Q_14_port, QN => n_1001);
   Q_reg_13_inst : DFFR_X1 port map( D => n47, CK => CK, RN => n33, Q => 
                           Q_13_port, QN => n_1002);
   Q_reg_12_inst : DFFR_X1 port map( D => n46, CK => CK, RN => n33, Q => 
                           Q_12_port, QN => n_1003);
   Q_reg_11_inst : DFFR_X1 port map( D => n45, CK => CK, RN => n33, Q => 
                           Q_11_port, QN => n_1004);
   Q_reg_10_inst : DFFR_X1 port map( D => n44, CK => CK, RN => n33, Q => 
                           Q_10_port, QN => n_1005);
   Q_reg_9_inst : DFFR_X1 port map( D => n43, CK => CK, RN => n33, Q => 
                           Q_9_port, QN => n_1006);
   Q_reg_8_inst : DFFR_X1 port map( D => n42, CK => CK, RN => n33, Q => 
                           Q_8_port, QN => n_1007);
   Q_reg_7_inst : DFFR_X1 port map( D => n41, CK => CK, RN => n33, Q => 
                           Q_7_port, QN => n_1008);
   Q_reg_6_inst : DFFR_X1 port map( D => n40, CK => CK, RN => n33, Q => 
                           Q_6_port, QN => n_1009);
   Q_reg_5_inst : DFFR_X1 port map( D => n39, CK => CK, RN => n33, Q => 
                           Q_5_port, QN => n_1010);
   Q_reg_4_inst : DFFR_X1 port map( D => n38, CK => CK, RN => n33, Q => 
                           Q_4_port, QN => n_1011);
   Q_reg_3_inst : DFFR_X1 port map( D => n37, CK => CK, RN => n33, Q => 
                           Q_3_port, QN => n_1012);
   Q_reg_2_inst : DFFR_X1 port map( D => n36, CK => CK, RN => n33, Q => 
                           Q_2_port, QN => n_1013);
   Q_reg_1_inst : DFFR_X1 port map( D => n35, CK => CK, RN => n33, Q => 
                           Q_1_port, QN => n_1014);
   Q_reg_0_inst : DFFR_X1 port map( D => n34, CK => CK, RN => n33, Q => 
                           Q_0_port, QN => n_1015);
   U35 : MUX2_X1 port map( A => Q_15_port, B => D(15), S => ENABLE, Z => n49);
   U36 : MUX2_X1 port map( A => Q_14_port, B => D(14), S => ENABLE, Z => n48);
   U37 : MUX2_X1 port map( A => Q_13_port, B => D(13), S => ENABLE, Z => n47);
   U38 : MUX2_X1 port map( A => Q_12_port, B => D(12), S => ENABLE, Z => n46);
   U39 : MUX2_X1 port map( A => Q_11_port, B => D(11), S => ENABLE, Z => n45);
   U40 : MUX2_X1 port map( A => Q_10_port, B => D(10), S => ENABLE, Z => n44);
   U41 : MUX2_X1 port map( A => Q_9_port, B => D(9), S => ENABLE, Z => n43);
   U42 : MUX2_X1 port map( A => Q_8_port, B => D(8), S => ENABLE, Z => n42);
   U43 : MUX2_X1 port map( A => Q_7_port, B => D(7), S => ENABLE, Z => n41);
   U44 : MUX2_X1 port map( A => Q_6_port, B => D(6), S => ENABLE, Z => n40);
   U45 : MUX2_X1 port map( A => Q_5_port, B => D(5), S => ENABLE, Z => n39);
   U46 : MUX2_X1 port map( A => Q_4_port, B => D(4), S => ENABLE, Z => n38);
   U47 : MUX2_X1 port map( A => Q_3_port, B => D(3), S => ENABLE, Z => n37);
   U48 : MUX2_X1 port map( A => Q_2_port, B => D(2), S => ENABLE, Z => n36);
   U49 : MUX2_X1 port map( A => Q_1_port, B => D(1), S => ENABLE, Z => n35);
   U50 : MUX2_X1 port map( A => Q_0_port, B => D(0), S => ENABLE, Z => n34);
   U51 : INV_X1 port map( A => RESET, ZN => n33);

end SYN_PLUTO_GENERIC;
