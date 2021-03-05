
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD_GENERIC_NBIT16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD_GENERIC_NBIT16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT16.all;

entity FD_GENERIC_NBIT16 is

   port( D : in std_logic_vector (15 downto 0);  CK, RESET : in std_logic;  Q :
         out std_logic_vector (15 downto 0));

end FD_GENERIC_NBIT16;

architecture SYN_PIPPO_GENERIC of FD_GENERIC_NBIT16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, 
      N18, n2, n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, n_1006, n_1007, 
      n_1008, n_1009, n_1010, n_1011, n_1012, n_1013, n_1014, n_1015 : 
      std_logic;

begin
   
   Q_reg_15_inst : DFF_X1 port map( D => N18, CK => CK, Q => Q(15), QN => 
                           n_1000);
   Q_reg_14_inst : DFF_X1 port map( D => N17, CK => CK, Q => Q(14), QN => 
                           n_1001);
   Q_reg_13_inst : DFF_X1 port map( D => N16, CK => CK, Q => Q(13), QN => 
                           n_1002);
   Q_reg_12_inst : DFF_X1 port map( D => N15, CK => CK, Q => Q(12), QN => 
                           n_1003);
   Q_reg_11_inst : DFF_X1 port map( D => N14, CK => CK, Q => Q(11), QN => 
                           n_1004);
   Q_reg_10_inst : DFF_X1 port map( D => N13, CK => CK, Q => Q(10), QN => 
                           n_1005);
   Q_reg_9_inst : DFF_X1 port map( D => N12, CK => CK, Q => Q(9), QN => n_1006)
                           ;
   Q_reg_8_inst : DFF_X1 port map( D => N11, CK => CK, Q => Q(8), QN => n_1007)
                           ;
   Q_reg_7_inst : DFF_X1 port map( D => N10, CK => CK, Q => Q(7), QN => n_1008)
                           ;
   Q_reg_6_inst : DFF_X1 port map( D => N9, CK => CK, Q => Q(6), QN => n_1009);
   Q_reg_5_inst : DFF_X1 port map( D => N8, CK => CK, Q => Q(5), QN => n_1010);
   Q_reg_4_inst : DFF_X1 port map( D => N7, CK => CK, Q => Q(4), QN => n_1011);
   Q_reg_3_inst : DFF_X1 port map( D => N6, CK => CK, Q => Q(3), QN => n_1012);
   Q_reg_2_inst : DFF_X1 port map( D => N5, CK => CK, Q => Q(2), QN => n_1013);
   Q_reg_1_inst : DFF_X1 port map( D => N4, CK => CK, Q => Q(1), QN => n_1014);
   Q_reg_0_inst : DFF_X1 port map( D => N3, CK => CK, Q => Q(0), QN => n_1015);
   U20 : AND2_X1 port map( A1 => D(6), A2 => n2, ZN => N9);
   U21 : AND2_X1 port map( A1 => D(5), A2 => n2, ZN => N8);
   U22 : AND2_X1 port map( A1 => D(4), A2 => n2, ZN => N7);
   U23 : AND2_X1 port map( A1 => D(3), A2 => n2, ZN => N6);
   U24 : AND2_X1 port map( A1 => D(2), A2 => n2, ZN => N5);
   U25 : AND2_X1 port map( A1 => D(1), A2 => n2, ZN => N4);
   U26 : AND2_X1 port map( A1 => D(0), A2 => n2, ZN => N3);
   U27 : AND2_X1 port map( A1 => D(15), A2 => n2, ZN => N18);
   U28 : AND2_X1 port map( A1 => D(14), A2 => n2, ZN => N17);
   U29 : AND2_X1 port map( A1 => D(13), A2 => n2, ZN => N16);
   U30 : AND2_X1 port map( A1 => D(12), A2 => n2, ZN => N15);
   U31 : AND2_X1 port map( A1 => D(11), A2 => n2, ZN => N14);
   U32 : AND2_X1 port map( A1 => D(10), A2 => n2, ZN => N13);
   U33 : AND2_X1 port map( A1 => D(9), A2 => n2, ZN => N12);
   U34 : AND2_X1 port map( A1 => D(8), A2 => n2, ZN => N11);
   U35 : AND2_X1 port map( A1 => D(7), A2 => n2, ZN => N10);
   U36 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PIPPO_GENERIC;
