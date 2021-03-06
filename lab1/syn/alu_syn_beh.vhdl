
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU_N16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU_N16;

package body CONV_PACK_ALU_N16 is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU_N16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N16.all;

entity ALU_N16_DW01_add_0 is

   port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (13 downto 0);  CO : out std_logic);

end ALU_N16_DW01_add_0;

architecture SYN_cla of ALU_N16_DW01_add_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12
      , n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26 : 
      std_logic;

begin
   SUM <= ( SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, A(6), A(5), A(4), A(3), A(2), A(1), A(0) );
   
   U2 : INV_X1 port map( A => n20, ZN => n2);
   U3 : INV_X1 port map( A => n9, ZN => n4);
   U4 : INV_X1 port map( A => n22, ZN => n3);
   U5 : INV_X1 port map( A => n14, ZN => n1);
   U6 : INV_X1 port map( A => n12, ZN => n5);
   U7 : NAND2_X1 port map( A1 => A(7), A2 => B(7), ZN => n26);
   U8 : XOR2_X1 port map( A => n6, B => n7, Z => SUM_9_port);
   U9 : NOR2_X1 port map( A1 => n8, A2 => n9, ZN => n7);
   U10 : XOR2_X1 port map( A => n10, B => n26, Z => SUM_8_port);
   U11 : NAND2_X1 port map( A1 => n5, A2 => n11, ZN => n10);
   U12 : XOR2_X1 port map( A => B(7), B => A(7), Z => SUM_7_port);
   U13 : XOR2_X1 port map( A => n13, B => B(13), Z => SUM_13_port);
   U14 : OAI21_X1 port map( B1 => n14, B2 => n15, A => n16, ZN => n13);
   U15 : XOR2_X1 port map( A => n17, B => n15, Z => SUM_12_port);
   U16 : AOI21_X1 port map( B1 => n2, B2 => n18, A => n19, ZN => n15);
   U17 : NAND2_X1 port map( A1 => n1, A2 => n16, ZN => n17);
   U18 : NAND2_X1 port map( A1 => B(12), A2 => A(12), ZN => n16);
   U19 : NOR2_X1 port map( A1 => B(12), A2 => A(12), ZN => n14);
   U20 : XOR2_X1 port map( A => n18, B => n21, Z => SUM_11_port);
   U21 : NOR2_X1 port map( A1 => n19, A2 => n20, ZN => n21);
   U22 : NOR2_X1 port map( A1 => B(11), A2 => A(11), ZN => n20);
   U23 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => n19);
   U24 : OAI21_X1 port map( B1 => n22, B2 => n23, A => n24, ZN => n18);
   U25 : XOR2_X1 port map( A => n25, B => n23, Z => SUM_10_port);
   U26 : AOI21_X1 port map( B1 => n6, B2 => n4, A => n8, ZN => n23);
   U27 : AND2_X1 port map( A1 => B(9), A2 => A(9), ZN => n8);
   U28 : NOR2_X1 port map( A1 => B(9), A2 => A(9), ZN => n9);
   U29 : OAI21_X1 port map( B1 => n26, B2 => n12, A => n11, ZN => n6);
   U30 : NAND2_X1 port map( A1 => B(8), A2 => A(8), ZN => n11);
   U31 : NOR2_X1 port map( A1 => B(8), A2 => A(8), ZN => n12);
   U32 : NAND2_X1 port map( A1 => n3, A2 => n24, ZN => n25);
   U33 : NAND2_X1 port map( A1 => B(10), A2 => A(10), ZN => n24);
   U34 : NOR2_X1 port map( A1 => B(10), A2 => A(10), ZN => n22);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N16.all;

entity ALU_N16_DW02_mult_0 is

   port( A, B : in std_logic_vector (7 downto 0);  TC : in std_logic;  PRODUCT 
         : out std_logic_vector (15 downto 0));

end ALU_N16_DW02_mult_0;

architecture SYN_csa of ALU_N16_DW02_mult_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component ALU_N16_DW01_add_0
      port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (13 downto 0);  CO : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal X_Logic0_port, ab_7_7_port, ab_7_6_port, ab_7_5_port, ab_7_4_port, 
      ab_7_3_port, ab_7_2_port, ab_7_1_port, ab_7_0_port, ab_6_7_port, 
      ab_6_6_port, ab_6_5_port, ab_6_4_port, ab_6_3_port, ab_6_2_port, 
      ab_6_1_port, ab_6_0_port, ab_5_7_port, ab_5_6_port, ab_5_5_port, 
      ab_5_4_port, ab_5_3_port, ab_5_2_port, ab_5_1_port, ab_5_0_port, 
      ab_4_7_port, ab_4_6_port, ab_4_5_port, ab_4_4_port, ab_4_3_port, 
      ab_4_2_port, ab_4_1_port, ab_4_0_port, ab_3_7_port, ab_3_6_port, 
      ab_3_5_port, ab_3_4_port, ab_3_3_port, ab_3_2_port, ab_3_1_port, 
      ab_3_0_port, ab_2_7_port, ab_2_6_port, ab_2_5_port, ab_2_4_port, 
      ab_2_3_port, ab_2_2_port, ab_2_1_port, ab_2_0_port, ab_1_7_port, 
      ab_1_6_port, ab_1_5_port, ab_1_4_port, ab_1_3_port, ab_1_2_port, 
      ab_1_1_port, ab_1_0_port, ab_0_7_port, ab_0_6_port, ab_0_5_port, 
      ab_0_4_port, ab_0_3_port, ab_0_2_port, ab_0_1_port, CARRYB_7_6_port, 
      CARRYB_7_5_port, CARRYB_7_4_port, CARRYB_7_3_port, CARRYB_7_2_port, 
      CARRYB_7_1_port, CARRYB_7_0_port, CARRYB_6_6_port, CARRYB_6_5_port, 
      CARRYB_6_4_port, CARRYB_6_3_port, CARRYB_6_2_port, CARRYB_6_1_port, 
      CARRYB_6_0_port, CARRYB_5_6_port, CARRYB_5_5_port, CARRYB_5_4_port, 
      CARRYB_5_3_port, CARRYB_5_2_port, CARRYB_5_1_port, CARRYB_5_0_port, 
      CARRYB_4_6_port, CARRYB_4_5_port, CARRYB_4_4_port, CARRYB_4_3_port, 
      CARRYB_4_2_port, CARRYB_4_1_port, CARRYB_4_0_port, CARRYB_3_6_port, 
      CARRYB_3_5_port, CARRYB_3_4_port, CARRYB_3_3_port, CARRYB_3_2_port, 
      CARRYB_3_1_port, CARRYB_3_0_port, CARRYB_2_6_port, CARRYB_2_5_port, 
      CARRYB_2_4_port, CARRYB_2_3_port, CARRYB_2_2_port, CARRYB_2_1_port, 
      CARRYB_2_0_port, SUMB_7_6_port, SUMB_7_5_port, SUMB_7_4_port, 
      SUMB_7_3_port, SUMB_7_2_port, SUMB_7_1_port, SUMB_7_0_port, SUMB_6_6_port
      , SUMB_6_5_port, SUMB_6_4_port, SUMB_6_3_port, SUMB_6_2_port, 
      SUMB_6_1_port, SUMB_5_6_port, SUMB_5_5_port, SUMB_5_4_port, SUMB_5_3_port
      , SUMB_5_2_port, SUMB_5_1_port, SUMB_4_6_port, SUMB_4_5_port, 
      SUMB_4_4_port, SUMB_4_3_port, SUMB_4_2_port, SUMB_4_1_port, SUMB_3_6_port
      , SUMB_3_5_port, SUMB_3_4_port, SUMB_3_3_port, SUMB_3_2_port, 
      SUMB_3_1_port, SUMB_2_6_port, SUMB_2_5_port, SUMB_2_4_port, SUMB_2_3_port
      , SUMB_2_2_port, SUMB_2_1_port, A1_4_port, A1_3_port, A1_2_port, 
      A1_1_port, A1_0_port, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14
      , n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n28, n29, 
      n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44
      , n45, n46, n47, n48, n_1011 : std_logic;

begin
   
   X_Logic0_port <= '0';
   S4_0 : FA_X1 port map( A => ab_7_0_port, B => CARRYB_6_0_port, CI => 
                           SUMB_6_1_port, CO => CARRYB_7_0_port, S => 
                           SUMB_7_0_port);
   S4_1 : FA_X1 port map( A => ab_7_1_port, B => CARRYB_6_1_port, CI => 
                           SUMB_6_2_port, CO => CARRYB_7_1_port, S => 
                           SUMB_7_1_port);
   S4_2 : FA_X1 port map( A => ab_7_2_port, B => CARRYB_6_2_port, CI => 
                           SUMB_6_3_port, CO => CARRYB_7_2_port, S => 
                           SUMB_7_2_port);
   S4_3 : FA_X1 port map( A => ab_7_3_port, B => CARRYB_6_3_port, CI => 
                           SUMB_6_4_port, CO => CARRYB_7_3_port, S => 
                           SUMB_7_3_port);
   S4_4 : FA_X1 port map( A => ab_7_4_port, B => CARRYB_6_4_port, CI => 
                           SUMB_6_5_port, CO => CARRYB_7_4_port, S => 
                           SUMB_7_4_port);
   S4_5 : FA_X1 port map( A => ab_7_5_port, B => CARRYB_6_5_port, CI => 
                           SUMB_6_6_port, CO => CARRYB_7_5_port, S => 
                           SUMB_7_5_port);
   S5_6 : FA_X1 port map( A => ab_7_6_port, B => CARRYB_6_6_port, CI => 
                           ab_6_7_port, CO => CARRYB_7_6_port, S => 
                           SUMB_7_6_port);
   S1_6_0 : FA_X1 port map( A => ab_6_0_port, B => CARRYB_5_0_port, CI => 
                           SUMB_5_1_port, CO => CARRYB_6_0_port, S => A1_4_port
                           );
   S2_6_1 : FA_X1 port map( A => ab_6_1_port, B => CARRYB_5_1_port, CI => 
                           SUMB_5_2_port, CO => CARRYB_6_1_port, S => 
                           SUMB_6_1_port);
   S2_6_2 : FA_X1 port map( A => ab_6_2_port, B => CARRYB_5_2_port, CI => 
                           SUMB_5_3_port, CO => CARRYB_6_2_port, S => 
                           SUMB_6_2_port);
   S2_6_3 : FA_X1 port map( A => ab_6_3_port, B => CARRYB_5_3_port, CI => 
                           SUMB_5_4_port, CO => CARRYB_6_3_port, S => 
                           SUMB_6_3_port);
   S2_6_4 : FA_X1 port map( A => ab_6_4_port, B => CARRYB_5_4_port, CI => 
                           SUMB_5_5_port, CO => CARRYB_6_4_port, S => 
                           SUMB_6_4_port);
   S2_6_5 : FA_X1 port map( A => ab_6_5_port, B => CARRYB_5_5_port, CI => 
                           SUMB_5_6_port, CO => CARRYB_6_5_port, S => 
                           SUMB_6_5_port);
   S3_6_6 : FA_X1 port map( A => ab_6_6_port, B => CARRYB_5_6_port, CI => 
                           ab_5_7_port, CO => CARRYB_6_6_port, S => 
                           SUMB_6_6_port);
   S1_5_0 : FA_X1 port map( A => ab_5_0_port, B => CARRYB_4_0_port, CI => 
                           SUMB_4_1_port, CO => CARRYB_5_0_port, S => A1_3_port
                           );
   S2_5_1 : FA_X1 port map( A => ab_5_1_port, B => CARRYB_4_1_port, CI => 
                           SUMB_4_2_port, CO => CARRYB_5_1_port, S => 
                           SUMB_5_1_port);
   S2_5_2 : FA_X1 port map( A => ab_5_2_port, B => CARRYB_4_2_port, CI => 
                           SUMB_4_3_port, CO => CARRYB_5_2_port, S => 
                           SUMB_5_2_port);
   S2_5_3 : FA_X1 port map( A => ab_5_3_port, B => CARRYB_4_3_port, CI => 
                           SUMB_4_4_port, CO => CARRYB_5_3_port, S => 
                           SUMB_5_3_port);
   S2_5_4 : FA_X1 port map( A => ab_5_4_port, B => CARRYB_4_4_port, CI => 
                           SUMB_4_5_port, CO => CARRYB_5_4_port, S => 
                           SUMB_5_4_port);
   S2_5_5 : FA_X1 port map( A => ab_5_5_port, B => CARRYB_4_5_port, CI => 
                           SUMB_4_6_port, CO => CARRYB_5_5_port, S => 
                           SUMB_5_5_port);
   S3_5_6 : FA_X1 port map( A => ab_5_6_port, B => CARRYB_4_6_port, CI => 
                           ab_4_7_port, CO => CARRYB_5_6_port, S => 
                           SUMB_5_6_port);
   S1_4_0 : FA_X1 port map( A => ab_4_0_port, B => CARRYB_3_0_port, CI => 
                           SUMB_3_1_port, CO => CARRYB_4_0_port, S => A1_2_port
                           );
   S2_4_1 : FA_X1 port map( A => ab_4_1_port, B => CARRYB_3_1_port, CI => 
                           SUMB_3_2_port, CO => CARRYB_4_1_port, S => 
                           SUMB_4_1_port);
   S2_4_2 : FA_X1 port map( A => ab_4_2_port, B => CARRYB_3_2_port, CI => 
                           SUMB_3_3_port, CO => CARRYB_4_2_port, S => 
                           SUMB_4_2_port);
   S2_4_3 : FA_X1 port map( A => ab_4_3_port, B => CARRYB_3_3_port, CI => 
                           SUMB_3_4_port, CO => CARRYB_4_3_port, S => 
                           SUMB_4_3_port);
   S2_4_4 : FA_X1 port map( A => ab_4_4_port, B => CARRYB_3_4_port, CI => 
                           SUMB_3_5_port, CO => CARRYB_4_4_port, S => 
                           SUMB_4_4_port);
   S2_4_5 : FA_X1 port map( A => ab_4_5_port, B => CARRYB_3_5_port, CI => 
                           SUMB_3_6_port, CO => CARRYB_4_5_port, S => 
                           SUMB_4_5_port);
   S3_4_6 : FA_X1 port map( A => ab_4_6_port, B => CARRYB_3_6_port, CI => 
                           ab_3_7_port, CO => CARRYB_4_6_port, S => 
                           SUMB_4_6_port);
   S1_3_0 : FA_X1 port map( A => ab_3_0_port, B => CARRYB_2_0_port, CI => 
                           SUMB_2_1_port, CO => CARRYB_3_0_port, S => A1_1_port
                           );
   S2_3_1 : FA_X1 port map( A => ab_3_1_port, B => CARRYB_2_1_port, CI => 
                           SUMB_2_2_port, CO => CARRYB_3_1_port, S => 
                           SUMB_3_1_port);
   S2_3_2 : FA_X1 port map( A => ab_3_2_port, B => CARRYB_2_2_port, CI => 
                           SUMB_2_3_port, CO => CARRYB_3_2_port, S => 
                           SUMB_3_2_port);
   S2_3_3 : FA_X1 port map( A => ab_3_3_port, B => CARRYB_2_3_port, CI => 
                           SUMB_2_4_port, CO => CARRYB_3_3_port, S => 
                           SUMB_3_3_port);
   S2_3_4 : FA_X1 port map( A => ab_3_4_port, B => CARRYB_2_4_port, CI => 
                           SUMB_2_5_port, CO => CARRYB_3_4_port, S => 
                           SUMB_3_4_port);
   S2_3_5 : FA_X1 port map( A => ab_3_5_port, B => CARRYB_2_5_port, CI => 
                           SUMB_2_6_port, CO => CARRYB_3_5_port, S => 
                           SUMB_3_5_port);
   S3_3_6 : FA_X1 port map( A => ab_3_6_port, B => CARRYB_2_6_port, CI => 
                           ab_2_7_port, CO => CARRYB_3_6_port, S => 
                           SUMB_3_6_port);
   S1_2_0 : FA_X1 port map( A => ab_2_0_port, B => n8, CI => n15, CO => 
                           CARRYB_2_0_port, S => A1_0_port);
   S2_2_1 : FA_X1 port map( A => ab_2_1_port, B => n7, CI => n14, CO => 
                           CARRYB_2_1_port, S => SUMB_2_1_port);
   S2_2_2 : FA_X1 port map( A => ab_2_2_port, B => n6, CI => n13, CO => 
                           CARRYB_2_2_port, S => SUMB_2_2_port);
   S2_2_3 : FA_X1 port map( A => ab_2_3_port, B => n5, CI => n12, CO => 
                           CARRYB_2_3_port, S => SUMB_2_3_port);
   S2_2_4 : FA_X1 port map( A => ab_2_4_port, B => n4, CI => n11, CO => 
                           CARRYB_2_4_port, S => SUMB_2_4_port);
   S2_2_5 : FA_X1 port map( A => ab_2_5_port, B => n3, CI => n10, CO => 
                           CARRYB_2_5_port, S => SUMB_2_5_port);
   S3_2_6 : FA_X1 port map( A => ab_2_6_port, B => n9, CI => ab_1_7_port, CO =>
                           CARRYB_2_6_port, S => SUMB_2_6_port);
   FS_1 : ALU_N16_DW01_add_0 port map( A(13) => n47, A(12) => n19, A(11) => n26
                           , A(10) => n21, A(9) => n25, A(8) => n20, A(7) => 
                           n17, A(6) => n30, A(5) => SUMB_7_0_port, A(4) => 
                           A1_4_port, A(3) => A1_3_port, A(2) => A1_2_port, 
                           A(1) => A1_1_port, A(0) => A1_0_port, B(13) => n16, 
                           B(12) => n24, B(11) => n29, B(10) => n23, B(9) => 
                           n28, B(8) => n22, B(7) => n18, B(6) => n47, B(5) => 
                           n48, B(4) => n48, B(3) => n48, B(2) => n48, B(1) => 
                           n48, B(0) => X_Logic0_port, CI => X_Logic0_port, 
                           SUM(13) => PRODUCT(15), SUM(12) => PRODUCT(14), 
                           SUM(11) => PRODUCT(13), SUM(10) => PRODUCT(12), 
                           SUM(9) => PRODUCT(11), SUM(8) => PRODUCT(10), SUM(7)
                           => PRODUCT(9), SUM(6) => PRODUCT(8), SUM(5) => 
                           PRODUCT(7), SUM(4) => PRODUCT(6), SUM(3) => 
                           PRODUCT(5), SUM(2) => PRODUCT(4), SUM(1) => 
                           PRODUCT(3), SUM(0) => PRODUCT(2), CO => n_1011);
   U2 : AND2_X1 port map( A1 => ab_0_6_port, A2 => ab_1_5_port, ZN => n3);
   U3 : AND2_X1 port map( A1 => ab_0_5_port, A2 => ab_1_4_port, ZN => n4);
   U4 : AND2_X1 port map( A1 => ab_0_4_port, A2 => ab_1_3_port, ZN => n5);
   U5 : AND2_X1 port map( A1 => ab_0_3_port, A2 => ab_1_2_port, ZN => n6);
   U6 : AND2_X1 port map( A1 => ab_0_2_port, A2 => ab_1_1_port, ZN => n7);
   U7 : AND2_X1 port map( A1 => ab_0_1_port, A2 => ab_1_0_port, ZN => n8);
   U8 : AND2_X1 port map( A1 => ab_0_7_port, A2 => ab_1_6_port, ZN => n9);
   U9 : XOR2_X1 port map( A => ab_1_6_port, B => ab_0_7_port, Z => n10);
   U10 : XOR2_X1 port map( A => ab_1_5_port, B => ab_0_6_port, Z => n11);
   U11 : XOR2_X1 port map( A => ab_1_4_port, B => ab_0_5_port, Z => n12);
   U12 : XOR2_X1 port map( A => ab_1_3_port, B => ab_0_4_port, Z => n13);
   U13 : XOR2_X1 port map( A => ab_1_2_port, B => ab_0_3_port, Z => n14);
   U14 : XOR2_X1 port map( A => ab_1_1_port, B => ab_0_2_port, Z => n15);
   U15 : AND2_X1 port map( A1 => CARRYB_7_6_port, A2 => ab_7_7_port, ZN => n16)
                           ;
   U16 : XOR2_X1 port map( A => CARRYB_7_1_port, B => SUMB_7_2_port, Z => n17);
   U17 : AND2_X1 port map( A1 => CARRYB_7_0_port, A2 => SUMB_7_1_port, ZN => 
                           n18);
   U18 : XOR2_X1 port map( A => CARRYB_7_6_port, B => ab_7_7_port, Z => n19);
   U19 : XOR2_X1 port map( A => CARRYB_7_2_port, B => SUMB_7_3_port, Z => n20);
   U20 : XOR2_X1 port map( A => CARRYB_7_4_port, B => SUMB_7_5_port, Z => n21);
   U21 : AND2_X1 port map( A1 => CARRYB_7_1_port, A2 => SUMB_7_2_port, ZN => 
                           n22);
   U22 : AND2_X1 port map( A1 => CARRYB_7_3_port, A2 => SUMB_7_4_port, ZN => 
                           n23);
   U23 : AND2_X1 port map( A1 => CARRYB_7_5_port, A2 => SUMB_7_6_port, ZN => 
                           n24);
   U24 : XOR2_X1 port map( A => CARRYB_7_3_port, B => SUMB_7_4_port, Z => n25);
   U25 : XOR2_X1 port map( A => CARRYB_7_5_port, B => SUMB_7_6_port, Z => n26);
   U26 : XOR2_X1 port map( A => ab_1_0_port, B => ab_0_1_port, Z => PRODUCT(1))
                           ;
   U27 : AND2_X1 port map( A1 => CARRYB_7_2_port, A2 => SUMB_7_3_port, ZN => 
                           n28);
   U28 : AND2_X1 port map( A1 => CARRYB_7_4_port, A2 => SUMB_7_5_port, ZN => 
                           n29);
   U29 : XOR2_X1 port map( A => CARRYB_7_0_port, B => SUMB_7_1_port, Z => n30);
   U30 : INV_X1 port map( A => A(7), ZN => n31);
   U31 : INV_X1 port map( A => B(4), ZN => n42);
   U32 : INV_X1 port map( A => B(1), ZN => n45);
   U33 : INV_X1 port map( A => B(3), ZN => n43);
   U34 : INV_X1 port map( A => B(2), ZN => n44);
   U35 : INV_X1 port map( A => B(5), ZN => n41);
   U36 : INV_X1 port map( A => B(6), ZN => n40);
   U37 : INV_X1 port map( A => B(7), ZN => n39);
   U38 : INV_X1 port map( A => B(0), ZN => n46);
   U39 : INV_X1 port map( A => A(0), ZN => n38);
   U40 : INV_X1 port map( A => A(1), ZN => n37);
   U41 : INV_X1 port map( A => A(3), ZN => n35);
   U42 : INV_X1 port map( A => A(4), ZN => n34);
   U43 : INV_X1 port map( A => A(5), ZN => n33);
   U44 : INV_X1 port map( A => A(6), ZN => n32);
   U45 : INV_X1 port map( A => A(2), ZN => n36);
   n47 <= '0';
   U47 : NOR2_X1 port map( A1 => n31, A2 => n39, ZN => ab_7_7_port);
   U48 : NOR2_X1 port map( A1 => n31, A2 => n40, ZN => ab_7_6_port);
   U49 : NOR2_X1 port map( A1 => n31, A2 => n41, ZN => ab_7_5_port);
   U50 : NOR2_X1 port map( A1 => n31, A2 => n42, ZN => ab_7_4_port);
   U51 : NOR2_X1 port map( A1 => n31, A2 => n43, ZN => ab_7_3_port);
   U52 : NOR2_X1 port map( A1 => n31, A2 => n44, ZN => ab_7_2_port);
   U53 : NOR2_X1 port map( A1 => n31, A2 => n45, ZN => ab_7_1_port);
   U54 : NOR2_X1 port map( A1 => n31, A2 => n46, ZN => ab_7_0_port);
   U55 : NOR2_X1 port map( A1 => n39, A2 => n32, ZN => ab_6_7_port);
   U56 : NOR2_X1 port map( A1 => n40, A2 => n32, ZN => ab_6_6_port);
   U57 : NOR2_X1 port map( A1 => n41, A2 => n32, ZN => ab_6_5_port);
   U58 : NOR2_X1 port map( A1 => n42, A2 => n32, ZN => ab_6_4_port);
   U59 : NOR2_X1 port map( A1 => n43, A2 => n32, ZN => ab_6_3_port);
   U60 : NOR2_X1 port map( A1 => n44, A2 => n32, ZN => ab_6_2_port);
   U61 : NOR2_X1 port map( A1 => n45, A2 => n32, ZN => ab_6_1_port);
   U62 : NOR2_X1 port map( A1 => n46, A2 => n32, ZN => ab_6_0_port);
   U63 : NOR2_X1 port map( A1 => n39, A2 => n33, ZN => ab_5_7_port);
   U64 : NOR2_X1 port map( A1 => n40, A2 => n33, ZN => ab_5_6_port);
   U65 : NOR2_X1 port map( A1 => n41, A2 => n33, ZN => ab_5_5_port);
   U66 : NOR2_X1 port map( A1 => n42, A2 => n33, ZN => ab_5_4_port);
   U67 : NOR2_X1 port map( A1 => n43, A2 => n33, ZN => ab_5_3_port);
   U68 : NOR2_X1 port map( A1 => n44, A2 => n33, ZN => ab_5_2_port);
   U69 : NOR2_X1 port map( A1 => n45, A2 => n33, ZN => ab_5_1_port);
   U70 : NOR2_X1 port map( A1 => n46, A2 => n33, ZN => ab_5_0_port);
   U71 : NOR2_X1 port map( A1 => n39, A2 => n34, ZN => ab_4_7_port);
   U72 : NOR2_X1 port map( A1 => n40, A2 => n34, ZN => ab_4_6_port);
   U73 : NOR2_X1 port map( A1 => n41, A2 => n34, ZN => ab_4_5_port);
   U74 : NOR2_X1 port map( A1 => n42, A2 => n34, ZN => ab_4_4_port);
   U75 : NOR2_X1 port map( A1 => n43, A2 => n34, ZN => ab_4_3_port);
   U76 : NOR2_X1 port map( A1 => n44, A2 => n34, ZN => ab_4_2_port);
   U77 : NOR2_X1 port map( A1 => n45, A2 => n34, ZN => ab_4_1_port);
   U78 : NOR2_X1 port map( A1 => n46, A2 => n34, ZN => ab_4_0_port);
   U79 : NOR2_X1 port map( A1 => n39, A2 => n35, ZN => ab_3_7_port);
   U80 : NOR2_X1 port map( A1 => n40, A2 => n35, ZN => ab_3_6_port);
   U81 : NOR2_X1 port map( A1 => n41, A2 => n35, ZN => ab_3_5_port);
   U82 : NOR2_X1 port map( A1 => n42, A2 => n35, ZN => ab_3_4_port);
   U83 : NOR2_X1 port map( A1 => n43, A2 => n35, ZN => ab_3_3_port);
   U84 : NOR2_X1 port map( A1 => n44, A2 => n35, ZN => ab_3_2_port);
   U85 : NOR2_X1 port map( A1 => n45, A2 => n35, ZN => ab_3_1_port);
   U86 : NOR2_X1 port map( A1 => n46, A2 => n35, ZN => ab_3_0_port);
   U87 : NOR2_X1 port map( A1 => n39, A2 => n36, ZN => ab_2_7_port);
   U88 : NOR2_X1 port map( A1 => n40, A2 => n36, ZN => ab_2_6_port);
   U89 : NOR2_X1 port map( A1 => n41, A2 => n36, ZN => ab_2_5_port);
   U90 : NOR2_X1 port map( A1 => n42, A2 => n36, ZN => ab_2_4_port);
   U91 : NOR2_X1 port map( A1 => n43, A2 => n36, ZN => ab_2_3_port);
   U92 : NOR2_X1 port map( A1 => n44, A2 => n36, ZN => ab_2_2_port);
   U93 : NOR2_X1 port map( A1 => n45, A2 => n36, ZN => ab_2_1_port);
   U94 : NOR2_X1 port map( A1 => n46, A2 => n36, ZN => ab_2_0_port);
   U95 : NOR2_X1 port map( A1 => n39, A2 => n37, ZN => ab_1_7_port);
   U96 : NOR2_X1 port map( A1 => n40, A2 => n37, ZN => ab_1_6_port);
   U97 : NOR2_X1 port map( A1 => n41, A2 => n37, ZN => ab_1_5_port);
   U98 : NOR2_X1 port map( A1 => n42, A2 => n37, ZN => ab_1_4_port);
   U99 : NOR2_X1 port map( A1 => n43, A2 => n37, ZN => ab_1_3_port);
   U100 : NOR2_X1 port map( A1 => n44, A2 => n37, ZN => ab_1_2_port);
   U101 : NOR2_X1 port map( A1 => n45, A2 => n37, ZN => ab_1_1_port);
   U102 : NOR2_X1 port map( A1 => n46, A2 => n37, ZN => ab_1_0_port);
   U103 : NOR2_X1 port map( A1 => n39, A2 => n38, ZN => ab_0_7_port);
   U104 : NOR2_X1 port map( A1 => n40, A2 => n38, ZN => ab_0_6_port);
   U105 : NOR2_X1 port map( A1 => n41, A2 => n38, ZN => ab_0_5_port);
   U106 : NOR2_X1 port map( A1 => n42, A2 => n38, ZN => ab_0_4_port);
   U107 : NOR2_X1 port map( A1 => n43, A2 => n38, ZN => ab_0_3_port);
   U108 : NOR2_X1 port map( A1 => n44, A2 => n38, ZN => ab_0_2_port);
   U109 : NOR2_X1 port map( A1 => n45, A2 => n38, ZN => ab_0_1_port);
   U110 : NOR2_X1 port map( A1 => n46, A2 => n38, ZN => PRODUCT(0));
   n48 <= '0';

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N16.all;

entity ALU_N16_DW01_addsub_0 is

   port( A, B : in std_logic_vector (15 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (15 downto 0);  CO : out std_logic);

end ALU_N16_DW01_addsub_0;

architecture SYN_rpl of ALU_N16_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, 
      carry_1_port, B_AS_15_port, B_AS_14_port, B_AS_13_port, B_AS_12_port, 
      B_AS_11_port, B_AS_10_port, B_AS_9_port, B_AS_8_port, B_AS_7_port, 
      B_AS_6_port, B_AS_5_port, B_AS_4_port, B_AS_3_port, B_AS_2_port, 
      B_AS_1_port, B_AS_0_port, n_1014 : std_logic;

begin
   
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => n_1014, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B_AS_14_port, CI => carry_14_port, 
                           CO => carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B_AS_13_port, CI => carry_13_port, 
                           CO => carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B_AS_12_port, CI => carry_12_port, 
                           CO => carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B_AS_11_port, CI => carry_11_port, 
                           CO => carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B_AS_10_port, CI => carry_10_port, 
                           CO => carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B_AS_9_port, CI => carry_9_port, CO 
                           => carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B_AS_8_port, CI => carry_8_port, CO 
                           => carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B_AS_7_port, CI => carry_7_port, CO 
                           => carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B_AS_6_port, CI => carry_6_port, CO 
                           => carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B_AS_5_port, CI => carry_5_port, CO 
                           => carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B_AS_4_port, CI => carry_4_port, CO 
                           => carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B_AS_3_port, CI => carry_3_port, CO 
                           => carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B_AS_2_port, CI => carry_2_port, CO 
                           => carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B_AS_1_port, CI => carry_1_port, CO 
                           => carry_2_port, S => SUM(1));
   U1_0 : FA_X1 port map( A => A(0), B => B_AS_0_port, CI => ADD_SUB, CO => 
                           carry_1_port, S => SUM(0));
   U1 : XOR2_X1 port map( A => B(9), B => ADD_SUB, Z => B_AS_9_port);
   U2 : XOR2_X1 port map( A => B(8), B => ADD_SUB, Z => B_AS_8_port);
   U3 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U4 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U5 : XOR2_X1 port map( A => B(5), B => ADD_SUB, Z => B_AS_5_port);
   U6 : XOR2_X1 port map( A => B(4), B => ADD_SUB, Z => B_AS_4_port);
   U7 : XOR2_X1 port map( A => B(3), B => ADD_SUB, Z => B_AS_3_port);
   U8 : XOR2_X1 port map( A => B(2), B => ADD_SUB, Z => B_AS_2_port);
   U9 : XOR2_X1 port map( A => B(1), B => ADD_SUB, Z => B_AS_1_port);
   U10 : XOR2_X1 port map( A => B(15), B => ADD_SUB, Z => B_AS_15_port);
   U11 : XOR2_X1 port map( A => B(14), B => ADD_SUB, Z => B_AS_14_port);
   U12 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U13 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U14 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U15 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U16 : XOR2_X1 port map( A => B(0), B => ADD_SUB, Z => B_AS_0_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N16.all;

entity ALU_N16 is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (15 downto 0); 
         OUTALU : out std_logic_vector (15 downto 0));

end ALU_N16;

architecture SYN_BEHAVIOR of ALU_N16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X4
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X2
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component ALU_N16_DW02_mult_0
      port( A, B : in std_logic_vector (7 downto 0);  TC : in std_logic;  
            PRODUCT : out std_logic_vector (15 downto 0));
   end component;
   
   component ALU_N16_DW01_addsub_0
      port( A, B : in std_logic_vector (15 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (15 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N128, N129, N130,
      N131, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, 
      N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, 
      N155, N156, N157, N158, N159, U3_U1_Z_0, n16, n19, n602, n603, n604, n605
      , n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
      n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, 
      n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, 
      n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, 
      n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, 
      n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, 
      n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, 
      n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, 
      n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, 
      n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, 
      n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, 
      n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, 
      n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, 
      n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, 
      n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, 
      n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, 
      n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, 
      n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821, 
      n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, 
      n834, n835, n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, 
      n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, 
      n858, n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, 
      n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, 
      n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, 
      n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, 
      n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, 
      n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, 
      n930, n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941, 
      n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, 
      n954, n955, n956, n957, n958, n959, n960, n961, n962, n963, n964, n965, 
      n966, n967, n968, n969, n970, n971, n972, n973, n974, n975, n976, n977, 
      n978, n979, n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, 
      n990, n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
      n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, 
      n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, 
      n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, 
      n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, 
      n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, 
      n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, 
      n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, 
      n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, 
      n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, 
      n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, 
      n1102, n1103, n1104, n1105, n1106, n1107, n_1015 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   n16 <= '0';
   n19 <= '0';
   r138 : ALU_N16_DW01_addsub_0 port map( A(15) => DATA1(15), A(14) => 
                           DATA1(14), A(13) => DATA1(13), A(12) => DATA1(12), 
                           A(11) => DATA1(11), A(10) => DATA1(10), A(9) => 
                           DATA1(9), A(8) => DATA1(8), A(7) => DATA1(7), A(6) 
                           => DATA1(6), A(5) => DATA1(5), A(4) => DATA1(4), 
                           A(3) => DATA1(3), A(2) => DATA1(2), A(1) => DATA1(1)
                           , A(0) => DATA1(0), B(15) => DATA2(15), B(14) => 
                           DATA2(14), B(13) => DATA2(13), B(12) => DATA2(12), 
                           B(11) => DATA2(11), B(10) => DATA2(10), B(9) => 
                           DATA2(9), B(8) => DATA2(8), B(7) => DATA2(7), B(6) 
                           => DATA2(6), B(5) => DATA2(5), B(4) => DATA2(4), 
                           B(3) => DATA2(3), B(2) => DATA2(2), B(1) => DATA2(1)
                           , B(0) => DATA2(0), CI => n16, ADD_SUB => n602, 
                           SUM(15) => N143, SUM(14) => N142, SUM(13) => N141, 
                           SUM(12) => N140, SUM(11) => N139, SUM(10) => N138, 
                           SUM(9) => N137, SUM(8) => N136, SUM(7) => N135, 
                           SUM(6) => N134, SUM(5) => N133, SUM(4) => N132, 
                           SUM(3) => N131, SUM(2) => N130, SUM(1) => N129, 
                           SUM(0) => N128, CO => n_1015);
   mult_38 : ALU_N16_DW02_mult_0 port map( A(7) => DATA1(7), A(6) => DATA1(6), 
                           A(5) => DATA1(5), A(4) => DATA1(4), A(3) => DATA1(3)
                           , A(2) => DATA1(2), A(1) => DATA1(1), A(0) => 
                           DATA1(0), B(7) => DATA2(7), B(6) => DATA2(6), B(5) 
                           => DATA2(5), B(4) => DATA2(4), B(3) => DATA2(3), 
                           B(2) => DATA2(2), B(1) => DATA2(1), B(0) => DATA2(0)
                           , TC => n19, PRODUCT(15) => N159, PRODUCT(14) => 
                           N158, PRODUCT(13) => N157, PRODUCT(12) => N156, 
                           PRODUCT(11) => N155, PRODUCT(10) => N154, PRODUCT(9)
                           => N153, PRODUCT(8) => N152, PRODUCT(7) => N151, 
                           PRODUCT(6) => N150, PRODUCT(5) => N149, PRODUCT(4) 
                           => N148, PRODUCT(3) => N147, PRODUCT(2) => N146, 
                           PRODUCT(1) => N145, PRODUCT(0) => N144);
   U612 : NOR2_X2 port map( A1 => n747, A2 => n742, ZN => n661);
   U613 : NOR4_X2 port map( A1 => n1071, A2 => n1072, A3 => FUNC_2_port, A4 => 
                           FUNC_3_port, ZN => n611);
   U614 : NAND2_X2 port map( A1 => n1091, A2 => n1089, ZN => n618);
   U615 : NOR2_X2 port map( A1 => n706, A2 => n700, ZN => n664);
   U616 : NOR4_X4 port map( A1 => n1083, A2 => n1072, A3 => FUNC_1_port, A4 => 
                           FUNC_2_port, ZN => n639);
   U617 : INV_X2 port map( A => n906, ZN => n631);
   U618 : AND2_X2 port map( A1 => n1096, A2 => n1093, ZN => n651);
   U619 : INV_X2 port map( A => n674, ZN => n637);
   U620 : INV_X2 port map( A => n627, ZN => n652);
   U621 : NOR4_X4 port map( A1 => n1071, A2 => FUNC_0_port, A3 => FUNC_2_port, 
                           A4 => FUNC_3_port, ZN => n638);
   U622 : OR4_X1 port map( A1 => n1072, A2 => FUNC_1_port, A3 => FUNC_2_port, 
                           A4 => FUNC_3_port, ZN => U3_U1_Z_0);
   U623 : INV_X1 port map( A => U3_U1_Z_0, ZN => n602);
   U624 : NAND4_X1 port map( A1 => n603, A2 => n604, A3 => n605, A4 => n606, ZN
                           => OUTALU(9));
   U625 : AOI222_X1 port map( A1 => n607, A2 => n608, B1 => DATA1(9), B2 => 
                           n609, C1 => DATA2(9), C2 => n610, ZN => n606);
   U626 : MUX2_X1 port map( A => n611, B => n612, S => n613, Z => n610);
   U627 : OAI21_X1 port map( B1 => DATA2(9), B2 => n614, A => n615, ZN => n609)
                           ;
   U628 : OAI221_X1 port map( B1 => n616, B2 => n617, C1 => n618, C2 => n619, A
                           => n620, ZN => n608);
   U629 : AOI22_X1 port map( A1 => DATA1(11), A2 => n621, B1 => DATA1(13), B2 
                           => n622, ZN => n620);
   U630 : AOI222_X1 port map( A1 => DATA1(8), A2 => n623, B1 => n624, B2 => 
                           n625, C1 => DATA1(10), C2 => n626, ZN => n605);
   U631 : OAI211_X1 port map( C1 => n627, C2 => n628, A => n629, B => n630, ZN 
                           => n625);
   U632 : AOI221_X1 port map( B1 => DATA1(3), B2 => n631, C1 => DATA1(4), C2 =>
                           n632, A => n633, ZN => n630);
   U633 : OAI22_X1 port map( A1 => n634, A2 => n635, B1 => n618, B2 => n636, ZN
                           => n633);
   U634 : AOI22_X1 port map( A1 => DATA1(5), A2 => n622, B1 => DATA1(2), B2 => 
                           n637, ZN => n629);
   U635 : AOI222_X1 port map( A1 => N153, A2 => n638, B1 => n639, B2 => n640, 
                           C1 => n641, C2 => n642, ZN => n604);
   U636 : NAND4_X1 port map( A1 => n643, A2 => n644, A3 => n645, A4 => n646, ZN
                           => n642);
   U637 : AND4_X1 port map( A1 => n647, A2 => n648, A3 => n649, A4 => n650, ZN 
                           => n646);
   U638 : AOI222_X1 port map( A1 => DATA1(9), A2 => n651, B1 => DATA1(2), B2 =>
                           n637, C1 => DATA1(1), C2 => n652, ZN => n645);
   U639 : NAND4_X1 port map( A1 => n653, A2 => n654, A3 => n655, A4 => n656, ZN
                           => n640);
   U640 : AND4_X1 port map( A1 => n657, A2 => n658, A3 => n659, A4 => n660, ZN 
                           => n656);
   U641 : AOI22_X1 port map( A1 => DATA1(0), A2 => n637, B1 => DATA1(1), B2 => 
                           n652, ZN => n655);
   U642 : AOI222_X1 port map( A1 => n661, A2 => n662, B1 => N137, B2 => n663, 
                           C1 => n664, C2 => n631, ZN => n603);
   U643 : NAND4_X1 port map( A1 => n665, A2 => n666, A3 => n667, A4 => n668, ZN
                           => OUTALU(8));
   U644 : AOI222_X1 port map( A1 => n624, A2 => n669, B1 => DATA1(8), B2 => 
                           n670, C1 => DATA2(8), C2 => n671, ZN => n668);
   U645 : MUX2_X1 port map( A => n611, B => n612, S => n672, Z => n671);
   U646 : OAI21_X1 port map( B1 => DATA2(8), B2 => n614, A => n673, ZN => n670)
                           ;
   U647 : OAI211_X1 port map( C1 => n674, C2 => n628, A => n675, B => n676, ZN 
                           => n669);
   U648 : AOI222_X1 port map( A1 => DATA1(5), A2 => n677, B1 => DATA1(2), B2 =>
                           n631, C1 => DATA1(3), C2 => n632, ZN => n676);
   U649 : AOI22_X1 port map( A1 => DATA1(6), A2 => n621, B1 => DATA1(4), B2 => 
                           n622, ZN => n675);
   U650 : AOI222_X1 port map( A1 => n639, A2 => n678, B1 => DATA1(7), B2 => 
                           n623, C1 => n641, C2 => n679, ZN => n667);
   U651 : NAND4_X1 port map( A1 => n680, A2 => n681, A3 => n682, A4 => n683, ZN
                           => n679);
   U652 : AND4_X1 port map( A1 => n684, A2 => n685, A3 => n686, A4 => n687, ZN 
                           => n683);
   U653 : AOI222_X1 port map( A1 => DATA1(8), A2 => n651, B1 => DATA1(1), B2 =>
                           n637, C1 => DATA1(0), C2 => n652, ZN => n682);
   U654 : NAND4_X1 port map( A1 => n688, A2 => n689, A3 => n690, A4 => n691, ZN
                           => n678);
   U655 : AND4_X1 port map( A1 => n692, A2 => n693, A3 => n694, A4 => n695, ZN 
                           => n691);
   U656 : AOI22_X1 port map( A1 => DATA1(15), A2 => n637, B1 => DATA1(0), B2 =>
                           n652, ZN => n690);
   U657 : AOI221_X1 port map( B1 => N152, B2 => n638, C1 => n696, C2 => 
                           DATA1(9), A => n697, ZN => n666);
   U658 : AOI21_X1 port map( B1 => n698, B2 => n699, A => n700, ZN => n697);
   U659 : AOI221_X1 port map( B1 => n631, B2 => DATA1(14), C1 => DATA1(13), C2 
                           => n632, A => n701, ZN => n699);
   U660 : OAI22_X1 port map( A1 => n634, A2 => n702, B1 => n618, B2 => n703, ZN
                           => n701);
   U661 : AOI221_X1 port map( B1 => n704, B2 => DATA1(9), C1 => DATA1(8), C2 =>
                           n651, A => n705, ZN => n698);
   U662 : OAI22_X1 port map( A1 => n674, A2 => n706, B1 => n619, B2 => n707, ZN
                           => n705);
   U663 : AOI22_X1 port map( A1 => N136, A2 => n663, B1 => n661, B2 => n652, ZN
                           => n665);
   U664 : NAND4_X1 port map( A1 => n708, A2 => n709, A3 => n710, A4 => n711, ZN
                           => OUTALU(7));
   U665 : AOI221_X1 port map( B1 => n607, B2 => n712, C1 => DATA1(7), C2 => 
                           n713, A => n714, ZN => n711);
   U666 : AOI21_X1 port map( B1 => n715, B2 => n716, A => n717, ZN => n714);
   U667 : INV_X1 port map( A => DATA2(7), ZN => n717);
   U668 : MUX2_X1 port map( A => n718, B => n614, S => n635, Z => n715);
   U669 : OAI21_X1 port map( B1 => DATA2(7), B2 => n614, A => n719, ZN => n713)
                           ;
   U670 : OAI211_X1 port map( C1 => n617, C2 => n674, A => n720, B => n721, ZN 
                           => n712);
   U671 : AOI222_X1 port map( A1 => DATA1(10), A2 => n677, B1 => n631, B2 => 
                           DATA1(13), C1 => DATA1(12), C2 => n632, ZN => n721);
   U672 : AOI22_X1 port map( A1 => n621, A2 => DATA1(9), B1 => n622, B2 => 
                           DATA1(11), ZN => n720);
   U673 : AOI222_X1 port map( A1 => n639, A2 => n722, B1 => DATA1(8), B2 => 
                           n626, C1 => n641, C2 => n723, ZN => n710);
   U674 : NAND4_X1 port map( A1 => n724, A2 => n725, A3 => n726, A4 => n727, ZN
                           => n723);
   U675 : AND4_X1 port map( A1 => n728, A2 => n729, A3 => n730, A4 => n731, ZN 
                           => n727);
   U676 : AOI222_X1 port map( A1 => DATA1(7), A2 => n651, B1 => DATA1(0), B2 =>
                           n637, C1 => DATA1(15), C2 => n652, ZN => n726);
   U677 : NAND4_X1 port map( A1 => n732, A2 => n647, A3 => n733, A4 => n734, ZN
                           => n722);
   U678 : AND4_X1 port map( A1 => n735, A2 => n736, A3 => n737, A4 => n738, ZN 
                           => n734);
   U679 : AOI22_X1 port map( A1 => n637, A2 => DATA1(14), B1 => DATA1(15), B2 
                           => n652, ZN => n733);
   U680 : AOI22_X1 port map( A1 => n662, A2 => DATA1(0), B1 => n704, B2 => 
                           DATA1(8), ZN => n647);
   U681 : AOI221_X1 port map( B1 => N135, B2 => n663, C1 => N151, C2 => n638, A
                           => n739, ZN => n709);
   U682 : AOI21_X1 port map( B1 => n740, B2 => n741, A => n742, ZN => n739);
   U683 : AOI221_X1 port map( B1 => DATA1(1), B2 => n631, C1 => DATA1(2), C2 =>
                           n632, A => n743, ZN => n741);
   U684 : OAI22_X1 port map( A1 => n634, A2 => n744, B1 => n618, B2 => n745, ZN
                           => n743);
   U685 : AOI221_X1 port map( B1 => n704, B2 => DATA1(6), C1 => DATA1(7), C2 =>
                           n651, A => n746, ZN => n740);
   U686 : OAI22_X1 port map( A1 => n674, A2 => n747, B1 => n707, B2 => n748, ZN
                           => n746);
   U687 : AOI22_X1 port map( A1 => n664, A2 => n652, B1 => n749, B2 => DATA1(6)
                           , ZN => n708);
   U688 : NAND4_X1 port map( A1 => n750, A2 => n751, A3 => n752, A4 => n753, ZN
                           => OUTALU(6));
   U689 : AOI222_X1 port map( A1 => n624, A2 => n754, B1 => DATA1(6), B2 => 
                           n755, C1 => DATA2(6), C2 => n756, ZN => n753);
   U690 : MUX2_X1 port map( A => n611, B => n612, S => n636, Z => n756);
   U691 : OAI21_X1 port map( B1 => DATA2(6), B2 => n614, A => n615, ZN => n755)
                           ;
   U692 : OAI221_X1 port map( B1 => n616, B2 => n628, C1 => n618, C2 => n748, A
                           => n757, ZN => n754);
   U693 : AOI22_X1 port map( A1 => DATA1(4), A2 => n621, B1 => DATA1(2), B2 => 
                           n622, ZN => n757);
   U694 : AOI222_X1 port map( A1 => DATA1(5), A2 => n623, B1 => n607, B2 => 
                           n758, C1 => DATA1(7), C2 => n626, ZN => n752);
   U695 : OAI211_X1 port map( C1 => n617, C2 => n627, A => n759, B => n760, ZN 
                           => n758);
   U696 : AOI221_X1 port map( B1 => n631, B2 => DATA1(12), C1 => DATA1(11), C2 
                           => n632, A => n761, ZN => n760);
   U697 : OAI22_X1 port map( A1 => n634, A2 => n672, B1 => n613, B2 => n618, ZN
                           => n761);
   U698 : AOI22_X1 port map( A1 => DATA1(10), A2 => n622, B1 => n637, B2 => 
                           DATA1(13), ZN => n759);
   U699 : AOI222_X1 port map( A1 => N150, A2 => n638, B1 => n639, B2 => n762, 
                           C1 => n641, C2 => n763, ZN => n751);
   U700 : NAND4_X1 port map( A1 => n764, A2 => n765, A3 => n766, A4 => n767, ZN
                           => n763);
   U701 : AND4_X1 port map( A1 => n768, A2 => n769, A3 => n770, A4 => n771, ZN 
                           => n767);
   U702 : AOI222_X1 port map( A1 => DATA1(6), A2 => n651, B1 => DATA1(15), B2 
                           => n637, C1 => n652, C2 => DATA1(14), ZN => n766);
   U703 : NAND4_X1 port map( A1 => n772, A2 => n684, A3 => n773, A4 => n774, ZN
                           => n762);
   U704 : AND4_X1 port map( A1 => n775, A2 => n776, A3 => n777, A4 => n778, ZN 
                           => n774);
   U705 : AOI22_X1 port map( A1 => n637, A2 => DATA1(13), B1 => n652, B2 => 
                           DATA1(14), ZN => n773);
   U706 : AOI22_X1 port map( A1 => n662, A2 => DATA1(15), B1 => DATA1(7), B2 =>
                           n704, ZN => n684);
   U707 : AOI222_X1 port map( A1 => n664, A2 => n662, B1 => N134, B2 => n663, 
                           C1 => n661, C2 => n631, ZN => n750);
   U708 : NAND4_X1 port map( A1 => n779, A2 => n780, A3 => n781, A4 => n782, ZN
                           => OUTALU(5));
   U709 : AOI222_X1 port map( A1 => DATA2(5), A2 => n783, B1 => DATA1(5), B2 =>
                           n784, C1 => n624, C2 => n785, ZN => n782);
   U710 : OAI222_X1 port map( A1 => n634, A2 => n748, B1 => n618, B2 => n786, 
                           C1 => n707, C2 => n628, ZN => n785);
   U711 : OAI21_X1 port map( B1 => DATA2(5), B2 => n614, A => n615, ZN => n784)
                           ;
   U712 : MUX2_X1 port map( A => n611, B => n612, S => n744, Z => n783);
   U713 : AOI221_X1 port map( B1 => DATA1(4), B2 => n623, C1 => DATA1(6), C2 =>
                           n626, A => n787, ZN => n781);
   U714 : AOI21_X1 port map( B1 => n788, B2 => n789, A => n700, ZN => n787);
   U715 : AOI221_X1 port map( B1 => n631, B2 => DATA1(11), C1 => DATA1(10), C2 
                           => n632, A => n790, ZN => n789);
   U716 : OAI22_X1 port map( A1 => n634, A2 => n635, B1 => n618, B2 => n672, ZN
                           => n790);
   U717 : AOI221_X1 port map( B1 => n662, B2 => DATA1(14), C1 => n652, C2 => 
                           DATA1(13), A => n791, ZN => n788);
   U718 : OAI22_X1 port map( A1 => n619, A2 => n674, B1 => n613, B2 => n707, ZN
                           => n791);
   U719 : AOI222_X1 port map( A1 => N149, A2 => n638, B1 => n639, B2 => n792, 
                           C1 => n641, C2 => n793, ZN => n780);
   U720 : NAND4_X1 port map( A1 => n794, A2 => n657, A3 => n795, A4 => n796, ZN
                           => n793);
   U721 : NOR4_X1 port map( A1 => n797, A2 => n798, A3 => n799, A4 => n800, ZN 
                           => n796);
   U722 : INV_X1 port map( A => n801, ZN => n800);
   U723 : AOI222_X1 port map( A1 => DATA1(5), A2 => n651, B1 => n637, B2 => 
                           DATA1(14), C1 => n652, C2 => DATA1(13), ZN => n795);
   U724 : AOI22_X1 port map( A1 => DATA1(7), A2 => n802, B1 => n631, B2 => 
                           DATA1(15), ZN => n657);
   U725 : NAND4_X1 port map( A1 => n728, A2 => n648, A3 => n803, A4 => n804, ZN
                           => n792);
   U726 : NOR4_X1 port map( A1 => n805, A2 => n806, A3 => n807, A4 => n808, ZN 
                           => n804);
   U727 : AOI22_X1 port map( A1 => n637, A2 => DATA1(12), B1 => n652, B2 => 
                           DATA1(13), ZN => n803);
   U728 : AOI22_X1 port map( A1 => DATA1(15), A2 => n809, B1 => n621, B2 => 
                           DATA1(7), ZN => n648);
   U729 : AOI22_X1 port map( A1 => DATA1(14), A2 => n662, B1 => DATA1(6), B2 =>
                           n704, ZN => n728);
   U730 : AOI222_X1 port map( A1 => n664, A2 => n809, B1 => N133, B2 => n663, 
                           C1 => n661, C2 => n632, ZN => n779);
   U731 : NAND4_X1 port map( A1 => n810, A2 => n811, A3 => n812, A4 => n813, ZN
                           => OUTALU(4));
   U732 : AOI222_X1 port map( A1 => DATA2(4), A2 => n814, B1 => n624, B2 => 
                           n815, C1 => DATA1(4), C2 => n816, ZN => n813);
   U733 : OAI21_X1 port map( B1 => DATA2(4), B2 => n614, A => n673, ZN => n816)
                           ;
   U734 : OAI22_X1 port map( A1 => n634, A2 => n786, B1 => n618, B2 => n628, ZN
                           => n815);
   U735 : MUX2_X1 port map( A => n611, B => n612, S => n745, Z => n814);
   U736 : AOI222_X1 port map( A1 => n639, A2 => n817, B1 => DATA1(3), B2 => 
                           n623, C1 => n607, C2 => n818, ZN => n812);
   U737 : NAND4_X1 port map( A1 => n819, A2 => n820, A3 => n821, A4 => n822, ZN
                           => n818);
   U738 : AOI222_X1 port map( A1 => DATA1(7), A2 => n677, B1 => DATA1(10), B2 
                           => n631, C1 => n632, C2 => DATA1(9), ZN => n822);
   U739 : AOI222_X1 port map( A1 => n637, A2 => DATA1(11), B1 => DATA1(6), B2 
                           => n621, C1 => DATA1(8), C2 => n622, ZN => n821);
   U740 : AOI222_X1 port map( A1 => n662, A2 => DATA1(13), B1 => n704, B2 => 
                           DATA1(5), C1 => n809, C2 => DATA1(14), ZN => n820);
   U741 : AOI22_X1 port map( A1 => n652, A2 => DATA1(12), B1 => DATA1(4), B2 =>
                           n651, ZN => n819);
   U742 : NAND4_X1 port map( A1 => n768, A2 => n685, A3 => n823, A4 => n824, ZN
                           => n817);
   U743 : NOR4_X1 port map( A1 => n825, A2 => n826, A3 => n827, A4 => n828, ZN 
                           => n824);
   U744 : AOI22_X1 port map( A1 => n637, A2 => DATA1(11), B1 => n652, B2 => 
                           DATA1(12), ZN => n823);
   U745 : AOI22_X1 port map( A1 => DATA1(14), A2 => n809, B1 => n621, B2 => 
                           DATA1(6), ZN => n685);
   U746 : AOI22_X1 port map( A1 => DATA1(13), A2 => n662, B1 => DATA1(5), B2 =>
                           n704, ZN => n768);
   U747 : AOI222_X1 port map( A1 => N148, A2 => n638, B1 => n641, B2 => n829, 
                           C1 => n696, C2 => DATA1(5), ZN => n811);
   U748 : NAND4_X1 port map( A1 => n830, A2 => n692, A3 => n831, A4 => n832, ZN
                           => n829);
   U749 : NOR4_X1 port map( A1 => n833, A2 => n834, A3 => n835, A4 => n836, ZN 
                           => n832);
   U750 : INV_X1 port map( A => n837, ZN => n836);
   U751 : AOI222_X1 port map( A1 => DATA1(4), A2 => n651, B1 => n637, B2 => 
                           DATA1(13), C1 => n652, C2 => DATA1(12), ZN => n831);
   U752 : AOI22_X1 port map( A1 => DATA1(6), A2 => n802, B1 => DATA1(14), B2 =>
                           n631, ZN => n692);
   U753 : AOI222_X1 port map( A1 => n664, A2 => n838, B1 => N132, B2 => n663, 
                           C1 => n661, C2 => n622, ZN => n810);
   U754 : NAND4_X1 port map( A1 => n839, A2 => n840, A3 => n841, A4 => n842, ZN
                           => OUTALU(3));
   U755 : AOI221_X1 port map( B1 => DATA2(3), B2 => n843, C1 => DATA1(3), C2 =>
                           n844, A => n845, ZN => n842);
   U756 : NOR3_X1 port map( A1 => n628, A2 => n742, A3 => n634, ZN => n845);
   U757 : OAI21_X1 port map( B1 => DATA2(3), B2 => n614, A => n673, ZN => n844)
                           ;
   U758 : MUX2_X1 port map( A => n611, B => n612, S => n748, Z => n843);
   U759 : AOI222_X1 port map( A1 => n639, A2 => n846, B1 => DATA1(2), B2 => 
                           n623, C1 => n607, C2 => n847, ZN => n841);
   U760 : NAND4_X1 port map( A1 => n848, A2 => n849, A3 => n850, A4 => n851, ZN
                           => n847);
   U761 : AOI222_X1 port map( A1 => DATA1(6), A2 => n677, B1 => n631, B2 => 
                           DATA1(9), C1 => DATA1(8), C2 => n632, ZN => n851);
   U762 : AOI222_X1 port map( A1 => DATA1(10), A2 => n637, B1 => DATA1(5), B2 
                           => n621, C1 => DATA1(7), C2 => n622, ZN => n850);
   U763 : AOI222_X1 port map( A1 => n809, A2 => DATA1(13), B1 => n704, B2 => 
                           DATA1(4), C1 => n838, C2 => DATA1(14), ZN => n849);
   U764 : AOI222_X1 port map( A1 => DATA1(3), A2 => n651, B1 => n662, B2 => 
                           DATA1(12), C1 => n652, C2 => DATA1(11), ZN => n848);
   U765 : NAND4_X1 port map( A1 => n729, A2 => n649, A3 => n852, A4 => n853, ZN
                           => n846);
   U766 : NOR4_X1 port map( A1 => n798, A2 => n854, A3 => n855, A4 => n856, ZN 
                           => n853);
   U767 : OAI22_X1 port map( A1 => n619, A2 => n857, B1 => n745, B2 => n858, ZN
                           => n798);
   U768 : AOI22_X1 port map( A1 => DATA1(10), A2 => n637, B1 => n652, B2 => 
                           DATA1(11), ZN => n852);
   U769 : AOI22_X1 port map( A1 => DATA1(14), A2 => n838, B1 => n677, B2 => 
                           DATA1(6), ZN => n649);
   U770 : AOI22_X1 port map( A1 => DATA1(13), A2 => n809, B1 => n621, B2 => 
                           DATA1(5), ZN => n729);
   U771 : AOI222_X1 port map( A1 => N147, A2 => n638, B1 => n641, B2 => n859, 
                           C1 => n696, C2 => DATA1(4), ZN => n840);
   U772 : NAND4_X1 port map( A1 => n736, A2 => n658, A3 => n860, A4 => n861, ZN
                           => n859);
   U773 : NOR4_X1 port map( A1 => n862, A2 => n863, A3 => n864, A4 => n865, ZN 
                           => n861);
   U774 : AOI222_X1 port map( A1 => DATA1(3), A2 => n651, B1 => n637, B2 => 
                           DATA1(12), C1 => n652, C2 => DATA1(11), ZN => n860);
   U775 : AOI22_X1 port map( A1 => DATA1(6), A2 => n866, B1 => n632, B2 => 
                           DATA1(14), ZN => n658);
   U776 : AOI22_X1 port map( A1 => DATA1(5), A2 => n802, B1 => DATA1(13), B2 =>
                           n631, ZN => n736);
   U777 : AOI222_X1 port map( A1 => n664, A2 => n867, B1 => N131, B2 => n663, 
                           C1 => n661, C2 => n677, ZN => n839);
   U778 : NAND4_X1 port map( A1 => n868, A2 => n869, A3 => n870, A4 => n871, ZN
                           => OUTALU(2));
   U779 : AOI222_X1 port map( A1 => n639, A2 => n872, B1 => DATA1(2), B2 => 
                           n873, C1 => DATA2(2), C2 => n874, ZN => n871);
   U780 : MUX2_X1 port map( A => n611, B => n612, S => n786, Z => n874);
   U781 : OAI21_X1 port map( B1 => DATA2(2), B2 => n614, A => n673, ZN => n873)
                           ;
   U782 : NAND4_X1 port map( A1 => n764, A2 => n680, A3 => n875, A4 => n876, ZN
                           => n872);
   U783 : NOR4_X1 port map( A1 => n833, A2 => n877, A3 => n878, A4 => n879, ZN 
                           => n876);
   U784 : OAI22_X1 port map( A1 => n703, A2 => n857, B1 => n748, B2 => n858, ZN
                           => n833);
   U785 : AOI22_X1 port map( A1 => n637, A2 => DATA1(9), B1 => DATA1(10), B2 =>
                           n652, ZN => n875);
   U786 : AOI22_X1 port map( A1 => DATA1(13), A2 => n838, B1 => n677, B2 => 
                           DATA1(5), ZN => n680);
   U787 : AOI22_X1 port map( A1 => DATA1(12), A2 => n809, B1 => n621, B2 => 
                           DATA1(4), ZN => n764);
   U788 : AOI222_X1 port map( A1 => n607, A2 => n880, B1 => n641, B2 => n881, 
                           C1 => DATA1(1), C2 => n623, ZN => n870);
   U789 : NAND4_X1 port map( A1 => n775, A2 => n688, A3 => n882, A4 => n883, ZN
                           => n881);
   U790 : NOR4_X1 port map( A1 => n884, A2 => n885, A3 => n886, A4 => n887, ZN 
                           => n883);
   U791 : AOI222_X1 port map( A1 => DATA1(2), A2 => n651, B1 => n637, B2 => 
                           DATA1(11), C1 => DATA1(10), C2 => n652, ZN => n882);
   U792 : AOI22_X1 port map( A1 => DATA1(5), A2 => n866, B1 => n632, B2 => 
                           DATA1(13), ZN => n688);
   U793 : AOI22_X1 port map( A1 => DATA1(4), A2 => n802, B1 => DATA1(12), B2 =>
                           n631, ZN => n775);
   U794 : NAND4_X1 port map( A1 => n888, A2 => n889, A3 => n890, A4 => n891, ZN
                           => n880);
   U795 : AOI221_X1 port map( B1 => DATA1(8), B2 => n631, C1 => DATA1(7), C2 =>
                           n632, A => n892, ZN => n891);
   U796 : OAI22_X1 port map( A1 => n634, A2 => n745, B1 => n618, B2 => n744, ZN
                           => n892);
   U797 : AOI222_X1 port map( A1 => n704, A2 => DATA1(3), B1 => DATA1(6), B2 =>
                           n622, C1 => n637, C2 => DATA1(9), ZN => n890);
   U798 : AOI222_X1 port map( A1 => n662, A2 => DATA1(11), B1 => n838, B2 => 
                           DATA1(13), C1 => n809, C2 => DATA1(12), ZN => n889);
   U799 : AOI222_X1 port map( A1 => DATA1(2), A2 => n651, B1 => n867, B2 => 
                           DATA1(14), C1 => DATA1(10), C2 => n652, ZN => n888);
   U800 : AOI222_X1 port map( A1 => N130, A2 => n663, B1 => n696, B2 => 
                           DATA1(3), C1 => N146, C2 => n638, ZN => n869);
   U801 : AOI22_X1 port map( A1 => n661, A2 => n621, B1 => n664, B2 => n866, ZN
                           => n868);
   U802 : NAND4_X1 port map( A1 => n893, A2 => n894, A3 => n895, A4 => n896, ZN
                           => OUTALU(1));
   U803 : AOI222_X1 port map( A1 => n641, A2 => n897, B1 => DATA1(1), B2 => 
                           n898, C1 => DATA2(1), C2 => n899, ZN => n896);
   U804 : MUX2_X1 port map( A => n611, B => n612, S => n628, Z => n899);
   U805 : OAI21_X1 port map( B1 => DATA2(1), B2 => n614, A => n673, ZN => n898)
                           ;
   U806 : NAND4_X1 port map( A1 => n737, A2 => n659, A3 => n900, A4 => n901, ZN
                           => n897);
   U807 : NOR4_X1 port map( A1 => n807, A2 => n902, A3 => n903, A4 => n904, ZN 
                           => n901);
   U808 : OAI22_X1 port map( A1 => n748, A2 => n905, B1 => n703, B2 => n906, ZN
                           => n807);
   U809 : AOI222_X1 port map( A1 => DATA1(1), A2 => n651, B1 => DATA1(10), B2 
                           => n637, C1 => n652, C2 => DATA1(9), ZN => n900);
   U810 : AOI22_X1 port map( A1 => DATA1(5), A2 => n867, B1 => n622, B2 => 
                           DATA1(13), ZN => n659);
   U811 : AOI22_X1 port map( A1 => DATA1(4), A2 => n866, B1 => n632, B2 => 
                           DATA1(12), ZN => n737);
   U812 : AOI22_X1 port map( A1 => n639, A2 => n907, B1 => n607, B2 => n908, ZN
                           => n895);
   U813 : NAND4_X1 port map( A1 => n909, A2 => n910, A3 => n911, A4 => n912, ZN
                           => n908);
   U814 : AOI221_X1 port map( B1 => n802, B2 => DATA1(15), C1 => DATA1(7), C2 
                           => n631, A => n913, ZN => n912);
   U815 : OAI22_X1 port map( A1 => n618, A2 => n745, B1 => n616, B2 => n636, ZN
                           => n913);
   U816 : AOI221_X1 port map( B1 => DATA1(3), B2 => n621, C1 => DATA1(5), C2 =>
                           n622, A => n914, ZN => n911);
   U817 : OAI22_X1 port map( A1 => n786, A2 => n858, B1 => n674, B2 => n672, ZN
                           => n914);
   U818 : AOI221_X1 port map( B1 => n838, B2 => DATA1(12), C1 => n809, C2 => 
                           DATA1(11), A => n915, ZN => n910);
   U819 : OAI22_X1 port map( A1 => n916, A2 => n917, B1 => n702, B2 => n857, ZN
                           => n915);
   U820 : AOI222_X1 port map( A1 => DATA1(1), A2 => n651, B1 => n652, B2 => 
                           DATA1(9), C1 => n866, C2 => DATA1(14), ZN => n909);
   U821 : NAND4_X1 port map( A1 => n730, A2 => n650, A3 => n918, A4 => n919, ZN
                           => n907);
   U822 : NOR4_X1 port map( A1 => n799, A2 => n864, A3 => n920, A4 => n921, ZN 
                           => n919);
   U823 : OAI22_X1 port map( A1 => n702, A2 => n857, B1 => n786, B2 => n858, ZN
                           => n864);
   U824 : OAI22_X1 port map( A1 => n703, A2 => n922, B1 => n634, B2 => n748, ZN
                           => n799);
   U825 : AOI22_X1 port map( A1 => DATA1(8), A2 => n637, B1 => n652, B2 => 
                           DATA1(9), ZN => n918);
   U826 : AOI22_X1 port map( A1 => DATA1(13), A2 => n867, B1 => n622, B2 => 
                           DATA1(5), ZN => n650);
   U827 : AOI22_X1 port map( A1 => DATA1(12), A2 => n838, B1 => n677, B2 => 
                           DATA1(4), ZN => n730);
   U828 : AOI222_X1 port map( A1 => N129, A2 => n663, B1 => n696, B2 => 
                           DATA1(2), C1 => N145, C2 => n638, ZN => n894);
   U829 : AOI22_X1 port map( A1 => n661, A2 => n704, B1 => n749, B2 => DATA1(0)
                           , ZN => n893);
   U830 : NAND4_X1 port map( A1 => n923, A2 => n924, A3 => n925, A4 => n926, ZN
                           => OUTALU(15));
   U831 : AOI222_X1 port map( A1 => DATA2(15), A2 => n927, B1 => n661, B2 => 
                           n928, C1 => DATA1(15), C2 => n929, ZN => n926);
   U832 : OAI21_X1 port map( B1 => DATA2(15), B2 => n614, A => n716, ZN => n929
                           );
   U833 : MUX2_X1 port map( A => n611, B => n612, S => n706, Z => n927);
   U834 : AOI222_X1 port map( A1 => n624, A2 => n930, B1 => n639, B2 => n931, 
                           C1 => n641, C2 => n932, ZN => n925);
   U835 : NAND4_X1 port map( A1 => n735, A2 => n653, A3 => n933, A4 => n934, ZN
                           => n932);
   U836 : NOR4_X1 port map( A1 => n805, A2 => n855, A3 => n935, A4 => n936, ZN 
                           => n934);
   U837 : OAI22_X1 port map( A1 => n628, A2 => n905, B1 => n613, B2 => n906, ZN
                           => n855);
   U838 : OAI22_X1 port map( A1 => n786, A2 => n937, B1 => n616, B2 => n702, ZN
                           => n805);
   U839 : AOI222_X1 port map( A1 => DATA1(15), A2 => n651, B1 => DATA1(8), B2 
                           => n637, C1 => n652, C2 => DATA1(7), ZN => n933);
   U840 : AOI22_X1 port map( A1 => DATA1(4), A2 => n838, B1 => n677, B2 => 
                           DATA1(12), ZN => n653);
   U841 : AOI22_X1 port map( A1 => DATA1(3), A2 => n867, B1 => DATA1(11), B2 =>
                           n622, ZN => n735);
   U842 : NAND4_X1 port map( A1 => n724, A2 => n643, A3 => n938, A4 => n939, ZN
                           => n931);
   U843 : NOR4_X1 port map( A1 => n940, A2 => n863, A3 => n903, A4 => n941, ZN 
                           => n939);
   U844 : OAI22_X1 port map( A1 => n672, A2 => n857, B1 => n858, B2 => n747, ZN
                           => n903);
   U845 : OAI22_X1 port map( A1 => n613, A2 => n922, B1 => n634, B2 => n628, ZN
                           => n863);
   U846 : INV_X1 port map( A => n794, ZN => n940);
   U847 : AOI22_X1 port map( A1 => DATA1(10), A2 => n838, B1 => n677, B2 => 
                           DATA1(2), ZN => n794);
   U848 : AOI22_X1 port map( A1 => n637, A2 => DATA1(6), B1 => n652, B2 => 
                           DATA1(7), ZN => n938);
   U849 : AOI22_X1 port map( A1 => DATA1(12), A2 => n866, B1 => n632, B2 => 
                           DATA1(4), ZN => n643);
   U850 : AOI22_X1 port map( A1 => DATA1(11), A2 => n867, B1 => n622, B2 => 
                           DATA1(3), ZN => n724);
   U851 : NAND4_X1 port map( A1 => n942, A2 => n943, A3 => n944, A4 => n945, ZN
                           => n930);
   U852 : AOI221_X1 port map( B1 => n802, B2 => DATA1(1), C1 => n631, C2 => 
                           DATA1(9), A => n946, ZN => n945);
   U853 : OAI22_X1 port map( A1 => n618, A2 => n619, B1 => n616, B2 => n702, ZN
                           => n946);
   U854 : AOI221_X1 port map( B1 => DATA1(13), B2 => n621, C1 => n622, C2 => 
                           DATA1(11), A => n947, ZN => n944);
   U855 : OAI22_X1 port map( A1 => n617, A2 => n858, B1 => n674, B2 => n672, ZN
                           => n947);
   U856 : AOI221_X1 port map( B1 => n838, B2 => DATA1(4), C1 => n809, C2 => 
                           DATA1(5), A => n948, ZN => n943);
   U857 : OAI22_X1 port map( A1 => n748, A2 => n917, B1 => n636, B2 => n857, ZN
                           => n948);
   U858 : AOI222_X1 port map( A1 => DATA1(15), A2 => n651, B1 => n652, B2 => 
                           DATA1(7), C1 => n866, C2 => DATA1(2), ZN => n942);
   U859 : AOI222_X1 port map( A1 => N143, A2 => n663, B1 => n696, B2 => 
                           DATA1(0), C1 => N159, C2 => n638, ZN => n924);
   U860 : AOI22_X1 port map( A1 => n664, A2 => n651, B1 => n749, B2 => 
                           DATA1(14), ZN => n923);
   U861 : NAND4_X1 port map( A1 => n949, A2 => n950, A3 => n951, A4 => n952, ZN
                           => OUTALU(14));
   U862 : AOI221_X1 port map( B1 => n641, B2 => n953, C1 => DATA1(14), C2 => 
                           n954, A => n955, ZN => n952);
   U863 : AOI21_X1 port map( B1 => n956, B2 => n716, A => n957, ZN => n955);
   U864 : INV_X1 port map( A => DATA2(14), ZN => n957);
   U865 : MUX2_X1 port map( A => n718, B => n614, S => n617, Z => n956);
   U866 : OAI21_X1 port map( B1 => DATA2(14), B2 => n614, A => n719, ZN => n954
                           );
   U867 : NAND4_X1 port map( A1 => n776, A2 => n693, A3 => n958, A4 => n959, ZN
                           => n953);
   U868 : NOR4_X1 port map( A1 => n826, A2 => n877, A3 => n960, A4 => n961, ZN 
                           => n959);
   U869 : OAI22_X1 port map( A1 => n905, A2 => n747, B1 => n906, B2 => n672, ZN
                           => n877);
   U870 : OAI22_X1 port map( A1 => n628, A2 => n937, B1 => n613, B2 => n616, ZN
                           => n826);
   U871 : AOI222_X1 port map( A1 => DATA1(14), A2 => n651, B1 => n637, B2 => 
                           DATA1(7), C1 => n652, C2 => DATA1(6), ZN => n958);
   U872 : AOI22_X1 port map( A1 => DATA1(3), A2 => n838, B1 => n677, B2 => 
                           DATA1(11), ZN => n693);
   U873 : AOI22_X1 port map( A1 => DATA1(2), A2 => n867, B1 => n622, B2 => 
                           DATA1(10), ZN => n776);
   U874 : AOI22_X1 port map( A1 => n639, A2 => n962, B1 => n624, B2 => n963, ZN
                           => n951);
   U875 : NAND4_X1 port map( A1 => n964, A2 => n965, A3 => n966, A4 => n967, ZN
                           => n963);
   U876 : AOI221_X1 port map( B1 => DATA1(0), B2 => n802, C1 => DATA1(8), C2 =>
                           n631, A => n968, ZN => n967);
   U877 : OAI22_X1 port map( A1 => n618, A2 => n703, B1 => n613, B2 => n616, ZN
                           => n968);
   U878 : AOI221_X1 port map( B1 => n621, B2 => DATA1(12), C1 => DATA1(10), C2 
                           => n622, A => n969, ZN => n966);
   U879 : OAI22_X1 port map( A1 => n916, A2 => n858, B1 => n635, B2 => n674, ZN
                           => n969);
   U880 : AOI221_X1 port map( B1 => n838, B2 => DATA1(3), C1 => n809, C2 => 
                           DATA1(4), A => n970, ZN => n965);
   U881 : OAI22_X1 port map( A1 => n786, A2 => n917, B1 => n744, B2 => n857, ZN
                           => n970);
   U882 : AOI222_X1 port map( A1 => DATA1(14), A2 => n651, B1 => n652, B2 => 
                           DATA1(6), C1 => n866, C2 => DATA1(1), ZN => n964);
   U883 : NAND4_X1 port map( A1 => n769, A2 => n686, A3 => n971, A4 => n972, ZN
                           => n962);
   U884 : NOR4_X1 port map( A1 => n834, A2 => n885, A3 => n973, A4 => n974, ZN 
                           => n972);
   U885 : OAI22_X1 port map( A1 => n672, A2 => n922, B1 => n634, B2 => n747, ZN
                           => n885);
   U886 : OAI22_X1 port map( A1 => n613, A2 => n975, B1 => n618, B2 => n628, ZN
                           => n834);
   U887 : AOI22_X1 port map( A1 => n637, A2 => DATA1(5), B1 => n652, B2 => 
                           DATA1(6), ZN => n971);
   U888 : AOI22_X1 port map( A1 => DATA1(11), A2 => n866, B1 => n632, B2 => 
                           DATA1(3), ZN => n686);
   U889 : AOI22_X1 port map( A1 => DATA1(10), A2 => n867, B1 => n622, B2 => 
                           DATA1(2), ZN => n769);
   U890 : AOI222_X1 port map( A1 => N142, A2 => n663, B1 => n696, B2 => 
                           DATA1(15), C1 => N158, C2 => n638, ZN => n950);
   U891 : AOI22_X1 port map( A1 => n664, A2 => n704, B1 => n749, B2 => 
                           DATA1(13), ZN => n949);
   U892 : NAND4_X1 port map( A1 => n976, A2 => n977, A3 => n978, A4 => n979, ZN
                           => OUTALU(13));
   U893 : AOI221_X1 port map( B1 => n639, B2 => n980, C1 => DATA1(13), C2 => 
                           n981, A => n982, ZN => n979);
   U894 : AOI21_X1 port map( B1 => n983, B2 => n716, A => n984, ZN => n982);
   U895 : INV_X1 port map( A => DATA2(13), ZN => n984);
   U896 : MUX2_X1 port map( A => n718, B => n614, S => n916, Z => n983);
   U897 : OAI21_X1 port map( B1 => DATA2(13), B2 => n614, A => n719, ZN => n981
                           );
   U898 : NAND4_X1 port map( A1 => n725, A2 => n644, A3 => n985, A4 => n986, ZN
                           => n980);
   U899 : NOR4_X1 port map( A1 => n797, A2 => n862, A3 => n902, A4 => n935, ZN 
                           => n986);
   U900 : OAI22_X1 port map( A1 => n636, A2 => n857, B1 => n617, B2 => n858, ZN
                           => n935);
   U901 : OAI22_X1 port map( A1 => n635, A2 => n922, B1 => n634, B2 => n706, ZN
                           => n902);
   U902 : OAI22_X1 port map( A1 => n672, A2 => n975, B1 => n618, B2 => n747, ZN
                           => n862);
   U903 : OAI22_X1 port map( A1 => n613, A2 => n917, B1 => n707, B2 => n628, ZN
                           => n797);
   U904 : AOI22_X1 port map( A1 => n637, A2 => DATA1(4), B1 => n652, B2 => 
                           DATA1(5), ZN => n985);
   U905 : AOI22_X1 port map( A1 => DATA1(11), A2 => n802, B1 => n631, B2 => 
                           DATA1(3), ZN => n644);
   U906 : AOI22_X1 port map( A1 => DATA1(10), A2 => n866, B1 => n632, B2 => 
                           DATA1(2), ZN => n725);
   U907 : AOI222_X1 port map( A1 => n624, A2 => n987, B1 => n641, B2 => n988, 
                           C1 => DATA1(14), C2 => n626, ZN => n978);
   U908 : NAND4_X1 port map( A1 => n732, A2 => n654, A3 => n989, A4 => n990, ZN
                           => n988);
   U909 : NOR4_X1 port map( A1 => n806, A2 => n854, A3 => n920, A4 => n991, ZN 
                           => n990);
   U910 : OAI22_X1 port map( A1 => n706, A2 => n905, B1 => n906, B2 => n635, ZN
                           => n920);
   U911 : OAI22_X1 port map( A1 => n937, A2 => n747, B1 => n616, B2 => n672, ZN
                           => n854);
   U912 : OAI22_X1 port map( A1 => n628, A2 => n917, B1 => n613, B2 => n707, ZN
                           => n806);
   U913 : AOI222_X1 port map( A1 => DATA1(13), A2 => n651, B1 => n637, B2 => 
                           DATA1(6), C1 => n652, C2 => DATA1(5), ZN => n989);
   U914 : AOI22_X1 port map( A1 => DATA1(3), A2 => n809, B1 => n621, B2 => 
                           DATA1(11), ZN => n654);
   U915 : AOI22_X1 port map( A1 => DATA1(2), A2 => n838, B1 => n677, B2 => 
                           DATA1(10), ZN => n732);
   U916 : NAND4_X1 port map( A1 => n992, A2 => n993, A3 => n994, A4 => n995, ZN
                           => n987);
   U917 : AOI221_X1 port map( B1 => DATA1(7), B2 => n631, C1 => DATA1(8), C2 =>
                           n632, A => n996, ZN => n995);
   U918 : OAI22_X1 port map( A1 => n634, A2 => n703, B1 => n618, B2 => n702, ZN
                           => n996);
   U919 : AOI222_X1 port map( A1 => n704, A2 => DATA1(12), B1 => n622, B2 => 
                           DATA1(9), C1 => n637, C2 => DATA1(6), ZN => n994);
   U920 : AOI222_X1 port map( A1 => n662, A2 => DATA1(4), B1 => n838, B2 => 
                           DATA1(2), C1 => n809, C2 => DATA1(3), ZN => n993);
   U921 : AOI222_X1 port map( A1 => DATA1(13), A2 => n651, B1 => n867, B2 => 
                           DATA1(1), C1 => n652, C2 => DATA1(5), ZN => n992);
   U922 : AOI222_X1 port map( A1 => n664, A2 => n621, B1 => N157, B2 => n638, 
                           C1 => N141, C2 => n663, ZN => n977);
   U923 : AOI22_X1 port map( A1 => n661, A2 => n866, B1 => n749, B2 => 
                           DATA1(12), ZN => n976);
   U924 : NAND4_X1 port map( A1 => n997, A2 => n998, A3 => n999, A4 => n1000, 
                           ZN => OUTALU(12));
   U925 : AOI211_X1 port map( C1 => DATA1(12), C2 => n1001, A => n1002, B => 
                           n1003, ZN => n1000);
   U926 : NOR3_X1 port map( A1 => n634, A2 => n700, A3 => n617, ZN => n1003);
   U927 : AOI21_X1 port map( B1 => n1004, B2 => n716, A => n1005, ZN => n1002);
   U928 : INV_X1 port map( A => DATA2(12), ZN => n1005);
   U929 : MUX2_X1 port map( A => n718, B => n614, S => n619, Z => n1004);
   U930 : OAI21_X1 port map( B1 => DATA2(12), B2 => n614, A => n719, ZN => 
                           n1001);
   U931 : AOI222_X1 port map( A1 => n639, A2 => n1006, B1 => DATA1(13), B2 => 
                           n626, C1 => n624, C2 => n1007, ZN => n999);
   U932 : NAND4_X1 port map( A1 => n1008, A2 => n1009, A3 => n1010, A4 => n1011
                           , ZN => n1007);
   U933 : AOI222_X1 port map( A1 => n677, A2 => DATA1(9), B1 => DATA1(6), B2 =>
                           n631, C1 => DATA1(7), C2 => n632, ZN => n1011);
   U934 : AOI222_X1 port map( A1 => n637, A2 => DATA1(5), B1 => DATA1(10), B2 
                           => n621, C1 => DATA1(8), C2 => n622, ZN => n1010);
   U935 : AOI222_X1 port map( A1 => n809, A2 => DATA1(2), B1 => n704, B2 => 
                           DATA1(11), C1 => n838, C2 => DATA1(1), ZN => n1009);
   U936 : AOI222_X1 port map( A1 => DATA1(12), A2 => n651, B1 => n662, B2 => 
                           DATA1(3), C1 => n652, C2 => DATA1(4), ZN => n1008);
   U937 : NAND4_X1 port map( A1 => n770, A2 => n687, A3 => n1012, A4 => n1013, 
                           ZN => n1006);
   U938 : NOR4_X1 port map( A1 => n835, A2 => n886, A3 => n960, A4 => n1014, ZN
                           => n1013);
   U939 : OAI22_X1 port map( A1 => n744, A2 => n857, B1 => n916, B2 => n858, ZN
                           => n960);
   U940 : OAI22_X1 port map( A1 => n635, A2 => n975, B1 => n618, B2 => n706, ZN
                           => n886);
   U941 : OAI22_X1 port map( A1 => n672, A2 => n917, B1 => n707, B2 => n747, ZN
                           => n835);
   U942 : AOI22_X1 port map( A1 => n637, A2 => DATA1(3), B1 => n652, B2 => 
                           DATA1(4), ZN => n1012);
   U943 : AOI22_X1 port map( A1 => DATA1(10), A2 => n802, B1 => n631, B2 => 
                           DATA1(2), ZN => n687);
   U944 : AOI22_X1 port map( A1 => DATA1(9), A2 => n866, B1 => n632, B2 => 
                           DATA1(1), ZN => n770);
   U945 : AOI222_X1 port map( A1 => N140, A2 => n663, B1 => n641, B2 => n1015, 
                           C1 => N156, C2 => n638, ZN => n998);
   U946 : NAND4_X1 port map( A1 => n777, A2 => n694, A3 => n1016, A4 => n1017, 
                           ZN => n1015);
   U947 : NOR4_X1 port map( A1 => n827, A2 => n878, A3 => n1018, A4 => n1019, 
                           ZN => n1017);
   U948 : OAI22_X1 port map( A1 => n937, A2 => n706, B1 => n616, B2 => n635, ZN
                           => n878);
   U949 : OAI22_X1 port map( A1 => n917, A2 => n747, B1 => n707, B2 => n672, ZN
                           => n827);
   U950 : AOI222_X1 port map( A1 => DATA1(12), A2 => n651, B1 => n637, B2 => 
                           DATA1(5), C1 => n652, C2 => DATA1(4), ZN => n1016);
   U951 : AOI22_X1 port map( A1 => DATA1(2), A2 => n809, B1 => n621, B2 => 
                           DATA1(10), ZN => n694);
   U952 : AOI22_X1 port map( A1 => DATA1(1), A2 => n838, B1 => DATA1(9), B2 => 
                           n677, ZN => n777);
   U953 : AOI222_X1 port map( A1 => n749, A2 => DATA1(11), B1 => n664, B2 => 
                           n677, C1 => n661, C2 => n867, ZN => n997);
   U954 : NAND4_X1 port map( A1 => n1020, A2 => n1021, A3 => n1022, A4 => n1023
                           , ZN => OUTALU(11));
   U955 : AOI221_X1 port map( B1 => n607, B2 => n1024, C1 => DATA1(11), C2 => 
                           n1025, A => n1026, ZN => n1023);
   U956 : AOI21_X1 port map( B1 => n1027, B2 => n716, A => n1028, ZN => n1026);
   U957 : INV_X1 port map( A => DATA2(11), ZN => n1028);
   U958 : MUX2_X1 port map( A => n718, B => n614, S => n703, Z => n1027);
   U959 : INV_X1 port map( A => n611, ZN => n718);
   U960 : OAI21_X1 port map( B1 => DATA2(11), B2 => n614, A => n719, ZN => 
                           n1025);
   U961 : NAND2_X1 port map( A1 => n607, A2 => n651, ZN => n719);
   U962 : OAI22_X1 port map( A1 => n634, A2 => n916, B1 => n617, B2 => n618, ZN
                           => n1024);
   U963 : AOI222_X1 port map( A1 => n639, A2 => n1029, B1 => DATA1(12), B2 => 
                           n626, C1 => n624, C2 => n1030, ZN => n1022);
   U964 : NAND4_X1 port map( A1 => n1031, A2 => n1032, A3 => n1033, A4 => n1034
                           , ZN => n1030);
   U965 : AOI222_X1 port map( A1 => DATA1(8), A2 => n677, B1 => DATA1(5), B2 =>
                           n631, C1 => DATA1(6), C2 => n632, ZN => n1034);
   U966 : AOI222_X1 port map( A1 => n637, A2 => DATA1(4), B1 => n621, B2 => 
                           DATA1(9), C1 => DATA1(7), C2 => n622, ZN => n1033);
   U967 : AOI222_X1 port map( A1 => n662, A2 => DATA1(2), B1 => DATA1(10), B2 
                           => n704, C1 => n809, C2 => DATA1(1), ZN => n1032);
   U968 : AOI22_X1 port map( A1 => n652, A2 => DATA1(3), B1 => DATA1(11), B2 =>
                           n651, ZN => n1031);
   U969 : NAND4_X1 port map( A1 => n801, A2 => n731, A3 => n1035, A4 => n1036, 
                           ZN => n1029);
   U970 : NOR4_X1 port map( A1 => n865, A2 => n904, A3 => n936, A4 => n991, ZN 
                           => n1036);
   U971 : OAI22_X1 port map( A1 => n745, A2 => n857, B1 => n619, B2 => n858, ZN
                           => n991);
   U972 : OAI22_X1 port map( A1 => n744, A2 => n922, B1 => n634, B2 => n916, ZN
                           => n936);
   U973 : OAI22_X1 port map( A1 => n636, A2 => n975, B1 => n617, B2 => n618, ZN
                           => n904);
   U974 : OAI22_X1 port map( A1 => n635, A2 => n917, B1 => n707, B2 => n706, ZN
                           => n865);
   U975 : AOI22_X1 port map( A1 => DATA1(2), A2 => n637, B1 => n652, B2 => 
                           DATA1(3), ZN => n1035);
   U976 : AOI22_X1 port map( A1 => DATA1(9), A2 => n802, B1 => n631, B2 => 
                           DATA1(1), ZN => n731);
   U977 : AOI22_X1 port map( A1 => DATA1(8), A2 => n866, B1 => n632, B2 => 
                           DATA1(0), ZN => n801);
   U978 : AOI222_X1 port map( A1 => N139, A2 => n663, B1 => n641, B2 => n1037, 
                           C1 => N155, C2 => n638, ZN => n1021);
   U979 : NAND4_X1 port map( A1 => n738, A2 => n660, A3 => n1038, A4 => n1039, 
                           ZN => n1037);
   U980 : NOR4_X1 port map( A1 => n808, A2 => n856, A3 => n921, A4 => n941, ZN 
                           => n1039);
   U981 : OAI22_X1 port map( A1 => n916, A2 => n905, B1 => n906, B2 => n744, ZN
                           => n941);
   U982 : OAI22_X1 port map( A1 => n617, A2 => n937, B1 => n616, B2 => n636, ZN
                           => n921);
   U983 : OAI22_X1 port map( A1 => n917, A2 => n706, B1 => n707, B2 => n635, ZN
                           => n856);
   U984 : OAI22_X1 port map( A1 => n975, A2 => n747, B1 => n618, B2 => n672, ZN
                           => n808);
   U985 : AOI222_X1 port map( A1 => DATA1(11), A2 => n651, B1 => n637, B2 => 
                           DATA1(4), C1 => n652, C2 => DATA1(3), ZN => n1038);
   U986 : AOI22_X1 port map( A1 => DATA1(2), A2 => n662, B1 => n704, B2 => 
                           DATA1(10), ZN => n660);
   U987 : AOI22_X1 port map( A1 => DATA1(1), A2 => n809, B1 => DATA1(9), B2 => 
                           n621, ZN => n738);
   U988 : AOI222_X1 port map( A1 => n749, A2 => DATA1(10), B1 => n664, B2 => 
                           n622, C1 => n661, C2 => n838, ZN => n1020);
   U989 : NAND4_X1 port map( A1 => n1040, A2 => n1041, A3 => n1042, A4 => n1043
                           , ZN => OUTALU(10));
   U990 : AOI222_X1 port map( A1 => DATA2(10), A2 => n1044, B1 => DATA1(10), B2
                           => n1045, C1 => n607, C2 => n1046, ZN => n1043);
   U991 : OAI222_X1 port map( A1 => n619, A2 => n634, B1 => n618, B2 => n916, 
                           C1 => n617, C2 => n707, ZN => n1046);
   U992 : OAI21_X1 port map( B1 => DATA2(10), B2 => n614, A => n615, ZN => 
                           n1045);
   U993 : AOI21_X1 port map( B1 => n651, B2 => n607, A => n1047, ZN => n615);
   U994 : INV_X1 port map( A => n673, ZN => n1047);
   U995 : AOI21_X1 port map( B1 => n651, B2 => n624, A => n1048, ZN => n673);
   U996 : INV_X1 port map( A => n742, ZN => n624);
   U997 : MUX2_X1 port map( A => n611, B => n612, S => n702, Z => n1044);
   U998 : AOI221_X1 port map( B1 => DATA1(9), B2 => n623, C1 => DATA1(11), C2 
                           => n626, A => n1049, ZN => n1042);
   U999 : AOI21_X1 port map( B1 => n1050, B2 => n1051, A => n742, ZN => n1049);
   U1000 : AOI221_X1 port map( B1 => DATA1(4), B2 => n631, C1 => DATA1(5), C2 
                           => n632, A => n1052, ZN => n1051);
   U1001 : OAI22_X1 port map( A1 => n634, A2 => n672, B1 => n618, B2 => n635, 
                           ZN => n1052);
   U1002 : INV_X1 port map( A => DATA1(8), ZN => n672);
   U1003 : AOI221_X1 port map( B1 => n662, B2 => DATA1(1), C1 => n652, C2 => 
                           DATA1(2), A => n1053, ZN => n1050);
   U1004 : OAI22_X1 port map( A1 => n748, A2 => n674, B1 => n707, B2 => n636, 
                           ZN => n1053);
   U1005 : OAI21_X1 port map( B1 => n700, B2 => n858, A => n1054, ZN => n626);
   U1006 : OAI21_X1 port map( B1 => n742, B2 => n858, A => n1055, ZN => n623);
   U1007 : AOI222_X1 port map( A1 => N154, A2 => n638, B1 => n639, B2 => n1056,
                           C1 => n641, C2 => n1057, ZN => n1041);
   U1008 : NAND4_X1 port map( A1 => n778, A2 => n695, A3 => n1058, A4 => n1059,
                           ZN => n1057);
   U1009 : NOR4_X1 port map( A1 => n828, A2 => n879, A3 => n974, A4 => n1060, 
                           ZN => n1059);
   U1010 : OAI22_X1 port map( A1 => n619, A2 => n905, B1 => n906, B2 => n745, 
                           ZN => n974);
   U1011 : OAI22_X1 port map( A1 => n617, A2 => n917, B1 => n707, B2 => n636, 
                           ZN => n879);
   U1012 : OAI22_X1 port map( A1 => n706, A2 => n975, B1 => n618, B2 => n635, 
                           ZN => n828);
   U1013 : AOI222_X1 port map( A1 => DATA1(10), A2 => n651, B1 => n637, B2 => 
                           DATA1(3), C1 => n652, C2 => DATA1(2), ZN => n1058);
   U1014 : AOI22_X1 port map( A1 => DATA1(1), A2 => n662, B1 => DATA1(9), B2 =>
                           n704, ZN => n695);
   U1015 : INV_X1 port map( A => n858, ZN => n704);
   U1016 : INV_X1 port map( A => n857, ZN => n662);
   U1017 : AOI22_X1 port map( A1 => n809, A2 => DATA1(0), B1 => n621, B2 => 
                           DATA1(8), ZN => n778);
   U1018 : NAND4_X1 port map( A1 => n837, A2 => n771, A3 => n1061, A4 => n1062,
                           ZN => n1056);
   U1019 : NOR4_X1 port map( A1 => n887, A2 => n961, A3 => n1019, A4 => n1063, 
                           ZN => n1062);
   U1020 : OAI22_X1 port map( A1 => n748, A2 => n857, B1 => n703, B2 => n858, 
                           ZN => n1019);
   U1021 : INV_X1 port map( A => DATA1(11), ZN => n703);
   U1022 : OAI22_X1 port map( A1 => n745, A2 => n922, B1 => n619, B2 => n634, 
                           ZN => n961);
   U1023 : INV_X1 port map( A => DATA1(4), ZN => n745);
   U1024 : OAI22_X1 port map( A1 => n636, A2 => n917, B1 => n617, B2 => n707, 
                           ZN => n887);
   U1025 : AOI22_X1 port map( A1 => DATA1(1), A2 => n637, B1 => n652, B2 => 
                           DATA1(2), ZN => n1061);
   U1026 : AOI22_X1 port map( A1 => DATA1(8), A2 => n802, B1 => n631, B2 => 
                           DATA1(0), ZN => n771);
   U1027 : AOI22_X1 port map( A1 => DATA1(7), A2 => n866, B1 => n632, B2 => 
                           DATA1(15), ZN => n837);
   U1028 : AOI222_X1 port map( A1 => n661, A2 => n809, B1 => N138, B2 => n663, 
                           C1 => n664, C2 => n632, ZN => n1040);
   U1029 : NAND4_X1 port map( A1 => n1064, A2 => n1065, A3 => n1066, A4 => 
                           n1067, ZN => OUTALU(0));
   U1030 : AOI222_X1 port map( A1 => DATA2(0), A2 => n1068, B1 => n664, B2 => 
                           n928, C1 => DATA1(0), C2 => n1069, ZN => n1067);
   U1031 : OAI21_X1 port map( B1 => DATA2(0), B2 => n614, A => n716, ZN => 
                           n1069);
   U1032 : INV_X1 port map( A => n1048, ZN => n716);
   U1033 : NOR3_X1 port map( A1 => FUNC_0_port, A2 => FUNC_1_port, A3 => n1070,
                           ZN => n1048);
   U1034 : INV_X1 port map( A => n612, ZN => n614);
   U1035 : MUX2_X1 port map( A => n611, B => n612, S => n747, Z => n1068);
   U1036 : NOR2_X1 port map( A1 => n1070, A2 => FUNC_1_port, ZN => n612);
   U1037 : AOI222_X1 port map( A1 => n696, A2 => DATA1(1), B1 => n639, B2 => 
                           n1073, C1 => n641, C2 => n1074, ZN => n1066);
   U1038 : NAND4_X1 port map( A1 => n772, A2 => n689, A3 => n1075, A4 => n1076,
                           ZN => n1074);
   U1039 : NOR4_X1 port map( A1 => n825, A2 => n973, A3 => n1014, A4 => n1063, 
                           ZN => n1076);
   U1040 : OAI22_X1 port map( A1 => n744, A2 => n975, B1 => n618, B2 => n916, 
                           ZN => n1063);
   U1041 : OAI22_X1 port map( A1 => n636, A2 => n922, B1 => n617, B2 => n634, 
                           ZN => n1014);
   U1042 : OAI22_X1 port map( A1 => n635, A2 => n857, B1 => n858, B2 => n706, 
                           ZN => n973);
   U1043 : INV_X1 port map( A => DATA1(15), ZN => n706);
   U1044 : OAI22_X1 port map( A1 => n786, A2 => n905, B1 => n906, B2 => n702, 
                           ZN => n825);
   U1045 : INV_X1 port map( A => DATA1(10), ZN => n702);
   U1046 : INV_X1 port map( A => DATA1(2), ZN => n786);
   U1047 : AOI222_X1 port map( A1 => DATA1(0), A2 => n651, B1 => n637, B2 => 
                           DATA1(9), C1 => DATA1(8), C2 => n652, ZN => n1075);
   U1048 : AOI22_X1 port map( A1 => DATA1(4), A2 => n867, B1 => DATA1(12), B2 
                           => n622, ZN => n689);
   U1049 : AOI22_X1 port map( A1 => DATA1(3), A2 => n866, B1 => n632, B2 => 
                           DATA1(11), ZN => n772);
   U1050 : INV_X1 port map( A => n616, ZN => n632);
   U1051 : NAND4_X1 port map( A1 => n765, A2 => n681, A3 => n1077, A4 => n1078,
                           ZN => n1073);
   U1052 : NOR4_X1 port map( A1 => n1079, A2 => n884, A3 => n1018, A4 => n1060,
                           ZN => n1078);
   U1053 : OAI22_X1 port map( A1 => n916, A2 => n937, B1 => n616, B2 => n744, 
                           ZN => n1060);
   U1054 : INV_X1 port map( A => DATA1(13), ZN => n916);
   U1055 : OAI22_X1 port map( A1 => n617, A2 => n905, B1 => n906, B2 => n636, 
                           ZN => n1018);
   U1056 : INV_X1 port map( A => DATA1(6), ZN => n636);
   U1057 : INV_X1 port map( A => DATA1(14), ZN => n617);
   U1058 : OAI22_X1 port map( A1 => n613, A2 => n857, B1 => n628, B2 => n858, 
                           ZN => n884);
   U1059 : INV_X1 port map( A => n830, ZN => n1079);
   U1060 : AOI22_X1 port map( A1 => DATA1(10), A2 => n809, B1 => n621, B2 => 
                           DATA1(2), ZN => n830);
   U1061 : AOI22_X1 port map( A1 => n637, A2 => DATA1(7), B1 => DATA1(8), B2 =>
                           n652, ZN => n1077);
   U1062 : AOI22_X1 port map( A1 => DATA1(12), A2 => n867, B1 => n622, B2 => 
                           DATA1(4), ZN => n681);
   U1063 : INV_X1 port map( A => n917, ZN => n867);
   U1064 : AOI22_X1 port map( A1 => DATA1(11), A2 => n838, B1 => n677, B2 => 
                           DATA1(3), ZN => n765);
   U1065 : INV_X1 port map( A => n618, ZN => n677);
   U1066 : INV_X1 port map( A => n1054, ZN => n696);
   U1067 : NAND2_X1 port map( A1 => n928, A2 => n641, ZN => n1054);
   U1068 : AND2_X1 port map( A1 => FUNC_3_port, A2 => n1080, ZN => n641);
   U1069 : AOI222_X1 port map( A1 => n607, A2 => n1081, B1 => N144, B2 => n638,
                           C1 => N128, C2 => n663, ZN => n1065);
   U1070 : INV_X1 port map( A => n1082, ZN => n663);
   U1071 : AOI21_X1 port map( B1 => n1083, B2 => n1080, A => n602, ZN => n1082)
                           ;
   U1072 : NOR3_X1 port map( A1 => FUNC_1_port, A2 => FUNC_2_port, A3 => 
                           FUNC_0_port, ZN => n1080);
   U1073 : NAND4_X1 port map( A1 => n1084, A2 => n1085, A3 => n1086, A4 => 
                           n1087, ZN => n1081);
   U1074 : AOI221_X1 port map( B1 => n802, B2 => DATA1(14), C1 => DATA1(6), C2 
                           => n631, A => n1088, ZN => n1087);
   U1075 : OAI22_X1 port map( A1 => n618, A2 => n748, B1 => n616, B2 => n744, 
                           ZN => n1088);
   U1076 : INV_X1 port map( A => DATA1(5), ZN => n744);
   U1077 : NAND2_X1 port map( A1 => n1089, A2 => n1090, ZN => n616);
   U1078 : INV_X1 port map( A => DATA1(3), ZN => n748);
   U1079 : NAND2_X1 port map( A1 => n1092, A2 => n1093, ZN => n906);
   U1080 : INV_X1 port map( A => n905, ZN => n802);
   U1081 : NAND2_X1 port map( A1 => n1094, A2 => n1092, ZN => n905);
   U1082 : AOI221_X1 port map( B1 => DATA1(2), B2 => n621, C1 => DATA1(4), C2 
                           => n622, A => n1095, ZN => n1086);
   U1083 : OAI22_X1 port map( A1 => n628, A2 => n858, B1 => n635, B2 => n674, 
                           ZN => n1095);
   U1084 : NAND2_X1 port map( A1 => n1092, A2 => n1089, ZN => n674);
   U1085 : INV_X1 port map( A => DATA1(7), ZN => n635);
   U1086 : NAND2_X1 port map( A1 => n1089, A2 => n1096, ZN => n858);
   U1087 : NOR2_X1 port map( A1 => n1097, A2 => DATA2(3), ZN => n1089);
   U1088 : INV_X1 port map( A => DATA1(1), ZN => n628);
   U1089 : INV_X1 port map( A => n707, ZN => n622);
   U1090 : NAND2_X1 port map( A1 => n1090, A2 => n1093, ZN => n707);
   U1091 : INV_X1 port map( A => n634, ZN => n621);
   U1092 : NAND2_X1 port map( A1 => n1091, A2 => n1093, ZN => n634);
   U1093 : AOI221_X1 port map( B1 => n838, B2 => DATA1(11), C1 => n809, C2 => 
                           DATA1(10), A => n1098, ZN => n1085);
   U1094 : OAI22_X1 port map( A1 => n619, A2 => n917, B1 => n613, B2 => n857, 
                           ZN => n1098);
   U1095 : NAND2_X1 port map( A1 => n1099, A2 => n1096, ZN => n857);
   U1096 : INV_X1 port map( A => DATA1(9), ZN => n613);
   U1097 : NAND2_X1 port map( A1 => n1094, A2 => n1090, ZN => n917);
   U1098 : INV_X1 port map( A => DATA1(12), ZN => n619);
   U1099 : INV_X1 port map( A => n922, ZN => n809);
   U1100 : NAND2_X1 port map( A1 => n1094, A2 => n1091, ZN => n922);
   U1101 : INV_X1 port map( A => n975, ZN => n838);
   U1102 : NAND2_X1 port map( A1 => n1099, A2 => n1091, ZN => n975);
   U1103 : NOR2_X1 port map( A1 => n1100, A2 => DATA2(2), ZN => n1091);
   U1104 : AOI222_X1 port map( A1 => DATA1(0), A2 => n651, B1 => DATA1(8), B2 
                           => n652, C1 => n866, C2 => DATA1(13), ZN => n1084);
   U1105 : INV_X1 port map( A => n937, ZN => n866);
   U1106 : NAND2_X1 port map( A1 => n1099, A2 => n1090, ZN => n937);
   U1107 : NOR2_X1 port map( A1 => n1101, A2 => DATA2(1), ZN => n1090);
   U1108 : NAND2_X1 port map( A1 => n1094, A2 => n1096, ZN => n627);
   U1109 : NOR2_X1 port map( A1 => n1102, A2 => DATA2(0), ZN => n1094);
   U1110 : INV_X1 port map( A => n700, ZN => n607);
   U1111 : NAND2_X1 port map( A1 => n1103, A2 => FUNC_0_port, ZN => n700);
   U1112 : AOI22_X1 port map( A1 => n661, A2 => n651, B1 => n749, B2 => 
                           DATA1(15), ZN => n1064);
   U1113 : INV_X1 port map( A => n1055, ZN => n749);
   U1114 : NAND2_X1 port map( A1 => n639, A2 => n928, ZN => n1055);
   U1115 : AND2_X1 port map( A1 => n1099, A2 => n1092, ZN => n928);
   U1116 : NOR2_X1 port map( A1 => n1100, A2 => n1101, ZN => n1092);
   U1117 : INV_X1 port map( A => DATA2(2), ZN => n1101);
   U1118 : INV_X1 port map( A => DATA2(1), ZN => n1100);
   U1119 : NOR2_X1 port map( A1 => n1102, A2 => n1097, ZN => n1099);
   U1120 : INV_X1 port map( A => DATA2(0), ZN => n1097);
   U1121 : INV_X1 port map( A => DATA2(3), ZN => n1102);
   U1122 : NOR2_X1 port map( A1 => DATA2(3), A2 => DATA2(0), ZN => n1093);
   U1123 : NOR2_X1 port map( A1 => DATA2(2), A2 => DATA2(1), ZN => n1096);
   U1124 : NAND2_X1 port map( A1 => n1103, A2 => n1072, ZN => n742);
   U1125 : INV_X1 port map( A => FUNC_0_port, ZN => n1072);
   U1126 : AND4_X1 port map( A1 => n1104, A2 => n1105, A3 => n1106, A4 => n1107
                           , ZN => n1103);
   U1127 : NOR4_X1 port map( A1 => DATA2(9), A2 => DATA2(8), A3 => DATA2(7), A4
                           => DATA2(6), ZN => n1107);
   U1128 : NOR3_X1 port map( A1 => DATA2(15), A2 => DATA2(5), A3 => DATA2(4), 
                           ZN => n1106);
   U1129 : NOR4_X1 port map( A1 => DATA2(14), A2 => DATA2(13), A3 => DATA2(12),
                           A4 => DATA2(11), ZN => n1105);
   U1130 : NOR3_X1 port map( A1 => n1071, A2 => DATA2(10), A3 => n1070, ZN => 
                           n1104);
   U1131 : NAND2_X1 port map( A1 => FUNC_2_port, A2 => n1083, ZN => n1070);
   U1132 : INV_X1 port map( A => FUNC_3_port, ZN => n1083);
   U1133 : INV_X1 port map( A => FUNC_1_port, ZN => n1071);
   U1134 : INV_X1 port map( A => DATA1(0), ZN => n747);

end SYN_BEHAVIOR;
