
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_multiplier_NBIT8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_multiplier_NBIT8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity encoder_3 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_3;

architecture SYN_beahavioral of encoder_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal vp_1_port, vp_0_port, n1 : std_logic;

begin
   vp <= ( b(2), vp_1_port, vp_0_port );
   
   U1 : NOR2_X2 port map( A1 => vp_0_port, A2 => n1, ZN => vp_1_port);
   U2 : XNOR2_X1 port map( A => b(0), B => b(2), ZN => n1);
   U3 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity encoder_2 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_2;

architecture SYN_beahavioral of encoder_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal vp_1_port, vp_0_port, n1 : std_logic;

begin
   vp <= ( b(2), vp_1_port, vp_0_port );
   
   U1 : NOR2_X2 port map( A1 => vp_0_port, A2 => n1, ZN => vp_1_port);
   U2 : XNOR2_X1 port map( A => b(0), B => b(2), ZN => n1);
   U3 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity encoder_1 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_1;

architecture SYN_beahavioral of encoder_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal vp_1_port, vp_0_port, n1 : std_logic;

begin
   vp <= ( b(2), vp_1_port, vp_0_port );
   
   U1 : NOR2_X2 port map( A1 => vp_0_port, A2 => n1, ZN => vp_1_port);
   U2 : XNOR2_X1 port map( A => b(0), B => b(2), ZN => n1);
   U3 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity adder_NBIT15_DW01_addsub_0 is

   port( A, B : in std_logic_vector (15 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (15 downto 0);  CO : out std_logic);

end adder_NBIT15_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT15_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, 
      carry_1_port, B_AS_15_port, B_AS_13_port, B_AS_12_port, B_AS_11_port, 
      B_AS_10_port, B_AS_9_port, B_AS_8_port, B_AS_7_port, B_AS_6_port, 
      B_AS_5_port, B_AS_4_port, B_AS_3_port, B_AS_2_port, B_AS_1_port, 
      B_AS_0_port, n_1003 : std_logic;

begin
   
   U1_15 : FA_X1 port map( A => A(15), B => B_AS_15_port, CI => carry_15_port, 
                           CO => n_1003, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B_AS_15_port, CI => carry_14_port, 
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
   U10 : XOR2_X1 port map( A => ADD_SUB, B => B(15), Z => B_AS_15_port);
   U11 : XOR2_X1 port map( A => B(13), B => ADD_SUB, Z => B_AS_13_port);
   U12 : XOR2_X1 port map( A => B(12), B => ADD_SUB, Z => B_AS_12_port);
   U13 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U14 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U15 : XOR2_X1 port map( A => B(0), B => ADD_SUB, Z => B_AS_0_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity adder_NBIT13_DW01_addsub_0 is

   port( A, B : in std_logic_vector (13 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (13 downto 0);  CO : out std_logic);

end adder_NBIT13_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT13_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, carry_1_port, B_AS_13_port, 
      B_AS_11_port, B_AS_10_port, B_AS_9_port, B_AS_8_port, B_AS_7_port, 
      B_AS_6_port, B_AS_5_port, B_AS_4_port, B_AS_3_port, B_AS_2_port, 
      B_AS_1_port, B_AS_0_port, n_1007 : std_logic;

begin
   
   U1_13 : FA_X1 port map( A => A(13), B => B_AS_13_port, CI => carry_13_port, 
                           CO => n_1007, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B_AS_13_port, CI => carry_12_port, 
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
   U10 : XOR2_X1 port map( A => ADD_SUB, B => B(13), Z => B_AS_13_port);
   U11 : XOR2_X1 port map( A => B(11), B => ADD_SUB, Z => B_AS_11_port);
   U12 : XOR2_X1 port map( A => B(10), B => ADD_SUB, Z => B_AS_10_port);
   U13 : XOR2_X1 port map( A => B(0), B => ADD_SUB, Z => B_AS_0_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity adder_NBIT11_DW01_addsub_0 is

   port( A, B : in std_logic_vector (11 downto 0);  CI, ADD_SUB : in std_logic;
         SUM : out std_logic_vector (11 downto 0);  CO : out std_logic);

end adder_NBIT11_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT11_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port, carry_1_port, B_AS_11_port, B_AS_9_port, B_AS_8_port, 
      B_AS_7_port, B_AS_6_port, B_AS_5_port, B_AS_4_port, B_AS_3_port, 
      B_AS_2_port, B_AS_1_port, B_AS_0_port, n_1011 : std_logic;

begin
   
   U1_11 : FA_X1 port map( A => A(11), B => B_AS_11_port, CI => carry_11_port, 
                           CO => n_1011, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B_AS_11_port, CI => carry_10_port, 
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
   U10 : XOR2_X1 port map( A => ADD_SUB, B => B(11), Z => B_AS_11_port);
   U11 : XOR2_X1 port map( A => B(0), B => ADD_SUB, Z => B_AS_0_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity adder_NBIT9_DW01_addsub_0 is

   port( A, B : in std_logic_vector (9 downto 0);  CI, ADD_SUB : in std_logic; 
         SUM : out std_logic_vector (9 downto 0);  CO : out std_logic);

end adder_NBIT9_DW01_addsub_0;

architecture SYN_rpl of adder_NBIT9_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port,
      carry_4_port, carry_3_port, carry_2_port, carry_1_port, B_AS_9_port, 
      B_AS_7_port, B_AS_6_port, B_AS_5_port, B_AS_4_port, B_AS_3_port, 
      B_AS_2_port, B_AS_1_port, B_AS_0_port, n_1015 : std_logic;

begin
   
   U1_9 : FA_X1 port map( A => A(9), B => B_AS_9_port, CI => carry_9_port, CO 
                           => n_1015, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B_AS_9_port, CI => carry_8_port, CO 
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
   U1 : XOR2_X1 port map( A => ADD_SUB, B => B(9), Z => B_AS_9_port);
   U2 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U3 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U4 : XOR2_X1 port map( A => B(5), B => ADD_SUB, Z => B_AS_5_port);
   U5 : XOR2_X1 port map( A => B(4), B => ADD_SUB, Z => B_AS_4_port);
   U6 : XOR2_X1 port map( A => B(3), B => ADD_SUB, Z => B_AS_3_port);
   U7 : XOR2_X1 port map( A => B(2), B => ADD_SUB, Z => B_AS_2_port);
   U8 : XOR2_X1 port map( A => B(1), B => ADD_SUB, Z => B_AS_1_port);
   U9 : XOR2_X1 port map( A => B(0), B => ADD_SUB, Z => B_AS_0_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity adder_NBIT15 is

   port( A, B : in std_logic_vector (14 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (15 downto 0));

end adder_NBIT15;

architecture SYN_behav of adder_NBIT15 is

   component adder_NBIT15_DW01_addsub_0
      port( A, B : in std_logic_vector (15 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (15 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1016 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT15_DW01_addsub_0 port map( A(15) => A(14), A(14) => A(14), 
                           A(13) => A(13), A(12) => A(12), A(11) => A(11), 
                           A(10) => A(10), A(9) => A(9), A(8) => A(8), A(7) => 
                           A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3)
                           => A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(15) => B(14), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), CI => n1, ADD_SUB 
                           => SUB_SUMn, SUM(15) => S(15), SUM(14) => S(14), 
                           SUM(13) => S(13), SUM(12) => S(12), SUM(11) => S(11)
                           , SUM(10) => S(10), SUM(9) => S(9), SUM(8) => S(8), 
                           SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5), 
                           SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1016);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity mux_NBIT15 is

   port( A, B, C : in std_logic_vector (14 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (14 downto 0));

end mux_NBIT15;

architecture SYN_behav of mux_NBIT15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
      n48, n49, n50, n51 : std_logic;

begin
   
   U1 : NOR2_X2 port map( A1 => S(0), A2 => S(1), ZN => n36);
   U2 : NOR2_X2 port map( A1 => n51, A2 => S(1), ZN => n35);
   U3 : INV_X1 port map( A => n34, ZN => Y(0));
   U4 : AOI222_X1 port map( A1 => S(1), A2 => C(0), B1 => B(0), B2 => n35, C1 
                           => A(0), C2 => n36, ZN => n34);
   U5 : INV_X1 port map( A => n37, ZN => Y(1));
   U6 : AOI222_X1 port map( A1 => C(1), A2 => S(1), B1 => B(1), B2 => n35, C1 
                           => A(1), C2 => n36, ZN => n37);
   U7 : INV_X1 port map( A => n38, ZN => Y(2));
   U8 : AOI222_X1 port map( A1 => C(2), A2 => S(1), B1 => B(2), B2 => n35, C1 
                           => A(2), C2 => n36, ZN => n38);
   U9 : INV_X1 port map( A => n39, ZN => Y(3));
   U10 : AOI222_X1 port map( A1 => C(3), A2 => S(1), B1 => B(3), B2 => n35, C1 
                           => A(3), C2 => n36, ZN => n39);
   U11 : INV_X1 port map( A => n40, ZN => Y(4));
   U12 : AOI222_X1 port map( A1 => C(4), A2 => S(1), B1 => B(4), B2 => n35, C1 
                           => A(4), C2 => n36, ZN => n40);
   U13 : INV_X1 port map( A => n41, ZN => Y(5));
   U14 : AOI222_X1 port map( A1 => C(5), A2 => S(1), B1 => B(5), B2 => n35, C1 
                           => A(5), C2 => n36, ZN => n41);
   U15 : INV_X1 port map( A => n42, ZN => Y(6));
   U16 : AOI222_X1 port map( A1 => C(6), A2 => S(1), B1 => B(6), B2 => n35, C1 
                           => A(6), C2 => n36, ZN => n42);
   U17 : INV_X1 port map( A => n43, ZN => Y(7));
   U18 : AOI222_X1 port map( A1 => C(7), A2 => S(1), B1 => B(7), B2 => n35, C1 
                           => A(7), C2 => n36, ZN => n43);
   U19 : INV_X1 port map( A => n44, ZN => Y(8));
   U20 : AOI222_X1 port map( A1 => C(8), A2 => S(1), B1 => B(8), B2 => n35, C1 
                           => A(8), C2 => n36, ZN => n44);
   U21 : INV_X1 port map( A => n45, ZN => Y(9));
   U22 : AOI222_X1 port map( A1 => C(9), A2 => S(1), B1 => B(9), B2 => n35, C1 
                           => A(9), C2 => n36, ZN => n45);
   U23 : INV_X1 port map( A => n46, ZN => Y(10));
   U24 : AOI222_X1 port map( A1 => C(10), A2 => S(1), B1 => B(10), B2 => n35, 
                           C1 => A(10), C2 => n36, ZN => n46);
   U25 : INV_X1 port map( A => n47, ZN => Y(11));
   U26 : AOI222_X1 port map( A1 => C(11), A2 => S(1), B1 => B(11), B2 => n35, 
                           C1 => A(11), C2 => n36, ZN => n47);
   U27 : INV_X1 port map( A => n48, ZN => Y(12));
   U28 : AOI222_X1 port map( A1 => C(12), A2 => S(1), B1 => B(12), B2 => n35, 
                           C1 => A(12), C2 => n36, ZN => n48);
   U29 : INV_X1 port map( A => n49, ZN => Y(13));
   U30 : AOI222_X1 port map( A1 => C(13), A2 => S(1), B1 => B(13), B2 => n35, 
                           C1 => A(13), C2 => n36, ZN => n49);
   U31 : INV_X1 port map( A => n50, ZN => Y(14));
   U32 : AOI222_X1 port map( A1 => C(14), A2 => S(1), B1 => B(14), B2 => n35, 
                           C1 => A(14), C2 => n36, ZN => n50);
   U33 : INV_X1 port map( A => S(0), ZN => n51);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity adder_NBIT13 is

   port( A, B : in std_logic_vector (12 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (13 downto 0));

end adder_NBIT13;

architecture SYN_behav of adder_NBIT13 is

   component adder_NBIT13_DW01_addsub_0
      port( A, B : in std_logic_vector (13 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (13 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1017 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT13_DW01_addsub_0 port map( A(13) => A(12), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(13) => B(12), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), CI => n1, ADD_SUB => SUB_SUMn, 
                           SUM(13) => S(13), SUM(12) => S(12), SUM(11) => S(11)
                           , SUM(10) => S(10), SUM(9) => S(9), SUM(8) => S(8), 
                           SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5), 
                           SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1017);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity mux_NBIT13 is

   port( A, B, C : in std_logic_vector (12 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (12 downto 0));

end mux_NBIT13;

architecture SYN_behav of mux_NBIT13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
      n44, n45 : std_logic;

begin
   
   U1 : NOR2_X2 port map( A1 => S(0), A2 => S(1), ZN => n32);
   U2 : NOR2_X2 port map( A1 => n45, A2 => S(1), ZN => n31);
   U3 : INV_X1 port map( A => n30, ZN => Y(0));
   U4 : AOI222_X1 port map( A1 => S(1), A2 => C(0), B1 => B(0), B2 => n31, C1 
                           => A(0), C2 => n32, ZN => n30);
   U5 : INV_X1 port map( A => n33, ZN => Y(1));
   U6 : AOI222_X1 port map( A1 => C(1), A2 => S(1), B1 => B(1), B2 => n31, C1 
                           => A(1), C2 => n32, ZN => n33);
   U7 : INV_X1 port map( A => n34, ZN => Y(2));
   U8 : AOI222_X1 port map( A1 => C(2), A2 => S(1), B1 => B(2), B2 => n31, C1 
                           => A(2), C2 => n32, ZN => n34);
   U9 : INV_X1 port map( A => n35, ZN => Y(3));
   U10 : AOI222_X1 port map( A1 => C(3), A2 => S(1), B1 => B(3), B2 => n31, C1 
                           => A(3), C2 => n32, ZN => n35);
   U11 : INV_X1 port map( A => n36, ZN => Y(4));
   U12 : AOI222_X1 port map( A1 => C(4), A2 => S(1), B1 => B(4), B2 => n31, C1 
                           => A(4), C2 => n32, ZN => n36);
   U13 : INV_X1 port map( A => n37, ZN => Y(5));
   U14 : AOI222_X1 port map( A1 => C(5), A2 => S(1), B1 => B(5), B2 => n31, C1 
                           => A(5), C2 => n32, ZN => n37);
   U15 : INV_X1 port map( A => n38, ZN => Y(6));
   U16 : AOI222_X1 port map( A1 => C(6), A2 => S(1), B1 => B(6), B2 => n31, C1 
                           => A(6), C2 => n32, ZN => n38);
   U17 : INV_X1 port map( A => n39, ZN => Y(7));
   U18 : AOI222_X1 port map( A1 => C(7), A2 => S(1), B1 => B(7), B2 => n31, C1 
                           => A(7), C2 => n32, ZN => n39);
   U19 : INV_X1 port map( A => n40, ZN => Y(8));
   U20 : AOI222_X1 port map( A1 => C(8), A2 => S(1), B1 => B(8), B2 => n31, C1 
                           => A(8), C2 => n32, ZN => n40);
   U21 : INV_X1 port map( A => n41, ZN => Y(9));
   U22 : AOI222_X1 port map( A1 => C(9), A2 => S(1), B1 => B(9), B2 => n31, C1 
                           => A(9), C2 => n32, ZN => n41);
   U23 : INV_X1 port map( A => n42, ZN => Y(10));
   U24 : AOI222_X1 port map( A1 => C(10), A2 => S(1), B1 => B(10), B2 => n31, 
                           C1 => A(10), C2 => n32, ZN => n42);
   U25 : INV_X1 port map( A => n43, ZN => Y(11));
   U26 : AOI222_X1 port map( A1 => C(11), A2 => S(1), B1 => B(11), B2 => n31, 
                           C1 => A(11), C2 => n32, ZN => n43);
   U27 : INV_X1 port map( A => n44, ZN => Y(12));
   U28 : AOI222_X1 port map( A1 => C(12), A2 => S(1), B1 => B(12), B2 => n31, 
                           C1 => A(12), C2 => n32, ZN => n44);
   U29 : INV_X1 port map( A => S(0), ZN => n45);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity adder_NBIT11 is

   port( A, B : in std_logic_vector (10 downto 0);  SUB_SUMn : in std_logic;  S
         : out std_logic_vector (11 downto 0));

end adder_NBIT11;

architecture SYN_behav of adder_NBIT11 is

   component adder_NBIT11_DW01_addsub_0
      port( A, B : in std_logic_vector (11 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (11 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1018 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT11_DW01_addsub_0 port map( A(11) => A(10), A(10) => A(10), 
                           A(9) => A(9), A(8) => A(8), A(7) => A(7), A(6) => 
                           A(6), A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2)
                           => A(2), A(1) => A(1), A(0) => A(0), B(11) => B(10),
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, ADD_SUB => SUB_SUMn, SUM(11) => S(11), 
                           SUM(10) => S(10), SUM(9) => S(9), SUM(8) => S(8), 
                           SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5), 
                           SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1018);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity mux_NBIT11 is

   port( A, B, C : in std_logic_vector (10 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (10 downto 0));

end mux_NBIT11;

architecture SYN_behav of mux_NBIT11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39 
      : std_logic;

begin
   
   U1 : INV_X1 port map( A => n26, ZN => Y(0));
   U2 : AOI222_X1 port map( A1 => S(1), A2 => C(0), B1 => B(0), B2 => n27, C1 
                           => A(0), C2 => n28, ZN => n26);
   U3 : INV_X1 port map( A => n29, ZN => Y(1));
   U4 : AOI222_X1 port map( A1 => C(1), A2 => S(1), B1 => B(1), B2 => n27, C1 
                           => A(1), C2 => n28, ZN => n29);
   U5 : INV_X1 port map( A => n30, ZN => Y(2));
   U6 : AOI222_X1 port map( A1 => C(2), A2 => S(1), B1 => B(2), B2 => n27, C1 
                           => A(2), C2 => n28, ZN => n30);
   U7 : INV_X1 port map( A => n31, ZN => Y(3));
   U8 : AOI222_X1 port map( A1 => C(3), A2 => S(1), B1 => B(3), B2 => n27, C1 
                           => A(3), C2 => n28, ZN => n31);
   U9 : INV_X1 port map( A => n32, ZN => Y(4));
   U10 : AOI222_X1 port map( A1 => C(4), A2 => S(1), B1 => B(4), B2 => n27, C1 
                           => A(4), C2 => n28, ZN => n32);
   U11 : INV_X1 port map( A => n33, ZN => Y(5));
   U12 : AOI222_X1 port map( A1 => C(5), A2 => S(1), B1 => B(5), B2 => n27, C1 
                           => A(5), C2 => n28, ZN => n33);
   U13 : INV_X1 port map( A => n34, ZN => Y(6));
   U14 : AOI222_X1 port map( A1 => C(6), A2 => S(1), B1 => B(6), B2 => n27, C1 
                           => A(6), C2 => n28, ZN => n34);
   U15 : INV_X1 port map( A => n35, ZN => Y(7));
   U16 : AOI222_X1 port map( A1 => C(7), A2 => S(1), B1 => B(7), B2 => n27, C1 
                           => A(7), C2 => n28, ZN => n35);
   U17 : INV_X1 port map( A => n36, ZN => Y(8));
   U18 : AOI222_X1 port map( A1 => C(8), A2 => S(1), B1 => B(8), B2 => n27, C1 
                           => A(8), C2 => n28, ZN => n36);
   U19 : INV_X1 port map( A => n37, ZN => Y(9));
   U20 : AOI222_X1 port map( A1 => C(9), A2 => S(1), B1 => B(9), B2 => n27, C1 
                           => A(9), C2 => n28, ZN => n37);
   U21 : INV_X1 port map( A => n38, ZN => Y(10));
   U22 : AOI222_X1 port map( A1 => C(10), A2 => S(1), B1 => B(10), B2 => n27, 
                           C1 => A(10), C2 => n28, ZN => n38);
   U23 : NOR2_X1 port map( A1 => S(0), A2 => S(1), ZN => n28);
   U24 : NOR2_X1 port map( A1 => n39, A2 => S(1), ZN => n27);
   U25 : INV_X1 port map( A => S(0), ZN => n39);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity adder_NBIT9 is

   port( A, B : in std_logic_vector (8 downto 0);  SUB_SUMn : in std_logic;  S 
         : out std_logic_vector (9 downto 0));

end adder_NBIT9;

architecture SYN_behav of adder_NBIT9 is

   component adder_NBIT9_DW01_addsub_0
      port( A, B : in std_logic_vector (9 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (9 downto 0);  CO : out 
            std_logic);
   end component;
   
   signal n1, n_1019 : std_logic;

begin
   
   n1 <= '0';
   r56 : adder_NBIT9_DW01_addsub_0 port map( A(9) => A(8), A(8) => A(8), A(7) 
                           => A(7), A(6) => A(6), A(5) => A(5), A(4) => A(4), 
                           A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(9) => B(8), B(8) => B(8), B(7) => B(7), B(6)
                           => B(6), B(5) => B(5), B(4) => B(4), B(3) => B(3), 
                           B(2) => B(2), B(1) => B(1), B(0) => B(0), CI => n1, 
                           ADD_SUB => SUB_SUMn, SUM(9) => S(9), SUM(8) => S(8),
                           SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5), 
                           SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1019);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity mux_NBIT9 is

   port( A, B, C : in std_logic_vector (8 downto 0);  S : in std_logic_vector 
         (1 downto 0);  Y : out std_logic_vector (8 downto 0));

end mux_NBIT9;

architecture SYN_behav of mux_NBIT9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33 : 
      std_logic;

begin
   
   U1 : INV_X1 port map( A => n22, ZN => Y(0));
   U2 : AOI222_X1 port map( A1 => S(1), A2 => C(0), B1 => B(0), B2 => n23, C1 
                           => A(0), C2 => n24, ZN => n22);
   U3 : INV_X1 port map( A => n25, ZN => Y(1));
   U4 : AOI222_X1 port map( A1 => C(1), A2 => S(1), B1 => B(1), B2 => n23, C1 
                           => A(1), C2 => n24, ZN => n25);
   U5 : INV_X1 port map( A => n26, ZN => Y(2));
   U6 : AOI222_X1 port map( A1 => C(2), A2 => S(1), B1 => B(2), B2 => n23, C1 
                           => A(2), C2 => n24, ZN => n26);
   U7 : INV_X1 port map( A => n27, ZN => Y(3));
   U8 : AOI222_X1 port map( A1 => C(3), A2 => S(1), B1 => B(3), B2 => n23, C1 
                           => A(3), C2 => n24, ZN => n27);
   U9 : INV_X1 port map( A => n28, ZN => Y(4));
   U10 : AOI222_X1 port map( A1 => C(4), A2 => S(1), B1 => B(4), B2 => n23, C1 
                           => A(4), C2 => n24, ZN => n28);
   U11 : INV_X1 port map( A => n29, ZN => Y(5));
   U12 : AOI222_X1 port map( A1 => C(5), A2 => S(1), B1 => B(5), B2 => n23, C1 
                           => A(5), C2 => n24, ZN => n29);
   U13 : INV_X1 port map( A => n30, ZN => Y(6));
   U14 : AOI222_X1 port map( A1 => C(6), A2 => S(1), B1 => B(6), B2 => n23, C1 
                           => A(6), C2 => n24, ZN => n30);
   U15 : INV_X1 port map( A => n31, ZN => Y(7));
   U16 : AOI222_X1 port map( A1 => C(7), A2 => S(1), B1 => B(7), B2 => n23, C1 
                           => A(7), C2 => n24, ZN => n31);
   U17 : INV_X1 port map( A => n32, ZN => Y(8));
   U18 : AOI222_X1 port map( A1 => C(8), A2 => S(1), B1 => B(8), B2 => n23, C1 
                           => A(8), C2 => n24, ZN => n32);
   U19 : NOR2_X1 port map( A1 => S(0), A2 => S(1), ZN => n24);
   U20 : NOR2_X1 port map( A1 => n33, A2 => S(1), ZN => n23);
   U21 : INV_X1 port map( A => S(0), ZN => n33);

end SYN_behav;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity encoder_0 is

   port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2 
         downto 0));

end encoder_0;

architecture SYN_beahavioral of encoder_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal vp_1_port, vp_0_port, n1 : std_logic;

begin
   vp <= ( b(2), vp_1_port, vp_0_port );
   
   U1 : NOR2_X1 port map( A1 => vp_0_port, A2 => n1, ZN => vp_1_port);
   U2 : XNOR2_X1 port map( A => b(0), B => b(2), ZN => n1);
   U3 : XOR2_X1 port map( A => b(0), B => b(1), Z => vp_0_port);

end SYN_beahavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multiplier_NBIT8.all;

entity multiplier_NBIT8 is

   port( A, B : in std_logic_vector (7 downto 0);  Y : out std_logic_vector (15
         downto 0));

end multiplier_NBIT8;

architecture SYN_structural of multiplier_NBIT8 is

   component adder_NBIT15
      port( A, B : in std_logic_vector (14 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (15 downto 0));
   end component;
   
   component mux_NBIT15
      port( A, B, C : in std_logic_vector (14 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (14 downto
            0));
   end component;
   
   component encoder_1
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   component adder_NBIT13
      port( A, B : in std_logic_vector (12 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (13 downto 0));
   end component;
   
   component mux_NBIT13
      port( A, B, C : in std_logic_vector (12 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (12 downto
            0));
   end component;
   
   component encoder_2
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   component adder_NBIT11
      port( A, B : in std_logic_vector (10 downto 0);  SUB_SUMn : in std_logic;
            S : out std_logic_vector (11 downto 0));
   end component;
   
   component mux_NBIT11
      port( A, B, C : in std_logic_vector (10 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (10 downto
            0));
   end component;
   
   component encoder_3
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   component adder_NBIT9
      port( A, B : in std_logic_vector (8 downto 0);  SUB_SUMn : in std_logic; 
            S : out std_logic_vector (9 downto 0));
   end component;
   
   component mux_NBIT9
      port( A, B, C : in std_logic_vector (8 downto 0);  S : in 
            std_logic_vector (1 downto 0);  Y : out std_logic_vector (8 downto 
            0));
   end component;
   
   component encoder_0
      port( b : in std_logic_vector (2 downto 0);  vp : out std_logic_vector (2
            downto 0));
   end component;
   
   signal X_Logic0_port, sum_1_9_port, sum_1_8_port, sum_1_7_port, sum_1_6_port
      , sum_1_5_port, sum_1_4_port, sum_1_3_port, sum_1_2_port, sum_1_1_port, 
      sum_1_0_port, sum_2_11_port, sum_2_10_port, sum_2_9_port, sum_2_8_port, 
      sum_2_7_port, sum_2_6_port, sum_2_5_port, sum_2_4_port, sum_2_3_port, 
      sum_2_2_port, sum_2_1_port, sum_2_0_port, sum_3_13_port, sum_3_12_port, 
      sum_3_11_port, sum_3_10_port, sum_3_9_port, sum_3_8_port, sum_3_7_port, 
      sum_3_6_port, sum_3_5_port, sum_3_4_port, sum_3_3_port, sum_3_2_port, 
      sum_3_1_port, sum_3_0_port, sel_0_1_port, sel_0_0_port, sel_1_1_port, 
      sel_1_0_port, sel_2_1_port, sel_2_0_port, sel_3_1_port, sel_3_0_port, 
      sum_subn_0_port, sum_subn_1_port, sum_subn_2_port, sum_subn_3_port, 
      mux_out_0_8_port, mux_out_0_7_port, mux_out_0_6_port, mux_out_0_5_port, 
      mux_out_0_4_port, mux_out_0_3_port, mux_out_0_2_port, mux_out_0_1_port, 
      mux_out_0_0_port, mux_out_1_10_port, mux_out_1_9_port, mux_out_1_8_port, 
      mux_out_1_7_port, mux_out_1_6_port, mux_out_1_5_port, mux_out_1_4_port, 
      mux_out_1_3_port, mux_out_1_2_port, mux_out_1_1_port, mux_out_1_0_port, 
      mux_out_2_12_port, mux_out_2_11_port, mux_out_2_10_port, mux_out_2_9_port
      , mux_out_2_8_port, mux_out_2_7_port, mux_out_2_6_port, mux_out_2_5_port,
      mux_out_2_4_port, mux_out_2_3_port, mux_out_2_2_port, mux_out_2_1_port, 
      mux_out_2_0_port, mux_out_3_14_port, mux_out_3_13_port, mux_out_3_12_port
      , mux_out_3_11_port, mux_out_3_10_port, mux_out_3_9_port, 
      mux_out_3_8_port, mux_out_3_7_port, mux_out_3_6_port, mux_out_3_5_port, 
      mux_out_3_4_port, mux_out_3_3_port, mux_out_3_2_port, mux_out_3_1_port, 
      mux_out_3_0_port : std_logic;

begin
   
   X_Logic0_port <= '0';
   ENCi_0 : encoder_0 port map( b(2) => B(1), b(1) => B(0), b(0) => 
                           X_Logic0_port, vp(2) => sum_subn_0_port, vp(1) => 
                           sel_0_1_port, vp(0) => sel_0_0_port);
   MUXi_0 : mux_NBIT9 port map( A(8) => X_Logic0_port, A(7) => X_Logic0_port, 
                           A(6) => X_Logic0_port, A(5) => X_Logic0_port, A(4) 
                           => X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(8) => A(7), B(7) => A(7), B(6) => 
                           A(6), B(5) => A(5), B(4) => A(4), B(3) => A(3), B(2)
                           => A(2), B(1) => A(1), B(0) => A(0), C(8) => A(7), 
                           C(7) => A(6), C(6) => A(5), C(5) => A(4), C(4) => 
                           A(3), C(3) => A(2), C(2) => A(1), C(1) => A(0), C(0)
                           => X_Logic0_port, S(1) => sel_0_1_port, S(0) => 
                           sel_0_0_port, Y(8) => mux_out_0_8_port, Y(7) => 
                           mux_out_0_7_port, Y(6) => mux_out_0_6_port, Y(5) => 
                           mux_out_0_5_port, Y(4) => mux_out_0_4_port, Y(3) => 
                           mux_out_0_3_port, Y(2) => mux_out_0_2_port, Y(1) => 
                           mux_out_0_1_port, Y(0) => mux_out_0_0_port);
   ADDERi_0 : adder_NBIT9 port map( A(8) => X_Logic0_port, A(7) => 
                           X_Logic0_port, A(6) => X_Logic0_port, A(5) => 
                           X_Logic0_port, A(4) => X_Logic0_port, A(3) => 
                           X_Logic0_port, A(2) => X_Logic0_port, A(1) => 
                           X_Logic0_port, A(0) => X_Logic0_port, B(8) => 
                           mux_out_0_8_port, B(7) => mux_out_0_7_port, B(6) => 
                           mux_out_0_6_port, B(5) => mux_out_0_5_port, B(4) => 
                           mux_out_0_4_port, B(3) => mux_out_0_3_port, B(2) => 
                           mux_out_0_2_port, B(1) => mux_out_0_1_port, B(0) => 
                           mux_out_0_0_port, SUB_SUMn => sum_subn_0_port, S(9) 
                           => sum_1_9_port, S(8) => sum_1_8_port, S(7) => 
                           sum_1_7_port, S(6) => sum_1_6_port, S(5) => 
                           sum_1_5_port, S(4) => sum_1_4_port, S(3) => 
                           sum_1_3_port, S(2) => sum_1_2_port, S(1) => 
                           sum_1_1_port, S(0) => sum_1_0_port);
   ENCi_1 : encoder_3 port map( b(2) => B(3), b(1) => B(2), b(0) => B(1), vp(2)
                           => sum_subn_1_port, vp(1) => sel_1_1_port, vp(0) => 
                           sel_1_0_port);
   MUXi_1 : mux_NBIT11 port map( A(10) => X_Logic0_port, A(9) => X_Logic0_port,
                           A(8) => X_Logic0_port, A(7) => X_Logic0_port, A(6) 
                           => X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(10) => A(7), B(9) => A(7), B(8) => 
                           A(6), B(7) => A(5), B(6) => A(4), B(5) => A(3), B(4)
                           => A(2), B(3) => A(1), B(2) => A(0), B(1) => 
                           X_Logic0_port, B(0) => X_Logic0_port, C(10) => A(7),
                           C(9) => A(6), C(8) => A(5), C(7) => A(4), C(6) => 
                           A(3), C(5) => A(2), C(4) => A(1), C(3) => A(0), C(2)
                           => X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, S(1) => sel_1_1_port, S(0) => 
                           sel_1_0_port, Y(10) => mux_out_1_10_port, Y(9) => 
                           mux_out_1_9_port, Y(8) => mux_out_1_8_port, Y(7) => 
                           mux_out_1_7_port, Y(6) => mux_out_1_6_port, Y(5) => 
                           mux_out_1_5_port, Y(4) => mux_out_1_4_port, Y(3) => 
                           mux_out_1_3_port, Y(2) => mux_out_1_2_port, Y(1) => 
                           mux_out_1_1_port, Y(0) => mux_out_1_0_port);
   ADDERi_1 : adder_NBIT11 port map( A(10) => sum_1_9_port, A(9) => 
                           sum_1_9_port, A(8) => sum_1_8_port, A(7) => 
                           sum_1_7_port, A(6) => sum_1_6_port, A(5) => 
                           sum_1_5_port, A(4) => sum_1_4_port, A(3) => 
                           sum_1_3_port, A(2) => sum_1_2_port, A(1) => 
                           sum_1_1_port, A(0) => sum_1_0_port, B(10) => 
                           mux_out_1_10_port, B(9) => mux_out_1_9_port, B(8) =>
                           mux_out_1_8_port, B(7) => mux_out_1_7_port, B(6) => 
                           mux_out_1_6_port, B(5) => mux_out_1_5_port, B(4) => 
                           mux_out_1_4_port, B(3) => mux_out_1_3_port, B(2) => 
                           mux_out_1_2_port, B(1) => mux_out_1_1_port, B(0) => 
                           mux_out_1_0_port, SUB_SUMn => sum_subn_1_port, S(11)
                           => sum_2_11_port, S(10) => sum_2_10_port, S(9) => 
                           sum_2_9_port, S(8) => sum_2_8_port, S(7) => 
                           sum_2_7_port, S(6) => sum_2_6_port, S(5) => 
                           sum_2_5_port, S(4) => sum_2_4_port, S(3) => 
                           sum_2_3_port, S(2) => sum_2_2_port, S(1) => 
                           sum_2_1_port, S(0) => sum_2_0_port);
   ENCi_2 : encoder_2 port map( b(2) => B(5), b(1) => B(4), b(0) => B(3), vp(2)
                           => sum_subn_2_port, vp(1) => sel_2_1_port, vp(0) => 
                           sel_2_0_port);
   MUXi_2 : mux_NBIT13 port map( A(12) => X_Logic0_port, A(11) => X_Logic0_port
                           , A(10) => X_Logic0_port, A(9) => X_Logic0_port, 
                           A(8) => X_Logic0_port, A(7) => X_Logic0_port, A(6) 
                           => X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(12) => A(7), B(11) => A(7), B(10) 
                           => A(6), B(9) => A(5), B(8) => A(4), B(7) => A(3), 
                           B(6) => A(2), B(5) => A(1), B(4) => A(0), B(3) => 
                           X_Logic0_port, B(2) => X_Logic0_port, B(1) => 
                           X_Logic0_port, B(0) => X_Logic0_port, C(12) => A(7),
                           C(11) => A(6), C(10) => A(5), C(9) => A(4), C(8) => 
                           A(3), C(7) => A(2), C(6) => A(1), C(5) => A(0), C(4)
                           => X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, S(1) => sel_2_1_port, S(0) => 
                           sel_2_0_port, Y(12) => mux_out_2_12_port, Y(11) => 
                           mux_out_2_11_port, Y(10) => mux_out_2_10_port, Y(9) 
                           => mux_out_2_9_port, Y(8) => mux_out_2_8_port, Y(7) 
                           => mux_out_2_7_port, Y(6) => mux_out_2_6_port, Y(5) 
                           => mux_out_2_5_port, Y(4) => mux_out_2_4_port, Y(3) 
                           => mux_out_2_3_port, Y(2) => mux_out_2_2_port, Y(1) 
                           => mux_out_2_1_port, Y(0) => mux_out_2_0_port);
   ADDERi_2 : adder_NBIT13 port map( A(12) => sum_2_11_port, A(11) => 
                           sum_2_11_port, A(10) => sum_2_10_port, A(9) => 
                           sum_2_9_port, A(8) => sum_2_8_port, A(7) => 
                           sum_2_7_port, A(6) => sum_2_6_port, A(5) => 
                           sum_2_5_port, A(4) => sum_2_4_port, A(3) => 
                           sum_2_3_port, A(2) => sum_2_2_port, A(1) => 
                           sum_2_1_port, A(0) => sum_2_0_port, B(12) => 
                           mux_out_2_12_port, B(11) => mux_out_2_11_port, B(10)
                           => mux_out_2_10_port, B(9) => mux_out_2_9_port, B(8)
                           => mux_out_2_8_port, B(7) => mux_out_2_7_port, B(6) 
                           => mux_out_2_6_port, B(5) => mux_out_2_5_port, B(4) 
                           => mux_out_2_4_port, B(3) => mux_out_2_3_port, B(2) 
                           => mux_out_2_2_port, B(1) => mux_out_2_1_port, B(0) 
                           => mux_out_2_0_port, SUB_SUMn => sum_subn_2_port, 
                           S(13) => sum_3_13_port, S(12) => sum_3_12_port, 
                           S(11) => sum_3_11_port, S(10) => sum_3_10_port, S(9)
                           => sum_3_9_port, S(8) => sum_3_8_port, S(7) => 
                           sum_3_7_port, S(6) => sum_3_6_port, S(5) => 
                           sum_3_5_port, S(4) => sum_3_4_port, S(3) => 
                           sum_3_3_port, S(2) => sum_3_2_port, S(1) => 
                           sum_3_1_port, S(0) => sum_3_0_port);
   ENCi_3 : encoder_1 port map( b(2) => B(7), b(1) => B(6), b(0) => B(5), vp(2)
                           => sum_subn_3_port, vp(1) => sel_3_1_port, vp(0) => 
                           sel_3_0_port);
   MUXi_3 : mux_NBIT15 port map( A(14) => X_Logic0_port, A(13) => X_Logic0_port
                           , A(12) => X_Logic0_port, A(11) => X_Logic0_port, 
                           A(10) => X_Logic0_port, A(9) => X_Logic0_port, A(8) 
                           => X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(14) => A(7), B(13) => A(7), B(12) 
                           => A(6), B(11) => A(5), B(10) => A(4), B(9) => A(3),
                           B(8) => A(2), B(7) => A(1), B(6) => A(0), B(5) => 
                           X_Logic0_port, B(4) => X_Logic0_port, B(3) => 
                           X_Logic0_port, B(2) => X_Logic0_port, B(1) => 
                           X_Logic0_port, B(0) => X_Logic0_port, C(14) => A(7),
                           C(13) => A(6), C(12) => A(5), C(11) => A(4), C(10) 
                           => A(3), C(9) => A(2), C(8) => A(1), C(7) => A(0), 
                           C(6) => X_Logic0_port, C(5) => X_Logic0_port, C(4) 
                           => X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, S(1) => sel_3_1_port, S(0) => 
                           sel_3_0_port, Y(14) => mux_out_3_14_port, Y(13) => 
                           mux_out_3_13_port, Y(12) => mux_out_3_12_port, Y(11)
                           => mux_out_3_11_port, Y(10) => mux_out_3_10_port, 
                           Y(9) => mux_out_3_9_port, Y(8) => mux_out_3_8_port, 
                           Y(7) => mux_out_3_7_port, Y(6) => mux_out_3_6_port, 
                           Y(5) => mux_out_3_5_port, Y(4) => mux_out_3_4_port, 
                           Y(3) => mux_out_3_3_port, Y(2) => mux_out_3_2_port, 
                           Y(1) => mux_out_3_1_port, Y(0) => mux_out_3_0_port);
   ADDERi_3 : adder_NBIT15 port map( A(14) => sum_3_13_port, A(13) => 
                           sum_3_13_port, A(12) => sum_3_12_port, A(11) => 
                           sum_3_11_port, A(10) => sum_3_10_port, A(9) => 
                           sum_3_9_port, A(8) => sum_3_8_port, A(7) => 
                           sum_3_7_port, A(6) => sum_3_6_port, A(5) => 
                           sum_3_5_port, A(4) => sum_3_4_port, A(3) => 
                           sum_3_3_port, A(2) => sum_3_2_port, A(1) => 
                           sum_3_1_port, A(0) => sum_3_0_port, B(14) => 
                           mux_out_3_14_port, B(13) => mux_out_3_13_port, B(12)
                           => mux_out_3_12_port, B(11) => mux_out_3_11_port, 
                           B(10) => mux_out_3_10_port, B(9) => mux_out_3_9_port
                           , B(8) => mux_out_3_8_port, B(7) => mux_out_3_7_port
                           , B(6) => mux_out_3_6_port, B(5) => mux_out_3_5_port
                           , B(4) => mux_out_3_4_port, B(3) => mux_out_3_3_port
                           , B(2) => mux_out_3_2_port, B(1) => mux_out_3_1_port
                           , B(0) => mux_out_3_0_port, SUB_SUMn => 
                           sum_subn_3_port, S(15) => Y(15), S(14) => Y(14), 
                           S(13) => Y(13), S(12) => Y(12), S(11) => Y(11), 
                           S(10) => Y(10), S(9) => Y(9), S(8) => Y(8), S(7) => 
                           Y(7), S(6) => Y(6), S(5) => Y(5), S(4) => Y(4), S(3)
                           => Y(3), S(2) => Y(2), S(1) => Y(1), S(0) => Y(0));

end SYN_structural;
