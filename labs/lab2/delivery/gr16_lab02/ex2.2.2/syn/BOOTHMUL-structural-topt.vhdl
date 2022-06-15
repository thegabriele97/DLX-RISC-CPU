
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_multiplier_NBIT16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_multiplier_NBIT16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity encoder_7 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_7;

architecture SYN_beahavioral of encoder_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal vp_1_port, n2, n3, vp_0_port : std_logic;

begin
   vp <= ( b(2), vp_1_port, vp_0_port );
   
   U1 : AND2_X1 port map( A1 => n2, A2 => n3, ZN => vp_1_port);
   U2 : XNOR2_X1 port map( A => b(0), B => b(1), ZN => n2);
   U3 : XOR2_X1 port map( A => b(0), B => b(2), Z => n3);
   U4 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity encoder_4 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_4;

architecture SYN_beahavioral of encoder_4 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, vp_0_port, n4 : std_logic;

begin
   vp <= ( b(2), n3, vp_0_port );
   
   U3 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);
   U1 : NOR2_X1 port map( A1 => vp_0_port, A2 => n4, ZN => n3);
   U2 : XNOR2_X1 port map( A => b(0), B => b(2), ZN => n4);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity encoder_3 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_3;

architecture SYN_beahavioral of encoder_3 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, vp_0_port, n4 : std_logic;

begin
   vp <= ( b(2), n3, vp_0_port );
   
   U3 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);
   U1 : NOR2_X1 port map( A1 => vp_0_port, A2 => n4, ZN => n3);
   U2 : XNOR2_X1 port map( A => b(0), B => b(2), ZN => n4);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity encoder_1 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_1;

architecture SYN_beahavioral of encoder_1 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal vp_1_port, vp_0_port, n2 : std_logic;

begin
   vp <= ( b(2), vp_1_port, vp_0_port );
   
   U3 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);
   U1 : NOR2_X1 port map( A1 => vp_0_port, A2 => n2, ZN => vp_1_port);
   U2 : XNOR2_X1 port map( A => b(0), B => b(2), ZN => n2);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT31_DW01_addsub_0 is

   port( A, B : in std_logic_vector (31 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (31 downto 0);  CO : out std_logic);

end adder_NBIT31_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT31_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_28_port, carry_27_port, carry_26_port, carry_22_port, 
      carry_21_port, carry_20_port, carry_19_port, carry_18_port, carry_17_port
      , carry_16_port, carry_15_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port, carry_1_port, B_AS_31_port, B_AS_28_port, B_AS_27_port, 
      B_AS_23_port, B_AS_22_port, B_AS_21_port, B_AS_20_port, B_AS_19_port, 
      B_AS_18_port, B_AS_17_port, B_AS_16_port, B_AS_15_port, B_AS_14_port, 
      B_AS_13_port, B_AS_12_port, B_AS_11_port, B_AS_10_port, B_AS_9_port, 
      B_AS_8_port, B_AS_7_port, B_AS_6_port, B_AS_5_port, B_AS_4_port, 
      B_AS_3_port, B_AS_2_port, B_AS_1_port, B_AS_0_port, net15240, net15238, 
      net15236, net15802, net15810, net15815, net15814, net15818, net15827, 
      net15835, net15858, net15857, net15856, net15945, net15953, net16168, 
      net16218, net16238, net16237, net15952, net15800, carry_31_port, net16175
      , net16174, net15813, net15812, net15809, net15808, net15807, net15819, 
      net15854, net15853, net15852, net19804, net19808, net19835, net15803, 
      carry_30_port, carry_29_port, net15922, net15838, net15837, carry_23_port
      , B_AS_24_port, net15836, net15951, net19833, net19824, net16262, 
      net16243, net15830, net15829, net15828, net15821, net15820, carry_25_port
      , carry_24_port, B_AS_25_port, net16306, net15804, B_AS_29_port, net16212
      , net15817, net15816, B_AS_26_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, 
      n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24
      , n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, 
      n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52 : 
      std_logic;

begin
   
   U1_16 : FA_X1 port map( A => A(16), B => B_AS_16_port, CI => carry_16_port, 
                           CO => carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => carry_16_port, S => SUM(15));
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
   U1_0 : FA_X1 port map( A => A(0), B => B_AS_0_port, CI => net15236, CO => 
                           carry_1_port, S => SUM(0));
   U1 : XOR2_X1 port map( A => B(9), B => net15236, Z => B_AS_9_port);
   U2 : XOR2_X1 port map( A => B(8), B => net15236, Z => B_AS_8_port);
   U3 : XOR2_X1 port map( A => B(7), B => net15236, Z => B_AS_7_port);
   U4 : XOR2_X1 port map( A => B(6), B => net15238, Z => B_AS_6_port);
   U5 : XOR2_X1 port map( A => B(5), B => net15236, Z => B_AS_5_port);
   U6 : XOR2_X1 port map( A => B(4), B => net15236, Z => B_AS_4_port);
   U7 : XOR2_X1 port map( A => B(3), B => net15236, Z => B_AS_3_port);
   U9 : XOR2_X1 port map( A => B(2), B => net15236, Z => B_AS_2_port);
   U20 : XOR2_X1 port map( A => B(1), B => net15238, Z => B_AS_1_port);
   U22 : XOR2_X1 port map( A => B(18), B => net15238, Z => B_AS_18_port);
   U23 : XOR2_X1 port map( A => B(17), B => net15238, Z => B_AS_17_port);
   U24 : XOR2_X1 port map( A => B(16), B => net15238, Z => B_AS_16_port);
   U25 : XOR2_X1 port map( A => B(15), B => net15238, Z => B_AS_15_port);
   U26 : XOR2_X1 port map( A => B(14), B => net15240, Z => B_AS_14_port);
   U27 : XOR2_X1 port map( A => B(13), B => net15240, Z => B_AS_13_port);
   U28 : XOR2_X1 port map( A => B(12), B => net15240, Z => B_AS_12_port);
   U29 : XOR2_X1 port map( A => B(11), B => net15240, Z => B_AS_11_port);
   U30 : XOR2_X1 port map( A => B(10), B => net15240, Z => B_AS_10_port);
   U31 : XOR2_X1 port map( A => B(0), B => net15236, Z => B_AS_0_port);
   U8 : CLKBUF_X1 port map( A => net15858, Z => n1);
   U10 : CLKBUF_X1 port map( A => A(29), Z => n2);
   U11 : CLKBUF_X1 port map( A => net15856, Z => n3);
   U12 : CLKBUF_X1 port map( A => A(25), Z => n4);
   U13 : CLKBUF_X1 port map( A => A(28), Z => n5);
   U14 : CLKBUF_X1 port map( A => net15813, Z => n6);
   U15 : XOR2_X1 port map( A => B(19), B => net15238, Z => B_AS_19_port);
   U16 : XOR2_X1 port map( A => B(20), B => net15238, Z => B_AS_20_port);
   U17 : XOR2_X1 port map( A => B(21), B => net15238, Z => B_AS_21_port);
   U18 : XOR2_X1 port map( A => B(22), B => net15238, Z => B_AS_22_port);
   U19 : XOR2_X1 port map( A => B(23), B => net15238, Z => B_AS_23_port);
   U21 : XOR2_X1 port map( A => B(24), B => net15238, Z => B_AS_24_port);
   U32 : XOR2_X1 port map( A => B(25), B => net15238, Z => B_AS_25_port);
   U33 : XOR2_X1 port map( A => B(26), B => net15236, Z => B_AS_26_port);
   U34 : XOR2_X1 port map( A => B(27), B => net15236, Z => B_AS_27_port);
   U35 : XOR2_X1 port map( A => B(28), B => net15236, Z => B_AS_28_port);
   U36 : XOR2_X1 port map( A => B(29), B => net15236, Z => B_AS_29_port);
   U37 : XOR2_X1 port map( A => net15240, B => B(31), Z => B_AS_31_port);
   U38 : CLKBUF_X1 port map( A => n47, Z => n7);
   U39 : CLKBUF_X1 port map( A => A(19), Z => n8);
   U40 : CLKBUF_X1 port map( A => A(23), Z => n9);
   U41 : CLKBUF_X1 port map( A => A(26), Z => n10);
   U42 : NAND3_X1 port map( A1 => net15856, A2 => net15858, A3 => net15857, ZN 
                           => n11);
   U43 : CLKBUF_X1 port map( A => n32, Z => n12);
   U44 : CLKBUF_X1 port map( A => n45, Z => n13);
   U45 : CLKBUF_X1 port map( A => n33, Z => n14);
   U46 : NAND2_X1 port map( A1 => net16212, A2 => B_AS_26_port, ZN => net15816)
                           ;
   U47 : NAND3_X1 port map( A1 => net15816, A2 => net15817, A3 => net15815, ZN 
                           => net15951);
   U48 : NAND3_X1 port map( A1 => net15816, A2 => net15817, A3 => net15815, ZN 
                           => carry_27_port);
   U49 : NAND3_X1 port map( A1 => net15819, A2 => net15820, A3 => net15821, ZN 
                           => net16212);
   U50 : CLKBUF_X1 port map( A => net16212, Z => net15953);
   U51 : XOR2_X1 port map( A => n10, B => B_AS_26_port, Z => net15814);
   U52 : NAND2_X1 port map( A1 => A(26), A2 => B_AS_26_port, ZN => net15817);
   U53 : BUF_X1 port map( A => ADD_SUB, Z => net15236);
   U54 : NAND3_X1 port map( A1 => net15819, A2 => net15820, A3 => net15821, ZN 
                           => carry_26_port);
   U55 : BUF_X1 port map( A => ADD_SUB, Z => net15240);
   U56 : BUF_X1 port map( A => ADD_SUB, Z => net15238);
   U57 : NAND2_X1 port map( A1 => net16306, A2 => B_AS_29_port, ZN => net15804)
                           ;
   U58 : NAND3_X1 port map( A1 => net15804, A2 => net15803, A3 => n15, ZN => 
                           net15952);
   U59 : NAND3_X1 port map( A1 => net15804, A2 => net15803, A3 => n15, ZN => 
                           carry_30_port);
   U60 : NAND3_X1 port map( A1 => net15808, A2 => net15807, A3 => net15809, ZN 
                           => net16306);
   U61 : CLKBUF_X1 port map( A => net16306, Z => net16168);
   U62 : XOR2_X1 port map( A => n2, B => B_AS_29_port, Z => net15802);
   U63 : NAND2_X1 port map( A1 => A(29), A2 => B_AS_29_port, ZN => n15);
   U64 : NAND3_X1 port map( A1 => net15807, A2 => net15808, A3 => net15809, ZN 
                           => carry_29_port);
   U65 : NAND2_X1 port map( A1 => carry_25_port, A2 => B_AS_25_port, ZN => 
                           net15820);
   U66 : NAND3_X1 port map( A1 => net15828, A2 => net15830, A3 => net15829, ZN 
                           => carry_25_port);
   U67 : NAND2_X1 port map( A1 => A(25), A2 => B_AS_25_port, ZN => net15821);
   U68 : XOR2_X1 port map( A => n4, B => B_AS_25_port, Z => net15818);
   U69 : NAND2_X1 port map( A1 => A(24), A2 => net19824, ZN => net15828);
   U70 : CLKBUF_X1 port map( A => net15828, Z => net16243);
   U71 : NAND3_X1 port map( A1 => net15828, A2 => net15830, A3 => net15829, ZN 
                           => net16237);
   U72 : NAND3_X1 port map( A1 => net15836, A2 => net15838, A3 => net15837, ZN 
                           => net19824);
   U73 : NAND2_X1 port map( A1 => carry_24_port, A2 => B_AS_24_port, ZN => 
                           net15830);
   U74 : CLKBUF_X1 port map( A => net15830, Z => net16262);
   U75 : NAND3_X1 port map( A1 => net15836, A2 => net15838, A3 => net15837, ZN 
                           => carry_24_port);
   U76 : NAND2_X1 port map( A1 => A(24), A2 => B_AS_24_port, ZN => net15829);
   U77 : NAND3_X1 port map( A1 => net16243, A2 => net16262, A3 => net15829, ZN 
                           => net16238);
   U78 : CLKBUF_X1 port map( A => net15836, Z => net19833);
   U79 : NAND3_X1 port map( A1 => net19833, A2 => net15838, A3 => net15837, ZN 
                           => n16);
   U80 : XOR2_X1 port map( A => n16, B => B_AS_24_port, Z => net15827);
   U81 : NAND2_X1 port map( A1 => net15951, A2 => A(27), ZN => n17);
   U82 : NAND3_X1 port map( A1 => n17, A2 => net15813, A3 => net15812, ZN => 
                           net16175);
   U83 : NAND3_X1 port map( A1 => n17, A2 => net15813, A3 => net15812, ZN => 
                           net16174);
   U84 : CLKBUF_X1 port map( A => n17, Z => net19804);
   U85 : CLKBUF_X1 port map( A => net15951, Z => net19808);
   U86 : CLKBUF_X1 port map( A => A(27), Z => net19835);
   U87 : NAND2_X1 port map( A1 => A(27), A2 => B_AS_27_port, ZN => net15813);
   U88 : NAND2_X1 port map( A1 => n18, A2 => A(23), ZN => net15836);
   U89 : NAND3_X1 port map( A1 => net15853, A2 => net15852, A3 => net15854, ZN 
                           => n18);
   U90 : CLKBUF_X1 port map( A => n18, Z => net15922);
   U91 : NAND2_X1 port map( A1 => A(23), A2 => B_AS_23_port, ZN => net15837);
   U92 : NAND3_X1 port map( A1 => net15852, A2 => net15853, A3 => net15854, ZN 
                           => carry_23_port);
   U93 : NAND2_X1 port map( A1 => carry_23_port, A2 => B_AS_23_port, ZN => 
                           net15838);
   U94 : XOR2_X1 port map( A => net15922, B => B_AS_23_port, Z => net15835);
   U95 : CLKBUF_X1 port map( A => n49, Z => n19);
   U96 : NAND3_X1 port map( A1 => n44, A2 => n43, A3 => n45, ZN => n20);
   U97 : NAND3_X1 port map( A1 => n44, A2 => n43, A3 => n13, ZN => n21);
   U98 : NAND3_X1 port map( A1 => n47, A2 => n49, A3 => n48, ZN => n22);
   U99 : NAND3_X1 port map( A1 => n7, A2 => n19, A3 => n48, ZN => n23);
   U100 : CLKBUF_X1 port map( A => carry_17_port, Z => n24);
   U101 : NAND3_X1 port map( A1 => net15856, A2 => net15857, A3 => net15858, ZN
                           => n25);
   U102 : CLKBUF_X1 port map( A => A(21), Z => n26);
   U103 : NAND3_X1 port map( A1 => n35, A2 => n36, A3 => n37, ZN => n27);
   U104 : NAND3_X1 port map( A1 => n33, A2 => n32, A3 => n31, ZN => n28);
   U105 : NAND3_X1 port map( A1 => n31, A2 => n12, A3 => n14, ZN => n29);
   U106 : XOR2_X1 port map( A => A(17), B => B_AS_17_port, Z => n30);
   U107 : XOR2_X1 port map( A => n30, B => n24, Z => SUM(17));
   U108 : NAND2_X1 port map( A1 => A(17), A2 => B_AS_17_port, ZN => n31);
   U109 : NAND2_X1 port map( A1 => A(17), A2 => carry_17_port, ZN => n32);
   U110 : NAND2_X1 port map( A1 => B_AS_17_port, A2 => carry_17_port, ZN => n33
                           );
   U111 : NAND3_X1 port map( A1 => n33, A2 => n32, A3 => n31, ZN => 
                           carry_18_port);
   U112 : XOR2_X1 port map( A => A(18), B => B_AS_18_port, Z => n34);
   U113 : XOR2_X1 port map( A => n34, B => n29, Z => SUM(18));
   U114 : NAND2_X1 port map( A1 => A(18), A2 => B_AS_18_port, ZN => n35);
   U115 : NAND2_X1 port map( A1 => A(18), A2 => n28, ZN => n36);
   U116 : NAND2_X1 port map( A1 => B_AS_18_port, A2 => carry_18_port, ZN => n37
                           );
   U117 : NAND3_X1 port map( A1 => n35, A2 => n36, A3 => n37, ZN => 
                           carry_19_port);
   U118 : CLKBUF_X1 port map( A => carry_30_port, Z => net16218);
   U119 : NAND2_X1 port map( A1 => carry_30_port, A2 => B_AS_31_port, ZN => 
                           net15800);
   U120 : NAND2_X1 port map( A1 => A(29), A2 => carry_29_port, ZN => net15803);
   U121 : XNOR2_X1 port map( A => net16218, B => n38, ZN => SUM(30));
   U122 : XNOR2_X1 port map( A => A(30), B => B_AS_31_port, ZN => n38);
   U123 : NAND2_X1 port map( A1 => A(22), A2 => B_AS_22_port, ZN => net15853);
   U124 : NAND2_X1 port map( A1 => A(22), A2 => n25, ZN => net15852);
   U125 : NAND2_X1 port map( A1 => n11, A2 => B_AS_22_port, ZN => net15854);
   U126 : NAND3_X1 port map( A1 => n3, A2 => n1, A3 => net15857, ZN => 
                           carry_22_port);
   U127 : NAND2_X1 port map( A1 => A(25), A2 => net16237, ZN => net15819);
   U128 : NAND2_X1 port map( A1 => net16175, A2 => B_AS_28_port, ZN => net15808
                           );
   U129 : NAND2_X1 port map( A1 => net16174, A2 => A(28), ZN => net15807);
   U130 : NAND2_X1 port map( A1 => A(28), A2 => B_AS_28_port, ZN => net15809);
   U131 : NAND2_X1 port map( A1 => carry_27_port, A2 => B_AS_27_port, ZN => 
                           net15812);
   U132 : NAND3_X1 port map( A1 => net19804, A2 => net15812, A3 => n6, ZN => 
                           carry_28_port);
   U133 : NAND2_X1 port map( A1 => A(26), A2 => carry_26_port, ZN => net15815);
   U134 : XOR2_X1 port map( A => net15810, B => net19808, Z => SUM(27));
   U135 : XNOR2_X1 port map( A => carry_31_port, B => n41, ZN => SUM(31));
   U136 : NAND3_X1 port map( A1 => net15800, A2 => n39, A3 => n40, ZN => 
                           carry_31_port);
   U137 : NAND2_X1 port map( A1 => A(30), A2 => net15952, ZN => n39);
   U138 : NAND2_X1 port map( A1 => A(30), A2 => B_AS_31_port, ZN => n40);
   U139 : XNOR2_X1 port map( A => A(31), B => B_AS_31_port, ZN => n41);
   U140 : CLKBUF_X1 port map( A => A(22), Z => net15945);
   U141 : XOR2_X1 port map( A => carry_19_port, B => B_AS_19_port, Z => n42);
   U142 : XOR2_X1 port map( A => n8, B => n42, Z => SUM(19));
   U143 : NAND2_X1 port map( A1 => A(19), A2 => n27, ZN => n43);
   U144 : NAND2_X1 port map( A1 => A(19), A2 => B_AS_19_port, ZN => n44);
   U145 : NAND2_X1 port map( A1 => carry_19_port, A2 => B_AS_19_port, ZN => n45
                           );
   U146 : NAND3_X1 port map( A1 => n45, A2 => n44, A3 => n43, ZN => 
                           carry_20_port);
   U147 : XOR2_X1 port map( A => n21, B => B_AS_20_port, Z => n46);
   U148 : XOR2_X1 port map( A => A(20), B => n46, Z => SUM(20));
   U149 : NAND2_X1 port map( A1 => A(20), A2 => n20, ZN => n47);
   U150 : NAND2_X1 port map( A1 => A(20), A2 => B_AS_20_port, ZN => n48);
   U151 : NAND2_X1 port map( A1 => carry_20_port, A2 => B_AS_20_port, ZN => n49
                           );
   U152 : NAND3_X1 port map( A1 => n47, A2 => n49, A3 => n48, ZN => 
                           carry_21_port);
   U153 : XOR2_X1 port map( A => n23, B => B_AS_21_port, Z => n50);
   U154 : XOR2_X1 port map( A => n26, B => n50, Z => SUM(21));
   U155 : NAND2_X1 port map( A1 => A(21), A2 => n22, ZN => net15856);
   U156 : NAND2_X1 port map( A1 => A(21), A2 => B_AS_21_port, ZN => net15857);
   U157 : NAND2_X1 port map( A1 => carry_21_port, A2 => B_AS_21_port, ZN => 
                           net15858);
   U158 : XOR2_X1 port map( A => carry_22_port, B => B_AS_22_port, Z => n51);
   U159 : XOR2_X1 port map( A => net15945, B => n51, Z => SUM(22));
   U160 : XOR2_X1 port map( A => n9, B => net15835, Z => SUM(23));
   U161 : XOR2_X1 port map( A => A(24), B => net15827, Z => SUM(24));
   U162 : XOR2_X1 port map( A => net16238, B => net15818, Z => SUM(25));
   U163 : XOR2_X1 port map( A => net15953, B => net15814, Z => SUM(26));
   U164 : XOR2_X1 port map( A => net19835, B => B_AS_27_port, Z => net15810);
   U165 : XOR2_X1 port map( A => n5, B => B_AS_28_port, Z => n52);
   U166 : XOR2_X1 port map( A => carry_28_port, B => n52, Z => SUM(28));
   U167 : XOR2_X1 port map( A => net16168, B => net15802, Z => SUM(29));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT29_DW01_addsub_0 is

   port( A, B : in std_logic_vector (29 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (29 downto 0);  CO : out std_logic);

end adder_NBIT29_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT29_DW01_addsub_0 is

   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_29_port, carry_27_port, carry_26_port, carry_25_port, 
      carry_24_port, B_AS_29_port, B_AS_27_port, B_AS_26_port, B_AS_25_port, 
      B_AS_24_port, B_AS_23_port, net15246, net15244, net15242, net15927, 
      net15926, net15932, B_AS_9_port, B_AS_8_port, B_AS_7_port, B_AS_6_port, 
      B_AS_5_port, B_AS_4_port, B_AS_3_port, B_AS_2_port, B_AS_18_port, 
      B_AS_17_port, B_AS_16_port, B_AS_15_port, B_AS_14_port, B_AS_13_port, 
      B_AS_12_port, B_AS_11_port, B_AS_10_port, net19811, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, carry_1_port, carry_17_port, carry_16_port, 
      carry_15_port, carry_14_port, carry_13_port, carry_12_port, carry_11_port
      , carry_10_port, B_AS_1_port, B_AS_0_port, net33317, net33316, net33315, 
      net33342, net33338, net33405, net33428, carry_23_port, carry_22_port, 
      carry_21_port, carry_20_port, carry_19_port, carry_18_port, B_AS_22_port,
      B_AS_21_port, B_AS_20_port, B_AS_19_port, n1, n2, n3, n4, n5, n6, n7, n8,
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51 : 
      std_logic;

begin
   
   U11 : XOR2_X1 port map( A => B(26), B => net15242, Z => B_AS_26_port);
   U12 : XOR2_X1 port map( A => B(25), B => net15242, Z => B_AS_25_port);
   U13 : XOR2_X1 port map( A => B(24), B => net15242, Z => B_AS_24_port);
   U14 : XOR2_X1 port map( A => B(23), B => net15244, Z => B_AS_23_port);
   U8 : XOR2_X1 port map( A => B(2), B => net15242, Z => B_AS_2_port);
   U7 : XOR2_X1 port map( A => B(3), B => net15242, Z => B_AS_3_port);
   U6 : XOR2_X1 port map( A => B(4), B => net15244, Z => B_AS_4_port);
   U5 : XOR2_X1 port map( A => B(5), B => net15242, Z => B_AS_5_port);
   U4 : XOR2_X1 port map( A => B(6), B => net15242, Z => B_AS_6_port);
   U3 : XOR2_X1 port map( A => B(7), B => net15242, Z => B_AS_7_port);
   U2 : XOR2_X1 port map( A => B(8), B => net15242, Z => B_AS_8_port);
   U1 : XOR2_X1 port map( A => B(9), B => net15242, Z => B_AS_9_port);
   U28 : XOR2_X1 port map( A => B(10), B => net15246, Z => B_AS_10_port);
   U27 : XOR2_X1 port map( A => B(11), B => net15246, Z => B_AS_11_port);
   U26 : XOR2_X1 port map( A => B(12), B => net15246, Z => B_AS_12_port);
   U25 : XOR2_X1 port map( A => B(13), B => net15244, Z => B_AS_13_port);
   U24 : XOR2_X1 port map( A => B(14), B => net15244, Z => B_AS_14_port);
   U23 : XOR2_X1 port map( A => B(15), B => net15244, Z => B_AS_15_port);
   U22 : XOR2_X1 port map( A => B(16), B => net15244, Z => B_AS_16_port);
   U21 : XOR2_X1 port map( A => B(17), B => net15244, Z => B_AS_17_port);
   U20 : XOR2_X1 port map( A => B(18), B => net15244, Z => B_AS_18_port);
   U18 : XOR2_X1 port map( A => B(1), B => net15244, Z => B_AS_1_port);
   U29 : XOR2_X1 port map( A => B(0), B => net15242, Z => B_AS_0_port);
   U1_0 : FA_X1 port map( A => A(0), B => B_AS_0_port, CI => net15242, CO => 
                           carry_1_port, S => SUM(0));
   U1_1 : FA_X1 port map( A => A(1), B => B_AS_1_port, CI => carry_1_port, CO 
                           => carry_2_port, S => SUM(1));
   U1_2 : FA_X1 port map( A => A(2), B => B_AS_2_port, CI => carry_2_port, CO 
                           => carry_3_port, S => SUM(2));
   U1_3 : FA_X1 port map( A => A(3), B => B_AS_3_port, CI => carry_3_port, CO 
                           => carry_4_port, S => SUM(3));
   U1_4 : FA_X1 port map( A => A(4), B => B_AS_4_port, CI => carry_4_port, CO 
                           => carry_5_port, S => SUM(4));
   U1_5 : FA_X1 port map( A => A(5), B => B_AS_5_port, CI => carry_5_port, CO 
                           => carry_6_port, S => SUM(5));
   U1_6 : FA_X1 port map( A => A(6), B => B_AS_6_port, CI => carry_6_port, CO 
                           => carry_7_port, S => SUM(6));
   U1_7 : FA_X1 port map( A => A(7), B => B_AS_7_port, CI => carry_7_port, CO 
                           => carry_8_port, S => SUM(7));
   U1_8 : FA_X1 port map( A => A(8), B => B_AS_8_port, CI => carry_8_port, CO 
                           => carry_9_port, S => SUM(8));
   U1_9 : FA_X1 port map( A => A(9), B => B_AS_9_port, CI => carry_9_port, CO 
                           => carry_10_port, S => SUM(9));
   U1_10 : FA_X1 port map( A => A(10), B => B_AS_10_port, CI => carry_10_port, 
                           CO => carry_11_port, S => SUM(10));
   U1_11 : FA_X1 port map( A => A(11), B => B_AS_11_port, CI => carry_11_port, 
                           CO => carry_12_port, S => SUM(11));
   U1_12 : FA_X1 port map( A => A(12), B => B_AS_12_port, CI => carry_12_port, 
                           CO => carry_13_port, S => SUM(12));
   U1_13 : FA_X1 port map( A => A(13), B => B_AS_13_port, CI => carry_13_port, 
                           CO => carry_14_port, S => SUM(13));
   U1_14 : FA_X1 port map( A => A(14), B => B_AS_14_port, CI => carry_14_port, 
                           CO => carry_15_port, S => SUM(14));
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => carry_16_port, S => SUM(15));
   U1_16 : FA_X1 port map( A => A(16), B => B_AS_16_port, CI => carry_16_port, 
                           CO => carry_17_port, S => SUM(16));
   U19 : XOR2_X1 port map( A => B(19), B => net15244, Z => B_AS_19_port);
   U15 : XOR2_X1 port map( A => B(22), B => net15244, Z => B_AS_22_port);
   U16 : XOR2_X1 port map( A => B(21), B => net15244, Z => B_AS_21_port);
   U17 : XOR2_X1 port map( A => B(20), B => net15244, Z => B_AS_20_port);
   U1_20 : FA_X1 port map( A => A(20), B => B_AS_20_port, CI => carry_20_port, 
                           CO => carry_21_port, S => SUM(20));
   U1_21 : FA_X1 port map( A => A(21), B => B_AS_21_port, CI => carry_21_port, 
                           CO => carry_22_port, S => SUM(21));
   U1_22 : FA_X1 port map( A => A(22), B => B_AS_22_port, CI => carry_22_port, 
                           CO => carry_23_port, S => SUM(22));
   U9 : XOR2_X1 port map( A => B(27), B => net15242, Z => B_AS_27_port);
   U10 : XOR2_X1 port map( A => net15246, B => B(29), Z => B_AS_29_port);
   U30 : CLKBUF_X1 port map( A => n6, Z => n1);
   U31 : CLKBUF_X1 port map( A => net33316, Z => n2);
   U32 : NAND2_X1 port map( A1 => n27, A2 => B_AS_24_port, ZN => n3);
   U33 : CLKBUF_X1 port map( A => carry_17_port, Z => n4);
   U34 : INV_X1 port map( A => B_AS_18_port, ZN => n11);
   U35 : INV_X1 port map( A => B_AS_26_port, ZN => n34);
   U36 : XNOR2_X1 port map( A => carry_23_port, B => net15932, ZN => SUM(23));
   U37 : NAND2_X1 port map( A1 => carry_23_port, A2 => net19811, ZN => net15926
                           );
   U38 : NAND2_X1 port map( A1 => carry_23_port, A2 => B_AS_23_port, ZN => 
                           net15927);
   U39 : NAND3_X1 port map( A1 => n10, A2 => n9, A3 => n8, ZN => carry_20_port)
                           ;
   U40 : NAND2_X1 port map( A1 => B_AS_19_port, A2 => carry_19_port, ZN => n10)
                           ;
   U41 : NAND3_X1 port map( A1 => n7, A2 => n6, A3 => n5, ZN => carry_19_port);
   U42 : NAND2_X1 port map( A1 => n13, A2 => A(19), ZN => n9);
   U43 : NAND3_X1 port map( A1 => n7, A2 => n6, A3 => n5, ZN => n13);
   U44 : NAND2_X1 port map( A1 => A(19), A2 => B_AS_19_port, ZN => n8);
   U45 : BUF_X1 port map( A => ADD_SUB, Z => net15244);
   U46 : XOR2_X1 port map( A => A(19), B => B_AS_19_port, Z => net33342);
   U47 : NAND2_X1 port map( A1 => B_AS_18_port, A2 => carry_18_port, ZN => n7);
   U48 : NAND3_X1 port map( A1 => n7, A2 => n1, A3 => n5, ZN => net33428);
   U49 : NAND3_X1 port map( A1 => net33315, A2 => net33316, A3 => net33317, ZN 
                           => carry_18_port);
   U50 : NAND2_X1 port map( A1 => n12, A2 => A(18), ZN => n6);
   U51 : NAND3_X1 port map( A1 => net33315, A2 => net33316, A3 => net33317, ZN 
                           => n12);
   U52 : NAND2_X1 port map( A1 => A(18), A2 => B_AS_18_port, ZN => n5);
   U53 : BUF_X1 port map( A => ADD_SUB, Z => net15246);
   U54 : BUF_X1 port map( A => ADD_SUB, Z => net15242);
   U55 : NAND3_X1 port map( A1 => net33315, A2 => n2, A3 => net33317, ZN => 
                           net33405);
   U56 : XNOR2_X1 port map( A => A(18), B => n11, ZN => net33338);
   U57 : BUF_X1 port map( A => A(25), Z => n18);
   U58 : BUF_X1 port map( A => A(24), Z => n14);
   U59 : XNOR2_X1 port map( A => n4, B => n15, ZN => SUM(17));
   U60 : XNOR2_X1 port map( A => A(17), B => B_AS_17_port, ZN => n15);
   U61 : XOR2_X1 port map( A => net33338, B => net33405, Z => SUM(18));
   U62 : XOR2_X1 port map( A => net33342, B => net33428, Z => SUM(19));
   U63 : NAND2_X1 port map( A1 => carry_17_port, A2 => A(17), ZN => net33315);
   U64 : NAND2_X1 port map( A1 => carry_17_port, A2 => B_AS_17_port, ZN => 
                           net33316);
   U65 : NAND2_X1 port map( A1 => A(17), A2 => B_AS_17_port, ZN => net33317);
   U66 : CLKBUF_X1 port map( A => A(27), Z => n16);
   U67 : BUF_X1 port map( A => A(26), Z => n23);
   U68 : NAND3_X1 port map( A1 => n40, A2 => n41, A3 => n39, ZN => n17);
   U69 : NAND3_X1 port map( A1 => net15927, A2 => net15926, A3 => n35, ZN => 
                           n19);
   U70 : XNOR2_X1 port map( A => n42, B => n20, ZN => SUM(26));
   U71 : AND3_X1 port map( A1 => n40, A2 => n41, A3 => n39, ZN => n20);
   U72 : NAND3_X1 port map( A1 => n45, A2 => n44, A3 => n43, ZN => n21);
   U73 : NAND3_X1 port map( A1 => n45, A2 => n44, A3 => n43, ZN => n22);
   U74 : BUF_X1 port map( A => A(23), Z => net19811);
   U75 : XNOR2_X1 port map( A => carry_29_port, B => n26, ZN => SUM(29));
   U76 : NAND3_X1 port map( A1 => n47, A2 => n46, A3 => n48, ZN => n24);
   U77 : NAND3_X1 port map( A1 => n46, A2 => n47, A3 => n48, ZN => n25);
   U78 : XNOR2_X1 port map( A => A(29), B => B_AS_29_port, ZN => n26);
   U79 : NAND3_X1 port map( A1 => net15927, A2 => net15926, A3 => n35, ZN => 
                           n27);
   U80 : XNOR2_X1 port map( A => n24, B => n28, ZN => SUM(28));
   U81 : XNOR2_X1 port map( A => A(28), B => B_AS_29_port, ZN => n28);
   U82 : XNOR2_X1 port map( A => n29, B => n21, ZN => SUM(27));
   U83 : XNOR2_X1 port map( A => A(27), B => B_AS_27_port, ZN => n29);
   U84 : NAND3_X1 port map( A1 => n3, A2 => n36, A3 => n37, ZN => n30);
   U85 : NAND3_X1 port map( A1 => n3, A2 => n36, A3 => n37, ZN => n31);
   U86 : XNOR2_X1 port map( A => n32, B => n19, ZN => SUM(24));
   U87 : XNOR2_X1 port map( A => A(24), B => B_AS_24_port, ZN => n32);
   U88 : XNOR2_X1 port map( A => n33, B => n31, ZN => SUM(25));
   U89 : XNOR2_X1 port map( A => A(25), B => B_AS_25_port, ZN => n33);
   U90 : XNOR2_X1 port map( A => A(26), B => n34, ZN => n42);
   U91 : XNOR2_X1 port map( A => A(23), B => B_AS_23_port, ZN => net15932);
   U92 : NAND2_X1 port map( A1 => net19811, A2 => B_AS_23_port, ZN => n35);
   U93 : NAND3_X1 port map( A1 => net15927, A2 => net15926, A3 => n35, ZN => 
                           carry_24_port);
   U94 : NAND2_X1 port map( A1 => n14, A2 => B_AS_24_port, ZN => n36);
   U95 : NAND2_X1 port map( A1 => carry_24_port, A2 => n14, ZN => n37);
   U96 : NAND2_X1 port map( A1 => n27, A2 => B_AS_24_port, ZN => n38);
   U97 : NAND3_X1 port map( A1 => n37, A2 => n36, A3 => n38, ZN => 
                           carry_25_port);
   U98 : NAND2_X1 port map( A1 => n18, A2 => B_AS_25_port, ZN => n39);
   U99 : NAND2_X1 port map( A1 => n30, A2 => n18, ZN => n40);
   U100 : NAND2_X1 port map( A1 => carry_25_port, A2 => B_AS_25_port, ZN => n41
                           );
   U101 : NAND3_X1 port map( A1 => n41, A2 => n40, A3 => n39, ZN => 
                           carry_26_port);
   U102 : NAND2_X1 port map( A1 => n23, A2 => B_AS_26_port, ZN => n43);
   U103 : NAND2_X1 port map( A1 => n17, A2 => n23, ZN => n44);
   U104 : NAND2_X1 port map( A1 => carry_26_port, A2 => B_AS_26_port, ZN => n45
                           );
   U105 : NAND3_X1 port map( A1 => n45, A2 => n44, A3 => n43, ZN => 
                           carry_27_port);
   U106 : NAND2_X1 port map( A1 => n22, A2 => n16, ZN => n46);
   U107 : NAND2_X1 port map( A1 => carry_27_port, A2 => B_AS_27_port, ZN => n47
                           );
   U108 : NAND2_X1 port map( A1 => n16, A2 => B_AS_27_port, ZN => n48);
   U109 : NAND2_X1 port map( A1 => n25, A2 => A(28), ZN => n49);
   U110 : NAND2_X1 port map( A1 => n25, A2 => B_AS_29_port, ZN => n50);
   U111 : NAND2_X1 port map( A1 => A(28), A2 => B_AS_29_port, ZN => n51);
   U112 : NAND3_X1 port map( A1 => n50, A2 => n49, A3 => n51, ZN => 
                           carry_29_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT27_DW01_addsub_0 is

   port( A, B : in std_logic_vector (27 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (27 downto 0);  CO : out std_logic);

end adder_NBIT27_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT27_DW01_addsub_0 is

   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal carry_27_port, carry_26_port, carry_25_port, carry_24_port, 
      B_AS_27_port, B_AS_25_port, B_AS_24_port, B_AS_23_port, net15252, 
      net15866, net15865, B_AS_20_port, B_AS_19_port, B_AS_18_port, 
      B_AS_17_port, B_AS_16_port, B_AS_15_port, B_AS_14_port, B_AS_9_port, 
      B_AS_8_port, B_AS_7_port, B_AS_6_port, B_AS_5_port, B_AS_13_port, 
      B_AS_12_port, B_AS_11_port, B_AS_10_port, carry_23_port, net32981, 
      net32889, net32857, net32856, net33659, net33658, net33649, net33668, 
      net33214, net32925, net32931, net32930, B_AS_22_port, n1, n2, n3, n4, n5,
      n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, 
      n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35
      , n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, 
      n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64
      , n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, 
      n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93
      , n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
      n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, 
      n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, 
      n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, 
      n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, 
      n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, 
      n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, 
      n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, 
      n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, 
      n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, 
      n215, n216, n217, n218, n219, n220, n221, n222, n223, n224 : std_logic;

begin
   
   U11 : XOR2_X1 port map( A => B(24), B => ADD_SUB, Z => B_AS_24_port);
   U12 : XOR2_X1 port map( A => B(23), B => ADD_SUB, Z => B_AS_23_port);
   U15 : XOR2_X1 port map( A => B(20), B => ADD_SUB, Z => B_AS_20_port);
   U19 : XOR2_X1 port map( A => B(17), B => ADD_SUB, Z => B_AS_17_port);
   U18 : XOR2_X1 port map( A => B(18), B => ADD_SUB, Z => B_AS_18_port);
   U17 : XOR2_X1 port map( A => B(19), B => ADD_SUB, Z => B_AS_19_port);
   U22 : XOR2_X1 port map( A => B(14), B => ADD_SUB, Z => B_AS_14_port);
   U21 : XOR2_X1 port map( A => B(15), B => ADD_SUB, Z => B_AS_15_port);
   U20 : XOR2_X1 port map( A => B(16), B => ADD_SUB, Z => B_AS_16_port);
   U5 : XOR2_X1 port map( A => B(5), B => ADD_SUB, Z => B_AS_5_port);
   U4 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U3 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U2 : XOR2_X1 port map( A => B(8), B => ADD_SUB, Z => B_AS_8_port);
   U1 : XOR2_X1 port map( A => B(9), B => ADD_SUB, Z => B_AS_9_port);
   U26 : XOR2_X1 port map( A => B(10), B => net15252, Z => B_AS_10_port);
   U25 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U24 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U23 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U13 : XOR2_X1 port map( A => B(22), B => ADD_SUB, Z => B_AS_22_port);
   U6 : BUF_X1 port map( A => n43, Z => n5);
   U7 : NAND2_X1 port map( A1 => n41, A2 => B_AS_5_port, ZN => n1);
   U8 : NAND2_X1 port map( A1 => n132, A2 => A(5), ZN => n2);
   U9 : CLKBUF_X1 port map( A => A(18), Z => n3);
   U10 : CLKBUF_X1 port map( A => A(17), Z => n4);
   U14 : INV_X1 port map( A => n101, ZN => n127);
   U16 : XNOR2_X1 port map( A => ADD_SUB, B => B(0), ZN => n100);
   U27 : NAND2_X1 port map( A1 => net32889, A2 => n100, ZN => n124);
   U28 : INV_X1 port map( A => B_AS_7_port, ZN => n86);
   U29 : XNOR2_X1 port map( A => ADD_SUB, B => B(21), ZN => net33658);
   U30 : INV_X1 port map( A => ADD_SUB, ZN => net32889);
   U31 : INV_X1 port map( A => n100, ZN => n125);
   U32 : XNOR2_X1 port map( A => ADD_SUB, B => B(1), ZN => n101);
   U33 : OR2_X1 port map( A1 => n150, A2 => n151, ZN => n152);
   U34 : INV_X1 port map( A => B_AS_5_port, ZN => n84);
   U35 : INV_X1 port map( A => B_AS_6_port, ZN => n85);
   U36 : AND2_X1 port map( A1 => n59, A2 => n58, ZN => n166);
   U37 : INV_X1 port map( A => B_AS_11_port, ZN => n90);
   U38 : NAND2_X1 port map( A1 => B_AS_11_port, A2 => n57, ZN => n60);
   U39 : NAND2_X1 port map( A1 => n187, A2 => n167, ZN => n57);
   U40 : AND2_X1 port map( A1 => n66, A2 => n67, ZN => n164);
   U41 : INV_X1 port map( A => B_AS_14_port, ZN => n93);
   U42 : NAND2_X1 port map( A1 => n182, A2 => n165, ZN => n65);
   U43 : AND2_X1 port map( A1 => n74, A2 => n75, ZN => n162);
   U44 : INV_X1 port map( A => B_AS_17_port, ZN => n96);
   U45 : NAND2_X1 port map( A1 => n177, A2 => n163, ZN => n73);
   U46 : INV_X1 port map( A => net33658, ZN => n16);
   U47 : XOR2_X1 port map( A => B(25), B => ADD_SUB, Z => B_AS_25_port);
   U48 : XOR2_X1 port map( A => net15252, B => B(27), Z => B_AS_27_port);
   U49 : XNOR2_X1 port map( A => n100, B => net32889, ZN => n123);
   U50 : XNOR2_X1 port map( A => n159, B => n101, ZN => n112);
   U51 : AND2_X1 port map( A1 => n38, A2 => n37, ZN => n159);
   U52 : NAND2_X1 port map( A1 => A(11), A2 => n138, ZN => n6);
   U53 : CLKBUF_X1 port map( A => A(20), Z => n7);
   U54 : CLKBUF_X1 port map( A => A(5), Z => n8);
   U55 : XOR2_X1 port map( A => B(4), B => ADD_SUB, Z => n9);
   U56 : XOR2_X1 port map( A => B(2), B => ADD_SUB, Z => n10);
   U57 : XNOR2_X1 port map( A => B(3), B => ADD_SUB, ZN => n102);
   U58 : INV_X1 port map( A => n102, ZN => n130);
   U59 : INV_X1 port map( A => B_AS_22_port, ZN => n11);
   U60 : INV_X1 port map( A => B_AS_20_port, ZN => n99);
   U61 : INV_X1 port map( A => B_AS_8_port, ZN => n87);
   U62 : XNOR2_X1 port map( A => A(3), B => n109, ZN => SUM(3));
   U63 : XNOR2_X1 port map( A => n12, B => B_AS_22_port, ZN => n13);
   U64 : XNOR2_X1 port map( A => n13, B => net33214, ZN => SUM(22));
   U65 : OAI21_X1 port map( B1 => net32925, B2 => n11, A => n15, ZN => n14);
   U66 : NAND2_X1 port map( A1 => net32931, A2 => n18, ZN => n12);
   U67 : OAI21_X1 port map( B1 => net33214, B2 => B_AS_22_port, A => n14, ZN =>
                           net32981);
   U68 : NAND2_X1 port map( A1 => A(21), A2 => n17, ZN => net32931);
   U69 : AND2_X1 port map( A1 => net32931, A2 => n18, ZN => n15);
   U70 : NAND2_X1 port map( A1 => n16, A2 => net33649, ZN => n18);
   U71 : NAND2_X1 port map( A1 => n16, A2 => net33649, ZN => net32930);
   U72 : CLKBUF_X1 port map( A => A(21), Z => net33668);
   U73 : NAND2_X1 port map( A1 => net32930, A2 => n17, ZN => net33659);
   U74 : NAND3_X1 port map( A1 => net32857, A2 => net32856, A3 => net33658, ZN 
                           => n17);
   U75 : INV_X1 port map( A => net32925, ZN => net33214);
   U76 : INV_X1 port map( A => A(22), ZN => net32925);
   U77 : CLKBUF_X1 port map( A => A(25), Z => n19);
   U78 : CLKBUF_X1 port map( A => A(23), Z => n20);
   U79 : XOR2_X1 port map( A => n188, B => n88, Z => n103);
   U80 : NAND2_X1 port map( A1 => n144, A2 => n23, ZN => n21);
   U81 : AND2_X2 port map( A1 => n21, A2 => n22, ZN => n79);
   U82 : OR2_X1 port map( A1 => n97, A2 => n76, ZN => n22);
   U83 : AND2_X1 port map( A1 => A(17), A2 => B_AS_18_port, ZN => n23);
   U84 : AND2_X1 port map( A1 => n43, A2 => n42, ZN => n24);
   U85 : AND2_X1 port map( A1 => n43, A2 => n42, ZN => n171);
   U86 : CLKBUF_X1 port map( A => A(24), Z => n25);
   U87 : XNOR2_X1 port map( A => net33668, B => net33659, ZN => SUM(21));
   U88 : NAND2_X1 port map( A1 => net32857, A2 => net32856, ZN => net33649);
   U89 : XNOR2_X1 port map( A => n8, B => n107, ZN => SUM(5));
   U90 : XNOR2_X1 port map( A => n26, B => B_AS_20_port, ZN => n111);
   U91 : NAND2_X1 port map( A1 => n83, A2 => n82, ZN => n26);
   U92 : XNOR2_X1 port map( A => n27, B => B_AS_10_port, ZN => n122);
   U93 : NAND2_X1 port map( A1 => n56, A2 => n189, ZN => n27);
   U94 : XNOR2_X1 port map( A => n28, B => carry_23_port, ZN => SUM(23));
   U95 : XNOR2_X1 port map( A => A(23), B => B_AS_23_port, ZN => n28);
   U96 : AND2_X1 port map( A1 => n82, A2 => n99, ZN => n29);
   U97 : XNOR2_X1 port map( A => n30, B => B_AS_13_port, ZN => n119);
   U98 : NAND2_X1 port map( A1 => n184, A2 => n64, ZN => n30);
   U99 : XNOR2_X1 port map( A => n152, B => n10, ZN => n110);
   U100 : XNOR2_X1 port map( A => n210, B => n31, ZN => SUM(26));
   U101 : XNOR2_X1 port map( A => A(26), B => B_AS_27_port, ZN => n31);
   U102 : XNOR2_X1 port map( A => n214, B => n32, ZN => SUM(24));
   U103 : XNOR2_X1 port map( A => A(24), B => B_AS_24_port, ZN => n32);
   U104 : AND2_X1 port map( A1 => n102, A2 => n39, ZN => n33);
   U105 : AND2_X1 port map( A1 => n40, A2 => n39, ZN => n170);
   U106 : XNOR2_X1 port map( A => n34, B => B_AS_16_port, ZN => n116);
   U107 : NAND2_X1 port map( A1 => n179, A2 => n72, ZN => n34);
   U108 : XNOR2_X1 port map( A => carry_25_port, B => n35, ZN => SUM(25));
   U109 : XNOR2_X1 port map( A => A(25), B => B_AS_25_port, ZN => n35);
   U110 : NAND2_X1 port map( A1 => A(0), A2 => n124, ZN => n38);
   U111 : XNOR2_X1 port map( A => A(0), B => n123, ZN => SUM(0));
   U112 : INV_X1 port map( A => net32981, ZN => carry_23_port);
   U113 : NAND2_X1 port map( A1 => n133, A2 => A(6), ZN => n49);
   U114 : NAND2_X1 port map( A1 => n44, A2 => B_AS_6_port, ZN => n48);
   U115 : AND2_X1 port map( A1 => n36, A2 => n127, ZN => n151);
   U116 : NAND2_X1 port map( A1 => n157, A2 => n85, ZN => n133);
   U117 : NAND2_X1 port map( A1 => n158, A2 => A(6), ZN => n153);
   U118 : OR2_X1 port map( A1 => n10, A2 => n151, ZN => n154);
   U119 : OR2_X1 port map( A1 => n154, A2 => n150, ZN => n128);
   U120 : OR2_X1 port map( A1 => n148, A2 => n9, ZN => n155);
   U121 : OR2_X1 port map( A1 => n156, A2 => n155, ZN => n131);
   U122 : AND2_X1 port map( A1 => n129, A2 => A(3), ZN => n156);
   U123 : NAND2_X1 port map( A1 => n132, A2 => A(5), ZN => n46);
   U124 : NAND2_X1 port map( A1 => n1, A2 => n2, ZN => n44);
   U125 : NAND2_X1 port map( A1 => n41, A2 => B_AS_5_port, ZN => n45);
   U126 : AND2_X2 port map( A1 => n46, A2 => n45, ZN => n157);
   U127 : NAND2_X1 port map( A1 => n171, A2 => n84, ZN => n132);
   U128 : XNOR2_X1 port map( A => n157, B => n85, ZN => n106);
   U129 : NAND2_X1 port map( A1 => n157, A2 => n85, ZN => n158);
   U130 : NAND2_X1 port map( A1 => n153, A2 => n48, ZN => n47);
   U131 : NAND2_X1 port map( A1 => n37, A2 => n160, ZN => n36);
   U132 : NAND2_X1 port map( A1 => n125, A2 => ADD_SUB, ZN => n37);
   U133 : AND2_X1 port map( A1 => A(1), A2 => n126, ZN => n150);
   U134 : XNOR2_X1 port map( A => A(1), B => n112, ZN => SUM(1));
   U135 : NAND2_X1 port map( A1 => A(2), A2 => n128, ZN => n40);
   U136 : XNOR2_X1 port map( A => A(2), B => n110, ZN => SUM(2));
   U137 : NAND2_X1 port map( A1 => A(0), A2 => n124, ZN => n160);
   U138 : NAND2_X1 port map( A1 => A(19), A2 => n146, ZN => n83);
   U139 : NAND2_X1 port map( A1 => n78, A2 => B_AS_19_port, ZN => n82);
   U140 : NAND2_X1 port map( A1 => A(19), A2 => n146, ZN => n161);
   U141 : INV_X1 port map( A => B_AS_19_port, ZN => n98);
   U142 : NAND2_X1 port map( A1 => n79, A2 => n80, ZN => n78);
   U143 : NAND2_X1 port map( A1 => A(18), A2 => n145, ZN => n80);
   U144 : NAND2_X1 port map( A1 => n143, A2 => A(16), ZN => n75);
   U145 : NAND2_X1 port map( A1 => n70, A2 => B_AS_16_port, ZN => n74);
   U146 : NAND2_X1 port map( A1 => A(16), A2 => n143, ZN => n163);
   U147 : INV_X1 port map( A => B_AS_16_port, ZN => n95);
   U148 : NAND2_X1 port map( A1 => n72, A2 => n179, ZN => n70);
   U149 : NAND2_X1 port map( A1 => A(15), A2 => n142, ZN => n72);
   U150 : NAND2_X1 port map( A1 => n178, A2 => B_AS_15_port, ZN => n71);
   U151 : NAND2_X1 port map( A1 => A(13), A2 => n140, ZN => n67);
   U152 : NAND2_X1 port map( A1 => n62, A2 => B_AS_13_port, ZN => n66);
   U153 : NAND2_X1 port map( A1 => A(13), A2 => n140, ZN => n165);
   U154 : INV_X1 port map( A => B_AS_13_port, ZN => n92);
   U155 : NAND2_X1 port map( A1 => n64, A2 => n184, ZN => n62);
   U156 : NAND2_X1 port map( A1 => A(12), A2 => n139, ZN => n64);
   U157 : NAND2_X1 port map( A1 => n183, A2 => B_AS_12_port, ZN => n63);
   U158 : NAND2_X1 port map( A1 => A(10), A2 => n137, ZN => n59);
   U159 : NAND2_X1 port map( A1 => n54, A2 => B_AS_10_port, ZN => n58);
   U160 : NAND2_X1 port map( A1 => A(10), A2 => n137, ZN => n167);
   U161 : INV_X1 port map( A => B_AS_10_port, ZN => n89);
   U162 : NAND2_X1 port map( A1 => n56, A2 => n189, ZN => n54);
   U163 : NAND2_X1 port map( A1 => A(9), A2 => n136, ZN => n56);
   U164 : NAND2_X1 port map( A1 => n188, A2 => B_AS_9_port, ZN => n55);
   U165 : NAND2_X1 port map( A1 => n134, A2 => A(7), ZN => n51);
   U166 : NAND2_X1 port map( A1 => n47, A2 => B_AS_7_port, ZN => n50);
   U167 : NAND2_X1 port map( A1 => n208, A2 => n49, ZN => n134);
   U168 : AND2_X1 port map( A1 => n37, A2 => n101, ZN => n169);
   U169 : NAND2_X1 port map( A1 => n38, A2 => n169, ZN => n126);
   U170 : NAND2_X1 port map( A1 => n152, A2 => n10, ZN => n39);
   U171 : NAND2_X1 port map( A1 => n33, A2 => n40, ZN => n129);
   U172 : XNOR2_X1 port map( A => n170, B => n102, ZN => n109);
   U173 : NAND2_X1 port map( A1 => A(4), A2 => n131, ZN => n43);
   U174 : NAND2_X1 port map( A1 => n172, A2 => n5, ZN => n41);
   U175 : NAND2_X1 port map( A1 => n149, A2 => n9, ZN => n42);
   U176 : NAND2_X1 port map( A1 => n149, A2 => n9, ZN => n172);
   U177 : XNOR2_X1 port map( A => n191, B => n9, ZN => n108);
   U178 : XNOR2_X1 port map( A => n24, B => n84, ZN => n107);
   U179 : AND2_X1 port map( A1 => n79, A2 => n98, ZN => n173);
   U180 : NAND2_X1 port map( A1 => n174, A2 => n173, ZN => n146);
   U181 : NAND2_X1 port map( A1 => n145, A2 => A(18), ZN => n174);
   U182 : NAND2_X1 port map( A1 => n82, A2 => n161, ZN => n81);
   U183 : NAND2_X1 port map( A1 => n29, A2 => n161, ZN => n147);
   U184 : INV_X1 port map( A => B_AS_18_port, ZN => n97);
   U185 : NAND2_X1 port map( A1 => n144, A2 => A(17), ZN => n77);
   U186 : NAND2_X1 port map( A1 => n162, A2 => n96, ZN => n144);
   U187 : NAND2_X1 port map( A1 => A(20), A2 => n147, ZN => net32857);
   U188 : NAND2_X1 port map( A1 => B_AS_20_port, A2 => n81, ZN => net32856);
   U189 : XNOR2_X1 port map( A => A(19), B => n113, ZN => SUM(19));
   U190 : XNOR2_X1 port map( A => n193, B => n97, ZN => n114);
   U191 : XNOR2_X1 port map( A => n114, B => n3, ZN => SUM(18));
   U192 : AND2_X1 port map( A1 => n71, A2 => n95, ZN => n175);
   U193 : NAND2_X1 port map( A1 => n176, A2 => n175, ZN => n143);
   U194 : NAND2_X1 port map( A1 => n142, A2 => A(15), ZN => n176);
   U195 : NAND2_X1 port map( A1 => n70, A2 => B_AS_16_port, ZN => n177);
   U196 : XNOR2_X1 port map( A => n162, B => n96, ZN => n115);
   U197 : XNOR2_X1 port map( A => n116, B => A(16), ZN => SUM(16));
   U198 : INV_X1 port map( A => B_AS_15_port, ZN => n94);
   U199 : NAND2_X1 port map( A1 => A(14), A2 => n141, ZN => n69);
   U200 : NAND2_X1 port map( A1 => n69, A2 => n68, ZN => n178);
   U201 : NAND2_X1 port map( A1 => n164, A2 => n93, ZN => n141);
   U202 : AND2_X1 port map( A1 => n63, A2 => n92, ZN => n180);
   U203 : NAND2_X1 port map( A1 => n181, A2 => n180, ZN => n140);
   U204 : NAND2_X1 port map( A1 => n139, A2 => A(12), ZN => n181);
   U205 : NAND2_X1 port map( A1 => n62, A2 => B_AS_13_port, ZN => n182);
   U206 : XNOR2_X1 port map( A => n164, B => n93, ZN => n118);
   U207 : INV_X1 port map( A => B_AS_12_port, ZN => n91);
   U208 : NAND2_X1 port map( A1 => A(11), A2 => n138, ZN => n61);
   U209 : NAND2_X1 port map( A1 => n61, A2 => n60, ZN => n183);
   U210 : NAND2_X1 port map( A1 => n166, A2 => n90, ZN => n138);
   U211 : AND2_X1 port map( A1 => n89, A2 => n55, ZN => n185);
   U212 : NAND2_X1 port map( A1 => n186, A2 => n185, ZN => n137);
   U213 : NAND2_X1 port map( A1 => n136, A2 => A(9), ZN => n186);
   U214 : NAND2_X1 port map( A1 => n54, A2 => B_AS_10_port, ZN => n187);
   U215 : XNOR2_X1 port map( A => n166, B => n90, ZN => n121);
   U216 : INV_X1 port map( A => B_AS_9_port, ZN => n88);
   U217 : NAND2_X1 port map( A1 => n135, A2 => A(8), ZN => n53);
   U218 : NAND2_X1 port map( A1 => n52, A2 => n53, ZN => n188);
   U219 : NAND2_X1 port map( A1 => n200, A2 => n51, ZN => n135);
   U220 : CLKBUF_X1 port map( A => n55, Z => n189);
   U221 : XNOR2_X1 port map( A => n168, B => n87, ZN => n104);
   U222 : CLKBUF_X1 port map( A => n148, Z => n190);
   U223 : OR2_X1 port map( A1 => n156, A2 => n190, ZN => n149);
   U224 : OR2_X1 port map( A1 => n156, A2 => n190, ZN => n191);
   U225 : AND2_X1 port map( A1 => n76, A2 => n97, ZN => n192);
   U226 : NAND2_X1 port map( A1 => n77, A2 => n192, ZN => n145);
   U227 : XNOR2_X1 port map( A => n195, B => n94, ZN => n117);
   U228 : XNOR2_X1 port map( A => n117, B => A(15), ZN => SUM(15));
   U229 : XNOR2_X1 port map( A => n119, B => A(13), ZN => SUM(13));
   U230 : NAND2_X1 port map( A1 => B_AS_17_port, A2 => n73, ZN => n76);
   U231 : AND2_X1 port map( A1 => n77, A2 => n76, ZN => n193);
   U232 : XNOR2_X1 port map( A => A(12), B => n120, ZN => SUM(12));
   U233 : AND2_X1 port map( A1 => n68, A2 => n94, ZN => n194);
   U234 : NAND2_X1 port map( A1 => n69, A2 => n194, ZN => n142);
   U235 : XNOR2_X1 port map( A => n122, B => A(10), ZN => SUM(10));
   U236 : XNOR2_X1 port map( A => n108, B => n199, ZN => SUM(4));
   U237 : NAND2_X1 port map( A1 => B_AS_14_port, A2 => n65, ZN => n68);
   U238 : AND2_X1 port map( A1 => n69, A2 => n68, ZN => n195);
   U239 : XNOR2_X1 port map( A => n103, B => A(9), ZN => SUM(9));
   U240 : BUF_X1 port map( A => n71, Z => n179);
   U241 : AND2_X1 port map( A1 => n60, A2 => n91, ZN => n196);
   U242 : NAND2_X1 port map( A1 => n6, A2 => n196, ZN => n139);
   U243 : XNOR2_X1 port map( A => n106, B => A(6), ZN => SUM(6));
   U244 : XNOR2_X1 port map( A => n197, B => B_AS_12_port, ZN => n120);
   U245 : NAND2_X1 port map( A1 => n6, A2 => n60, ZN => n197);
   U246 : AND2_X1 port map( A1 => n53, A2 => n88, ZN => n198);
   U247 : NAND2_X1 port map( A1 => n52, A2 => n198, ZN => n136);
   U248 : XNOR2_X1 port map( A => n47, B => B_AS_7_port, ZN => n105);
   U249 : XNOR2_X1 port map( A => n105, B => A(7), ZN => SUM(7));
   U250 : CLKBUF_X1 port map( A => A(4), Z => n199);
   U251 : AND2_X1 port map( A1 => n50, A2 => n87, ZN => n200);
   U252 : AND2_X1 port map( A1 => n128, A2 => n130, ZN => n201);
   U253 : OR2_X1 port map( A1 => n102, A2 => n39, ZN => n202);
   U254 : NAND2_X1 port map( A1 => n203, A2 => n202, ZN => n148);
   U255 : NAND2_X1 port map( A1 => A(2), A2 => n201, ZN => n203);
   U256 : AND2_X1 port map( A1 => A(7), A2 => B_AS_8_port, ZN => n204);
   U257 : OR2_X1 port map( A1 => n87, A2 => n50, ZN => n205);
   U258 : AND2_X1 port map( A1 => n206, A2 => n205, ZN => n52);
   U259 : NAND2_X1 port map( A1 => n134, A2 => n204, ZN => n206);
   U260 : XNOR2_X1 port map( A => A(8), B => n104, ZN => SUM(8));
   U261 : NAND2_X1 port map( A1 => n79, A2 => n80, ZN => n207);
   U262 : XNOR2_X1 port map( A => n207, B => B_AS_19_port, ZN => n113);
   U263 : XNOR2_X1 port map( A => n4, B => n115, ZN => SUM(17));
   U264 : BUF_X1 port map( A => n63, Z => n184);
   U265 : XNOR2_X1 port map( A => A(14), B => n118, ZN => SUM(14));
   U266 : XNOR2_X1 port map( A => n111, B => n7, ZN => SUM(20));
   U267 : AND2_X1 port map( A1 => n51, A2 => n50, ZN => n168);
   U268 : AND2_X1 port map( A1 => n48, A2 => n86, ZN => n208);
   U269 : XNOR2_X1 port map( A => A(11), B => n121, ZN => SUM(11));
   U270 : NAND2_X1 port map( A1 => carry_23_port, A2 => n20, ZN => net15865);
   U271 : NAND2_X1 port map( A1 => B_AS_23_port, A2 => carry_23_port, ZN => 
                           net15866);
   U272 : NAND3_X1 port map( A1 => n219, A2 => n220, A3 => n221, ZN => n209);
   U273 : NAND3_X1 port map( A1 => n219, A2 => n220, A3 => n221, ZN => n210);
   U274 : XNOR2_X1 port map( A => carry_27_port, B => n211, ZN => SUM(27));
   U275 : XNOR2_X1 port map( A => A(27), B => B_AS_27_port, ZN => n211);
   U276 : BUF_X1 port map( A => ADD_SUB, Z => net15252);
   U277 : NAND3_X1 port map( A1 => n216, A2 => n217, A3 => n218, ZN => n212);
   U278 : NAND3_X1 port map( A1 => n215, A2 => net15865, A3 => net15866, ZN => 
                           n213);
   U279 : NAND3_X1 port map( A1 => net15866, A2 => net15865, A3 => n215, ZN => 
                           n214);
   U280 : NAND2_X1 port map( A1 => n20, A2 => B_AS_23_port, ZN => n215);
   U281 : NAND3_X1 port map( A1 => net15866, A2 => net15865, A3 => n215, ZN => 
                           carry_24_port);
   U282 : NAND2_X1 port map( A1 => n25, A2 => B_AS_24_port, ZN => n216);
   U283 : NAND2_X1 port map( A1 => n25, A2 => n213, ZN => n217);
   U284 : NAND2_X1 port map( A1 => B_AS_24_port, A2 => carry_24_port, ZN => 
                           n218);
   U285 : NAND3_X1 port map( A1 => n217, A2 => n216, A3 => n218, ZN => 
                           carry_25_port);
   U286 : NAND2_X1 port map( A1 => n212, A2 => n19, ZN => n219);
   U287 : NAND2_X1 port map( A1 => carry_25_port, A2 => B_AS_25_port, ZN => 
                           n220);
   U288 : NAND2_X1 port map( A1 => n19, A2 => B_AS_25_port, ZN => n221);
   U289 : NAND3_X1 port map( A1 => n219, A2 => n220, A3 => n221, ZN => 
                           carry_26_port);
   U290 : NAND2_X1 port map( A1 => n209, A2 => A(26), ZN => n222);
   U291 : NAND2_X1 port map( A1 => carry_26_port, A2 => B_AS_27_port, ZN => 
                           n223);
   U292 : NAND2_X1 port map( A1 => A(26), A2 => B_AS_27_port, ZN => n224);
   U293 : NAND3_X1 port map( A1 => n222, A2 => n223, A3 => n224, ZN => 
                           carry_27_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT25_DW01_addsub_0 is

   port( A, B : in std_logic_vector (25 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (25 downto 0);  CO : out std_logic);

end adder_NBIT25_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT25_DW01_addsub_0 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_25_port, carry_24_port, carry_23_port, B_AS_25_port, 
      B_AS_23_port, B_AS_22_port, B_AS_21_port, B_AS_20_port, B_AS_19_port, 
      B_AS_18_port, B_AS_17_port, B_AS_16_port, B_AS_15_port, net15861, 
      net15860, net28713, net28682, net28668, net28665, net28640, net28639, 
      net28638, net28637, net28632, net28631, net28626, net28605, net28667, 
      B_AS_6_port, net33257, net33421, carry_22_port, carry_21_port, 
      carry_20_port, carry_19_port, carry_18_port, carry_17_port, net28714, 
      carry_9_port, carry_8_port, carry_7_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , B_AS_9_port, B_AS_8_port, B_AS_7_port, B_AS_14_port, B_AS_13_port, 
      B_AS_12_port, B_AS_11_port, B_AS_10_port, n1, n2, n3, n4, n5, n6, n7, n8,
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, 
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65 : 
      std_logic;

begin
   
   U12 : XOR2_X1 port map( A => B(21), B => ADD_SUB, Z => B_AS_21_port);
   U13 : XOR2_X1 port map( A => B(20), B => ADD_SUB, Z => B_AS_20_port);
   U15 : XOR2_X1 port map( A => B(19), B => ADD_SUB, Z => B_AS_19_port);
   U16 : XOR2_X1 port map( A => B(18), B => ADD_SUB, Z => B_AS_18_port);
   U17 : XOR2_X1 port map( A => B(17), B => ADD_SUB, Z => B_AS_17_port);
   U18 : XOR2_X1 port map( A => B(16), B => ADD_SUB, Z => B_AS_16_port);
   U19 : XOR2_X1 port map( A => B(15), B => ADD_SUB, Z => B_AS_15_port);
   U4 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U1_21 : FA_X1 port map( A => A(21), B => B_AS_21_port, CI => carry_21_port, 
                           CO => carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B_AS_20_port, CI => carry_20_port, 
                           CO => carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B_AS_19_port, CI => carry_19_port, 
                           CO => carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B_AS_18_port, CI => carry_18_port, 
                           CO => carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B_AS_17_port, CI => carry_17_port, 
                           CO => carry_18_port, S => SUM(17));
   U20 : XOR2_X1 port map( A => B(14), B => ADD_SUB, Z => B_AS_14_port);
   U21 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U22 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U23 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U24 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U1 : XOR2_X1 port map( A => B(9), B => ADD_SUB, Z => B_AS_9_port);
   U2 : XOR2_X1 port map( A => B(8), B => ADD_SUB, Z => B_AS_8_port);
   U3 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U1_7 : FA_X1 port map( A => B_AS_7_port, B => carry_7_port, CI => A(7), CO 
                           => carry_8_port, S => SUM(7));
   U1_8 : FA_X1 port map( A => A(8), B => B_AS_8_port, CI => carry_8_port, CO 
                           => carry_9_port, S => SUM(8));
   U1_9 : FA_X1 port map( A => A(9), B => B_AS_9_port, CI => carry_9_port, CO 
                           => carry_10_port, S => SUM(9));
   U1_10 : FA_X1 port map( A => A(10), B => B_AS_10_port, CI => carry_10_port, 
                           CO => carry_11_port, S => SUM(10));
   U1_11 : FA_X1 port map( A => A(11), B => B_AS_11_port, CI => carry_11_port, 
                           CO => carry_12_port, S => SUM(11));
   U1_12 : FA_X1 port map( A => A(12), B => B_AS_12_port, CI => carry_12_port, 
                           CO => carry_13_port, S => SUM(12));
   U1_13 : FA_X1 port map( A => A(13), B => B_AS_13_port, CI => carry_13_port, 
                           CO => carry_14_port, S => SUM(13));
   U1_14 : FA_X1 port map( A => A(14), B => B_AS_14_port, CI => carry_14_port, 
                           CO => carry_15_port, S => SUM(14));
   U1_16 : FA_X1 port map( A => A(16), B => B_AS_16_port, CI => carry_16_port, 
                           CO => carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => carry_16_port, S => SUM(15));
   U5 : CLKBUF_X1 port map( A => A(3), Z => n1);
   U6 : XNOR2_X1 port map( A => carry_22_port, B => n2, ZN => SUM(22));
   U7 : XNOR2_X1 port map( A => A(22), B => B_AS_22_port, ZN => n2);
   U8 : BUF_X1 port map( A => n43, Z => n53);
   U9 : NAND2_X1 port map( A1 => net28626, A2 => n28, ZN => n37);
   U10 : INV_X1 port map( A => n28, ZN => n38);
   U11 : INV_X1 port map( A => n30, ZN => n42);
   U14 : INV_X1 port map( A => ADD_SUB, ZN => net28626);
   U25 : XNOR2_X1 port map( A => ADD_SUB, B => B(1), ZN => n29);
   U26 : XOR2_X1 port map( A => B(22), B => ADD_SUB, Z => B_AS_22_port);
   U27 : XOR2_X1 port map( A => B(23), B => ADD_SUB, Z => B_AS_23_port);
   U28 : XOR2_X1 port map( A => ADD_SUB, B => B(25), Z => B_AS_25_port);
   U29 : XNOR2_X1 port map( A => B(2), B => ADD_SUB, ZN => n30);
   U30 : INV_X1 port map( A => n29, ZN => n40);
   U31 : INV_X1 port map( A => B_AS_6_port, ZN => n7);
   U32 : XNOR2_X1 port map( A => n28, B => net28626, ZN => n36);
   U33 : CLKBUF_X1 port map( A => A(4), Z => n3);
   U34 : XNOR2_X1 port map( A => n4, B => net28637, ZN => n32);
   U35 : AND2_X1 port map( A1 => n26, A2 => n25, ZN => n4);
   U36 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => carry_7_port);
   U37 : NAND2_X1 port map( A1 => B_AS_6_port, A2 => n8, ZN => n6);
   U38 : NAND2_X1 port map( A1 => net28631, A2 => n10, ZN => n8);
   U39 : NAND2_X1 port map( A1 => net28714, A2 => n11, ZN => n10);
   U40 : CLKBUF_X1 port map( A => net28667, Z => n11);
   U41 : BUF_X1 port map( A => A(5), Z => net28714);
   U42 : XNOR2_X1 port map( A => net28640, B => net28714, ZN => SUM(5));
   U43 : NAND2_X1 port map( A1 => n9, A2 => A(6), ZN => n5);
   U44 : NAND2_X1 port map( A1 => net28682, A2 => n7, ZN => n9);
   U45 : XNOR2_X1 port map( A => net28682, B => n7, ZN => net28639);
   U46 : NAND2_X1 port map( A1 => carry_22_port, A2 => B_AS_22_port, ZN => 
                           net15861);
   U47 : NAND2_X1 port map( A1 => carry_22_port, A2 => net33421, ZN => net15860
                           );
   U48 : CLKBUF_X1 port map( A => A(22), Z => net33421);
   U49 : CLKBUF_X1 port map( A => A(2), Z => n12);
   U50 : XNOR2_X1 port map( A => n46, B => n29, ZN => n35);
   U51 : AND2_X1 port map( A1 => n17, A2 => n18, ZN => n46);
   U52 : CLKBUF_X1 port map( A => A(6), Z => net33257);
   U53 : XNOR2_X1 port map( A => carry_24_port, B => n13, ZN => SUM(24));
   U54 : XNOR2_X1 port map( A => A(24), B => B_AS_25_port, ZN => n13);
   U55 : XNOR2_X1 port map( A => n12, B => n34, ZN => SUM(2));
   U56 : NAND2_X1 port map( A1 => net28667, A2 => A(5), ZN => net28632);
   U57 : NAND2_X1 port map( A1 => net28713, A2 => n15, ZN => net28667);
   U58 : AND2_X1 port map( A1 => net28638, A2 => n14, ZN => n15);
   U59 : NAND2_X1 port map( A1 => net28605, A2 => net28665, ZN => n14);
   U60 : INV_X1 port map( A => net28637, ZN => net28665);
   U61 : XNOR2_X1 port map( A => n1, B => n33, ZN => SUM(3));
   U62 : XNOR2_X2 port map( A => ADD_SUB, B => B(0), ZN => n28);
   U63 : NAND2_X1 port map( A1 => A(0), A2 => n37, ZN => n18);
   U64 : XNOR2_X1 port map( A => A(0), B => n36, ZN => SUM(0));
   U65 : NAND2_X1 port map( A1 => n17, A2 => n18, ZN => n16);
   U66 : NAND2_X1 port map( A1 => n38, A2 => ADD_SUB, ZN => n17);
   U67 : NAND2_X1 port map( A1 => n27, A2 => net28668, ZN => net28631);
   U68 : AND2_X2 port map( A1 => net28631, A2 => net28632, ZN => net28682);
   U69 : NAND2_X1 port map( A1 => net28713, A2 => n51, ZN => n27);
   U70 : INV_X1 port map( A => net28638, ZN => net28668);
   U71 : XNOR2_X1 port map( A => B(5), B => ADD_SUB, ZN => net28638);
   U72 : AND2_X1 port map( A1 => net28713, A2 => n51, ZN => n47);
   U73 : XNOR2_X1 port map( A => n47, B => net28638, ZN => net28640);
   U74 : NAND2_X1 port map( A1 => n26, A2 => n25, ZN => net28605);
   U75 : XNOR2_X1 port map( A => B(4), B => ADD_SUB, ZN => net28637);
   U76 : NAND2_X1 port map( A1 => A(1), A2 => n39, ZN => n21);
   U77 : XNOR2_X1 port map( A => A(1), B => n35, ZN => SUM(1));
   U78 : NAND2_X1 port map( A1 => A(3), A2 => n43, ZN => n26);
   U79 : NAND2_X1 port map( A1 => n22, A2 => n44, ZN => n25);
   U80 : NAND2_X1 port map( A1 => n29, A2 => n46, ZN => n39);
   U81 : NAND2_X1 port map( A1 => n20, A2 => n21, ZN => n19);
   U82 : NAND2_X1 port map( A1 => n16, A2 => n40, ZN => n20);
   U83 : AND2_X1 port map( A1 => net28637, A2 => n25, ZN => n49);
   U84 : NAND2_X1 port map( A1 => n50, A2 => n49, ZN => n45);
   U85 : NAND2_X1 port map( A1 => A(3), A2 => n53, ZN => n50);
   U86 : XNOR2_X1 port map( A => n32, B => n3, ZN => SUM(4));
   U87 : XNOR2_X1 port map( A => net33257, B => net28639, ZN => SUM(6));
   U88 : NAND2_X1 port map( A1 => net28605, A2 => net28665, ZN => n51);
   U89 : NAND2_X1 port map( A1 => n31, A2 => n52, ZN => n43);
   U90 : INV_X1 port map( A => n31, ZN => n44);
   U91 : XNOR2_X1 port map( A => B(3), B => ADD_SUB, ZN => n31);
   U92 : NAND2_X1 port map( A1 => n23, A2 => n24, ZN => n22);
   U93 : XNOR2_X1 port map( A => n22, B => n44, ZN => n33);
   U94 : NAND2_X1 port map( A1 => A(2), A2 => n41, ZN => n24);
   U95 : NAND2_X1 port map( A1 => n19, A2 => n42, ZN => n23);
   U96 : AND2_X1 port map( A1 => n24, A2 => n23, ZN => n52);
   U97 : NAND2_X1 port map( A1 => A(4), A2 => n45, ZN => net28713);
   U98 : AND2_X1 port map( A1 => n20, A2 => n21, ZN => n48);
   U99 : NAND2_X1 port map( A1 => n21, A2 => n54, ZN => n41);
   U100 : XNOR2_X1 port map( A => n48, B => n30, ZN => n34);
   U101 : AND2_X1 port map( A1 => n20, A2 => n30, ZN => n54);
   U102 : XNOR2_X1 port map( A => carry_25_port, B => n65, ZN => SUM(25));
   U103 : NAND3_X1 port map( A1 => net15860, A2 => net15861, A3 => n57, ZN => 
                           n55);
   U104 : NAND3_X1 port map( A1 => net15860, A2 => net15861, A3 => n57, ZN => 
                           n56);
   U105 : NAND2_X1 port map( A1 => net33421, A2 => B_AS_22_port, ZN => n57);
   U106 : NAND3_X1 port map( A1 => net15860, A2 => net15861, A3 => n57, ZN => 
                           carry_23_port);
   U107 : XOR2_X1 port map( A => A(23), B => B_AS_23_port, Z => n58);
   U108 : XOR2_X1 port map( A => n56, B => n58, Z => SUM(23));
   U109 : NAND2_X1 port map( A1 => n55, A2 => A(23), ZN => n59);
   U110 : NAND2_X1 port map( A1 => carry_23_port, A2 => B_AS_23_port, ZN => n60
                           );
   U111 : NAND2_X1 port map( A1 => A(23), A2 => B_AS_23_port, ZN => n61);
   U112 : NAND3_X1 port map( A1 => n59, A2 => n60, A3 => n61, ZN => 
                           carry_24_port);
   U113 : NAND2_X1 port map( A1 => carry_24_port, A2 => A(24), ZN => n62);
   U114 : NAND2_X1 port map( A1 => carry_24_port, A2 => B_AS_25_port, ZN => n63
                           );
   U115 : NAND2_X1 port map( A1 => A(24), A2 => B_AS_25_port, ZN => n64);
   U116 : NAND3_X1 port map( A1 => n62, A2 => n63, A3 => n64, ZN => 
                           carry_25_port);
   U117 : XNOR2_X1 port map( A => A(25), B => B_AS_25_port, ZN => n65);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT23_DW01_addsub_0 is

   port( A, B : in std_logic_vector (23 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (23 downto 0);  CO : out std_logic);

end adder_NBIT23_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT23_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_23_port, carry_22_port, carry_21_port, carry_20_port, 
      carry_19_port, carry_18_port, carry_17_port, B_AS_23_port, B_AS_21_port, 
      B_AS_20_port, B_AS_19_port, B_AS_18_port, B_AS_17_port, B_AS_16_port, 
      net33264, carry_16_port, B_AS_15_port, carry_15_port, B_AS_14_port, 
      carry_14_port, B_AS_13_port, carry_13_port, B_AS_12_port, carry_12_port, 
      B_AS_11_port, carry_11_port, B_AS_10_port, carry_10_port, B_AS_9_port, 
      net33237, net33236, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, B_AS_8_port, B_AS_7_port, B_AS_6_port, B_AS_5_port, n1, n2,
      n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, 
      n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33
      , n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, 
      n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62
      , n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74 : std_logic;

begin
   
   U1_19 : FA_X1 port map( A => A(19), B => B_AS_19_port, CI => carry_19_port, 
                           CO => carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B_AS_18_port, CI => carry_18_port, 
                           CO => carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B_AS_17_port, CI => carry_17_port, 
                           CO => carry_18_port, S => SUM(17));
   U13 : XOR2_X1 port map( A => B(19), B => ADD_SUB, Z => B_AS_19_port);
   U14 : XOR2_X1 port map( A => B(18), B => ADD_SUB, Z => B_AS_18_port);
   U15 : XOR2_X1 port map( A => B(17), B => ADD_SUB, Z => B_AS_17_port);
   U16 : XOR2_X1 port map( A => B(16), B => ADD_SUB, Z => B_AS_16_port);
   U17 : XOR2_X1 port map( A => B(15), B => ADD_SUB, Z => B_AS_15_port);
   U1_16 : FA_X1 port map( A => A(16), B => B_AS_16_port, CI => carry_16_port, 
                           CO => carry_17_port, S => SUM(16));
   U18 : XOR2_X1 port map( A => B(14), B => ADD_SUB, Z => B_AS_14_port);
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => carry_16_port, S => SUM(15));
   U19 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U1_14 : FA_X1 port map( A => A(14), B => B_AS_14_port, CI => carry_14_port, 
                           CO => carry_15_port, S => SUM(14));
   U20 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U1_13 : FA_X1 port map( A => A(13), B => B_AS_13_port, CI => carry_13_port, 
                           CO => carry_14_port, S => SUM(13));
   U21 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U1_12 : FA_X1 port map( A => A(12), B => B_AS_12_port, CI => carry_12_port, 
                           CO => carry_13_port, S => SUM(12));
   U22 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U1_11 : FA_X1 port map( A => A(11), B => B_AS_11_port, CI => carry_11_port, 
                           CO => carry_12_port, S => SUM(11));
   U1 : XOR2_X1 port map( A => B(9), B => ADD_SUB, Z => B_AS_9_port);
   U1_10 : FA_X1 port map( A => A(10), B => B_AS_10_port, CI => carry_10_port, 
                           CO => carry_11_port, S => SUM(10));
   U5 : XOR2_X1 port map( A => B(5), B => ADD_SUB, Z => B_AS_5_port);
   U2 : XOR2_X1 port map( A => B(8), B => ADD_SUB, Z => B_AS_8_port);
   U3 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U1_7 : FA_X1 port map( A => A(7), B => B_AS_7_port, CI => carry_7_port, CO 
                           => carry_8_port, S => SUM(7));
   U1_9 : FA_X1 port map( A => B_AS_9_port, B => A(9), CI => carry_9_port, CO 
                           => carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B_AS_8_port, CI => carry_8_port, CO 
                           => carry_9_port, S => SUM(8));
   U4 : CLKBUF_X1 port map( A => n9, Z => n1);
   U6 : AND2_X2 port map( A1 => n13, A2 => n14, ZN => n51);
   U7 : NAND2_X1 port map( A1 => n20, A2 => n22, ZN => n34);
   U8 : INV_X1 port map( A => n22, ZN => n35);
   U9 : INV_X1 port map( A => n24, ZN => n39);
   U10 : XNOR2_X1 port map( A => ADD_SUB, B => B(1), ZN => n21);
   U11 : XNOR2_X1 port map( A => ADD_SUB, B => B(2), ZN => n23);
   U12 : NAND2_X1 port map( A1 => n15, A2 => n43, ZN => n42);
   U23 : NAND2_X1 port map( A1 => n7, A2 => n48, ZN => n6);
   U24 : INV_X1 port map( A => n21, ZN => n33);
   U25 : INV_X1 port map( A => n23, ZN => n32);
   U26 : XNOR2_X1 port map( A => n22, B => n20, ZN => n31);
   U27 : NAND2_X1 port map( A1 => n45, A2 => n21, ZN => n36);
   U28 : XOR2_X1 port map( A => B(20), B => ADD_SUB, Z => B_AS_20_port);
   U29 : XOR2_X1 port map( A => B(21), B => ADD_SUB, Z => B_AS_21_port);
   U30 : XOR2_X1 port map( A => ADD_SUB, B => B(23), Z => B_AS_23_port);
   U31 : INV_X1 port map( A => ADD_SUB, ZN => n20);
   U32 : XNOR2_X1 port map( A => ADD_SUB, B => B(3), ZN => n24);
   U33 : NAND2_X1 port map( A1 => B_AS_5_port, A2 => A(5), ZN => n18);
   U34 : OAI21_X1 port map( B1 => A(5), B2 => B_AS_5_port, A => n47, ZN => n19)
                           ;
   U35 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U36 : XNOR2_X1 port map( A => n33, B => n6, ZN => n30);
   U37 : CLKBUF_X1 port map( A => A(3), Z => n2);
   U38 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => carry_6_port);
   U39 : XNOR2_X1 port map( A => ADD_SUB, B => B(4), ZN => n25);
   U40 : INV_X1 port map( A => n25, ZN => n43);
   U41 : NAND2_X1 port map( A1 => n51, A2 => n5, ZN => n3);
   U42 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => n55);
   U43 : OR2_X1 port map( A1 => A(3), A2 => n43, ZN => n4);
   U44 : AND2_X1 port map( A1 => n24, A2 => n25, ZN => n5);
   U45 : XNOR2_X2 port map( A => ADD_SUB, B => B(0), ZN => n22);
   U46 : NAND2_X1 port map( A1 => A(0), A2 => n34, ZN => n8);
   U47 : XNOR2_X1 port map( A => A(0), B => n31, ZN => SUM(0));
   U48 : NAND2_X1 port map( A1 => n41, A2 => n42, ZN => n44);
   U49 : XNOR2_X1 port map( A => n44, B => B_AS_5_port, ZN => n26);
   U50 : XNOR2_X1 port map( A => n26, B => A(5), ZN => SUM(5));
   U51 : NAND2_X1 port map( A1 => n35, A2 => ADD_SUB, ZN => n7);
   U52 : AND2_X1 port map( A1 => n8, A2 => n7, ZN => n45);
   U53 : NAND2_X1 port map( A1 => A(1), A2 => n36, ZN => n11);
   U54 : XNOR2_X1 port map( A => n49, B => n30, ZN => SUM(1));
   U55 : NAND2_X1 port map( A1 => n33, A2 => n6, ZN => n10);
   U56 : AND2_X1 port map( A1 => n11, A2 => n10, ZN => n46);
   U57 : NAND2_X1 port map( A1 => n40, A2 => A(4), ZN => n41);
   U58 : NAND2_X1 port map( A1 => n41, A2 => n42, ZN => n47);
   U59 : NAND2_X1 port map( A1 => A(0), A2 => n34, ZN => n48);
   U60 : CLKBUF_X1 port map( A => A(1), Z => n49);
   U61 : NAND2_X1 port map( A1 => n37, A2 => A(2), ZN => n14);
   U62 : NAND2_X1 port map( A1 => n56, A2 => n53, ZN => n12);
   U63 : XNOR2_X1 port map( A => n52, B => n25, ZN => n27);
   U64 : XNOR2_X1 port map( A => A(4), B => n27, ZN => SUM(4));
   U65 : NAND2_X1 port map( A1 => n9, A2 => n32, ZN => n13);
   U66 : NAND2_X1 port map( A1 => n24, A2 => n51, ZN => n38);
   U67 : NAND2_X1 port map( A1 => n38, A2 => A(3), ZN => n17);
   U68 : NAND2_X1 port map( A1 => n16, A2 => n17, ZN => n15);
   U69 : NAND2_X1 port map( A1 => n12, A2 => n39, ZN => n16);
   U70 : AND2_X1 port map( A1 => n17, A2 => n16, ZN => n52);
   U71 : NAND2_X1 port map( A1 => n50, A2 => n10, ZN => n9);
   U72 : XNOR2_X1 port map( A => n54, B => n32, ZN => n29);
   U73 : NAND2_X1 port map( A1 => n23, A2 => n46, ZN => n37);
   U74 : NAND2_X1 port map( A1 => A(2), A2 => n57, ZN => n53);
   U75 : XNOR2_X1 port map( A => n29, B => n58, ZN => SUM(2));
   U76 : NAND2_X1 port map( A1 => n50, A2 => n10, ZN => n54);
   U77 : NAND2_X1 port map( A1 => n16, A2 => n55, ZN => n40);
   U78 : NAND2_X1 port map( A1 => n1, A2 => n32, ZN => n56);
   U79 : BUF_X1 port map( A => n11, Z => n50);
   U80 : CLKBUF_X1 port map( A => n37, Z => n57);
   U81 : CLKBUF_X1 port map( A => A(2), Z => n58);
   U82 : XNOR2_X1 port map( A => n51, B => n24, ZN => n28);
   U83 : XNOR2_X1 port map( A => n28, B => n2, ZN => SUM(3));
   U84 : NAND3_X1 port map( A1 => net33236, A2 => n59, A3 => net33237, ZN => 
                           carry_7_port);
   U85 : NAND2_X1 port map( A1 => A(6), A2 => B_AS_6_port, ZN => n59);
   U86 : NAND2_X1 port map( A1 => carry_6_port, A2 => B_AS_6_port, ZN => 
                           net33237);
   U87 : NAND2_X1 port map( A1 => A(6), A2 => carry_6_port, ZN => net33236);
   U88 : XNOR2_X1 port map( A => A(6), B => B_AS_6_port, ZN => net33264);
   U89 : NAND3_X1 port map( A1 => n67, A2 => n68, A3 => n69, ZN => n60);
   U90 : NAND3_X1 port map( A1 => n67, A2 => n68, A3 => n69, ZN => n61);
   U91 : XNOR2_X1 port map( A => net33264, B => carry_6_port, ZN => SUM(6));
   U92 : XOR2_X1 port map( A => A(20), B => B_AS_20_port, Z => n62);
   U93 : XOR2_X1 port map( A => carry_20_port, B => n62, Z => SUM(20));
   U94 : NAND2_X1 port map( A1 => carry_20_port, A2 => A(20), ZN => n63);
   U95 : NAND2_X1 port map( A1 => carry_20_port, A2 => B_AS_20_port, ZN => n64)
                           ;
   U96 : NAND2_X1 port map( A1 => A(20), A2 => B_AS_20_port, ZN => n65);
   U97 : NAND3_X1 port map( A1 => n63, A2 => n64, A3 => n65, ZN => 
                           carry_21_port);
   U98 : XOR2_X1 port map( A => A(21), B => B_AS_21_port, Z => n66);
   U99 : XOR2_X1 port map( A => carry_21_port, B => n66, Z => SUM(21));
   U100 : NAND2_X1 port map( A1 => carry_21_port, A2 => A(21), ZN => n67);
   U101 : NAND2_X1 port map( A1 => carry_21_port, A2 => B_AS_21_port, ZN => n68
                           );
   U102 : NAND2_X1 port map( A1 => A(21), A2 => B_AS_21_port, ZN => n69);
   U103 : NAND3_X1 port map( A1 => n67, A2 => n68, A3 => n69, ZN => 
                           carry_22_port);
   U104 : XOR2_X1 port map( A => A(22), B => B_AS_23_port, Z => n70);
   U105 : XOR2_X1 port map( A => n61, B => n70, Z => SUM(22));
   U106 : NAND2_X1 port map( A1 => n60, A2 => A(22), ZN => n71);
   U107 : NAND2_X1 port map( A1 => carry_22_port, A2 => B_AS_23_port, ZN => n72
                           );
   U108 : NAND2_X1 port map( A1 => A(22), A2 => B_AS_23_port, ZN => n73);
   U109 : NAND3_X1 port map( A1 => n71, A2 => n72, A3 => n73, ZN => 
                           carry_23_port);
   U110 : XOR2_X1 port map( A => A(23), B => B_AS_23_port, Z => n74);
   U111 : XOR2_X1 port map( A => carry_23_port, B => n74, Z => SUM(23));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT21_DW01_addsub_0 is

   port( A, B : in std_logic_vector (21 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (21 downto 0);  CO : out std_logic);

end adder_NBIT21_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT21_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X2
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_21_port, carry_20_port, carry_19_port, carry_18_port, 
      carry_17_port, carry_16_port, carry_15_port, carry_14_port, carry_13_port
      , carry_12_port, carry_11_port, carry_10_port, B_AS_21_port, B_AS_19_port
      , B_AS_18_port, B_AS_17_port, B_AS_16_port, B_AS_15_port, B_AS_14_port, 
      B_AS_13_port, B_AS_12_port, B_AS_11_port, B_AS_10_port, B_AS_9_port, 
      net26310, net26288, net26211, net26210, net26193, net26160, net26159, 
      net26156, net26155, net26152, net26691, net26688, net26687, net26776, 
      net26234, net26228, net26769, net26768, net26312, net26304, net26196, 
      net28724, net28723, net26226, net26148, net26219, net26209, net26195, 
      net26258, net26223, net26221, net26143, net26142, n1, n2, n3, n4, n5, n6,
      n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, 
      n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36
      , n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, 
      n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65
      , n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77 : std_logic;

begin
   
   U1_19 : FA_X1 port map( A => A(19), B => B_AS_19_port, CI => carry_19_port, 
                           CO => carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B_AS_18_port, CI => carry_18_port, 
                           CO => carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B_AS_17_port, CI => carry_17_port, 
                           CO => carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B_AS_16_port, CI => carry_16_port, 
                           CO => carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => carry_16_port, S => SUM(15));
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
   U1 : XOR2_X1 port map( A => B(9), B => ADD_SUB, Z => B_AS_9_port);
   U11 : XOR2_X1 port map( A => B(19), B => ADD_SUB, Z => B_AS_19_port);
   U12 : XOR2_X1 port map( A => B(18), B => ADD_SUB, Z => B_AS_18_port);
   U13 : XOR2_X1 port map( A => B(17), B => ADD_SUB, Z => B_AS_17_port);
   U14 : XOR2_X1 port map( A => B(16), B => ADD_SUB, Z => B_AS_16_port);
   U15 : XOR2_X1 port map( A => B(15), B => ADD_SUB, Z => B_AS_15_port);
   U16 : XOR2_X1 port map( A => B(14), B => ADD_SUB, Z => B_AS_14_port);
   U17 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U18 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U19 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U20 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U2 : NOR2_X1 port map( A1 => n1, A2 => n54, ZN => n16);
   U3 : NOR2_X1 port map( A1 => net26312, A2 => net26196, ZN => n1);
   U4 : AND2_X1 port map( A1 => n42, A2 => n43, ZN => n2);
   U5 : CLKBUF_X1 port map( A => A(8), Z => n3);
   U6 : NAND2_X1 port map( A1 => net26234, A2 => A(5), ZN => n4);
   U7 : XNOR2_X1 port map( A => n27, B => net26691, ZN => net26211);
   U8 : NAND2_X1 port map( A1 => n27, A2 => net26691, ZN => n28);
   U9 : INV_X1 port map( A => n27, ZN => n29);
   U10 : XNOR2_X1 port map( A => ADD_SUB, B => B(1), ZN => net26193);
   U21 : XNOR2_X1 port map( A => ADD_SUB, B => B(2), ZN => net26195);
   U22 : XOR2_X1 port map( A => ADD_SUB, B => B(21), Z => B_AS_21_port);
   U23 : INV_X1 port map( A => ADD_SUB, ZN => net26691);
   U24 : INV_X1 port map( A => net26193, ZN => n11);
   U25 : INV_X1 port map( A => net26195, ZN => net26219);
   U26 : AND2_X1 port map( A1 => n42, A2 => n43, ZN => n62);
   U27 : INV_X1 port map( A => B_AS_9_port, ZN => n40);
   U28 : CLKBUF_X1 port map( A => A(6), Z => n5);
   U29 : NAND2_X1 port map( A1 => n57, A2 => A(7), ZN => n6);
   U30 : INV_X1 port map( A => net26196, ZN => net26768);
   U31 : XNOR2_X1 port map( A => ADD_SUB, B => B(3), ZN => net26196);
   U32 : NAND2_X1 port map( A1 => net26152, A2 => n72, ZN => n7);
   U33 : NAND2_X1 port map( A1 => n12, A2 => net26143, ZN => n8);
   U34 : NAND2_X1 port map( A1 => n33, A2 => n58, ZN => n9);
   U35 : OR2_X1 port map( A1 => net26196, A2 => net26312, ZN => n10);
   U36 : NAND2_X1 port map( A1 => n12, A2 => net26143, ZN => net26142);
   U37 : NAND2_X1 port map( A1 => net26142, A2 => net26219, ZN => net26312);
   U38 : XNOR2_X1 port map( A => n8, B => net26219, ZN => net26209);
   U39 : NAND2_X1 port map( A1 => A(1), A2 => net26223, ZN => n12);
   U40 : NAND2_X1 port map( A1 => n11, A2 => net26258, ZN => net26143);
   U41 : NAND2_X1 port map( A1 => net26143, A2 => net26195, ZN => net28724);
   U42 : XNOR2_X1 port map( A => net26258, B => n11, ZN => net26210);
   U43 : BUF_X1 port map( A => A(1), Z => net26776);
   U44 : AND2_X1 port map( A1 => A(1), A2 => net26223, ZN => net28723);
   U45 : NAND2_X1 port map( A1 => net26221, A2 => net26193, ZN => net26223);
   U46 : AND2_X1 port map( A1 => net26687, A2 => net26688, ZN => net26221);
   U47 : NAND2_X1 port map( A1 => net26688, A2 => net26687, ZN => net26258);
   U48 : XNOR2_X1 port map( A => net26209, B => A(2), ZN => SUM(2));
   U49 : AND2_X1 port map( A1 => A(2), A2 => net26768, ZN => net26310);
   U50 : NAND2_X1 port map( A1 => net26226, A2 => A(2), ZN => net26148);
   U51 : CLKBUF_X1 port map( A => A(3), Z => n13);
   U52 : CLKBUF_X1 port map( A => net26159, Z => n14);
   U53 : NAND2_X1 port map( A1 => n32, A2 => n56, ZN => n15);
   U54 : AND2_X1 port map( A1 => n16, A2 => n70, ZN => n18);
   U55 : NAND2_X1 port map( A1 => net26148, A2 => net26304, ZN => net26228);
   U56 : NAND2_X1 port map( A1 => net26312, A2 => net26148, ZN => net26769);
   U57 : OR2_X1 port map( A1 => net28723, A2 => net28724, ZN => net26226);
   U58 : XNOR2_X1 port map( A => net26769, B => net26768, ZN => n17);
   U59 : XNOR2_X1 port map( A => n17, B => n13, ZN => SUM(3));
   U60 : AND2_X1 port map( A1 => net26312, A2 => net26196, ZN => net26304);
   U61 : NAND2_X1 port map( A1 => A(3), A2 => net26228, ZN => net26152);
   U62 : NAND2_X1 port map( A1 => n18, A2 => net26152, ZN => n53);
   U63 : NAND2_X1 port map( A1 => n24, A2 => n21, ZN => n19);
   U64 : CLKBUF_X1 port map( A => A(4), Z => n25);
   U65 : XNOR2_X1 port map( A => n20, B => n23, ZN => n22);
   U66 : XNOR2_X1 port map( A => n22, B => A(5), ZN => SUM(5));
   U67 : INV_X1 port map( A => n21, ZN => n23);
   U68 : NAND2_X1 port map( A1 => n20, A2 => n23, ZN => net26159);
   U69 : NAND2_X1 port map( A1 => net26156, A2 => net26155, ZN => n20);
   U70 : XNOR2_X1 port map( A => ADD_SUB, B => B(5), ZN => n21);
   U71 : NAND2_X1 port map( A1 => n24, A2 => n21, ZN => net26234);
   U72 : AND2_X1 port map( A1 => net26156, A2 => net26155, ZN => n24);
   U73 : NAND2_X1 port map( A1 => net26234, A2 => A(5), ZN => net26288);
   U74 : NAND2_X1 port map( A1 => n19, A2 => A(5), ZN => net26160);
   U75 : NAND2_X1 port map( A1 => B_AS_9_port, A2 => n41, ZN => n39);
   U76 : NAND2_X1 port map( A1 => n61, A2 => A(9), ZN => n38);
   U77 : XNOR2_X1 port map( A => n26, B => n58, ZN => n50);
   U78 : NAND2_X1 port map( A1 => n15, A2 => n67, ZN => n26);
   U79 : NAND2_X1 port map( A1 => n2, A2 => n40, ZN => n61);
   U80 : XNOR2_X2 port map( A => ADD_SUB, B => B(0), ZN => n27);
   U81 : NAND2_X1 port map( A1 => A(0), A2 => n28, ZN => net26688);
   U82 : NAND2_X1 port map( A1 => ADD_SUB, A2 => n29, ZN => net26687);
   U83 : XNOR2_X1 port map( A => n52, B => n25, ZN => SUM(4));
   U84 : NAND2_X1 port map( A1 => n38, A2 => n39, ZN => carry_10_port);
   U85 : XNOR2_X1 port map( A => n30, B => n60, ZN => n49);
   U86 : NAND2_X1 port map( A1 => n65, A2 => n9, ZN => n30);
   U87 : XNOR2_X1 port map( A => A(0), B => net26211, ZN => SUM(0));
   U88 : NAND2_X1 port map( A1 => n59, A2 => A(8), ZN => n43);
   U89 : NAND2_X1 port map( A1 => n36, A2 => n60, ZN => n42);
   U90 : NAND2_X1 port map( A1 => n3, A2 => n59, ZN => n63);
   U91 : NAND2_X1 port map( A1 => n9, A2 => n6, ZN => n36);
   U92 : INV_X1 port map( A => n47, ZN => n60);
   U93 : XNOR2_X1 port map( A => ADD_SUB, B => B(8), ZN => n47);
   U94 : NAND2_X1 port map( A1 => n33, A2 => n58, ZN => n37);
   U95 : AND2_X1 port map( A1 => n47, A2 => n37, ZN => n64);
   U96 : NAND2_X1 port map( A1 => n6, A2 => n64, ZN => n59);
   U97 : NAND2_X1 port map( A1 => n57, A2 => A(7), ZN => n65);
   U98 : XNOR2_X1 port map( A => n49, B => n71, ZN => SUM(8));
   U99 : NAND2_X1 port map( A1 => n42, A2 => n63, ZN => n41);
   U100 : NAND2_X1 port map( A1 => n15, A2 => n35, ZN => n33);
   U101 : INV_X1 port map( A => n46, ZN => n58);
   U102 : XNOR2_X1 port map( A => ADD_SUB, B => B(7), ZN => n46);
   U103 : XNOR2_X1 port map( A => n50, B => A(7), ZN => SUM(7));
   U104 : NAND2_X1 port map( A1 => n55, A2 => A(6), ZN => n35);
   U105 : NAND2_X1 port map( A1 => n32, A2 => n56, ZN => n34);
   U106 : AND2_X1 port map( A1 => n34, A2 => n46, ZN => n66);
   U107 : NAND2_X1 port map( A1 => n66, A2 => n67, ZN => n57);
   U108 : NAND2_X1 port map( A1 => n55, A2 => A(6), ZN => n67);
   U109 : NAND2_X1 port map( A1 => net26288, A2 => net26159, ZN => n32);
   U110 : INV_X1 port map( A => n45, ZN => n56);
   U111 : XNOR2_X1 port map( A => ADD_SUB, B => B(6), ZN => n45);
   U112 : AND2_X1 port map( A1 => net26159, A2 => n45, ZN => n68);
   U113 : NAND2_X1 port map( A1 => n68, A2 => n4, ZN => n55);
   U114 : XNOR2_X1 port map( A => n51, B => n5, ZN => SUM(6));
   U115 : NAND2_X1 port map( A1 => net26160, A2 => n14, ZN => n69);
   U116 : XNOR2_X1 port map( A => n69, B => n56, ZN => n51);
   U117 : NAND2_X1 port map( A1 => A(4), A2 => n53, ZN => net26156);
   U118 : NAND2_X1 port map( A1 => n31, A2 => n54, ZN => net26155);
   U119 : NAND2_X1 port map( A1 => net26310, A2 => net26226, ZN => n70);
   U120 : INV_X1 port map( A => n44, ZN => n54);
   U121 : XNOR2_X1 port map( A => ADD_SUB, B => B(4), ZN => n44);
   U122 : NAND2_X1 port map( A1 => net26152, A2 => n72, ZN => n31);
   U123 : XNOR2_X1 port map( A => n7, B => n54, ZN => n52);
   U124 : XNOR2_X1 port map( A => net26776, B => net26210, ZN => SUM(1));
   U125 : XNOR2_X1 port map( A => n62, B => n40, ZN => n48);
   U126 : XNOR2_X1 port map( A => n48, B => A(9), ZN => SUM(9));
   U127 : AND2_X1 port map( A1 => n70, A2 => n10, ZN => n72);
   U128 : BUF_X1 port map( A => A(8), Z => n71);
   U129 : XOR2_X1 port map( A => A(20), B => B_AS_21_port, Z => n73);
   U130 : XOR2_X1 port map( A => carry_20_port, B => n73, Z => SUM(20));
   U131 : NAND2_X1 port map( A1 => carry_20_port, A2 => A(20), ZN => n74);
   U132 : NAND2_X1 port map( A1 => carry_20_port, A2 => B_AS_21_port, ZN => n75
                           );
   U133 : NAND2_X1 port map( A1 => A(20), A2 => B_AS_21_port, ZN => n76);
   U134 : NAND3_X1 port map( A1 => n74, A2 => n75, A3 => n76, ZN => 
                           carry_21_port);
   U135 : XOR2_X2 port map( A => carry_21_port, B => n77, Z => SUM(21));
   U136 : XOR2_X1 port map( A => A(21), B => B_AS_21_port, Z => n77);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT19_DW01_addsub_0 is

   port( A, B : in std_logic_vector (19 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (19 downto 0);  CO : out std_logic);

end adder_NBIT19_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT19_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_19_port, carry_18_port, carry_17_port, carry_16_port, 
      carry_15_port, carry_14_port, carry_13_port, carry_12_port, carry_11_port
      , carry_10_port, B_AS_19_port, B_AS_17_port, B_AS_16_port, B_AS_15_port, 
      B_AS_14_port, B_AS_13_port, B_AS_12_port, B_AS_11_port, B_AS_10_port, 
      B_AS_9_port, net15966, net16095, net16094, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, B_AS_8_port, 
      B_AS_7_port, B_AS_6_port, B_AS_5_port, B_AS_4_port, B_AS_3_port, net29349
      , net29347, net29340, net29339, net29338, net29328, net29322, net29352, 
      net29326, net29320, net29385, net29335, net29306, net29305, net29302, 
      net29354, net29331, net29327, net29323, net29332, net29324, net29301, 
      net29300, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, 
      n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29
      , n30, n31, n32, n33 : std_logic;

begin
   
   U1_18 : FA_X1 port map( A => A(18), B => B_AS_19_port, CI => carry_18_port, 
                           CO => carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B_AS_17_port, CI => carry_17_port, 
                           CO => carry_18_port, S => SUM(17));
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B_AS_14_port, CI => carry_14_port, 
                           CO => carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B_AS_13_port, CI => carry_13_port, 
                           CO => carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B_AS_12_port, CI => carry_12_port, 
                           CO => carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B_AS_11_port, CI => carry_11_port, 
                           CO => carry_12_port, S => SUM(11));
   U11 : XOR2_X1 port map( A => B(17), B => ADD_SUB, Z => B_AS_17_port);
   U12 : XOR2_X1 port map( A => B(16), B => ADD_SUB, Z => B_AS_16_port);
   U13 : XOR2_X1 port map( A => B(15), B => ADD_SUB, Z => B_AS_15_port);
   U14 : XOR2_X1 port map( A => B(14), B => ADD_SUB, Z => B_AS_14_port);
   U15 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U16 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U17 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U18 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U2 : XOR2_X1 port map( A => B(8), B => ADD_SUB, Z => B_AS_8_port);
   U3 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U4 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U5 : XOR2_X1 port map( A => B(5), B => ADD_SUB, Z => B_AS_5_port);
   U6 : XOR2_X1 port map( A => B(4), B => ADD_SUB, Z => B_AS_4_port);
   U7 : XOR2_X1 port map( A => B(3), B => ADD_SUB, Z => B_AS_3_port);
   U1_4 : FA_X1 port map( A => A(4), B => B_AS_4_port, CI => carry_4_port, CO 
                           => carry_5_port, S => SUM(4));
   U1_6 : FA_X1 port map( A => A(6), B => B_AS_6_port, CI => carry_6_port, CO 
                           => carry_7_port, S => SUM(6));
   U1_8 : FA_X1 port map( A => A(8), B => B_AS_8_port, CI => carry_8_port, CO 
                           => carry_9_port, S => SUM(8));
   U1 : XNOR2_X1 port map( A => net29324, B => net29320, ZN => net29328);
   U8 : XNOR2_X1 port map( A => ADD_SUB, B => B(1), ZN => net29323);
   U9 : XNOR2_X1 port map( A => ADD_SUB, B => B(0), ZN => net29324);
   U10 : INV_X1 port map( A => net29323, ZN => net29331);
   U19 : XOR2_X1 port map( A => carry_19_port, B => n33, Z => SUM(19));
   U20 : CLKBUF_X1 port map( A => carry_9_port, Z => n1);
   U21 : INV_X1 port map( A => B_AS_9_port, ZN => net16094);
   U22 : XOR2_X1 port map( A => B(9), B => ADD_SUB, Z => B_AS_9_port);
   U23 : INV_X1 port map( A => B_AS_16_port, ZN => n6);
   U24 : CLKBUF_X1 port map( A => carry_7_port, Z => n2);
   U25 : NAND2_X1 port map( A1 => n3, A2 => net29301, ZN => net29300);
   U26 : NAND2_X1 port map( A1 => net29300, A2 => net29331, ZN => net29305);
   U27 : XNOR2_X1 port map( A => net29300, B => net29331, ZN => net29327);
   U28 : OAI21_X1 port map( B1 => ADD_SUB, B2 => A(0), A => net29332, ZN => n3)
                           ;
   U29 : INV_X1 port map( A => net29324, ZN => net29332);
   U30 : OAI21_X1 port map( B1 => ADD_SUB, B2 => A(0), A => net29332, ZN => 
                           net29302);
   U31 : NAND2_X1 port map( A1 => A(0), A2 => ADD_SUB, ZN => net29301);
   U32 : AND2_X1 port map( A1 => net29301, A2 => net29323, ZN => net29385);
   U33 : BUF_X1 port map( A => A(0), Z => net29347);
   U34 : XNOR2_X1 port map( A => net29327, B => net29354, ZN => SUM(1));
   U35 : BUF_X1 port map( A => A(1), Z => net29354);
   U36 : NAND2_X1 port map( A1 => A(1), A2 => net29335, ZN => net29306);
   U37 : CLKBUF_X1 port map( A => A(3), Z => n4);
   U38 : XNOR2_X1 port map( A => n2, B => n5, ZN => SUM(7));
   U39 : XNOR2_X1 port map( A => A(7), B => B_AS_7_port, ZN => n5);
   U40 : XNOR2_X1 port map( A => carry_16_port, B => n7, ZN => SUM(16));
   U41 : XOR2_X1 port map( A => A(16), B => n6, Z => n7);
   U42 : NAND2_X1 port map( A1 => carry_7_port, A2 => A(7), ZN => n8);
   U43 : NAND2_X1 port map( A1 => carry_7_port, A2 => B_AS_7_port, ZN => n9);
   U44 : NAND2_X1 port map( A1 => A(7), A2 => B_AS_7_port, ZN => n10);
   U45 : NAND3_X1 port map( A1 => n9, A2 => n8, A3 => n10, ZN => carry_8_port);
   U46 : NAND2_X1 port map( A1 => net29306, A2 => net29305, ZN => n11);
   U47 : NAND2_X1 port map( A1 => n11, A2 => net29352, ZN => net29340);
   U48 : XNOR2_X1 port map( A => n11, B => net29352, ZN => net29326);
   U49 : AND2_X1 port map( A1 => net29306, A2 => net29305, ZN => net29349);
   U50 : NAND2_X1 port map( A1 => net29385, A2 => net29302, ZN => net29335);
   U51 : XNOR2_X1 port map( A => net29326, B => A(2), ZN => SUM(2));
   U52 : XNOR2_X1 port map( A => B(2), B => net29320, ZN => net29352);
   U53 : INV_X1 port map( A => ADD_SUB, ZN => net29320);
   U54 : XNOR2_X1 port map( A => B(2), B => ADD_SUB, ZN => net29322);
   U55 : NAND2_X1 port map( A1 => net29338, A2 => A(2), ZN => net29339);
   U56 : NAND2_X1 port map( A1 => n18, A2 => B_AS_3_port, ZN => n15);
   U57 : XNOR2_X1 port map( A => n20, B => n12, ZN => SUM(5));
   U58 : XNOR2_X1 port map( A => A(5), B => B_AS_5_port, ZN => n12);
   U59 : NAND3_X1 port map( A1 => n15, A2 => n13, A3 => n14, ZN => carry_4_port
                           );
   U60 : XNOR2_X1 port map( A => net29347, B => net29328, ZN => SUM(0));
   U61 : XNOR2_X1 port map( A => n17, B => B_AS_3_port, ZN => n16);
   U62 : XNOR2_X1 port map( A => n16, B => n4, ZN => SUM(3));
   U63 : NAND2_X1 port map( A1 => net29349, A2 => net29322, ZN => net29338);
   U64 : NAND2_X1 port map( A1 => net29339, A2 => net29340, ZN => n17);
   U65 : NAND2_X1 port map( A1 => net29339, A2 => net29340, ZN => n18);
   U66 : NAND2_X1 port map( A1 => n18, A2 => A(3), ZN => n13);
   U67 : NAND2_X1 port map( A1 => A(3), A2 => B_AS_3_port, ZN => n14);
   U68 : NAND2_X1 port map( A1 => B_AS_9_port, A2 => carry_9_port, ZN => n19);
   U69 : XNOR2_X1 port map( A => A(10), B => B_AS_10_port, ZN => n25);
   U70 : CLKBUF_X1 port map( A => carry_5_port, Z => n20);
   U71 : NAND3_X1 port map( A1 => n19, A2 => net15966, A3 => n26, ZN => n21);
   U72 : NAND2_X1 port map( A1 => carry_5_port, A2 => A(5), ZN => n22);
   U73 : NAND2_X1 port map( A1 => carry_5_port, A2 => B_AS_5_port, ZN => n23);
   U74 : NAND2_X1 port map( A1 => A(5), A2 => B_AS_5_port, ZN => n24);
   U75 : NAND3_X1 port map( A1 => n22, A2 => n23, A3 => n24, ZN => carry_6_port
                           );
   U76 : XNOR2_X1 port map( A => n25, B => n21, ZN => SUM(10));
   U77 : XNOR2_X1 port map( A => net16095, B => n1, ZN => SUM(9));
   U78 : NAND2_X1 port map( A1 => carry_9_port, A2 => A(9), ZN => net15966);
   U79 : XOR2_X1 port map( A => A(9), B => net16094, Z => net16095);
   U80 : NAND2_X1 port map( A1 => A(9), A2 => B_AS_9_port, ZN => n26);
   U81 : NAND3_X1 port map( A1 => n19, A2 => net15966, A3 => n26, ZN => 
                           carry_10_port);
   U82 : NAND2_X1 port map( A1 => A(10), A2 => B_AS_10_port, ZN => n27);
   U83 : NAND2_X1 port map( A1 => A(10), A2 => carry_10_port, ZN => n28);
   U84 : NAND2_X1 port map( A1 => B_AS_10_port, A2 => carry_10_port, ZN => n29)
                           ;
   U85 : NAND3_X1 port map( A1 => n29, A2 => n28, A3 => n27, ZN => 
                           carry_11_port);
   U86 : NAND2_X1 port map( A1 => carry_16_port, A2 => A(16), ZN => n30);
   U87 : NAND2_X1 port map( A1 => carry_16_port, A2 => B_AS_16_port, ZN => n31)
                           ;
   U88 : NAND2_X1 port map( A1 => A(16), A2 => B_AS_16_port, ZN => n32);
   U89 : NAND3_X1 port map( A1 => n30, A2 => n31, A3 => n32, ZN => 
                           carry_17_port);
   U90 : XOR2_X1 port map( A => ADD_SUB, B => B(19), Z => B_AS_19_port);
   U91 : XOR2_X1 port map( A => A(19), B => B_AS_19_port, Z => n33);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT17_DW01_addsub_0 is

   port( A, B : in std_logic_vector (17 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (17 downto 0);  CO : out std_logic);

end adder_NBIT17_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT17_DW01_addsub_0 is

   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_17_port, carry_16_port, carry_15_port, carry_14_port, 
      carry_13_port, carry_12_port, carry_11_port, carry_10_port, carry_9_port,
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, B_AS_17_port, B_AS_15_port, B_AS_14_port, 
      B_AS_13_port, B_AS_12_port, B_AS_11_port, B_AS_10_port, B_AS_9_port, 
      B_AS_8_port, B_AS_7_port, B_AS_6_port, B_AS_5_port, B_AS_4_port, 
      B_AS_3_port, B_AS_2_port, net15769, net15768, net20002, net20014, 
      net23643, net23639, net26379, net23682, net23634, net23633, net23629, 
      net15958, net15920, net23750, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, 
      n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25
      , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
      n40, n41, n42, n43, n44, n45, n46, n47, n_1024 : std_logic;

begin
   
   U1_17 : FA_X1 port map( A => A(17), B => B_AS_17_port, CI => carry_17_port, 
                           CO => n_1024, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B_AS_17_port, CI => carry_16_port, 
                           CO => carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B_AS_14_port, CI => carry_14_port, 
                           CO => carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B_AS_13_port, CI => carry_13_port, 
                           CO => carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B_AS_12_port, CI => carry_12_port, 
                           CO => carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B_AS_11_port, CI => carry_11_port, 
                           CO => carry_12_port, S => SUM(11));
   U1_8 : FA_X1 port map( A => A(8), B => B_AS_8_port, CI => carry_8_port, CO 
                           => carry_9_port, S => SUM(8));
   U1 : XOR2_X1 port map( A => B(9), B => ADD_SUB, Z => B_AS_9_port);
   U2 : XOR2_X1 port map( A => B(8), B => ADD_SUB, Z => B_AS_8_port);
   U3 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U4 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U5 : XOR2_X1 port map( A => B(5), B => ADD_SUB, Z => B_AS_5_port);
   U6 : XOR2_X1 port map( A => B(4), B => ADD_SUB, Z => B_AS_4_port);
   U7 : XOR2_X1 port map( A => B(3), B => ADD_SUB, Z => B_AS_3_port);
   U8 : XOR2_X1 port map( A => B(2), B => ADD_SUB, Z => B_AS_2_port);
   U10 : XOR2_X1 port map( A => ADD_SUB, B => B(17), Z => B_AS_17_port);
   U11 : XOR2_X1 port map( A => B(15), B => ADD_SUB, Z => B_AS_15_port);
   U12 : XOR2_X1 port map( A => B(14), B => ADD_SUB, Z => B_AS_14_port);
   U13 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U14 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U15 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U16 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U9 : CLKBUF_X1 port map( A => net20002, Z => n1);
   U17 : NAND2_X1 port map( A1 => A(0), A2 => net23639, ZN => n38);
   U18 : INV_X1 port map( A => A(1), ZN => net15920);
   U19 : INV_X1 port map( A => A(2), ZN => n36);
   U20 : INV_X1 port map( A => A(0), ZN => net23750);
   U21 : CLKBUF_X1 port map( A => n39, Z => n2);
   U22 : NAND3_X1 port map( A1 => n26, A2 => n27, A3 => n28, ZN => n3);
   U23 : CLKBUF_X1 port map( A => n6, Z => n4);
   U24 : CLKBUF_X1 port map( A => n40, Z => n5);
   U25 : XNOR2_X1 port map( A => B(0), B => net23750, ZN => SUM(0));
   U26 : INV_X1 port map( A => B(0), ZN => net23629);
   U27 : NAND3_X1 port map( A1 => n41, A2 => n42, A3 => n43, ZN => n6);
   U28 : NAND3_X1 port map( A1 => n47, A2 => net15768, A3 => net15769, ZN => n7
                           );
   U29 : XOR2_X1 port map( A => n13, B => net15920, Z => net15958);
   U30 : BUF_X1 port map( A => B_AS_2_port, Z => n40);
   U31 : XNOR2_X1 port map( A => n24, B => n8, ZN => SUM(5));
   U32 : XNOR2_X1 port map( A => B_AS_5_port, B => A(5), ZN => n8);
   U33 : XOR2_X1 port map( A => B_AS_7_port, B => A(7), Z => n9);
   U34 : XOR2_X1 port map( A => n3, B => n9, Z => SUM(7));
   U35 : NAND2_X1 port map( A1 => carry_7_port, A2 => B_AS_7_port, ZN => n10);
   U36 : NAND2_X1 port map( A1 => n3, A2 => A(7), ZN => n11);
   U37 : NAND2_X1 port map( A1 => B_AS_7_port, A2 => A(7), ZN => n12);
   U38 : NAND3_X1 port map( A1 => n10, A2 => n11, A3 => n12, ZN => carry_8_port
                           );
   U39 : XOR2_X1 port map( A => B(1), B => ADD_SUB, Z => n13);
   U40 : CLKBUF_X1 port map( A => n13, Z => net20002);
   U41 : XNOR2_X1 port map( A => n6, B => n14, ZN => SUM(4));
   U42 : XNOR2_X1 port map( A => B_AS_4_port, B => A(4), ZN => n14);
   U43 : XOR2_X1 port map( A => B_AS_9_port, B => A(9), Z => n15);
   U44 : XOR2_X1 port map( A => carry_9_port, B => n15, Z => SUM(9));
   U45 : NAND2_X1 port map( A1 => carry_9_port, A2 => B_AS_9_port, ZN => n16);
   U46 : NAND2_X1 port map( A1 => carry_9_port, A2 => A(9), ZN => n17);
   U47 : NAND2_X1 port map( A1 => B_AS_9_port, A2 => A(9), ZN => n18);
   U48 : NAND3_X1 port map( A1 => n16, A2 => n17, A3 => n18, ZN => 
                           carry_10_port);
   U49 : XOR2_X1 port map( A => B_AS_10_port, B => A(10), Z => n19);
   U50 : XOR2_X1 port map( A => carry_10_port, B => n19, Z => SUM(10));
   U51 : NAND2_X1 port map( A1 => carry_10_port, A2 => B_AS_10_port, ZN => n20)
                           ;
   U52 : NAND2_X1 port map( A1 => carry_10_port, A2 => A(10), ZN => n21);
   U53 : NAND2_X1 port map( A1 => B_AS_10_port, A2 => A(10), ZN => n22);
   U54 : NAND3_X1 port map( A1 => n20, A2 => n21, A3 => n22, ZN => 
                           carry_11_port);
   U55 : XNOR2_X1 port map( A => net15958, B => net23634, ZN => SUM(1));
   U56 : OAI21_X1 port map( B1 => net23633, B2 => net23750, A => n23, ZN => 
                           net23634);
   U57 : OAI21_X1 port map( B1 => net23629, B2 => A(0), A => ADD_SUB, ZN => n23
                           );
   U58 : CLKBUF_X1 port map( A => net23629, Z => net26379);
   U59 : OAI21_X1 port map( B1 => net23629, B2 => A(0), A => ADD_SUB, ZN => 
                           net23643);
   U60 : XNOR2_X1 port map( A => ADD_SUB, B => net23682, ZN => net23633);
   U61 : INV_X1 port map( A => net23633, ZN => net23639);
   U62 : INV_X1 port map( A => net26379, ZN => net23682);
   U63 : NAND2_X1 port map( A1 => n1, A2 => A(1), ZN => net15769);
   U64 : NAND2_X1 port map( A1 => net20014, A2 => A(1), ZN => net15768);
   U65 : NAND3_X1 port map( A1 => n33, A2 => n32, A3 => n34, ZN => n24);
   U66 : XOR2_X1 port map( A => B_AS_6_port, B => A(6), Z => n25);
   U67 : XOR2_X1 port map( A => carry_6_port, B => n25, Z => SUM(6));
   U68 : NAND2_X1 port map( A1 => carry_6_port, A2 => B_AS_6_port, ZN => n26);
   U69 : NAND2_X1 port map( A1 => carry_6_port, A2 => A(6), ZN => n27);
   U70 : NAND2_X1 port map( A1 => B_AS_6_port, A2 => A(6), ZN => n28);
   U71 : NAND3_X1 port map( A1 => n26, A2 => n27, A3 => n28, ZN => carry_7_port
                           );
   U72 : NAND2_X1 port map( A1 => carry_5_port, A2 => B_AS_5_port, ZN => n29);
   U73 : NAND2_X1 port map( A1 => n24, A2 => A(5), ZN => n30);
   U74 : NAND2_X1 port map( A1 => B_AS_5_port, A2 => A(5), ZN => n31);
   U75 : NAND3_X1 port map( A1 => n29, A2 => n30, A3 => n31, ZN => carry_6_port
                           );
   U76 : NAND2_X1 port map( A1 => carry_4_port, A2 => B_AS_4_port, ZN => n32);
   U77 : NAND2_X1 port map( A1 => n4, A2 => A(4), ZN => n33);
   U78 : NAND2_X1 port map( A1 => B_AS_4_port, A2 => A(4), ZN => n34);
   U79 : NAND3_X1 port map( A1 => n32, A2 => n33, A3 => n34, ZN => carry_5_port
                           );
   U80 : NAND2_X1 port map( A1 => n38, A2 => net23643, ZN => net20014);
   U81 : XNOR2_X1 port map( A => n39, B => n35, ZN => SUM(3));
   U82 : XNOR2_X1 port map( A => B_AS_3_port, B => A(3), ZN => n35);
   U83 : XNOR2_X1 port map( A => n7, B => n37, ZN => SUM(2));
   U84 : XOR2_X1 port map( A => B_AS_2_port, B => n36, Z => n37);
   U85 : NAND3_X1 port map( A1 => n44, A2 => n45, A3 => n46, ZN => n39);
   U86 : NAND2_X1 port map( A1 => carry_3_port, A2 => B_AS_3_port, ZN => n41);
   U87 : NAND2_X1 port map( A1 => n2, A2 => A(3), ZN => n42);
   U88 : NAND2_X1 port map( A1 => B_AS_3_port, A2 => A(3), ZN => n43);
   U89 : NAND3_X1 port map( A1 => n41, A2 => n42, A3 => n43, ZN => carry_4_port
                           );
   U90 : NAND2_X1 port map( A1 => n40, A2 => carry_2_port, ZN => n44);
   U91 : NAND2_X1 port map( A1 => n7, A2 => A(2), ZN => n45);
   U92 : NAND2_X1 port map( A1 => n5, A2 => A(2), ZN => n46);
   U93 : NAND3_X1 port map( A1 => n44, A2 => n45, A3 => n46, ZN => carry_3_port
                           );
   U94 : NAND2_X1 port map( A1 => net20014, A2 => net20002, ZN => n47);
   U95 : NAND3_X1 port map( A1 => n47, A2 => net15768, A3 => net15769, ZN => 
                           carry_2_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT31 is

   port( A, B : in std_logic_vector (30 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (31 downto 0));

end adder_NBIT31;

architecture SYN_behav of adder_NBIT31 is

   component adder_NBIT31_DW01_addsub_0
      port( A, B : in std_logic_vector (31 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (31 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1025 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT31_DW01_addsub_0 port map( A(31) => A(30), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(31) => B(30), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => n1, ADD_SUB => SUB_SUMn, 
                           SUM(31) => S(31), SUM(30) => S(30), SUM(29) => S(29)
                           , SUM(28) => S(28), SUM(27) => S(27), SUM(26) => 
                           S(26), SUM(25) => S(25), SUM(24) => S(24), SUM(23) 
                           => S(23), SUM(22) => S(22), SUM(21) => S(21), 
                           SUM(20) => S(20), SUM(19) => S(19), SUM(18) => S(18)
                           , SUM(17) => S(17), SUM(16) => S(16), SUM(15) => 
                           S(15), SUM(14) => S(14), SUM(13) => S(13), SUM(12) 
                           => S(12), SUM(11) => S(11), SUM(10) => S(10), SUM(9)
                           => S(9), SUM(8) => S(8), SUM(7) => S(7), SUM(6) => 
                           S(6), SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3)
                           , SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO
                           => n_1025);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity mux_NBIT31 is

   port( A, B, C : in std_logic_vector (30 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (30 downto 0));

end mux_NBIT31;

architecture SYN_behav of mux_NBIT31 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
      n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61
      , n62, n63, n64, n65, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n242 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => n35, Z => n203);
   U2 : BUF_X1 port map( A => n35, Z => n204);
   U3 : BUF_X1 port map( A => n34, Z => n205);
   U4 : BUF_X1 port map( A => n34, Z => n206);
   U5 : BUF_X1 port map( A => n35, Z => n202);
   U6 : BUF_X1 port map( A => n34, Z => n207);
   U7 : NOR2_X1 port map( A1 => n242, A2 => n208, ZN => n35);
   U8 : INV_X1 port map( A => S(0), ZN => n242);
   U9 : BUF_X1 port map( A => S(1), Z => n208);
   U10 : BUF_X1 port map( A => S(1), Z => n209);
   U11 : BUF_X1 port map( A => S(1), Z => n210);
   U12 : NOR2_X1 port map( A1 => n208, A2 => S(0), ZN => n34);
   U13 : INV_X1 port map( A => n36, ZN => Y(29));
   U14 : AOI222_X1 port map( A1 => C(29), A2 => n208, B1 => A(29), B2 => n207, 
                           C1 => B(29), C2 => n204, ZN => n36);
   U15 : INV_X1 port map( A => n37, ZN => Y(28));
   U16 : AOI222_X1 port map( A1 => C(28), A2 => n208, B1 => A(28), B2 => n207, 
                           C1 => B(28), C2 => n204, ZN => n37);
   U17 : INV_X1 port map( A => n38, ZN => Y(27));
   U18 : AOI222_X1 port map( A1 => C(27), A2 => n208, B1 => A(27), B2 => n207, 
                           C1 => B(27), C2 => n204, ZN => n38);
   U19 : INV_X1 port map( A => n41, ZN => Y(24));
   U20 : AOI222_X1 port map( A1 => C(24), A2 => n208, B1 => A(24), B2 => n207, 
                           C1 => B(24), C2 => n204, ZN => n41);
   U21 : INV_X1 port map( A => n43, ZN => Y(22));
   U22 : AOI222_X1 port map( A1 => C(22), A2 => n209, B1 => A(22), B2 => n206, 
                           C1 => B(22), C2 => n203, ZN => n43);
   U23 : INV_X1 port map( A => n42, ZN => Y(23));
   U24 : AOI222_X1 port map( A1 => C(23), A2 => n208, B1 => A(23), B2 => n206, 
                           C1 => B(23), C2 => n203, ZN => n42);
   U25 : INV_X1 port map( A => n39, ZN => Y(26));
   U26 : AOI222_X1 port map( A1 => C(26), A2 => n208, B1 => A(26), B2 => n207, 
                           C1 => B(26), C2 => n204, ZN => n39);
   U27 : INV_X1 port map( A => n40, ZN => Y(25));
   U28 : AOI222_X1 port map( A1 => C(25), A2 => n208, B1 => A(25), B2 => n207, 
                           C1 => B(25), C2 => n204, ZN => n40);
   U29 : INV_X1 port map( A => n44, ZN => Y(21));
   U30 : AOI222_X1 port map( A1 => C(21), A2 => n208, B1 => A(21), B2 => n206, 
                           C1 => B(21), C2 => n203, ZN => n44);
   U31 : INV_X1 port map( A => n45, ZN => Y(20));
   U32 : AOI222_X1 port map( A1 => C(20), A2 => n208, B1 => A(20), B2 => n206, 
                           C1 => B(20), C2 => n203, ZN => n45);
   U33 : INV_X1 port map( A => n46, ZN => Y(19));
   U34 : AOI222_X1 port map( A1 => C(19), A2 => n209, B1 => A(19), B2 => n206, 
                           C1 => B(19), C2 => n203, ZN => n46);
   U35 : INV_X1 port map( A => n57, ZN => Y(8));
   U36 : AOI222_X1 port map( A1 => C(8), A2 => n210, B1 => A(8), B2 => n205, C1
                           => B(8), C2 => n202, ZN => n57);
   U37 : INV_X1 port map( A => n56, ZN => Y(9));
   U38 : AOI222_X1 port map( A1 => C(9), A2 => n209, B1 => A(9), B2 => n205, C1
                           => B(9), C2 => n202, ZN => n56);
   U39 : INV_X1 port map( A => n55, ZN => Y(10));
   U40 : AOI222_X1 port map( A1 => C(10), A2 => n209, B1 => A(10), B2 => n205, 
                           C1 => B(10), C2 => n202, ZN => n55);
   U41 : INV_X1 port map( A => n54, ZN => Y(11));
   U42 : AOI222_X1 port map( A1 => C(11), A2 => n209, B1 => A(11), B2 => n205, 
                           C1 => B(11), C2 => n202, ZN => n54);
   U43 : INV_X1 port map( A => n53, ZN => Y(12));
   U44 : AOI222_X1 port map( A1 => C(12), A2 => n209, B1 => A(12), B2 => n206, 
                           C1 => B(12), C2 => n203, ZN => n53);
   U45 : INV_X1 port map( A => n52, ZN => Y(13));
   U46 : AOI222_X1 port map( A1 => C(13), A2 => n209, B1 => A(13), B2 => n206, 
                           C1 => B(13), C2 => n203, ZN => n52);
   U47 : INV_X1 port map( A => n51, ZN => Y(14));
   U48 : AOI222_X1 port map( A1 => C(14), A2 => n209, B1 => A(14), B2 => n206, 
                           C1 => B(14), C2 => n203, ZN => n51);
   U49 : INV_X1 port map( A => n50, ZN => Y(15));
   U50 : AOI222_X1 port map( A1 => C(15), A2 => n209, B1 => A(15), B2 => n206, 
                           C1 => B(15), C2 => n203, ZN => n50);
   U51 : INV_X1 port map( A => n49, ZN => Y(16));
   U52 : AOI222_X1 port map( A1 => C(16), A2 => n209, B1 => A(16), B2 => n206, 
                           C1 => B(16), C2 => n203, ZN => n49);
   U53 : INV_X1 port map( A => n48, ZN => Y(17));
   U54 : AOI222_X1 port map( A1 => C(17), A2 => n209, B1 => A(17), B2 => n206, 
                           C1 => B(17), C2 => n203, ZN => n48);
   U55 : INV_X1 port map( A => n47, ZN => Y(18));
   U56 : AOI222_X1 port map( A1 => C(18), A2 => n209, B1 => A(18), B2 => n206, 
                           C1 => B(18), C2 => n203, ZN => n47);
   U57 : INV_X1 port map( A => n60, ZN => Y(5));
   U58 : AOI222_X1 port map( A1 => C(5), A2 => n210, B1 => A(5), B2 => n205, C1
                           => B(5), C2 => n202, ZN => n60);
   U59 : INV_X1 port map( A => n59, ZN => Y(6));
   U60 : AOI222_X1 port map( A1 => C(6), A2 => n210, B1 => A(6), B2 => n205, C1
                           => B(6), C2 => n202, ZN => n59);
   U61 : INV_X1 port map( A => n58, ZN => Y(7));
   U62 : AOI222_X1 port map( A1 => C(7), A2 => n210, B1 => A(7), B2 => n205, C1
                           => B(7), C2 => n202, ZN => n58);
   U63 : INV_X1 port map( A => n61, ZN => Y(4));
   U64 : AOI222_X1 port map( A1 => C(4), A2 => n210, B1 => A(4), B2 => n205, C1
                           => B(4), C2 => n202, ZN => n61);
   U65 : INV_X1 port map( A => n62, ZN => Y(3));
   U66 : AOI222_X1 port map( A1 => C(3), A2 => n210, B1 => A(3), B2 => n205, C1
                           => B(3), C2 => n202, ZN => n62);
   U67 : INV_X1 port map( A => n63, ZN => Y(2));
   U68 : AOI222_X1 port map( A1 => C(2), A2 => n210, B1 => A(2), B2 => n205, C1
                           => B(2), C2 => n202, ZN => n63);
   U69 : INV_X1 port map( A => n64, ZN => Y(1));
   U70 : AOI222_X1 port map( A1 => C(1), A2 => n210, B1 => A(1), B2 => n205, C1
                           => B(1), C2 => n202, ZN => n64);
   U71 : INV_X1 port map( A => n65, ZN => Y(0));
   U72 : AOI222_X1 port map( A1 => C(0), A2 => n208, B1 => A(0), B2 => n205, C1
                           => B(0), C2 => n202, ZN => n65);
   U73 : INV_X1 port map( A => n33, ZN => Y(30));
   U74 : AOI222_X1 port map( A1 => n210, A2 => C(30), B1 => A(30), B2 => n207, 
                           C1 => B(30), C2 => n204, ZN => n33);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT29 is

   port( A, B : in std_logic_vector (28 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (29 downto 0));

end adder_NBIT29;

architecture SYN_behav of adder_NBIT29 is

   component adder_NBIT29_DW01_addsub_0
      port( A, B : in std_logic_vector (29 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (29 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1026 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT29_DW01_addsub_0 port map( A(29) => A(28), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(29) => B(28), 
                           B(28) => B(28), B(27) => B(27), B(26) => B(26), 
                           B(25) => B(25), B(24) => B(24), B(23) => B(23), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, ADD_SUB => SUB_SUMn, SUM(29) => S(29), 
                           SUM(28) => S(28), SUM(27) => S(27), SUM(26) => S(26)
                           , SUM(25) => S(25), SUM(24) => S(24), SUM(23) => 
                           S(23), SUM(22) => S(22), SUM(21) => S(21), SUM(20) 
                           => S(20), SUM(19) => S(19), SUM(18) => S(18), 
                           SUM(17) => S(17), SUM(16) => S(16), SUM(15) => S(15)
                           , SUM(14) => S(14), SUM(13) => S(13), SUM(12) => 
                           S(12), SUM(11) => S(11), SUM(10) => S(10), SUM(9) =>
                           S(9), SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6)
                           , SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1026);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity mux_NBIT29 is

   port( A, B, C : in std_logic_vector (28 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (28 downto 0));

end mux_NBIT29;

architecture SYN_behav of mux_NBIT29 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
      n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59
      , n60, n61, n184, n185, n186, n187, n188, n189, n190, n191, n192, n222 : 
      std_logic;

begin
   
   U1 : BUF_X1 port map( A => n33, Z => n185);
   U2 : BUF_X1 port map( A => n33, Z => n186);
   U3 : BUF_X1 port map( A => n32, Z => n187);
   U4 : BUF_X1 port map( A => n32, Z => n188);
   U5 : BUF_X1 port map( A => n33, Z => n184);
   U6 : BUF_X1 port map( A => n32, Z => n189);
   U7 : NOR2_X1 port map( A1 => n222, A2 => n190, ZN => n33);
   U8 : INV_X1 port map( A => S(0), ZN => n222);
   U9 : BUF_X1 port map( A => S(1), Z => n190);
   U10 : BUF_X1 port map( A => S(1), Z => n191);
   U11 : BUF_X1 port map( A => S(1), Z => n192);
   U12 : NOR2_X1 port map( A1 => S(0), A2 => n190, ZN => n32);
   U13 : INV_X1 port map( A => n34, ZN => Y(27));
   U14 : AOI222_X1 port map( A1 => C(27), A2 => n192, B1 => A(27), B2 => n189, 
                           C1 => B(27), C2 => n186, ZN => n34);
   U15 : INV_X1 port map( A => n36, ZN => Y(25));
   U16 : AOI222_X1 port map( A1 => C(25), A2 => n192, B1 => A(25), B2 => n189, 
                           C1 => B(25), C2 => n186, ZN => n36);
   U17 : INV_X1 port map( A => n35, ZN => Y(26));
   U18 : AOI222_X1 port map( A1 => C(26), A2 => n192, B1 => A(26), B2 => n189, 
                           C1 => B(26), C2 => n186, ZN => n35);
   U19 : INV_X1 port map( A => n37, ZN => Y(24));
   U20 : AOI222_X1 port map( A1 => C(24), A2 => n192, B1 => A(24), B2 => n189, 
                           C1 => B(24), C2 => n186, ZN => n37);
   U21 : INV_X1 port map( A => n38, ZN => Y(23));
   U22 : AOI222_X1 port map( A1 => C(23), A2 => n192, B1 => A(23), B2 => n188, 
                           C1 => B(23), C2 => n185, ZN => n38);
   U23 : INV_X1 port map( A => n39, ZN => Y(22));
   U24 : AOI222_X1 port map( A1 => C(22), A2 => n192, B1 => A(22), B2 => n188, 
                           C1 => B(22), C2 => n185, ZN => n39);
   U25 : INV_X1 port map( A => n40, ZN => Y(21));
   U26 : AOI222_X1 port map( A1 => C(21), A2 => n191, B1 => A(21), B2 => n188, 
                           C1 => B(21), C2 => n185, ZN => n40);
   U27 : INV_X1 port map( A => n41, ZN => Y(20));
   U28 : AOI222_X1 port map( A1 => C(20), A2 => n191, B1 => A(20), B2 => n188, 
                           C1 => B(20), C2 => n185, ZN => n41);
   U29 : INV_X1 port map( A => n42, ZN => Y(19));
   U30 : AOI222_X1 port map( A1 => C(19), A2 => n191, B1 => A(19), B2 => n188, 
                           C1 => B(19), C2 => n185, ZN => n42);
   U31 : INV_X1 port map( A => n43, ZN => Y(18));
   U32 : AOI222_X1 port map( A1 => C(18), A2 => n191, B1 => A(18), B2 => n188, 
                           C1 => B(18), C2 => n185, ZN => n43);
   U33 : INV_X1 port map( A => n53, ZN => Y(8));
   U34 : AOI222_X1 port map( A1 => C(8), A2 => n190, B1 => A(8), B2 => n187, C1
                           => B(8), C2 => n184, ZN => n53);
   U35 : INV_X1 port map( A => n52, ZN => Y(9));
   U36 : AOI222_X1 port map( A1 => C(9), A2 => n190, B1 => A(9), B2 => n187, C1
                           => B(9), C2 => n184, ZN => n52);
   U37 : INV_X1 port map( A => n51, ZN => Y(10));
   U38 : AOI222_X1 port map( A1 => C(10), A2 => n191, B1 => A(10), B2 => n187, 
                           C1 => B(10), C2 => n184, ZN => n51);
   U39 : INV_X1 port map( A => n50, ZN => Y(11));
   U40 : AOI222_X1 port map( A1 => C(11), A2 => n191, B1 => A(11), B2 => n187, 
                           C1 => B(11), C2 => n184, ZN => n50);
   U41 : INV_X1 port map( A => n49, ZN => Y(12));
   U42 : AOI222_X1 port map( A1 => C(12), A2 => n191, B1 => A(12), B2 => n188, 
                           C1 => B(12), C2 => n185, ZN => n49);
   U43 : INV_X1 port map( A => n48, ZN => Y(13));
   U44 : AOI222_X1 port map( A1 => C(13), A2 => n191, B1 => A(13), B2 => n188, 
                           C1 => B(13), C2 => n185, ZN => n48);
   U45 : INV_X1 port map( A => n47, ZN => Y(14));
   U46 : AOI222_X1 port map( A1 => C(14), A2 => n191, B1 => A(14), B2 => n188, 
                           C1 => B(14), C2 => n185, ZN => n47);
   U47 : INV_X1 port map( A => n46, ZN => Y(15));
   U48 : AOI222_X1 port map( A1 => C(15), A2 => n191, B1 => A(15), B2 => n188, 
                           C1 => B(15), C2 => n185, ZN => n46);
   U49 : INV_X1 port map( A => n45, ZN => Y(16));
   U50 : AOI222_X1 port map( A1 => C(16), A2 => n191, B1 => A(16), B2 => n188, 
                           C1 => B(16), C2 => n185, ZN => n45);
   U51 : INV_X1 port map( A => n44, ZN => Y(17));
   U52 : AOI222_X1 port map( A1 => C(17), A2 => n191, B1 => A(17), B2 => n188, 
                           C1 => B(17), C2 => n185, ZN => n44);
   U53 : INV_X1 port map( A => n56, ZN => Y(5));
   U54 : AOI222_X1 port map( A1 => C(5), A2 => n190, B1 => A(5), B2 => n187, C1
                           => B(5), C2 => n184, ZN => n56);
   U55 : INV_X1 port map( A => n55, ZN => Y(6));
   U56 : AOI222_X1 port map( A1 => C(6), A2 => n190, B1 => A(6), B2 => n187, C1
                           => B(6), C2 => n184, ZN => n55);
   U57 : INV_X1 port map( A => n54, ZN => Y(7));
   U58 : AOI222_X1 port map( A1 => C(7), A2 => n190, B1 => A(7), B2 => n187, C1
                           => B(7), C2 => n184, ZN => n54);
   U59 : INV_X1 port map( A => n57, ZN => Y(4));
   U60 : AOI222_X1 port map( A1 => C(4), A2 => n190, B1 => A(4), B2 => n187, C1
                           => B(4), C2 => n184, ZN => n57);
   U61 : INV_X1 port map( A => n58, ZN => Y(3));
   U62 : AOI222_X1 port map( A1 => C(3), A2 => n190, B1 => A(3), B2 => n187, C1
                           => B(3), C2 => n184, ZN => n58);
   U63 : INV_X1 port map( A => n59, ZN => Y(2));
   U64 : AOI222_X1 port map( A1 => C(2), A2 => n190, B1 => A(2), B2 => n187, C1
                           => B(2), C2 => n184, ZN => n59);
   U65 : INV_X1 port map( A => n60, ZN => Y(1));
   U66 : AOI222_X1 port map( A1 => C(1), A2 => n190, B1 => A(1), B2 => n187, C1
                           => B(1), C2 => n184, ZN => n60);
   U67 : INV_X1 port map( A => n61, ZN => Y(0));
   U68 : AOI222_X1 port map( A1 => C(0), A2 => n190, B1 => A(0), B2 => n187, C1
                           => B(0), C2 => n184, ZN => n61);
   U69 : INV_X1 port map( A => n31, ZN => Y(28));
   U70 : AOI222_X1 port map( A1 => n192, A2 => C(28), B1 => A(28), B2 => n189, 
                           C1 => B(28), C2 => n186, ZN => n31);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity encoder_2 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_2;

architecture SYN_beahavioral of encoder_2 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal vp_1_port, vp_0_port, n1 : std_logic;

begin
   vp <= ( b(2), vp_1_port, vp_0_port );
   
   U3 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);
   U1 : NOR2_X1 port map( A1 => vp_0_port, A2 => n1, ZN => vp_1_port);
   U2 : XNOR2_X1 port map( A => b(0), B => b(2), ZN => n1);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT27 is

   port( A, B : in std_logic_vector (26 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (27 downto 0));

end adder_NBIT27;

architecture SYN_behav of adder_NBIT27 is

   component adder_NBIT27_DW01_addsub_0
      port( A, B : in std_logic_vector (27 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (27 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1027 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT27_DW01_addsub_0 port map( A(27) => A(26), A(26) => A(26), 
                           A(25) => A(25), A(24) => A(24), A(23) => A(23), 
                           A(22) => A(22), A(21) => A(21), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(27) => B(26), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), CI => n1, ADD_SUB 
                           => SUB_SUMn, SUM(27) => S(27), SUM(26) => S(26), 
                           SUM(25) => S(25), SUM(24) => S(24), SUM(23) => S(23)
                           , SUM(22) => S(22), SUM(21) => S(21), SUM(20) => 
                           S(20), SUM(19) => S(19), SUM(18) => S(18), SUM(17) 
                           => S(17), SUM(16) => S(16), SUM(15) => S(15), 
                           SUM(14) => S(14), SUM(13) => S(13), SUM(12) => S(12)
                           , SUM(11) => S(11), SUM(10) => S(10), SUM(9) => S(9)
                           , SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6), 
                           SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1027);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity mux_NBIT27 is

   port( A, B, C : in std_logic_vector (26 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (26 downto 0));

end mux_NBIT27;

architecture SYN_behav of mux_NBIT27 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
      n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57
      , n172, n173, n174, n175, n176, n177, n178, n179, n180, n208 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => n31, Z => n172);
   U2 : BUF_X1 port map( A => n31, Z => n173);
   U3 : BUF_X1 port map( A => n31, Z => n174);
   U4 : BUF_X1 port map( A => n30, Z => n175);
   U5 : BUF_X1 port map( A => n30, Z => n176);
   U6 : BUF_X1 port map( A => n30, Z => n177);
   U7 : NOR2_X1 port map( A1 => n208, A2 => n178, ZN => n31);
   U8 : INV_X1 port map( A => S(0), ZN => n208);
   U9 : BUF_X1 port map( A => S(1), Z => n178);
   U10 : BUF_X1 port map( A => S(1), Z => n179);
   U11 : BUF_X1 port map( A => S(1), Z => n180);
   U12 : NOR2_X1 port map( A1 => S(0), A2 => n178, ZN => n30);
   U13 : INV_X1 port map( A => n32, ZN => Y(25));
   U14 : AOI222_X1 port map( A1 => C(25), A2 => n180, B1 => A(25), B2 => n177, 
                           C1 => B(25), C2 => n174, ZN => n32);
   U15 : INV_X1 port map( A => n33, ZN => Y(24));
   U16 : AOI222_X1 port map( A1 => C(24), A2 => n180, B1 => A(24), B2 => n177, 
                           C1 => B(24), C2 => n174, ZN => n33);
   U17 : INV_X1 port map( A => n34, ZN => Y(23));
   U18 : AOI222_X1 port map( A1 => C(23), A2 => n180, B1 => A(23), B2 => n176, 
                           C1 => B(23), C2 => n173, ZN => n34);
   U19 : INV_X1 port map( A => n35, ZN => Y(22));
   U20 : AOI222_X1 port map( A1 => C(22), A2 => n180, B1 => A(22), B2 => n176, 
                           C1 => B(22), C2 => n173, ZN => n35);
   U21 : INV_X1 port map( A => n36, ZN => Y(21));
   U22 : AOI222_X1 port map( A1 => C(21), A2 => n179, B1 => A(21), B2 => n176, 
                           C1 => B(21), C2 => n173, ZN => n36);
   U23 : INV_X1 port map( A => n37, ZN => Y(20));
   U24 : AOI222_X1 port map( A1 => C(20), A2 => n179, B1 => A(20), B2 => n176, 
                           C1 => B(20), C2 => n173, ZN => n37);
   U25 : INV_X1 port map( A => n38, ZN => Y(19));
   U26 : AOI222_X1 port map( A1 => C(19), A2 => n179, B1 => A(19), B2 => n176, 
                           C1 => B(19), C2 => n173, ZN => n38);
   U27 : INV_X1 port map( A => n39, ZN => Y(18));
   U28 : AOI222_X1 port map( A1 => C(18), A2 => n179, B1 => A(18), B2 => n176, 
                           C1 => B(18), C2 => n173, ZN => n39);
   U29 : INV_X1 port map( A => n40, ZN => Y(17));
   U30 : AOI222_X1 port map( A1 => C(17), A2 => n179, B1 => A(17), B2 => n176, 
                           C1 => B(17), C2 => n173, ZN => n40);
   U31 : INV_X1 port map( A => n57, ZN => Y(0));
   U32 : AOI222_X1 port map( A1 => C(0), A2 => n178, B1 => A(0), B2 => n175, C1
                           => B(0), C2 => n172, ZN => n57);
   U33 : INV_X1 port map( A => n41, ZN => Y(16));
   U34 : AOI222_X1 port map( A1 => C(16), A2 => n179, B1 => A(16), B2 => n176, 
                           C1 => B(16), C2 => n173, ZN => n41);
   U35 : INV_X1 port map( A => n53, ZN => Y(4));
   U36 : AOI222_X1 port map( A1 => C(4), A2 => n178, B1 => A(4), B2 => n175, C1
                           => B(4), C2 => n172, ZN => n53);
   U37 : INV_X1 port map( A => n49, ZN => Y(8));
   U38 : AOI222_X1 port map( A1 => C(8), A2 => n178, B1 => A(8), B2 => n175, C1
                           => B(8), C2 => n172, ZN => n49);
   U39 : INV_X1 port map( A => n48, ZN => Y(9));
   U40 : AOI222_X1 port map( A1 => C(9), A2 => n178, B1 => A(9), B2 => n175, C1
                           => B(9), C2 => n172, ZN => n48);
   U41 : INV_X1 port map( A => n47, ZN => Y(10));
   U42 : AOI222_X1 port map( A1 => C(10), A2 => n179, B1 => A(10), B2 => n175, 
                           C1 => B(10), C2 => n172, ZN => n47);
   U43 : INV_X1 port map( A => n46, ZN => Y(11));
   U44 : AOI222_X1 port map( A1 => C(11), A2 => n179, B1 => A(11), B2 => n175, 
                           C1 => B(11), C2 => n172, ZN => n46);
   U45 : INV_X1 port map( A => n45, ZN => Y(12));
   U46 : AOI222_X1 port map( A1 => C(12), A2 => n179, B1 => A(12), B2 => n176, 
                           C1 => B(12), C2 => n173, ZN => n45);
   U47 : INV_X1 port map( A => n44, ZN => Y(13));
   U48 : AOI222_X1 port map( A1 => C(13), A2 => n179, B1 => A(13), B2 => n176, 
                           C1 => B(13), C2 => n173, ZN => n44);
   U49 : INV_X1 port map( A => n43, ZN => Y(14));
   U50 : AOI222_X1 port map( A1 => C(14), A2 => n179, B1 => A(14), B2 => n176, 
                           C1 => B(14), C2 => n173, ZN => n43);
   U51 : INV_X1 port map( A => n42, ZN => Y(15));
   U52 : AOI222_X1 port map( A1 => C(15), A2 => n179, B1 => A(15), B2 => n176, 
                           C1 => B(15), C2 => n173, ZN => n42);
   U53 : INV_X1 port map( A => n52, ZN => Y(5));
   U54 : AOI222_X1 port map( A1 => C(5), A2 => n178, B1 => A(5), B2 => n175, C1
                           => B(5), C2 => n172, ZN => n52);
   U55 : INV_X1 port map( A => n51, ZN => Y(6));
   U56 : AOI222_X1 port map( A1 => C(6), A2 => n178, B1 => A(6), B2 => n175, C1
                           => B(6), C2 => n172, ZN => n51);
   U57 : INV_X1 port map( A => n50, ZN => Y(7));
   U58 : AOI222_X1 port map( A1 => C(7), A2 => n178, B1 => A(7), B2 => n175, C1
                           => B(7), C2 => n172, ZN => n50);
   U59 : INV_X1 port map( A => n54, ZN => Y(3));
   U60 : AOI222_X1 port map( A1 => C(3), A2 => n178, B1 => A(3), B2 => n175, C1
                           => B(3), C2 => n172, ZN => n54);
   U61 : INV_X1 port map( A => n55, ZN => Y(2));
   U62 : AOI222_X1 port map( A1 => C(2), A2 => n178, B1 => A(2), B2 => n175, C1
                           => B(2), C2 => n172, ZN => n55);
   U63 : INV_X1 port map( A => n56, ZN => Y(1));
   U64 : AOI222_X1 port map( A1 => C(1), A2 => n178, B1 => A(1), B2 => n175, C1
                           => B(1), C2 => n172, ZN => n56);
   U65 : INV_X1 port map( A => n29, ZN => Y(26));
   U66 : AOI222_X1 port map( A1 => n180, A2 => C(26), B1 => A(26), B2 => n177, 
                           C1 => B(26), C2 => n174, ZN => n29);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT25 is

   port( A, B : in std_logic_vector (24 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (25 downto 0));

end adder_NBIT25;

architecture SYN_behav of adder_NBIT25 is

   component adder_NBIT25_DW01_addsub_0
      port( A, B : in std_logic_vector (25 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (25 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1028 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT25_DW01_addsub_0 port map( A(25) => A(24), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(25) => B(24), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => n1, ADD_SUB => SUB_SUMn, 
                           SUM(25) => S(25), SUM(24) => S(24), SUM(23) => S(23)
                           , SUM(22) => S(22), SUM(21) => S(21), SUM(20) => 
                           S(20), SUM(19) => S(19), SUM(18) => S(18), SUM(17) 
                           => S(17), SUM(16) => S(16), SUM(15) => S(15), 
                           SUM(14) => S(14), SUM(13) => S(13), SUM(12) => S(12)
                           , SUM(11) => S(11), SUM(10) => S(10), SUM(9) => S(9)
                           , SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6), 
                           SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1028);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity mux_NBIT25 is

   port( A, B, C : in std_logic_vector (24 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (24 downto 0));

end mux_NBIT25;

architecture SYN_behav of mux_NBIT25 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
      n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n160, 
      n161, n162, n163, n164, n165, n166, n192 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => n29, Z => n160);
   U2 : BUF_X1 port map( A => n29, Z => n161);
   U3 : BUF_X1 port map( A => n28, Z => n162);
   U4 : BUF_X1 port map( A => n28, Z => n163);
   U5 : NOR2_X1 port map( A1 => n192, A2 => n164, ZN => n29);
   U6 : INV_X1 port map( A => S(0), ZN => n192);
   U7 : BUF_X1 port map( A => S(1), Z => n164);
   U8 : BUF_X1 port map( A => S(1), Z => n165);
   U9 : BUF_X1 port map( A => S(1), Z => n166);
   U10 : NOR2_X1 port map( A1 => S(0), A2 => n164, ZN => n28);
   U11 : INV_X1 port map( A => n30, ZN => Y(23));
   U12 : AOI222_X1 port map( A1 => C(23), A2 => n166, B1 => A(23), B2 => n163, 
                           C1 => B(23), C2 => n161, ZN => n30);
   U13 : INV_X1 port map( A => n31, ZN => Y(22));
   U14 : AOI222_X1 port map( A1 => C(22), A2 => n166, B1 => A(22), B2 => n163, 
                           C1 => B(22), C2 => n161, ZN => n31);
   U15 : INV_X1 port map( A => n32, ZN => Y(21));
   U16 : AOI222_X1 port map( A1 => C(21), A2 => n165, B1 => A(21), B2 => n163, 
                           C1 => B(21), C2 => n161, ZN => n32);
   U17 : INV_X1 port map( A => n34, ZN => Y(19));
   U18 : AOI222_X1 port map( A1 => C(19), A2 => n165, B1 => A(19), B2 => n163, 
                           C1 => B(19), C2 => n161, ZN => n34);
   U19 : INV_X1 port map( A => n33, ZN => Y(20));
   U20 : AOI222_X1 port map( A1 => C(20), A2 => n165, B1 => A(20), B2 => n163, 
                           C1 => B(20), C2 => n161, ZN => n33);
   U21 : INV_X1 port map( A => n35, ZN => Y(18));
   U22 : AOI222_X1 port map( A1 => C(18), A2 => n165, B1 => A(18), B2 => n163, 
                           C1 => B(18), C2 => n161, ZN => n35);
   U23 : INV_X1 port map( A => n36, ZN => Y(17));
   U24 : AOI222_X1 port map( A1 => C(17), A2 => n165, B1 => A(17), B2 => n163, 
                           C1 => B(17), C2 => n161, ZN => n36);
   U25 : INV_X1 port map( A => n53, ZN => Y(0));
   U26 : AOI222_X1 port map( A1 => C(0), A2 => n164, B1 => A(0), B2 => n162, C1
                           => B(0), C2 => n160, ZN => n53);
   U27 : INV_X1 port map( A => n37, ZN => Y(16));
   U28 : AOI222_X1 port map( A1 => C(16), A2 => n165, B1 => A(16), B2 => n163, 
                           C1 => B(16), C2 => n161, ZN => n37);
   U29 : INV_X1 port map( A => n38, ZN => Y(15));
   U30 : AOI222_X1 port map( A1 => C(15), A2 => n165, B1 => A(15), B2 => n163, 
                           C1 => B(15), C2 => n161, ZN => n38);
   U31 : INV_X1 port map( A => n49, ZN => Y(4));
   U32 : AOI222_X1 port map( A1 => C(4), A2 => n164, B1 => A(4), B2 => n162, C1
                           => B(4), C2 => n160, ZN => n49);
   U33 : INV_X1 port map( A => n48, ZN => Y(5));
   U34 : AOI222_X1 port map( A1 => C(5), A2 => n164, B1 => A(5), B2 => n162, C1
                           => B(5), C2 => n160, ZN => n48);
   U35 : INV_X1 port map( A => n47, ZN => Y(6));
   U36 : AOI222_X1 port map( A1 => C(6), A2 => n164, B1 => A(6), B2 => n162, C1
                           => B(6), C2 => n160, ZN => n47);
   U37 : INV_X1 port map( A => n46, ZN => Y(7));
   U38 : AOI222_X1 port map( A1 => C(7), A2 => n164, B1 => A(7), B2 => n162, C1
                           => B(7), C2 => n160, ZN => n46);
   U39 : INV_X1 port map( A => n45, ZN => Y(8));
   U40 : AOI222_X1 port map( A1 => C(8), A2 => n164, B1 => A(8), B2 => n162, C1
                           => B(8), C2 => n160, ZN => n45);
   U41 : INV_X1 port map( A => n44, ZN => Y(9));
   U42 : AOI222_X1 port map( A1 => C(9), A2 => n164, B1 => A(9), B2 => n162, C1
                           => B(9), C2 => n160, ZN => n44);
   U43 : INV_X1 port map( A => n43, ZN => Y(10));
   U44 : AOI222_X1 port map( A1 => C(10), A2 => n165, B1 => A(10), B2 => n162, 
                           C1 => B(10), C2 => n160, ZN => n43);
   U45 : INV_X1 port map( A => n42, ZN => Y(11));
   U46 : AOI222_X1 port map( A1 => C(11), A2 => n165, B1 => A(11), B2 => n162, 
                           C1 => B(11), C2 => n160, ZN => n42);
   U47 : INV_X1 port map( A => n41, ZN => Y(12));
   U48 : AOI222_X1 port map( A1 => C(12), A2 => n165, B1 => A(12), B2 => n163, 
                           C1 => B(12), C2 => n161, ZN => n41);
   U49 : INV_X1 port map( A => n40, ZN => Y(13));
   U50 : AOI222_X1 port map( A1 => C(13), A2 => n165, B1 => A(13), B2 => n163, 
                           C1 => B(13), C2 => n161, ZN => n40);
   U51 : INV_X1 port map( A => n39, ZN => Y(14));
   U52 : AOI222_X1 port map( A1 => C(14), A2 => n165, B1 => A(14), B2 => n163, 
                           C1 => B(14), C2 => n161, ZN => n39);
   U53 : INV_X1 port map( A => n50, ZN => Y(3));
   U54 : AOI222_X1 port map( A1 => C(3), A2 => n164, B1 => A(3), B2 => n162, C1
                           => B(3), C2 => n160, ZN => n50);
   U55 : INV_X1 port map( A => n51, ZN => Y(2));
   U56 : AOI222_X1 port map( A1 => C(2), A2 => n164, B1 => A(2), B2 => n162, C1
                           => B(2), C2 => n160, ZN => n51);
   U57 : INV_X1 port map( A => n52, ZN => Y(1));
   U58 : AOI222_X1 port map( A1 => C(1), A2 => n164, B1 => A(1), B2 => n162, C1
                           => B(1), C2 => n160, ZN => n52);
   U59 : INV_X1 port map( A => n27, ZN => Y(24));
   U60 : AOI222_X1 port map( A1 => n166, A2 => C(24), B1 => A(24), B2 => n28, 
                           C1 => B(24), C2 => n161, ZN => n27);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT23 is

   port( A, B : in std_logic_vector (22 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (23 downto 0));

end adder_NBIT23;

architecture SYN_behav of adder_NBIT23 is

   component adder_NBIT23_DW01_addsub_0
      port( A, B : in std_logic_vector (23 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (23 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1029 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT23_DW01_addsub_0 port map( A(23) => A(22), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(23) => B(22), 
                           B(22) => B(22), B(21) => B(21), B(20) => B(20), 
                           B(19) => B(19), B(18) => B(18), B(17) => B(17), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, ADD_SUB => SUB_SUMn, SUM(23) => S(23), 
                           SUM(22) => S(22), SUM(21) => S(21), SUM(20) => S(20)
                           , SUM(19) => S(19), SUM(18) => S(18), SUM(17) => 
                           S(17), SUM(16) => S(16), SUM(15) => S(15), SUM(14) 
                           => S(14), SUM(13) => S(13), SUM(12) => S(12), 
                           SUM(11) => S(11), SUM(10) => S(10), SUM(9) => S(9), 
                           SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6), 
                           SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1029);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity mux_NBIT23 is

   port( A, B, C : in std_logic_vector (22 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (22 downto 0));

end mux_NBIT23;

architecture SYN_behav of mux_NBIT23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
      n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n148, n149, n150, 
      n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, 
      n163, n187 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => n26, Z => n149);
   U2 : BUF_X1 port map( A => n26, Z => n150);
   U3 : BUF_X1 port map( A => n26, Z => n148);
   U4 : BUF_X1 port map( A => n26, Z => n151);
   U5 : BUF_X1 port map( A => S(1), Z => n162);
   U6 : BUF_X1 port map( A => S(1), Z => n163);
   U7 : NOR2_X1 port map( A1 => n187, A2 => n162, ZN => n27);
   U8 : INV_X1 port map( A => S(0), ZN => n187);
   U9 : NOR2_X1 port map( A1 => S(0), A2 => n162, ZN => n26);
   U10 : INV_X1 port map( A => n28, ZN => Y(21));
   U11 : AOI222_X1 port map( A1 => C(21), A2 => n163, B1 => A(21), B2 => n148, 
                           C1 => B(21), C2 => n159, ZN => n28);
   U12 : INV_X1 port map( A => n31, ZN => Y(18));
   U13 : AOI222_X1 port map( A1 => C(18), A2 => n163, B1 => A(18), B2 => n150, 
                           C1 => B(18), C2 => n156, ZN => n31);
   U14 : INV_X1 port map( A => n32, ZN => Y(17));
   U15 : AOI222_X1 port map( A1 => C(17), A2 => n163, B1 => A(17), B2 => n149, 
                           C1 => B(17), C2 => n156, ZN => n32);
   U16 : INV_X1 port map( A => n33, ZN => Y(16));
   U17 : AOI222_X1 port map( A1 => C(16), A2 => n163, B1 => A(16), B2 => n148, 
                           C1 => B(16), C2 => n155, ZN => n33);
   U18 : INV_X1 port map( A => n34, ZN => Y(15));
   U19 : AOI222_X1 port map( A1 => C(15), A2 => n163, B1 => A(15), B2 => n149, 
                           C1 => B(15), C2 => n155, ZN => n34);
   U20 : INV_X1 port map( A => n35, ZN => Y(14));
   U21 : AOI222_X1 port map( A1 => C(14), A2 => n163, B1 => A(14), B2 => n151, 
                           C1 => B(14), C2 => n155, ZN => n35);
   U22 : INV_X1 port map( A => n36, ZN => Y(13));
   U23 : AOI222_X1 port map( A1 => C(13), A2 => n163, B1 => A(13), B2 => n150, 
                           C1 => B(13), C2 => n154, ZN => n36);
   U24 : INV_X1 port map( A => n45, ZN => Y(4));
   U25 : AOI222_X1 port map( A1 => C(4), A2 => n162, B1 => A(4), B2 => n151, C1
                           => B(4), C2 => n156, ZN => n45);
   U26 : INV_X1 port map( A => n44, ZN => Y(5));
   U27 : AOI222_X1 port map( A1 => C(5), A2 => n162, B1 => A(5), B2 => n148, C1
                           => B(5), C2 => n156, ZN => n44);
   U28 : INV_X1 port map( A => n43, ZN => Y(6));
   U29 : AOI222_X1 port map( A1 => C(6), A2 => n162, B1 => A(6), B2 => n149, C1
                           => B(6), C2 => n157, ZN => n43);
   U30 : INV_X1 port map( A => n42, ZN => Y(7));
   U31 : AOI222_X1 port map( A1 => C(7), A2 => n162, B1 => A(7), B2 => n151, C1
                           => B(7), C2 => n158, ZN => n42);
   U32 : INV_X1 port map( A => n41, ZN => Y(8));
   U33 : AOI222_X1 port map( A1 => C(8), A2 => n162, B1 => A(8), B2 => n150, C1
                           => B(8), C2 => n159, ZN => n41);
   U34 : INV_X1 port map( A => n40, ZN => Y(9));
   U35 : AOI222_X1 port map( A1 => C(9), A2 => n162, B1 => A(9), B2 => n151, C1
                           => B(9), C2 => n160, ZN => n40);
   U36 : INV_X1 port map( A => n39, ZN => Y(10));
   U37 : AOI222_X1 port map( A1 => C(10), A2 => n163, B1 => A(10), B2 => n148, 
                           C1 => B(10), C2 => n161, ZN => n39);
   U38 : INV_X1 port map( A => n38, ZN => Y(11));
   U39 : AOI222_X1 port map( A1 => C(11), A2 => n163, B1 => A(11), B2 => n148, 
                           C1 => B(11), C2 => n161, ZN => n38);
   U40 : INV_X1 port map( A => n37, ZN => Y(12));
   U41 : AOI222_X1 port map( A1 => C(12), A2 => n163, B1 => A(12), B2 => n149, 
                           C1 => B(12), C2 => n154, ZN => n37);
   U42 : INV_X1 port map( A => n46, ZN => Y(3));
   U43 : AOI222_X1 port map( A1 => C(3), A2 => n162, B1 => A(3), B2 => n150, C1
                           => B(3), C2 => n155, ZN => n46);
   U44 : INV_X1 port map( A => n48, ZN => Y(1));
   U45 : AOI222_X1 port map( A1 => C(1), A2 => n162, B1 => A(1), B2 => n149, C1
                           => B(1), C2 => n156, ZN => n48);
   U46 : INV_X1 port map( A => n29, ZN => Y(20));
   U47 : AOI222_X1 port map( A1 => C(20), A2 => n163, B1 => A(20), B2 => n151, 
                           C1 => B(20), C2 => n158, ZN => n29);
   U48 : INV_X1 port map( A => n30, ZN => Y(19));
   U49 : AOI222_X1 port map( A1 => C(19), A2 => n163, B1 => A(19), B2 => n150, 
                           C1 => B(19), C2 => n157, ZN => n30);
   U50 : INV_X1 port map( A => n49, ZN => Y(0));
   U51 : AOI222_X1 port map( A1 => C(0), A2 => n162, B1 => A(0), B2 => n148, C1
                           => B(0), C2 => n154, ZN => n49);
   U52 : INV_X1 port map( A => n47, ZN => Y(2));
   U53 : AOI222_X1 port map( A1 => C(2), A2 => n162, B1 => A(2), B2 => n150, C1
                           => B(2), C2 => n156, ZN => n47);
   U54 : INV_X1 port map( A => n25, ZN => Y(22));
   U55 : AOI222_X1 port map( A1 => n163, A2 => C(22), B1 => A(22), B2 => n149, 
                           C1 => B(22), C2 => n160, ZN => n25);
   U56 : INV_X1 port map( A => n27, ZN => n152);
   U57 : INV_X1 port map( A => n27, ZN => n153);
   U58 : INV_X1 port map( A => n153, ZN => n154);
   U59 : INV_X1 port map( A => n153, ZN => n155);
   U60 : INV_X1 port map( A => n152, ZN => n156);
   U61 : INV_X1 port map( A => n152, ZN => n157);
   U62 : INV_X1 port map( A => n152, ZN => n158);
   U63 : INV_X1 port map( A => n153, ZN => n159);
   U64 : INV_X1 port map( A => n153, ZN => n160);
   U65 : INV_X1 port map( A => n153, ZN => n161);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity encoder_5 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_5;

architecture SYN_beahavioral of encoder_5 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, vp_0_port, n1 : std_logic;

begin
   vp <= ( b(2), n3, vp_0_port );
   
   U3 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);
   U1 : NOR2_X1 port map( A1 => vp_0_port, A2 => n1, ZN => n3);
   U2 : XNOR2_X1 port map( A => b(0), B => b(2), ZN => n1);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT21 is

   port( A, B : in std_logic_vector (20 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (21 downto 0));

end adder_NBIT21;

architecture SYN_behav of adder_NBIT21 is

   component adder_NBIT21_DW01_addsub_0
      port( A, B : in std_logic_vector (21 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (21 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1030 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT21_DW01_addsub_0 port map( A(21) => A(20), A(20) => A(20), 
                           A(19) => A(19), A(18) => A(18), A(17) => A(17), 
                           A(16) => A(16), A(15) => A(15), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(21) => B(20), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), CI => n1, ADD_SUB 
                           => SUB_SUMn, SUM(21) => S(21), SUM(20) => S(20), 
                           SUM(19) => S(19), SUM(18) => S(18), SUM(17) => S(17)
                           , SUM(16) => S(16), SUM(15) => S(15), SUM(14) => 
                           S(14), SUM(13) => S(13), SUM(12) => S(12), SUM(11) 
                           => S(11), SUM(10) => S(10), SUM(9) => S(9), SUM(8) 
                           => S(8), SUM(7) => S(7), SUM(6) => S(6), SUM(5) => 
                           S(5), SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2)
                           , SUM(1) => S(1), SUM(0) => S(0), CO => n_1030);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity mux_NBIT21 is

   port( A, B, C : in std_logic_vector (20 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (20 downto 0));

end mux_NBIT21;

architecture SYN_behav of mux_NBIT21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
      n37, n38, n39, n40, n41, n42, n43, n44, n45, n136, n137, n138, n139, n161
      : std_logic;

begin
   
   U1 : AOI222_X1 port map( A1 => S(1), A2 => C(20), B1 => A(20), B2 => n136, 
                           C1 => B(20), C2 => n138, ZN => n23);
   U2 : BUF_X2 port map( A => n25, Z => n138);
   U3 : CLKBUF_X1 port map( A => n25, Z => n139);
   U4 : BUF_X1 port map( A => n24, Z => n136);
   U5 : BUF_X1 port map( A => n24, Z => n137);
   U6 : NOR2_X1 port map( A1 => n161, A2 => S(1), ZN => n25);
   U7 : INV_X1 port map( A => S(0), ZN => n161);
   U8 : NOR2_X1 port map( A1 => S(0), A2 => S(1), ZN => n24);
   U9 : INV_X1 port map( A => n26, ZN => Y(19));
   U10 : AOI222_X1 port map( A1 => C(19), A2 => S(1), B1 => A(19), B2 => n137, 
                           C1 => B(19), C2 => n139, ZN => n26);
   U11 : INV_X1 port map( A => n27, ZN => Y(18));
   U12 : AOI222_X1 port map( A1 => C(18), A2 => S(1), B1 => A(18), B2 => n137, 
                           C1 => B(18), C2 => n139, ZN => n27);
   U13 : INV_X1 port map( A => n28, ZN => Y(17));
   U14 : AOI222_X1 port map( A1 => C(17), A2 => S(1), B1 => A(17), B2 => n136, 
                           C1 => B(17), C2 => n138, ZN => n28);
   U15 : INV_X1 port map( A => n29, ZN => Y(16));
   U16 : AOI222_X1 port map( A1 => C(16), A2 => S(1), B1 => A(16), B2 => n136, 
                           C1 => B(16), C2 => n138, ZN => n29);
   U17 : INV_X1 port map( A => n30, ZN => Y(15));
   U18 : AOI222_X1 port map( A1 => C(15), A2 => S(1), B1 => A(15), B2 => n137, 
                           C1 => B(15), C2 => n139, ZN => n30);
   U19 : INV_X1 port map( A => n45, ZN => Y(0));
   U20 : AOI222_X1 port map( A1 => C(0), A2 => S(1), B1 => A(0), B2 => n136, C1
                           => B(0), C2 => n138, ZN => n45);
   U21 : INV_X1 port map( A => n31, ZN => Y(14));
   U22 : AOI222_X1 port map( A1 => C(14), A2 => S(1), B1 => A(14), B2 => n137, 
                           C1 => B(14), C2 => n139, ZN => n31);
   U23 : INV_X1 port map( A => n41, ZN => Y(4));
   U24 : AOI222_X1 port map( A1 => C(4), A2 => S(1), B1 => A(4), B2 => n136, C1
                           => B(4), C2 => n138, ZN => n41);
   U25 : INV_X1 port map( A => n40, ZN => Y(5));
   U26 : AOI222_X1 port map( A1 => C(5), A2 => S(1), B1 => A(5), B2 => n136, C1
                           => B(5), C2 => n138, ZN => n40);
   U27 : INV_X1 port map( A => n39, ZN => Y(6));
   U28 : AOI222_X1 port map( A1 => C(6), A2 => S(1), B1 => A(6), B2 => n137, C1
                           => B(6), C2 => n139, ZN => n39);
   U29 : INV_X1 port map( A => n38, ZN => Y(7));
   U30 : AOI222_X1 port map( A1 => C(7), A2 => S(1), B1 => A(7), B2 => n137, C1
                           => B(7), C2 => n139, ZN => n38);
   U31 : INV_X1 port map( A => n37, ZN => Y(8));
   U32 : AOI222_X1 port map( A1 => C(8), A2 => S(1), B1 => A(8), B2 => n136, C1
                           => B(8), C2 => n138, ZN => n37);
   U33 : INV_X1 port map( A => n36, ZN => Y(9));
   U34 : AOI222_X1 port map( A1 => C(9), A2 => S(1), B1 => A(9), B2 => n136, C1
                           => B(9), C2 => n138, ZN => n36);
   U35 : INV_X1 port map( A => n35, ZN => Y(10));
   U36 : AOI222_X1 port map( A1 => C(10), A2 => S(1), B1 => A(10), B2 => n137, 
                           C1 => B(10), C2 => n139, ZN => n35);
   U37 : INV_X1 port map( A => n34, ZN => Y(11));
   U38 : AOI222_X1 port map( A1 => C(11), A2 => S(1), B1 => A(11), B2 => n137, 
                           C1 => B(11), C2 => n139, ZN => n34);
   U39 : INV_X1 port map( A => n33, ZN => Y(12));
   U40 : AOI222_X1 port map( A1 => C(12), A2 => S(1), B1 => A(12), B2 => n136, 
                           C1 => B(12), C2 => n138, ZN => n33);
   U41 : INV_X1 port map( A => n32, ZN => Y(13));
   U42 : AOI222_X1 port map( A1 => C(13), A2 => S(1), B1 => A(13), B2 => n136, 
                           C1 => B(13), C2 => n138, ZN => n32);
   U43 : INV_X1 port map( A => n42, ZN => Y(3));
   U44 : AOI222_X1 port map( A1 => C(3), A2 => S(1), B1 => A(3), B2 => n137, C1
                           => B(3), C2 => n139, ZN => n42);
   U45 : INV_X1 port map( A => n43, ZN => Y(2));
   U46 : AOI222_X1 port map( A1 => C(2), A2 => S(1), B1 => A(2), B2 => n137, C1
                           => B(2), C2 => n139, ZN => n43);
   U47 : INV_X1 port map( A => n44, ZN => Y(1));
   U48 : AOI222_X1 port map( A1 => C(1), A2 => S(1), B1 => A(1), B2 => n136, C1
                           => B(1), C2 => n138, ZN => n44);
   U49 : INV_X1 port map( A => n23, ZN => Y(20));

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity encoder_6 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_6;

architecture SYN_beahavioral of encoder_6 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X4
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, vp_0_port, n1 : std_logic;

begin
   vp <= ( b(2), n3, vp_0_port );
   
   U3 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);
   U1 : NOR2_X4 port map( A1 => vp_0_port, A2 => n1, ZN => n3);
   U2 : XNOR2_X1 port map( A => b(0), B => b(2), ZN => n1);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT19 is

   port( A, B : in std_logic_vector (18 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (19 downto 0));

end adder_NBIT19;

architecture SYN_behav of adder_NBIT19 is

   component adder_NBIT19_DW01_addsub_0
      port( A, B : in std_logic_vector (19 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (19 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1031 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT19_DW01_addsub_0 port map( A(19) => A(18), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(19) => B(18), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => n1, ADD_SUB => SUB_SUMn, 
                           SUM(19) => S(19), SUM(18) => S(18), SUM(17) => S(17)
                           , SUM(16) => S(16), SUM(15) => S(15), SUM(14) => 
                           S(14), SUM(13) => S(13), SUM(12) => S(12), SUM(11) 
                           => S(11), SUM(10) => S(10), SUM(9) => S(9), SUM(8) 
                           => S(8), SUM(7) => S(7), SUM(6) => S(6), SUM(5) => 
                           S(5), SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2)
                           , SUM(1) => S(1), SUM(0) => S(0), CO => n_1031);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity mux_NBIT19 is

   port( A, B, C : in std_logic_vector (18 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (18 downto 0));

end mux_NBIT19;

architecture SYN_behav of mux_NBIT19 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X4
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
      n35, n36, n37, n38, n39, n40, n41, n124, n125, n126, n127, n128, n148 : 
      std_logic;

begin
   
   U1 : INV_X1 port map( A => n22, ZN => n124);
   U2 : INV_X1 port map( A => n124, ZN => n125);
   U3 : BUF_X1 port map( A => n126, Z => n128);
   U4 : CLKBUF_X1 port map( A => S(1), Z => n126);
   U5 : NOR2_X1 port map( A1 => S(0), A2 => n128, ZN => n22);
   U6 : BUF_X1 port map( A => n126, Z => n127);
   U7 : NOR2_X4 port map( A1 => S(1), A2 => n148, ZN => n23);
   U8 : INV_X1 port map( A => S(0), ZN => n148);
   U9 : INV_X1 port map( A => n21, ZN => Y(18));
   U10 : AOI222_X1 port map( A1 => n128, A2 => C(18), B1 => A(18), B2 => n125, 
                           C1 => B(18), C2 => n23, ZN => n21);
   U11 : INV_X1 port map( A => n24, ZN => Y(17));
   U12 : AOI222_X1 port map( A1 => C(17), A2 => n128, B1 => A(17), B2 => n125, 
                           C1 => B(17), C2 => n23, ZN => n24);
   U13 : INV_X1 port map( A => n25, ZN => Y(16));
   U14 : AOI222_X1 port map( A1 => C(16), A2 => n128, B1 => A(16), B2 => n125, 
                           C1 => B(16), C2 => n23, ZN => n25);
   U15 : INV_X1 port map( A => n26, ZN => Y(15));
   U16 : AOI222_X1 port map( A1 => C(15), A2 => n127, B1 => A(15), B2 => n125, 
                           C1 => B(15), C2 => n23, ZN => n26);
   U17 : INV_X1 port map( A => n27, ZN => Y(14));
   U18 : AOI222_X1 port map( A1 => C(14), A2 => n128, B1 => A(14), B2 => n125, 
                           C1 => B(14), C2 => n23, ZN => n27);
   U19 : INV_X1 port map( A => n41, ZN => Y(0));
   U20 : AOI222_X1 port map( A1 => C(0), A2 => n127, B1 => A(0), B2 => n125, C1
                           => B(0), C2 => n23, ZN => n41);
   U21 : INV_X1 port map( A => n39, ZN => Y(2));
   U22 : AOI222_X1 port map( A1 => C(2), A2 => n128, B1 => A(2), B2 => n22, C1 
                           => B(2), C2 => n23, ZN => n39);
   U23 : INV_X1 port map( A => n40, ZN => Y(1));
   U24 : AOI222_X1 port map( A1 => C(1), A2 => n127, B1 => A(1), B2 => n125, C1
                           => B(1), C2 => n23, ZN => n40);
   U25 : INV_X1 port map( A => n38, ZN => Y(3));
   U26 : AOI222_X1 port map( A1 => C(3), A2 => n128, B1 => A(3), B2 => n125, C1
                           => B(3), C2 => n23, ZN => n38);
   U27 : INV_X1 port map( A => n37, ZN => Y(4));
   U28 : AOI222_X1 port map( A1 => C(4), A2 => n128, B1 => A(4), B2 => n125, C1
                           => B(4), C2 => n23, ZN => n37);
   U29 : INV_X1 port map( A => n36, ZN => Y(5));
   U30 : AOI222_X1 port map( A1 => C(5), A2 => n127, B1 => A(5), B2 => n125, C1
                           => B(5), C2 => n23, ZN => n36);
   U31 : INV_X1 port map( A => n35, ZN => Y(6));
   U32 : AOI222_X1 port map( A1 => C(6), A2 => n128, B1 => A(6), B2 => n125, C1
                           => B(6), C2 => n23, ZN => n35);
   U33 : INV_X1 port map( A => n34, ZN => Y(7));
   U34 : AOI222_X1 port map( A1 => C(7), A2 => n127, B1 => A(7), B2 => n125, C1
                           => B(7), C2 => n23, ZN => n34);
   U35 : INV_X1 port map( A => n33, ZN => Y(8));
   U36 : AOI222_X1 port map( A1 => C(8), A2 => n128, B1 => A(8), B2 => n125, C1
                           => B(8), C2 => n23, ZN => n33);
   U37 : INV_X1 port map( A => n32, ZN => Y(9));
   U38 : AOI222_X1 port map( A1 => C(9), A2 => n127, B1 => A(9), B2 => n125, C1
                           => B(9), C2 => n23, ZN => n32);
   U39 : INV_X1 port map( A => n31, ZN => Y(10));
   U40 : AOI222_X1 port map( A1 => C(10), A2 => n128, B1 => A(10), B2 => n125, 
                           C1 => B(10), C2 => n23, ZN => n31);
   U41 : INV_X1 port map( A => n30, ZN => Y(11));
   U42 : AOI222_X1 port map( A1 => C(11), A2 => n127, B1 => A(11), B2 => n125, 
                           C1 => B(11), C2 => n23, ZN => n30);
   U43 : INV_X1 port map( A => n29, ZN => Y(12));
   U44 : AOI222_X1 port map( A1 => C(12), A2 => n128, B1 => A(12), B2 => n125, 
                           C1 => B(12), C2 => n23, ZN => n29);
   U45 : INV_X1 port map( A => n28, ZN => Y(13));
   U46 : AOI222_X1 port map( A1 => C(13), A2 => n127, B1 => A(13), B2 => n125, 
                           C1 => B(13), C2 => n23, ZN => n28);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity adder_NBIT17 is

   port( A, B : in std_logic_vector (16 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (17 downto 0));

end adder_NBIT17;

architecture SYN_behav of adder_NBIT17 is

   component adder_NBIT17_DW01_addsub_0
      port( A, B : in std_logic_vector (17 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (17 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1032 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT17_DW01_addsub_0 port map( A(17) => A(16), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(17) => B(16), 
                           B(16) => B(16), B(15) => B(15), B(14) => B(14), 
                           B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, ADD_SUB => SUB_SUMn, SUM(17) => S(17), 
                           SUM(16) => S(16), SUM(15) => S(15), SUM(14) => S(14)
                           , SUM(13) => S(13), SUM(12) => S(12), SUM(11) => 
                           S(11), SUM(10) => S(10), SUM(9) => S(9), SUM(8) => 
                           S(8), SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5)
                           , SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1032);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity mux_NBIT17 is

   port( A, B, C : in std_logic_vector (16 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (16 downto 0));

end mux_NBIT17;

architecture SYN_behav of mux_NBIT17 is

   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
      n33, n34, n35, net15462, net19876, net19881, net19882, net19892, net20054
      , net20055, net20093, net20126, net20118, net20120, net20119, net20101, 
      net20123, net20134, net20100, n112, n113, n114, n115 : std_logic;

begin
   
   U1 : INV_X1 port map( A => net20119, ZN => n20);
   U2 : NAND2_X1 port map( A1 => net20120, A2 => n113, ZN => net20119);
   U3 : INV_X1 port map( A => net19892, ZN => net20120);
   U4 : CLKBUF_X1 port map( A => net20134, Z => net19892);
   U5 : AND2_X1 port map( A1 => net19892, A2 => C(0), ZN => n112);
   U6 : AOI21_X1 port map( B1 => n114, B2 => B(0), A => n112, ZN => net20100);
   U7 : NAND2_X1 port map( A1 => net20100, A2 => net20101, ZN => Y(0));
   U8 : CLKBUF_X1 port map( A => S(1), Z => net20134);
   U9 : BUF_X2 port map( A => net20134, Z => net20093);
   U10 : NOR2_X1 port map( A1 => S(1), A2 => n113, ZN => n114);
   U11 : AOI21_X1 port map( B1 => n114, B2 => B(1), A => n115, ZN => net20123);
   U12 : INV_X1 port map( A => S(0), ZN => n113);
   U13 : OR2_X1 port map( A1 => S(1), A2 => n113, ZN => net20118);
   U14 : AND2_X1 port map( A1 => S(1), A2 => C(1), ZN => n115);
   U15 : NAND2_X1 port map( A1 => net20126, A2 => net20123, ZN => Y(1));
   U16 : NAND2_X1 port map( A1 => A(1), A2 => n20, ZN => net20126);
   U17 : NAND2_X1 port map( A1 => n20, A2 => A(0), ZN => net20101);
   U18 : INV_X1 port map( A => net20118, ZN => net20055);
   U19 : CLKBUF_X1 port map( A => net20054, Z => n21);
   U20 : CLKBUF_X1 port map( A => net20055, Z => net20054);
   U21 : CLKBUF_X1 port map( A => net20093, Z => net19881);
   U22 : CLKBUF_X1 port map( A => net20093, Z => net19876);
   U23 : CLKBUF_X1 port map( A => net20093, Z => net19882);
   U24 : CLKBUF_X1 port map( A => n21, Z => net15462);
   U25 : INV_X1 port map( A => n22, ZN => Y(15));
   U26 : INV_X1 port map( A => n23, ZN => Y(14));
   U27 : INV_X1 port map( A => n24, ZN => Y(13));
   U28 : INV_X1 port map( A => n25, ZN => Y(12));
   U29 : INV_X1 port map( A => n26, ZN => Y(11));
   U30 : INV_X1 port map( A => n27, ZN => Y(10));
   U31 : INV_X1 port map( A => n28, ZN => Y(9));
   U32 : INV_X1 port map( A => n29, ZN => Y(8));
   U33 : INV_X1 port map( A => n30, ZN => Y(7));
   U34 : INV_X1 port map( A => n31, ZN => Y(6));
   U35 : INV_X1 port map( A => n32, ZN => Y(5));
   U36 : INV_X1 port map( A => n33, ZN => Y(4));
   U37 : INV_X1 port map( A => n34, ZN => Y(3));
   U38 : INV_X1 port map( A => n35, ZN => Y(2));
   U39 : INV_X1 port map( A => n19, ZN => Y(16));
   U40 : AOI222_X1 port map( A1 => net19882, A2 => C(16), B1 => A(16), B2 => 
                           n20, C1 => B(16), C2 => net15462, ZN => n19);
   U41 : AOI222_X1 port map( A1 => C(15), A2 => net20093, B1 => A(15), B2 => 
                           n20, C1 => B(15), C2 => net15462, ZN => n22);
   U42 : AOI222_X1 port map( A1 => C(14), A2 => net20093, B1 => A(14), B2 => 
                           n20, C1 => B(14), C2 => net15462, ZN => n23);
   U43 : AOI222_X1 port map( A1 => C(13), A2 => net19892, B1 => A(13), B2 => 
                           n20, C1 => B(13), C2 => net15462, ZN => n24);
   U44 : AOI222_X1 port map( A1 => C(12), A2 => net20093, B1 => A(12), B2 => 
                           n20, C1 => B(12), C2 => net15462, ZN => n25);
   U45 : AOI222_X1 port map( A1 => C(11), A2 => net19892, B1 => A(11), B2 => 
                           n20, C1 => B(11), C2 => n21, ZN => n26);
   U46 : AOI222_X1 port map( A1 => C(10), A2 => net20093, B1 => A(10), B2 => 
                           n20, C1 => B(10), C2 => n21, ZN => n27);
   U47 : AOI222_X1 port map( A1 => C(9), A2 => net19882, B1 => A(9), B2 => n20,
                           C1 => B(9), C2 => n21, ZN => n28);
   U48 : AOI222_X1 port map( A1 => C(8), A2 => net20093, B1 => A(8), B2 => n20,
                           C1 => B(8), C2 => n21, ZN => n29);
   U49 : AOI222_X1 port map( A1 => C(7), A2 => net19892, B1 => A(7), B2 => n20,
                           C1 => B(7), C2 => n21, ZN => n30);
   U50 : AOI222_X1 port map( A1 => C(6), A2 => net19876, B1 => A(6), B2 => n20,
                           C1 => B(6), C2 => n21, ZN => n31);
   U51 : AOI222_X1 port map( A1 => C(5), A2 => net19892, B1 => A(5), B2 => n20,
                           C1 => B(5), C2 => n21, ZN => n32);
   U52 : AOI222_X1 port map( A1 => C(4), A2 => net19881, B1 => A(4), B2 => n20,
                           C1 => B(4), C2 => net20054, ZN => n33);
   U53 : AOI222_X1 port map( A1 => C(3), A2 => net20093, B1 => A(3), B2 => n20,
                           C1 => B(3), C2 => net20054, ZN => n34);
   U54 : AOI222_X1 port map( A1 => C(2), A2 => net20093, B1 => A(2), B2 => n20,
                           C1 => B(2), C2 => net20055, ZN => n35);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity encoder_0 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_0;

architecture SYN_beahavioral of encoder_0 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net20227, net20226, n2 : std_logic;

begin
   vp <= ( vp(2), vp(1), vp(0) );
   
   U1 : NOR2_X2 port map( A1 => net20226, A2 => n2, ZN => vp(1));
   U2 : BUF_X1 port map( A => b(2), Z => vp(2));
   U3 : XNOR2_X1 port map( A => b(1), B => net20227, ZN => net20226);
   U4 : INV_X1 port map( A => b(0), ZN => net20227);
   U5 : XNOR2_X1 port map( A => net20227, B => b(1), ZN => vp(0));
   U6 : XNOR2_X1 port map( A => b(2), B => b(0), ZN => n2);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT16.all;

entity multiplier_NBIT16 is

   port( A, B : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
         (31 downto 0));

end multiplier_NBIT16;

architecture SYN_structural of multiplier_NBIT16 is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component adder_NBIT31
      port( A, B : in std_logic_vector (30 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (31 downto 0));
   end component;
   
   component mux_NBIT31
      port( A, B, C : in std_logic_vector (30 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (30 downto
            0));
   end component;
   
   component encoder_1
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   component adder_NBIT29
      port( A, B : in std_logic_vector (28 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (29 downto 0));
   end component;
   
   component mux_NBIT29
      port( A, B, C : in std_logic_vector (28 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (28 downto
            0));
   end component;
   
   component encoder_2
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   component adder_NBIT27
      port( A, B : in std_logic_vector (26 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (27 downto 0));
   end component;
   
   component mux_NBIT27
      port( A, B, C : in std_logic_vector (26 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (26 downto
            0));
   end component;
   
   component encoder_3
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   component adder_NBIT25
      port( A, B : in std_logic_vector (24 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (25 downto 0));
   end component;
   
   component mux_NBIT25
      port( A, B, C : in std_logic_vector (24 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (24 downto
            0));
   end component;
   
   component encoder_4
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   component adder_NBIT23
      port( A, B : in std_logic_vector (22 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (23 downto 0));
   end component;
   
   component mux_NBIT23
      port( A, B, C : in std_logic_vector (22 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (22 downto
            0));
   end component;
   
   component encoder_5
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   component adder_NBIT21
      port( A, B : in std_logic_vector (20 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (21 downto 0));
   end component;
   
   component mux_NBIT21
      port( A, B, C : in std_logic_vector (20 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (20 downto
            0));
   end component;
   
   component encoder_6
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   component adder_NBIT19
      port( A, B : in std_logic_vector (18 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (19 downto 0));
   end component;
   
   component mux_NBIT19
      port( A, B, C : in std_logic_vector (18 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (18 downto
            0));
   end component;
   
   component encoder_7
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   component adder_NBIT17
      port( A, B : in std_logic_vector (16 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (17 downto 0));
   end component;
   
   component mux_NBIT17
      port( A, B, C : in std_logic_vector (16 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (16 downto
            0));
   end component;
   
   component encoder_0
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   signal X_Logic0_port, sum_1_17_port, sum_1_16_port, sum_1_15_port, 
      sum_1_14_port, sum_1_13_port, sum_1_12_port, sum_1_11_port, sum_1_10_port
      , sum_1_9_port, sum_1_8_port, sum_1_7_port, sum_1_6_port, sum_1_5_port, 
      sum_1_4_port, sum_1_3_port, sum_1_2_port, sum_1_1_port, sum_1_0_port, 
      sum_2_19_port, sum_2_18_port, sum_2_17_port, sum_2_16_port, sum_2_15_port
      , sum_2_14_port, sum_2_13_port, sum_2_12_port, sum_2_11_port, 
      sum_2_10_port, sum_2_9_port, sum_2_8_port, sum_2_7_port, sum_2_6_port, 
      sum_2_5_port, sum_2_4_port, sum_2_3_port, sum_2_2_port, sum_2_1_port, 
      sum_2_0_port, sum_3_21_port, sum_3_20_port, sum_3_19_port, sum_3_18_port,
      sum_3_17_port, sum_3_16_port, sum_3_15_port, sum_3_14_port, sum_3_13_port
      , sum_3_12_port, sum_3_11_port, sum_3_10_port, sum_3_9_port, sum_3_8_port
      , sum_3_7_port, sum_3_6_port, sum_3_5_port, sum_3_4_port, sum_3_3_port, 
      sum_3_2_port, sum_3_1_port, sum_3_0_port, sum_4_23_port, sum_4_22_port, 
      sum_4_21_port, sum_4_20_port, sum_4_19_port, sum_4_18_port, sum_4_17_port
      , sum_4_16_port, sum_4_15_port, sum_4_14_port, sum_4_13_port, 
      sum_4_12_port, sum_4_11_port, sum_4_10_port, sum_4_9_port, sum_4_8_port, 
      sum_4_7_port, sum_4_6_port, sum_4_5_port, sum_4_4_port, sum_4_3_port, 
      sum_4_2_port, sum_4_1_port, sum_4_0_port, sum_5_25_port, sum_5_24_port, 
      sum_5_23_port, sum_5_22_port, sum_5_21_port, sum_5_20_port, sum_5_19_port
      , sum_5_18_port, sum_5_17_port, sum_5_16_port, sum_5_15_port, 
      sum_5_14_port, sum_5_13_port, sum_5_12_port, sum_5_11_port, sum_5_10_port
      , sum_5_9_port, sum_5_8_port, sum_5_7_port, sum_5_6_port, sum_5_5_port, 
      sum_5_4_port, sum_5_3_port, sum_5_2_port, sum_5_1_port, sum_5_0_port, 
      sum_6_27_port, sum_6_26_port, sum_6_25_port, sum_6_24_port, sum_6_23_port
      , sum_6_22_port, sum_6_21_port, sum_6_20_port, sum_6_19_port, 
      sum_6_18_port, sum_6_17_port, sum_6_16_port, sum_6_15_port, sum_6_14_port
      , sum_6_13_port, sum_6_12_port, sum_6_11_port, sum_6_10_port, 
      sum_6_9_port, sum_6_8_port, sum_6_7_port, sum_6_6_port, sum_6_5_port, 
      sum_6_4_port, sum_6_3_port, sum_6_2_port, sum_6_1_port, sum_6_0_port, 
      sum_7_29_port, sum_7_28_port, sum_7_27_port, sum_7_26_port, sum_7_25_port
      , sum_7_24_port, sum_7_23_port, sum_7_22_port, sum_7_21_port, 
      sum_7_20_port, sum_7_19_port, sum_7_18_port, sum_7_17_port, sum_7_16_port
      , sum_7_15_port, sum_7_14_port, sum_7_13_port, sum_7_12_port, 
      sum_7_11_port, sum_7_10_port, sum_7_9_port, sum_7_8_port, sum_7_7_port, 
      sum_7_6_port, sum_7_5_port, sum_7_4_port, sum_7_3_port, sum_7_2_port, 
      sum_7_1_port, sum_7_0_port, sel_0_1_port, sel_0_0_port, sel_1_1_port, 
      sel_1_0_port, sel_2_1_port, sel_2_0_port, sel_3_1_port, sel_3_0_port, 
      sel_4_1_port, sel_4_0_port, sel_5_1_port, sel_5_0_port, sel_6_1_port, 
      sel_6_0_port, sel_7_1_port, sel_7_0_port, sum_subn_0_port, 
      sum_subn_1_port, sum_subn_2_port, sum_subn_3_port, sum_subn_4_port, 
      sum_subn_5_port, sum_subn_6_port, sum_subn_7_port, mux_out_0_16_port, 
      mux_out_0_15_port, mux_out_0_14_port, mux_out_0_13_port, 
      mux_out_0_12_port, mux_out_0_11_port, mux_out_0_10_port, mux_out_0_9_port
      , mux_out_0_8_port, mux_out_0_7_port, mux_out_0_6_port, mux_out_0_5_port,
      mux_out_0_4_port, mux_out_0_3_port, mux_out_0_2_port, mux_out_0_1_port, 
      mux_out_0_0_port, mux_out_1_18_port, mux_out_1_17_port, mux_out_1_16_port
      , mux_out_1_15_port, mux_out_1_14_port, mux_out_1_13_port, 
      mux_out_1_12_port, mux_out_1_11_port, mux_out_1_10_port, mux_out_1_9_port
      , mux_out_1_8_port, mux_out_1_7_port, mux_out_1_6_port, mux_out_1_5_port,
      mux_out_1_4_port, mux_out_1_3_port, mux_out_1_2_port, mux_out_1_1_port, 
      mux_out_1_0_port, mux_out_2_20_port, mux_out_2_19_port, mux_out_2_18_port
      , mux_out_2_17_port, mux_out_2_16_port, mux_out_2_15_port, 
      mux_out_2_14_port, mux_out_2_13_port, mux_out_2_12_port, 
      mux_out_2_11_port, mux_out_2_10_port, mux_out_2_9_port, mux_out_2_8_port,
      mux_out_2_7_port, mux_out_2_6_port, mux_out_2_5_port, mux_out_2_4_port, 
      mux_out_2_3_port, mux_out_2_2_port, mux_out_2_1_port, mux_out_2_0_port, 
      mux_out_3_22_port, mux_out_3_21_port, mux_out_3_20_port, 
      mux_out_3_19_port, mux_out_3_18_port, mux_out_3_17_port, 
      mux_out_3_16_port, mux_out_3_15_port, mux_out_3_14_port, 
      mux_out_3_13_port, mux_out_3_12_port, mux_out_3_11_port, 
      mux_out_3_10_port, mux_out_3_9_port, mux_out_3_8_port, mux_out_3_7_port, 
      mux_out_3_6_port, mux_out_3_5_port, mux_out_3_4_port, mux_out_3_3_port, 
      mux_out_3_2_port, mux_out_3_1_port, mux_out_3_0_port, mux_out_4_24_port, 
      mux_out_4_23_port, mux_out_4_22_port, mux_out_4_21_port, 
      mux_out_4_20_port, mux_out_4_19_port, mux_out_4_18_port, 
      mux_out_4_17_port, mux_out_4_16_port, mux_out_4_15_port, 
      mux_out_4_14_port, mux_out_4_13_port, mux_out_4_12_port, 
      mux_out_4_11_port, mux_out_4_10_port, mux_out_4_9_port, mux_out_4_8_port,
      mux_out_4_7_port, mux_out_4_6_port, mux_out_4_5_port, mux_out_4_4_port, 
      mux_out_4_3_port, mux_out_4_2_port, mux_out_4_1_port, mux_out_4_0_port, 
      mux_out_5_26_port, mux_out_5_25_port, mux_out_5_24_port, 
      mux_out_5_23_port, mux_out_5_22_port, mux_out_5_21_port, 
      mux_out_5_20_port, mux_out_5_19_port, mux_out_5_18_port, 
      mux_out_5_17_port, mux_out_5_16_port, mux_out_5_15_port, 
      mux_out_5_14_port, mux_out_5_13_port, mux_out_5_12_port, 
      mux_out_5_11_port, mux_out_5_10_port, mux_out_5_9_port, mux_out_5_8_port,
      mux_out_5_7_port, mux_out_5_6_port, mux_out_5_5_port, mux_out_5_4_port, 
      mux_out_5_3_port, mux_out_5_2_port, mux_out_5_1_port, mux_out_5_0_port, 
      mux_out_6_28_port, mux_out_6_27_port, mux_out_6_26_port, 
      mux_out_6_25_port, mux_out_6_24_port, mux_out_6_23_port, 
      mux_out_6_22_port, mux_out_6_21_port, mux_out_6_20_port, 
      mux_out_6_19_port, mux_out_6_18_port, mux_out_6_17_port, 
      mux_out_6_16_port, mux_out_6_15_port, mux_out_6_14_port, 
      mux_out_6_13_port, mux_out_6_12_port, mux_out_6_11_port, 
      mux_out_6_10_port, mux_out_6_9_port, mux_out_6_8_port, mux_out_6_7_port, 
      mux_out_6_6_port, mux_out_6_5_port, mux_out_6_4_port, mux_out_6_3_port, 
      mux_out_6_2_port, mux_out_6_1_port, mux_out_6_0_port, mux_out_7_30_port, 
      mux_out_7_29_port, mux_out_7_28_port, mux_out_7_27_port, 
      mux_out_7_26_port, mux_out_7_25_port, mux_out_7_24_port, 
      mux_out_7_23_port, mux_out_7_22_port, mux_out_7_21_port, 
      mux_out_7_20_port, mux_out_7_19_port, mux_out_7_18_port, 
      mux_out_7_17_port, mux_out_7_16_port, mux_out_7_15_port, 
      mux_out_7_14_port, mux_out_7_13_port, mux_out_7_12_port, 
      mux_out_7_11_port, mux_out_7_10_port, mux_out_7_9_port, mux_out_7_8_port,
      mux_out_7_7_port, mux_out_7_6_port, mux_out_7_5_port, mux_out_7_4_port, 
      mux_out_7_3_port, mux_out_7_2_port, mux_out_7_1_port, mux_out_7_0_port, 
      n1, n2, n3, n4, n5, n6, n7 : std_logic;

begin
   
   X_Logic0_port <= '0';
   ENCi_0 : encoder_0 port map( b(2) => B(1), b(1) => B(0), b(0) => 
                           X_Logic0_port, vp(2) => sum_subn_0_port, vp(1) => 
                           sel_0_1_port, vp(0) => sel_0_0_port);
   MUXi_0 : mux_NBIT17 port map( A(16) => X_Logic0_port, A(15) => X_Logic0_port
                           , A(14) => X_Logic0_port, A(13) => X_Logic0_port, 
                           A(12) => X_Logic0_port, A(11) => X_Logic0_port, 
                           A(10) => X_Logic0_port, A(9) => X_Logic0_port, A(8) 
                           => X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(16) => n7, B(15) => n7, B(14) => 
                           A(14), B(13) => A(13), B(12) => A(12), B(11) => 
                           A(11), B(10) => A(10), B(9) => A(9), B(8) => A(8), 
                           B(7) => A(7), B(6) => A(6), B(5) => A(5), B(4) => 
                           A(4), B(3) => A(3), B(2) => A(2), B(1) => A(1), B(0)
                           => A(0), C(16) => n6, C(15) => A(14), C(14) => A(13)
                           , C(13) => A(12), C(12) => A(11), C(11) => A(10), 
                           C(10) => A(9), C(9) => A(8), C(8) => A(7), C(7) => 
                           A(6), C(6) => A(5), C(5) => A(4), C(4) => A(3), C(3)
                           => A(2), C(2) => A(1), C(1) => A(0), C(0) => 
                           X_Logic0_port, S(1) => sel_0_1_port, S(0) => 
                           sel_0_0_port, Y(16) => mux_out_0_16_port, Y(15) => 
                           mux_out_0_15_port, Y(14) => mux_out_0_14_port, Y(13)
                           => mux_out_0_13_port, Y(12) => mux_out_0_12_port, 
                           Y(11) => mux_out_0_11_port, Y(10) => 
                           mux_out_0_10_port, Y(9) => mux_out_0_9_port, Y(8) =>
                           mux_out_0_8_port, Y(7) => mux_out_0_7_port, Y(6) => 
                           mux_out_0_6_port, Y(5) => mux_out_0_5_port, Y(4) => 
                           mux_out_0_4_port, Y(3) => mux_out_0_3_port, Y(2) => 
                           mux_out_0_2_port, Y(1) => mux_out_0_1_port, Y(0) => 
                           mux_out_0_0_port);
   ADDERi_0 : adder_NBIT17 port map( A(16) => X_Logic0_port, A(15) => 
                           X_Logic0_port, A(14) => X_Logic0_port, A(13) => 
                           X_Logic0_port, A(12) => X_Logic0_port, A(11) => 
                           X_Logic0_port, A(10) => X_Logic0_port, A(9) => 
                           X_Logic0_port, A(8) => X_Logic0_port, A(7) => 
                           X_Logic0_port, A(6) => X_Logic0_port, A(5) => 
                           X_Logic0_port, A(4) => X_Logic0_port, A(3) => 
                           X_Logic0_port, A(2) => X_Logic0_port, A(1) => 
                           X_Logic0_port, A(0) => X_Logic0_port, B(16) => 
                           mux_out_0_16_port, B(15) => mux_out_0_15_port, B(14)
                           => mux_out_0_14_port, B(13) => mux_out_0_13_port, 
                           B(12) => mux_out_0_12_port, B(11) => 
                           mux_out_0_11_port, B(10) => mux_out_0_10_port, B(9) 
                           => mux_out_0_9_port, B(8) => mux_out_0_8_port, B(7) 
                           => mux_out_0_7_port, B(6) => mux_out_0_6_port, B(5) 
                           => mux_out_0_5_port, B(4) => mux_out_0_4_port, B(3) 
                           => mux_out_0_3_port, B(2) => mux_out_0_2_port, B(1) 
                           => mux_out_0_1_port, B(0) => mux_out_0_0_port, 
                           SUB_SUMn => sum_subn_0_port, S(17) => sum_1_17_port,
                           S(16) => sum_1_16_port, S(15) => sum_1_15_port, 
                           S(14) => sum_1_14_port, S(13) => sum_1_13_port, 
                           S(12) => sum_1_12_port, S(11) => sum_1_11_port, 
                           S(10) => sum_1_10_port, S(9) => sum_1_9_port, S(8) 
                           => sum_1_8_port, S(7) => sum_1_7_port, S(6) => 
                           sum_1_6_port, S(5) => sum_1_5_port, S(4) => 
                           sum_1_4_port, S(3) => sum_1_3_port, S(2) => 
                           sum_1_2_port, S(1) => sum_1_1_port, S(0) => 
                           sum_1_0_port);
   ENCi_1 : encoder_7 port map( b(2) => B(3), b(1) => B(2), b(0) => n2, vp(2) 
                           => sum_subn_1_port, vp(1) => sel_1_1_port, vp(0) => 
                           sel_1_0_port);
   MUXi_1 : mux_NBIT19 port map( A(18) => X_Logic0_port, A(17) => X_Logic0_port
                           , A(16) => X_Logic0_port, A(15) => X_Logic0_port, 
                           A(14) => X_Logic0_port, A(13) => X_Logic0_port, 
                           A(12) => X_Logic0_port, A(11) => X_Logic0_port, 
                           A(10) => X_Logic0_port, A(9) => X_Logic0_port, A(8) 
                           => X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(18) => n7, B(17) => n7, B(16) => 
                           A(14), B(15) => A(13), B(14) => A(12), B(13) => 
                           A(11), B(12) => A(10), B(11) => A(9), B(10) => A(8),
                           B(9) => A(7), B(8) => A(6), B(7) => A(5), B(6) => 
                           A(4), B(5) => A(3), B(4) => A(2), B(3) => A(1), B(2)
                           => A(0), B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(18) => n6, C(17) => A(14), C(16) =>
                           A(13), C(15) => A(12), C(14) => A(11), C(13) => 
                           A(10), C(12) => A(9), C(11) => A(8), C(10) => A(7), 
                           C(9) => A(6), C(8) => A(5), C(7) => A(4), C(6) => 
                           A(3), C(5) => A(2), C(4) => A(1), C(3) => A(0), C(2)
                           => X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, S(1) => sel_1_1_port, S(0) => 
                           sel_1_0_port, Y(18) => mux_out_1_18_port, Y(17) => 
                           mux_out_1_17_port, Y(16) => mux_out_1_16_port, Y(15)
                           => mux_out_1_15_port, Y(14) => mux_out_1_14_port, 
                           Y(13) => mux_out_1_13_port, Y(12) => 
                           mux_out_1_12_port, Y(11) => mux_out_1_11_port, Y(10)
                           => mux_out_1_10_port, Y(9) => mux_out_1_9_port, Y(8)
                           => mux_out_1_8_port, Y(7) => mux_out_1_7_port, Y(6) 
                           => mux_out_1_6_port, Y(5) => mux_out_1_5_port, Y(4) 
                           => mux_out_1_4_port, Y(3) => mux_out_1_3_port, Y(2) 
                           => mux_out_1_2_port, Y(1) => mux_out_1_1_port, Y(0) 
                           => mux_out_1_0_port);
   ADDERi_1 : adder_NBIT19 port map( A(18) => sum_1_17_port, A(17) => 
                           sum_1_17_port, A(16) => sum_1_16_port, A(15) => 
                           sum_1_15_port, A(14) => sum_1_14_port, A(13) => 
                           sum_1_13_port, A(12) => sum_1_12_port, A(11) => 
                           sum_1_11_port, A(10) => sum_1_10_port, A(9) => 
                           sum_1_9_port, A(8) => sum_1_8_port, A(7) => 
                           sum_1_7_port, A(6) => sum_1_6_port, A(5) => 
                           sum_1_5_port, A(4) => sum_1_4_port, A(3) => 
                           sum_1_3_port, A(2) => sum_1_2_port, A(1) => 
                           sum_1_1_port, A(0) => sum_1_0_port, B(18) => 
                           mux_out_1_18_port, B(17) => mux_out_1_17_port, B(16)
                           => mux_out_1_16_port, B(15) => mux_out_1_15_port, 
                           B(14) => mux_out_1_14_port, B(13) => 
                           mux_out_1_13_port, B(12) => mux_out_1_12_port, B(11)
                           => mux_out_1_11_port, B(10) => mux_out_1_10_port, 
                           B(9) => mux_out_1_9_port, B(8) => mux_out_1_8_port, 
                           B(7) => mux_out_1_7_port, B(6) => mux_out_1_6_port, 
                           B(5) => mux_out_1_5_port, B(4) => mux_out_1_4_port, 
                           B(3) => mux_out_1_3_port, B(2) => mux_out_1_2_port, 
                           B(1) => mux_out_1_1_port, B(0) => mux_out_1_0_port, 
                           SUB_SUMn => sum_subn_1_port, S(19) => sum_2_19_port,
                           S(18) => sum_2_18_port, S(17) => sum_2_17_port, 
                           S(16) => sum_2_16_port, S(15) => sum_2_15_port, 
                           S(14) => sum_2_14_port, S(13) => sum_2_13_port, 
                           S(12) => sum_2_12_port, S(11) => sum_2_11_port, 
                           S(10) => sum_2_10_port, S(9) => sum_2_9_port, S(8) 
                           => sum_2_8_port, S(7) => sum_2_7_port, S(6) => 
                           sum_2_6_port, S(5) => sum_2_5_port, S(4) => 
                           sum_2_4_port, S(3) => sum_2_3_port, S(2) => 
                           sum_2_2_port, S(1) => sum_2_1_port, S(0) => 
                           sum_2_0_port);
   ENCi_2 : encoder_6 port map( b(2) => B(5), b(1) => B(4), b(0) => B(3), vp(2)
                           => sum_subn_2_port, vp(1) => sel_2_1_port, vp(0) => 
                           sel_2_0_port);
   MUXi_2 : mux_NBIT21 port map( A(20) => X_Logic0_port, A(19) => X_Logic0_port
                           , A(18) => X_Logic0_port, A(17) => X_Logic0_port, 
                           A(16) => X_Logic0_port, A(15) => X_Logic0_port, 
                           A(14) => X_Logic0_port, A(13) => X_Logic0_port, 
                           A(12) => X_Logic0_port, A(11) => X_Logic0_port, 
                           A(10) => X_Logic0_port, A(9) => X_Logic0_port, A(8) 
                           => X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(20) => n6, B(19) => n6, B(18) => 
                           A(14), B(17) => A(13), B(16) => A(12), B(15) => 
                           A(11), B(14) => A(10), B(13) => A(9), B(12) => A(8),
                           B(11) => A(7), B(10) => A(6), B(9) => A(5), B(8) => 
                           A(4), B(7) => A(3), B(6) => A(2), B(5) => A(1), B(4)
                           => A(0), B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(20) => n6, C(19) => A(14), C(18) =>
                           A(13), C(17) => A(12), C(16) => A(11), C(15) => 
                           A(10), C(14) => A(9), C(13) => A(8), C(12) => A(7), 
                           C(11) => A(6), C(10) => A(5), C(9) => A(4), C(8) => 
                           A(3), C(7) => A(2), C(6) => A(1), C(5) => A(0), C(4)
                           => X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, S(1) => sel_2_1_port, S(0) => 
                           sel_2_0_port, Y(20) => mux_out_2_20_port, Y(19) => 
                           mux_out_2_19_port, Y(18) => mux_out_2_18_port, Y(17)
                           => mux_out_2_17_port, Y(16) => mux_out_2_16_port, 
                           Y(15) => mux_out_2_15_port, Y(14) => 
                           mux_out_2_14_port, Y(13) => mux_out_2_13_port, Y(12)
                           => mux_out_2_12_port, Y(11) => mux_out_2_11_port, 
                           Y(10) => mux_out_2_10_port, Y(9) => mux_out_2_9_port
                           , Y(8) => mux_out_2_8_port, Y(7) => mux_out_2_7_port
                           , Y(6) => mux_out_2_6_port, Y(5) => mux_out_2_5_port
                           , Y(4) => mux_out_2_4_port, Y(3) => mux_out_2_3_port
                           , Y(2) => mux_out_2_2_port, Y(1) => mux_out_2_1_port
                           , Y(0) => mux_out_2_0_port);
   ADDERi_2 : adder_NBIT21 port map( A(20) => sum_2_19_port, A(19) => 
                           sum_2_19_port, A(18) => sum_2_18_port, A(17) => 
                           sum_2_17_port, A(16) => sum_2_16_port, A(15) => 
                           sum_2_15_port, A(14) => sum_2_14_port, A(13) => 
                           sum_2_13_port, A(12) => sum_2_12_port, A(11) => 
                           sum_2_11_port, A(10) => sum_2_10_port, A(9) => 
                           sum_2_9_port, A(8) => sum_2_8_port, A(7) => 
                           sum_2_7_port, A(6) => sum_2_6_port, A(5) => 
                           sum_2_5_port, A(4) => sum_2_4_port, A(3) => 
                           sum_2_3_port, A(2) => sum_2_2_port, A(1) => 
                           sum_2_1_port, A(0) => sum_2_0_port, B(20) => 
                           mux_out_2_20_port, B(19) => mux_out_2_19_port, B(18)
                           => mux_out_2_18_port, B(17) => mux_out_2_17_port, 
                           B(16) => mux_out_2_16_port, B(15) => 
                           mux_out_2_15_port, B(14) => mux_out_2_14_port, B(13)
                           => mux_out_2_13_port, B(12) => mux_out_2_12_port, 
                           B(11) => mux_out_2_11_port, B(10) => 
                           mux_out_2_10_port, B(9) => mux_out_2_9_port, B(8) =>
                           mux_out_2_8_port, B(7) => mux_out_2_7_port, B(6) => 
                           mux_out_2_6_port, B(5) => mux_out_2_5_port, B(4) => 
                           mux_out_2_4_port, B(3) => mux_out_2_3_port, B(2) => 
                           mux_out_2_2_port, B(1) => mux_out_2_1_port, B(0) => 
                           mux_out_2_0_port, SUB_SUMn => sum_subn_2_port, S(21)
                           => sum_3_21_port, S(20) => sum_3_20_port, S(19) => 
                           sum_3_19_port, S(18) => sum_3_18_port, S(17) => 
                           sum_3_17_port, S(16) => sum_3_16_port, S(15) => 
                           sum_3_15_port, S(14) => sum_3_14_port, S(13) => 
                           sum_3_13_port, S(12) => sum_3_12_port, S(11) => 
                           sum_3_11_port, S(10) => sum_3_10_port, S(9) => 
                           sum_3_9_port, S(8) => sum_3_8_port, S(7) => 
                           sum_3_7_port, S(6) => sum_3_6_port, S(5) => 
                           sum_3_5_port, S(4) => sum_3_4_port, S(3) => 
                           sum_3_3_port, S(2) => sum_3_2_port, S(1) => 
                           sum_3_1_port, S(0) => sum_3_0_port);
   ENCi_3 : encoder_5 port map( b(2) => B(7), b(1) => B(6), b(0) => B(5), vp(2)
                           => sum_subn_3_port, vp(1) => sel_3_1_port, vp(0) => 
                           sel_3_0_port);
   MUXi_3 : mux_NBIT23 port map( A(22) => X_Logic0_port, A(21) => X_Logic0_port
                           , A(20) => X_Logic0_port, A(19) => X_Logic0_port, 
                           A(18) => X_Logic0_port, A(17) => X_Logic0_port, 
                           A(16) => X_Logic0_port, A(15) => X_Logic0_port, 
                           A(14) => X_Logic0_port, A(13) => X_Logic0_port, 
                           A(12) => X_Logic0_port, A(11) => X_Logic0_port, 
                           A(10) => X_Logic0_port, A(9) => X_Logic0_port, A(8) 
                           => X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(22) => n6, B(21) => n6, B(20) => 
                           A(14), B(19) => A(13), B(18) => A(12), B(17) => 
                           A(11), B(16) => A(10), B(15) => A(9), B(14) => A(8),
                           B(13) => A(7), B(12) => A(6), B(11) => A(5), B(10) 
                           => A(4), B(9) => A(3), B(8) => A(2), B(7) => A(1), 
                           B(6) => A(0), B(5) => X_Logic0_port, B(4) => 
                           X_Logic0_port, B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(22) => n6, C(21) => A(14), C(20) =>
                           A(13), C(19) => A(12), C(18) => A(11), C(17) => 
                           A(10), C(16) => A(9), C(15) => A(8), C(14) => A(7), 
                           C(13) => A(6), C(12) => A(5), C(11) => A(4), C(10) 
                           => A(3), C(9) => A(2), C(8) => A(1), C(7) => A(0), 
                           C(6) => X_Logic0_port, C(5) => X_Logic0_port, C(4) 
                           => X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, S(1) => sel_3_1_port, S(0) => 
                           sel_3_0_port, Y(22) => mux_out_3_22_port, Y(21) => 
                           mux_out_3_21_port, Y(20) => mux_out_3_20_port, Y(19)
                           => mux_out_3_19_port, Y(18) => mux_out_3_18_port, 
                           Y(17) => mux_out_3_17_port, Y(16) => 
                           mux_out_3_16_port, Y(15) => mux_out_3_15_port, Y(14)
                           => mux_out_3_14_port, Y(13) => mux_out_3_13_port, 
                           Y(12) => mux_out_3_12_port, Y(11) => 
                           mux_out_3_11_port, Y(10) => mux_out_3_10_port, Y(9) 
                           => mux_out_3_9_port, Y(8) => mux_out_3_8_port, Y(7) 
                           => mux_out_3_7_port, Y(6) => mux_out_3_6_port, Y(5) 
                           => mux_out_3_5_port, Y(4) => mux_out_3_4_port, Y(3) 
                           => mux_out_3_3_port, Y(2) => mux_out_3_2_port, Y(1) 
                           => mux_out_3_1_port, Y(0) => mux_out_3_0_port);
   ADDERi_3 : adder_NBIT23 port map( A(22) => sum_3_21_port, A(21) => 
                           sum_3_21_port, A(20) => sum_3_20_port, A(19) => 
                           sum_3_19_port, A(18) => sum_3_18_port, A(17) => 
                           sum_3_17_port, A(16) => sum_3_16_port, A(15) => 
                           sum_3_15_port, A(14) => sum_3_14_port, A(13) => 
                           sum_3_13_port, A(12) => sum_3_12_port, A(11) => 
                           sum_3_11_port, A(10) => sum_3_10_port, A(9) => 
                           sum_3_9_port, A(8) => sum_3_8_port, A(7) => 
                           sum_3_7_port, A(6) => sum_3_6_port, A(5) => 
                           sum_3_5_port, A(4) => sum_3_4_port, A(3) => 
                           sum_3_3_port, A(2) => sum_3_2_port, A(1) => 
                           sum_3_1_port, A(0) => sum_3_0_port, B(22) => 
                           mux_out_3_22_port, B(21) => mux_out_3_21_port, B(20)
                           => mux_out_3_20_port, B(19) => mux_out_3_19_port, 
                           B(18) => mux_out_3_18_port, B(17) => 
                           mux_out_3_17_port, B(16) => mux_out_3_16_port, B(15)
                           => mux_out_3_15_port, B(14) => mux_out_3_14_port, 
                           B(13) => mux_out_3_13_port, B(12) => 
                           mux_out_3_12_port, B(11) => mux_out_3_11_port, B(10)
                           => mux_out_3_10_port, B(9) => mux_out_3_9_port, B(8)
                           => mux_out_3_8_port, B(7) => mux_out_3_7_port, B(6) 
                           => mux_out_3_6_port, B(5) => mux_out_3_5_port, B(4) 
                           => mux_out_3_4_port, B(3) => mux_out_3_3_port, B(2) 
                           => mux_out_3_2_port, B(1) => mux_out_3_1_port, B(0) 
                           => mux_out_3_0_port, SUB_SUMn => sum_subn_3_port, 
                           S(23) => sum_4_23_port, S(22) => sum_4_22_port, 
                           S(21) => sum_4_21_port, S(20) => sum_4_20_port, 
                           S(19) => sum_4_19_port, S(18) => sum_4_18_port, 
                           S(17) => sum_4_17_port, S(16) => sum_4_16_port, 
                           S(15) => sum_4_15_port, S(14) => sum_4_14_port, 
                           S(13) => sum_4_13_port, S(12) => sum_4_12_port, 
                           S(11) => sum_4_11_port, S(10) => sum_4_10_port, S(9)
                           => sum_4_9_port, S(8) => sum_4_8_port, S(7) => 
                           sum_4_7_port, S(6) => sum_4_6_port, S(5) => 
                           sum_4_5_port, S(4) => sum_4_4_port, S(3) => 
                           sum_4_3_port, S(2) => sum_4_2_port, S(1) => 
                           sum_4_1_port, S(0) => sum_4_0_port);
   ENCi_4 : encoder_4 port map( b(2) => B(9), b(1) => B(8), b(0) => B(7), vp(2)
                           => sum_subn_4_port, vp(1) => sel_4_1_port, vp(0) => 
                           sel_4_0_port);
   MUXi_4 : mux_NBIT25 port map( A(24) => X_Logic0_port, A(23) => X_Logic0_port
                           , A(22) => X_Logic0_port, A(21) => X_Logic0_port, 
                           A(20) => X_Logic0_port, A(19) => X_Logic0_port, 
                           A(18) => X_Logic0_port, A(17) => X_Logic0_port, 
                           A(16) => X_Logic0_port, A(15) => X_Logic0_port, 
                           A(14) => X_Logic0_port, A(13) => X_Logic0_port, 
                           A(12) => X_Logic0_port, A(11) => X_Logic0_port, 
                           A(10) => X_Logic0_port, A(9) => X_Logic0_port, A(8) 
                           => X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(24) => n7, B(23) => n7, B(22) => 
                           A(14), B(21) => A(13), B(20) => A(12), B(19) => 
                           A(11), B(18) => A(10), B(17) => A(9), B(16) => A(8),
                           B(15) => A(7), B(14) => A(6), B(13) => A(5), B(12) 
                           => A(4), B(11) => A(3), B(10) => A(2), B(9) => A(1),
                           B(8) => A(0), B(7) => X_Logic0_port, B(6) => 
                           X_Logic0_port, B(5) => X_Logic0_port, B(4) => 
                           X_Logic0_port, B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(24) => n6, C(23) => A(14), C(22) =>
                           A(13), C(21) => A(12), C(20) => A(11), C(19) => 
                           A(10), C(18) => A(9), C(17) => A(8), C(16) => A(7), 
                           C(15) => A(6), C(14) => A(5), C(13) => A(4), C(12) 
                           => A(3), C(11) => A(2), C(10) => A(1), C(9) => A(0),
                           C(8) => X_Logic0_port, C(7) => X_Logic0_port, C(6) 
                           => X_Logic0_port, C(5) => X_Logic0_port, C(4) => 
                           X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, S(1) => sel_4_1_port, S(0) => 
                           sel_4_0_port, Y(24) => mux_out_4_24_port, Y(23) => 
                           mux_out_4_23_port, Y(22) => mux_out_4_22_port, Y(21)
                           => mux_out_4_21_port, Y(20) => mux_out_4_20_port, 
                           Y(19) => mux_out_4_19_port, Y(18) => 
                           mux_out_4_18_port, Y(17) => mux_out_4_17_port, Y(16)
                           => mux_out_4_16_port, Y(15) => mux_out_4_15_port, 
                           Y(14) => mux_out_4_14_port, Y(13) => 
                           mux_out_4_13_port, Y(12) => mux_out_4_12_port, Y(11)
                           => mux_out_4_11_port, Y(10) => mux_out_4_10_port, 
                           Y(9) => mux_out_4_9_port, Y(8) => mux_out_4_8_port, 
                           Y(7) => mux_out_4_7_port, Y(6) => mux_out_4_6_port, 
                           Y(5) => mux_out_4_5_port, Y(4) => mux_out_4_4_port, 
                           Y(3) => mux_out_4_3_port, Y(2) => mux_out_4_2_port, 
                           Y(1) => mux_out_4_1_port, Y(0) => mux_out_4_0_port);
   ADDERi_4 : adder_NBIT25 port map( A(24) => n5, A(23) => sum_4_23_port, A(22)
                           => sum_4_22_port, A(21) => sum_4_21_port, A(20) => 
                           sum_4_20_port, A(19) => sum_4_19_port, A(18) => 
                           sum_4_18_port, A(17) => sum_4_17_port, A(16) => 
                           sum_4_16_port, A(15) => sum_4_15_port, A(14) => 
                           sum_4_14_port, A(13) => sum_4_13_port, A(12) => 
                           sum_4_12_port, A(11) => sum_4_11_port, A(10) => 
                           sum_4_10_port, A(9) => sum_4_9_port, A(8) => 
                           sum_4_8_port, A(7) => sum_4_7_port, A(6) => 
                           sum_4_6_port, A(5) => sum_4_5_port, A(4) => 
                           sum_4_4_port, A(3) => sum_4_3_port, A(2) => 
                           sum_4_2_port, A(1) => sum_4_1_port, A(0) => 
                           sum_4_0_port, B(24) => mux_out_4_24_port, B(23) => 
                           mux_out_4_23_port, B(22) => mux_out_4_22_port, B(21)
                           => mux_out_4_21_port, B(20) => mux_out_4_20_port, 
                           B(19) => mux_out_4_19_port, B(18) => 
                           mux_out_4_18_port, B(17) => mux_out_4_17_port, B(16)
                           => mux_out_4_16_port, B(15) => mux_out_4_15_port, 
                           B(14) => mux_out_4_14_port, B(13) => 
                           mux_out_4_13_port, B(12) => mux_out_4_12_port, B(11)
                           => mux_out_4_11_port, B(10) => mux_out_4_10_port, 
                           B(9) => mux_out_4_9_port, B(8) => mux_out_4_8_port, 
                           B(7) => mux_out_4_7_port, B(6) => mux_out_4_6_port, 
                           B(5) => mux_out_4_5_port, B(4) => mux_out_4_4_port, 
                           B(3) => mux_out_4_3_port, B(2) => mux_out_4_2_port, 
                           B(1) => mux_out_4_1_port, B(0) => mux_out_4_0_port, 
                           SUB_SUMn => sum_subn_4_port, S(25) => sum_5_25_port,
                           S(24) => sum_5_24_port, S(23) => sum_5_23_port, 
                           S(22) => sum_5_22_port, S(21) => sum_5_21_port, 
                           S(20) => sum_5_20_port, S(19) => sum_5_19_port, 
                           S(18) => sum_5_18_port, S(17) => sum_5_17_port, 
                           S(16) => sum_5_16_port, S(15) => sum_5_15_port, 
                           S(14) => sum_5_14_port, S(13) => sum_5_13_port, 
                           S(12) => sum_5_12_port, S(11) => sum_5_11_port, 
                           S(10) => sum_5_10_port, S(9) => sum_5_9_port, S(8) 
                           => sum_5_8_port, S(7) => sum_5_7_port, S(6) => 
                           sum_5_6_port, S(5) => sum_5_5_port, S(4) => 
                           sum_5_4_port, S(3) => sum_5_3_port, S(2) => 
                           sum_5_2_port, S(1) => sum_5_1_port, S(0) => 
                           sum_5_0_port);
   ENCi_5 : encoder_3 port map( b(2) => B(11), b(1) => B(10), b(0) => B(9), 
                           vp(2) => sum_subn_5_port, vp(1) => sel_5_1_port, 
                           vp(0) => sel_5_0_port);
   MUXi_5 : mux_NBIT27 port map( A(26) => X_Logic0_port, A(25) => X_Logic0_port
                           , A(24) => X_Logic0_port, A(23) => X_Logic0_port, 
                           A(22) => X_Logic0_port, A(21) => X_Logic0_port, 
                           A(20) => X_Logic0_port, A(19) => X_Logic0_port, 
                           A(18) => X_Logic0_port, A(17) => X_Logic0_port, 
                           A(16) => X_Logic0_port, A(15) => X_Logic0_port, 
                           A(14) => X_Logic0_port, A(13) => X_Logic0_port, 
                           A(12) => X_Logic0_port, A(11) => X_Logic0_port, 
                           A(10) => X_Logic0_port, A(9) => X_Logic0_port, A(8) 
                           => X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(26) => n7, B(25) => n7, B(24) => 
                           A(14), B(23) => A(13), B(22) => A(12), B(21) => 
                           A(11), B(20) => A(10), B(19) => A(9), B(18) => A(8),
                           B(17) => A(7), B(16) => A(6), B(15) => A(5), B(14) 
                           => A(4), B(13) => A(3), B(12) => A(2), B(11) => A(1)
                           , B(10) => A(0), B(9) => X_Logic0_port, B(8) => 
                           X_Logic0_port, B(7) => X_Logic0_port, B(6) => 
                           X_Logic0_port, B(5) => X_Logic0_port, B(4) => 
                           X_Logic0_port, B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(26) => n6, C(25) => A(14), C(24) =>
                           A(13), C(23) => A(12), C(22) => A(11), C(21) => 
                           A(10), C(20) => A(9), C(19) => A(8), C(18) => A(7), 
                           C(17) => A(6), C(16) => A(5), C(15) => A(4), C(14) 
                           => A(3), C(13) => A(2), C(12) => A(1), C(11) => A(0)
                           , C(10) => X_Logic0_port, C(9) => X_Logic0_port, 
                           C(8) => X_Logic0_port, C(7) => X_Logic0_port, C(6) 
                           => X_Logic0_port, C(5) => X_Logic0_port, C(4) => 
                           X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, S(1) => sel_5_1_port, S(0) => 
                           sel_5_0_port, Y(26) => mux_out_5_26_port, Y(25) => 
                           mux_out_5_25_port, Y(24) => mux_out_5_24_port, Y(23)
                           => mux_out_5_23_port, Y(22) => mux_out_5_22_port, 
                           Y(21) => mux_out_5_21_port, Y(20) => 
                           mux_out_5_20_port, Y(19) => mux_out_5_19_port, Y(18)
                           => mux_out_5_18_port, Y(17) => mux_out_5_17_port, 
                           Y(16) => mux_out_5_16_port, Y(15) => 
                           mux_out_5_15_port, Y(14) => mux_out_5_14_port, Y(13)
                           => mux_out_5_13_port, Y(12) => mux_out_5_12_port, 
                           Y(11) => mux_out_5_11_port, Y(10) => 
                           mux_out_5_10_port, Y(9) => mux_out_5_9_port, Y(8) =>
                           mux_out_5_8_port, Y(7) => mux_out_5_7_port, Y(6) => 
                           mux_out_5_6_port, Y(5) => mux_out_5_5_port, Y(4) => 
                           mux_out_5_4_port, Y(3) => mux_out_5_3_port, Y(2) => 
                           mux_out_5_2_port, Y(1) => mux_out_5_1_port, Y(0) => 
                           mux_out_5_0_port);
   ADDERi_5 : adder_NBIT27 port map( A(26) => n1, A(25) => sum_5_25_port, A(24)
                           => sum_5_24_port, A(23) => sum_5_23_port, A(22) => 
                           sum_5_22_port, A(21) => sum_5_21_port, A(20) => 
                           sum_5_20_port, A(19) => sum_5_19_port, A(18) => 
                           sum_5_18_port, A(17) => sum_5_17_port, A(16) => 
                           sum_5_16_port, A(15) => sum_5_15_port, A(14) => 
                           sum_5_14_port, A(13) => sum_5_13_port, A(12) => 
                           sum_5_12_port, A(11) => sum_5_11_port, A(10) => 
                           sum_5_10_port, A(9) => sum_5_9_port, A(8) => 
                           sum_5_8_port, A(7) => sum_5_7_port, A(6) => 
                           sum_5_6_port, A(5) => sum_5_5_port, A(4) => 
                           sum_5_4_port, A(3) => sum_5_3_port, A(2) => 
                           sum_5_2_port, A(1) => sum_5_1_port, A(0) => 
                           sum_5_0_port, B(26) => mux_out_5_26_port, B(25) => 
                           mux_out_5_25_port, B(24) => mux_out_5_24_port, B(23)
                           => mux_out_5_23_port, B(22) => mux_out_5_22_port, 
                           B(21) => mux_out_5_21_port, B(20) => 
                           mux_out_5_20_port, B(19) => mux_out_5_19_port, B(18)
                           => mux_out_5_18_port, B(17) => mux_out_5_17_port, 
                           B(16) => mux_out_5_16_port, B(15) => 
                           mux_out_5_15_port, B(14) => mux_out_5_14_port, B(13)
                           => mux_out_5_13_port, B(12) => mux_out_5_12_port, 
                           B(11) => mux_out_5_11_port, B(10) => 
                           mux_out_5_10_port, B(9) => mux_out_5_9_port, B(8) =>
                           mux_out_5_8_port, B(7) => mux_out_5_7_port, B(6) => 
                           mux_out_5_6_port, B(5) => mux_out_5_5_port, B(4) => 
                           mux_out_5_4_port, B(3) => mux_out_5_3_port, B(2) => 
                           mux_out_5_2_port, B(1) => mux_out_5_1_port, B(0) => 
                           mux_out_5_0_port, SUB_SUMn => sum_subn_5_port, S(27)
                           => sum_6_27_port, S(26) => sum_6_26_port, S(25) => 
                           sum_6_25_port, S(24) => sum_6_24_port, S(23) => 
                           sum_6_23_port, S(22) => sum_6_22_port, S(21) => 
                           sum_6_21_port, S(20) => sum_6_20_port, S(19) => 
                           sum_6_19_port, S(18) => sum_6_18_port, S(17) => 
                           sum_6_17_port, S(16) => sum_6_16_port, S(15) => 
                           sum_6_15_port, S(14) => sum_6_14_port, S(13) => 
                           sum_6_13_port, S(12) => sum_6_12_port, S(11) => 
                           sum_6_11_port, S(10) => sum_6_10_port, S(9) => 
                           sum_6_9_port, S(8) => sum_6_8_port, S(7) => 
                           sum_6_7_port, S(6) => sum_6_6_port, S(5) => 
                           sum_6_5_port, S(4) => sum_6_4_port, S(3) => 
                           sum_6_3_port, S(2) => sum_6_2_port, S(1) => 
                           sum_6_1_port, S(0) => sum_6_0_port);
   ENCi_6 : encoder_2 port map( b(2) => B(13), b(1) => B(12), b(0) => B(11), 
                           vp(2) => sum_subn_6_port, vp(1) => sel_6_1_port, 
                           vp(0) => sel_6_0_port);
   MUXi_6 : mux_NBIT29 port map( A(28) => X_Logic0_port, A(27) => X_Logic0_port
                           , A(26) => X_Logic0_port, A(25) => X_Logic0_port, 
                           A(24) => X_Logic0_port, A(23) => X_Logic0_port, 
                           A(22) => X_Logic0_port, A(21) => X_Logic0_port, 
                           A(20) => X_Logic0_port, A(19) => X_Logic0_port, 
                           A(18) => X_Logic0_port, A(17) => X_Logic0_port, 
                           A(16) => X_Logic0_port, A(15) => X_Logic0_port, 
                           A(14) => X_Logic0_port, A(13) => X_Logic0_port, 
                           A(12) => X_Logic0_port, A(11) => X_Logic0_port, 
                           A(10) => X_Logic0_port, A(9) => X_Logic0_port, A(8) 
                           => X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(28) => n7, B(27) => n7, B(26) => 
                           A(14), B(25) => A(13), B(24) => A(12), B(23) => 
                           A(11), B(22) => A(10), B(21) => A(9), B(20) => A(8),
                           B(19) => A(7), B(18) => A(6), B(17) => A(5), B(16) 
                           => A(4), B(15) => A(3), B(14) => A(2), B(13) => A(1)
                           , B(12) => A(0), B(11) => X_Logic0_port, B(10) => 
                           X_Logic0_port, B(9) => X_Logic0_port, B(8) => 
                           X_Logic0_port, B(7) => X_Logic0_port, B(6) => 
                           X_Logic0_port, B(5) => X_Logic0_port, B(4) => 
                           X_Logic0_port, B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(28) => n6, C(27) => A(14), C(26) =>
                           A(13), C(25) => A(12), C(24) => A(11), C(23) => 
                           A(10), C(22) => A(9), C(21) => A(8), C(20) => A(7), 
                           C(19) => A(6), C(18) => A(5), C(17) => A(4), C(16) 
                           => A(3), C(15) => A(2), C(14) => A(1), C(13) => A(0)
                           , C(12) => X_Logic0_port, C(11) => X_Logic0_port, 
                           C(10) => X_Logic0_port, C(9) => X_Logic0_port, C(8) 
                           => X_Logic0_port, C(7) => X_Logic0_port, C(6) => 
                           X_Logic0_port, C(5) => X_Logic0_port, C(4) => 
                           X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, S(1) => sel_6_1_port, S(0) => 
                           sel_6_0_port, Y(28) => mux_out_6_28_port, Y(27) => 
                           mux_out_6_27_port, Y(26) => mux_out_6_26_port, Y(25)
                           => mux_out_6_25_port, Y(24) => mux_out_6_24_port, 
                           Y(23) => mux_out_6_23_port, Y(22) => 
                           mux_out_6_22_port, Y(21) => mux_out_6_21_port, Y(20)
                           => mux_out_6_20_port, Y(19) => mux_out_6_19_port, 
                           Y(18) => mux_out_6_18_port, Y(17) => 
                           mux_out_6_17_port, Y(16) => mux_out_6_16_port, Y(15)
                           => mux_out_6_15_port, Y(14) => mux_out_6_14_port, 
                           Y(13) => mux_out_6_13_port, Y(12) => 
                           mux_out_6_12_port, Y(11) => mux_out_6_11_port, Y(10)
                           => mux_out_6_10_port, Y(9) => mux_out_6_9_port, Y(8)
                           => mux_out_6_8_port, Y(7) => mux_out_6_7_port, Y(6) 
                           => mux_out_6_6_port, Y(5) => mux_out_6_5_port, Y(4) 
                           => mux_out_6_4_port, Y(3) => mux_out_6_3_port, Y(2) 
                           => mux_out_6_2_port, Y(1) => mux_out_6_1_port, Y(0) 
                           => mux_out_6_0_port);
   ADDERi_6 : adder_NBIT29 port map( A(28) => n4, A(27) => sum_6_27_port, A(26)
                           => sum_6_26_port, A(25) => sum_6_25_port, A(24) => 
                           sum_6_24_port, A(23) => sum_6_23_port, A(22) => 
                           sum_6_22_port, A(21) => sum_6_21_port, A(20) => 
                           sum_6_20_port, A(19) => sum_6_19_port, A(18) => 
                           sum_6_18_port, A(17) => sum_6_17_port, A(16) => 
                           sum_6_16_port, A(15) => sum_6_15_port, A(14) => 
                           sum_6_14_port, A(13) => sum_6_13_port, A(12) => 
                           sum_6_12_port, A(11) => sum_6_11_port, A(10) => 
                           sum_6_10_port, A(9) => sum_6_9_port, A(8) => 
                           sum_6_8_port, A(7) => sum_6_7_port, A(6) => 
                           sum_6_6_port, A(5) => sum_6_5_port, A(4) => 
                           sum_6_4_port, A(3) => sum_6_3_port, A(2) => 
                           sum_6_2_port, A(1) => sum_6_1_port, A(0) => 
                           sum_6_0_port, B(28) => mux_out_6_28_port, B(27) => 
                           mux_out_6_27_port, B(26) => mux_out_6_26_port, B(25)
                           => mux_out_6_25_port, B(24) => mux_out_6_24_port, 
                           B(23) => mux_out_6_23_port, B(22) => 
                           mux_out_6_22_port, B(21) => mux_out_6_21_port, B(20)
                           => mux_out_6_20_port, B(19) => mux_out_6_19_port, 
                           B(18) => mux_out_6_18_port, B(17) => 
                           mux_out_6_17_port, B(16) => mux_out_6_16_port, B(15)
                           => mux_out_6_15_port, B(14) => mux_out_6_14_port, 
                           B(13) => mux_out_6_13_port, B(12) => 
                           mux_out_6_12_port, B(11) => mux_out_6_11_port, B(10)
                           => mux_out_6_10_port, B(9) => mux_out_6_9_port, B(8)
                           => mux_out_6_8_port, B(7) => mux_out_6_7_port, B(6) 
                           => mux_out_6_6_port, B(5) => mux_out_6_5_port, B(4) 
                           => mux_out_6_4_port, B(3) => mux_out_6_3_port, B(2) 
                           => mux_out_6_2_port, B(1) => mux_out_6_1_port, B(0) 
                           => mux_out_6_0_port, SUB_SUMn => sum_subn_6_port, 
                           S(29) => sum_7_29_port, S(28) => sum_7_28_port, 
                           S(27) => sum_7_27_port, S(26) => sum_7_26_port, 
                           S(25) => sum_7_25_port, S(24) => sum_7_24_port, 
                           S(23) => sum_7_23_port, S(22) => sum_7_22_port, 
                           S(21) => sum_7_21_port, S(20) => sum_7_20_port, 
                           S(19) => sum_7_19_port, S(18) => sum_7_18_port, 
                           S(17) => sum_7_17_port, S(16) => sum_7_16_port, 
                           S(15) => sum_7_15_port, S(14) => sum_7_14_port, 
                           S(13) => sum_7_13_port, S(12) => sum_7_12_port, 
                           S(11) => sum_7_11_port, S(10) => sum_7_10_port, S(9)
                           => sum_7_9_port, S(8) => sum_7_8_port, S(7) => 
                           sum_7_7_port, S(6) => sum_7_6_port, S(5) => 
                           sum_7_5_port, S(4) => sum_7_4_port, S(3) => 
                           sum_7_3_port, S(2) => sum_7_2_port, S(1) => 
                           sum_7_1_port, S(0) => sum_7_0_port);
   ENCi_7 : encoder_1 port map( b(2) => B(15), b(1) => B(14), b(0) => B(13), 
                           vp(2) => sum_subn_7_port, vp(1) => sel_7_1_port, 
                           vp(0) => sel_7_0_port);
   MUXi_7 : mux_NBIT31 port map( A(30) => X_Logic0_port, A(29) => X_Logic0_port
                           , A(28) => X_Logic0_port, A(27) => X_Logic0_port, 
                           A(26) => X_Logic0_port, A(25) => X_Logic0_port, 
                           A(24) => X_Logic0_port, A(23) => X_Logic0_port, 
                           A(22) => X_Logic0_port, A(21) => X_Logic0_port, 
                           A(20) => X_Logic0_port, A(19) => X_Logic0_port, 
                           A(18) => X_Logic0_port, A(17) => X_Logic0_port, 
                           A(16) => X_Logic0_port, A(15) => X_Logic0_port, 
                           A(14) => X_Logic0_port, A(13) => X_Logic0_port, 
                           A(12) => X_Logic0_port, A(11) => X_Logic0_port, 
                           A(10) => X_Logic0_port, A(9) => X_Logic0_port, A(8) 
                           => X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(30) => n7, B(29) => n7, B(28) => 
                           A(14), B(27) => A(13), B(26) => A(12), B(25) => 
                           A(11), B(24) => A(10), B(23) => A(9), B(22) => A(8),
                           B(21) => A(7), B(20) => A(6), B(19) => A(5), B(18) 
                           => A(4), B(17) => A(3), B(16) => A(2), B(15) => A(1)
                           , B(14) => A(0), B(13) => X_Logic0_port, B(12) => 
                           X_Logic0_port, B(11) => X_Logic0_port, B(10) => 
                           X_Logic0_port, B(9) => X_Logic0_port, B(8) => 
                           X_Logic0_port, B(7) => X_Logic0_port, B(6) => 
                           X_Logic0_port, B(5) => X_Logic0_port, B(4) => 
                           X_Logic0_port, B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(30) => n6, C(29) => A(14), C(28) =>
                           A(13), C(27) => A(12), C(26) => A(11), C(25) => 
                           A(10), C(24) => A(9), C(23) => A(8), C(22) => A(7), 
                           C(21) => A(6), C(20) => A(5), C(19) => A(4), C(18) 
                           => A(3), C(17) => A(2), C(16) => A(1), C(15) => A(0)
                           , C(14) => X_Logic0_port, C(13) => X_Logic0_port, 
                           C(12) => X_Logic0_port, C(11) => X_Logic0_port, 
                           C(10) => X_Logic0_port, C(9) => X_Logic0_port, C(8) 
                           => X_Logic0_port, C(7) => X_Logic0_port, C(6) => 
                           X_Logic0_port, C(5) => X_Logic0_port, C(4) => 
                           X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, S(1) => sel_7_1_port, S(0) => 
                           sel_7_0_port, Y(30) => mux_out_7_30_port, Y(29) => 
                           mux_out_7_29_port, Y(28) => mux_out_7_28_port, Y(27)
                           => mux_out_7_27_port, Y(26) => mux_out_7_26_port, 
                           Y(25) => mux_out_7_25_port, Y(24) => 
                           mux_out_7_24_port, Y(23) => mux_out_7_23_port, Y(22)
                           => mux_out_7_22_port, Y(21) => mux_out_7_21_port, 
                           Y(20) => mux_out_7_20_port, Y(19) => 
                           mux_out_7_19_port, Y(18) => mux_out_7_18_port, Y(17)
                           => mux_out_7_17_port, Y(16) => mux_out_7_16_port, 
                           Y(15) => mux_out_7_15_port, Y(14) => 
                           mux_out_7_14_port, Y(13) => mux_out_7_13_port, Y(12)
                           => mux_out_7_12_port, Y(11) => mux_out_7_11_port, 
                           Y(10) => mux_out_7_10_port, Y(9) => mux_out_7_9_port
                           , Y(8) => mux_out_7_8_port, Y(7) => mux_out_7_7_port
                           , Y(6) => mux_out_7_6_port, Y(5) => mux_out_7_5_port
                           , Y(4) => mux_out_7_4_port, Y(3) => mux_out_7_3_port
                           , Y(2) => mux_out_7_2_port, Y(1) => mux_out_7_1_port
                           , Y(0) => mux_out_7_0_port);
   ADDERi_7 : adder_NBIT31 port map( A(30) => n3, A(29) => sum_7_29_port, A(28)
                           => sum_7_28_port, A(27) => sum_7_27_port, A(26) => 
                           sum_7_26_port, A(25) => sum_7_25_port, A(24) => 
                           sum_7_24_port, A(23) => sum_7_23_port, A(22) => 
                           sum_7_22_port, A(21) => sum_7_21_port, A(20) => 
                           sum_7_20_port, A(19) => sum_7_19_port, A(18) => 
                           sum_7_18_port, A(17) => sum_7_17_port, A(16) => 
                           sum_7_16_port, A(15) => sum_7_15_port, A(14) => 
                           sum_7_14_port, A(13) => sum_7_13_port, A(12) => 
                           sum_7_12_port, A(11) => sum_7_11_port, A(10) => 
                           sum_7_10_port, A(9) => sum_7_9_port, A(8) => 
                           sum_7_8_port, A(7) => sum_7_7_port, A(6) => 
                           sum_7_6_port, A(5) => sum_7_5_port, A(4) => 
                           sum_7_4_port, A(3) => sum_7_3_port, A(2) => 
                           sum_7_2_port, A(1) => sum_7_1_port, A(0) => 
                           sum_7_0_port, B(30) => mux_out_7_30_port, B(29) => 
                           mux_out_7_29_port, B(28) => mux_out_7_28_port, B(27)
                           => mux_out_7_27_port, B(26) => mux_out_7_26_port, 
                           B(25) => mux_out_7_25_port, B(24) => 
                           mux_out_7_24_port, B(23) => mux_out_7_23_port, B(22)
                           => mux_out_7_22_port, B(21) => mux_out_7_21_port, 
                           B(20) => mux_out_7_20_port, B(19) => 
                           mux_out_7_19_port, B(18) => mux_out_7_18_port, B(17)
                           => mux_out_7_17_port, B(16) => mux_out_7_16_port, 
                           B(15) => mux_out_7_15_port, B(14) => 
                           mux_out_7_14_port, B(13) => mux_out_7_13_port, B(12)
                           => mux_out_7_12_port, B(11) => mux_out_7_11_port, 
                           B(10) => mux_out_7_10_port, B(9) => mux_out_7_9_port
                           , B(8) => mux_out_7_8_port, B(7) => mux_out_7_7_port
                           , B(6) => mux_out_7_6_port, B(5) => mux_out_7_5_port
                           , B(4) => mux_out_7_4_port, B(3) => mux_out_7_3_port
                           , B(2) => mux_out_7_2_port, B(1) => mux_out_7_1_port
                           , B(0) => mux_out_7_0_port, SUB_SUMn => 
                           sum_subn_7_port, S(31) => Y(31), S(30) => Y(30), 
                           S(29) => Y(29), S(28) => Y(28), S(27) => Y(27), 
                           S(26) => Y(26), S(25) => Y(25), S(24) => Y(24), 
                           S(23) => Y(23), S(22) => Y(22), S(21) => Y(21), 
                           S(20) => Y(20), S(19) => Y(19), S(18) => Y(18), 
                           S(17) => Y(17), S(16) => Y(16), S(15) => Y(15), 
                           S(14) => Y(14), S(13) => Y(13), S(12) => Y(12), 
                           S(11) => Y(11), S(10) => Y(10), S(9) => Y(9), S(8) 
                           => Y(8), S(7) => Y(7), S(6) => Y(6), S(5) => Y(5), 
                           S(4) => Y(4), S(3) => Y(3), S(2) => Y(2), S(1) => 
                           Y(1), S(0) => Y(0));
   U2 : BUF_X1 port map( A => B(1), Z => n2);
   U3 : CLKBUF_X1 port map( A => sum_5_25_port, Z => n1);
   U4 : CLKBUF_X1 port map( A => sum_6_27_port, Z => n4);
   U5 : CLKBUF_X1 port map( A => sum_7_29_port, Z => n3);
   U6 : CLKBUF_X1 port map( A => sum_4_23_port, Z => n5);
   U7 : BUF_X1 port map( A => A(15), Z => n6);
   U8 : BUF_X1 port map( A => A(15), Z => n7);

end SYN_structural;
