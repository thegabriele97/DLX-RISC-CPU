
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_GENERIC_NBIT4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_GENERIC_NBIT4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_GENERIC_NBIT4.all;

entity ACC_GENERIC_NBIT4 is

   port( A, B : in std_logic_vector (3 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (3 downto 0));

end ACC_GENERIC_NBIT4;

architecture SYN_behav of ACC_GENERIC_NBIT4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_3_port, Y_2_port, Y_1_port, Y_0_port, n43, n44, n45, n46, n47, n48,
      n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63
      , n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, 
      n78, n79, n80, n81, n82, n83, n84, n85, n_1000 : std_logic;

begin
   Y <= ( Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   curr_reg_reg_0_inst : DFFR_X1 port map( D => n49, CK => CLK, RN => RST_n, Q 
                           => Y_0_port, QN => n45);
   curr_reg_reg_1_inst : DFFR_X1 port map( D => n48, CK => CLK, RN => RST_n, Q 
                           => Y_1_port, QN => n44);
   curr_reg_reg_2_inst : DFFR_X1 port map( D => n47, CK => CLK, RN => RST_n, Q 
                           => Y_2_port, QN => n43);
   curr_reg_reg_3_inst : DFFR_X1 port map( D => n46, CK => CLK, RN => RST_n, Q 
                           => Y_3_port, QN => n_1000);
   U45 : OAI22_X1 port map( A1 => n45, A2 => n50, B1 => ACC_EN_n, B2 => n51, ZN
                           => n49);
   U46 : MUX2_X1 port map( A => n52, B => n53, S => n54, Z => n51);
   U47 : NAND2_X1 port map( A1 => B(0), A2 => n55, ZN => n53);
   U48 : INV_X1 port map( A => n56, ZN => n52);
   U49 : MUX2_X1 port map( A => n45, B => n57, S => n55, Z => n56);
   U50 : AOI21_X1 port map( B1 => ACCUMULATE, B2 => n54, A => ACC_EN_n, ZN => 
                           n50);
   U51 : OAI22_X1 port map( A1 => n44, A2 => n58, B1 => ACC_EN_n, B2 => n59, ZN
                           => n48);
   U52 : MUX2_X1 port map( A => n60, B => n61, S => n55, Z => n59);
   U53 : XOR2_X1 port map( A => n62, B => n63, Z => n61);
   U54 : AOI21_X1 port map( B1 => B(1), B2 => A(1), A => n64, ZN => n63);
   U55 : NAND2_X1 port map( A1 => A(0), A2 => B(0), ZN => n62);
   U56 : NAND2_X1 port map( A1 => n44, A2 => n65, ZN => n60);
   U57 : XOR2_X1 port map( A => A(1), B => n66, Z => n65);
   U58 : AOI211_X1 port map( C1 => n67, C2 => ACCUMULATE, A => ACC_EN_n, B => 
                           n68, ZN => n58);
   U59 : INV_X1 port map( A => n69, ZN => n68);
   U60 : OAI22_X1 port map( A1 => n43, A2 => n70, B1 => ACC_EN_n, B2 => n71, ZN
                           => n47);
   U61 : MUX2_X1 port map( A => n72, B => n73, S => n74, Z => n71);
   U62 : NAND2_X1 port map( A1 => B(2), A2 => n55, ZN => n73);
   U63 : AOI21_X1 port map( B1 => ACCUMULATE, B2 => n74, A => ACC_EN_n, ZN => 
                           n70);
   U64 : XNOR2_X1 port map( A => n75, B => A(2), ZN => n74);
   U65 : MUX2_X1 port map( A => n76, B => Y_3_port, S => ACC_EN_n, Z => n46);
   U66 : XOR2_X1 port map( A => n77, B => n78, Z => n76);
   U67 : MUX2_X1 port map( A => Y_3_port, B => B(3), S => n55, Z => n78);
   U68 : XNOR2_X1 port map( A => n79, B => A(3), ZN => n77);
   U69 : AOI21_X1 port map( B1 => n75, B2 => n72, A => n80, ZN => n79);
   U70 : INV_X1 port map( A => n81, ZN => n80);
   U71 : OAI21_X1 port map( B1 => n72, B2 => n75, A => A(2), ZN => n81);
   U72 : MUX2_X1 port map( A => Y_2_port, B => B(2), S => n55, Z => n72);
   U73 : NAND2_X1 port map( A1 => n82, A2 => n69, ZN => n75);
   U74 : NAND3_X1 port map( A1 => A(1), A2 => ACCUMULATE, A3 => n66, ZN => n69)
                           ;
   U75 : MUX2_X1 port map( A => n83, B => n84, S => n55, Z => n82);
   U76 : INV_X1 port map( A => ACCUMULATE, ZN => n55);
   U77 : AOI22_X1 port map( A1 => n85, A2 => A(0), B1 => B(1), B2 => A(1), ZN 
                           => n84);
   U78 : NOR2_X1 port map( A1 => n64, A2 => n57, ZN => n85);
   U79 : INV_X1 port map( A => B(0), ZN => n57);
   U80 : NOR2_X1 port map( A1 => A(1), A2 => B(1), ZN => n64);
   U81 : OR2_X1 port map( A1 => n67, A2 => n44, ZN => n83);
   U82 : NOR2_X1 port map( A1 => A(1), A2 => n66, ZN => n67);
   U83 : NOR2_X1 port map( A1 => n54, A2 => n45, ZN => n66);
   U84 : INV_X1 port map( A => A(0), ZN => n54);

end SYN_behav;
