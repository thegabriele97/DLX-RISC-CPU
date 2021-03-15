
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU_N4 is

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

end CONV_PACK_ALU_N4;

package body CONV_PACK_ALU_N4 is
   
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

end CONV_PACK_ALU_N4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N4.all;

entity ALU_N4 is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (3 downto 0);  
         OUTALU : out std_logic_vector (3 downto 0));

end ALU_N4;

architecture SYN_BEHAVIOR of ALU_N4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
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
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, n128, n129, n130,
      n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, 
      n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, 
      n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, 
      n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, 
      n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, 
      n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, 
      n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, 
      n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, 
      n227 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   U126 : OAI211_X1 port map( C1 => n128, C2 => n129, A => n130, B => n131, ZN 
                           => OUTALU(3));
   U127 : AOI221_X1 port map( B1 => DATA1(0), B2 => n132, C1 => n133, C2 => 
                           n134, A => n135, ZN => n131);
   U128 : INV_X1 port map( A => n136, ZN => n135);
   U129 : AOI22_X1 port map( A1 => n137, A2 => DATA1(2), B1 => n138, B2 => 
                           DATA2(3), ZN => n136);
   U130 : OAI21_X1 port map( B1 => n139, B2 => n140, A => n141, ZN => n138);
   U131 : XNOR2_X1 port map( A => n142, B => n128, ZN => n133);
   U132 : XOR2_X1 port map( A => n143, B => n144, Z => n142);
   U133 : OAI21_X1 port map( B1 => n145, B2 => n146, A => n147, ZN => n143);
   U134 : OAI21_X1 port map( B1 => n148, B2 => n149, A => DATA1(2), ZN => n147)
                           ;
   U135 : INV_X1 port map( A => n149, ZN => n145);
   U136 : OAI21_X1 port map( B1 => n150, B2 => n151, A => n152, ZN => n132);
   U137 : AOI22_X1 port map( A1 => n153, A2 => n154, B1 => DATA1(1), B2 => n155
                           , ZN => n150);
   U138 : INV_X1 port map( A => n156, ZN => n155);
   U139 : INV_X1 port map( A => n157, ZN => n153);
   U140 : AOI22_X1 port map( A1 => DATA1(1), A2 => n158, B1 => DATA1(3), B2 => 
                           n159, ZN => n130);
   U141 : XOR2_X1 port map( A => DATA2(3), B => n139, Z => n128);
   U142 : OAI211_X1 port map( C1 => n160, C2 => n141, A => n161, B => n162, ZN 
                           => OUTALU(2));
   U143 : AOI222_X1 port map( A1 => DATA1(3), A2 => n163, B1 => DATA1(1), B2 =>
                           n164, C1 => DATA1(0), C2 => n158, ZN => n162);
   U144 : OAI21_X1 port map( B1 => n157, B2 => n165, A => n166, ZN => n158);
   U145 : INV_X1 port map( A => n167, ZN => n164);
   U146 : AOI21_X1 port map( B1 => n168, B2 => n169, A => n170, ZN => n167);
   U147 : MUX2_X1 port map( A => n171, B => n172, S => DATA1(2), Z => n161);
   U148 : AOI211_X1 port map( C1 => n173, C2 => n134, A => n174, B => n159, ZN 
                           => n172);
   U149 : MUX2_X1 port map( A => n175, B => n176, S => DATA2(2), Z => n174);
   U150 : XOR2_X1 port map( A => n149, B => n146, Z => n173);
   U151 : INV_X1 port map( A => n148, ZN => n146);
   U152 : AOI22_X1 port map( A1 => n177, A2 => n134, B1 => n175, B2 => DATA2(2)
                           , ZN => n171);
   U153 : XOR2_X1 port map( A => n149, B => n148, Z => n177);
   U154 : XNOR2_X1 port map( A => n178, B => DATA2(2), ZN => n148);
   U155 : OAI21_X1 port map( B1 => n179, B2 => n180, A => n181, ZN => n149);
   U156 : OAI21_X1 port map( B1 => n182, B2 => n183, A => DATA1(1), ZN => n181)
                           ;
   U157 : INV_X1 port map( A => n180, ZN => n182);
   U158 : INV_X1 port map( A => DATA2(2), ZN => n160);
   U159 : OAI211_X1 port map( C1 => n184, C2 => n141, A => n185, B => n186, ZN 
                           => OUTALU(1));
   U160 : AOI222_X1 port map( A1 => DATA1(0), A2 => n170, B1 => DATA1(3), B2 =>
                           n187, C1 => DATA1(2), C2 => n163, ZN => n186);
   U161 : INV_X1 port map( A => n188, ZN => n170);
   U162 : AOI21_X1 port map( B1 => n189, B2 => n169, A => n137, ZN => n188);
   U163 : OAI21_X1 port map( B1 => n190, B2 => n157, A => n191, ZN => n137);
   U164 : MUX2_X1 port map( A => n192, B => n193, S => DATA1(1), Z => n185);
   U165 : NOR3_X1 port map( A1 => n194, A2 => n159, A3 => n195, ZN => n193);
   U166 : MUX2_X1 port map( A => n175, B => n176, S => DATA2(1), Z => n195);
   U167 : INV_X1 port map( A => n140, ZN => n176);
   U168 : OAI22_X1 port map( A1 => n196, A2 => n156, B1 => n197, B2 => n198, ZN
                           => n194);
   U169 : AOI21_X1 port map( B1 => DATA2(0), B2 => n168, A => n199, ZN => n196)
                           ;
   U170 : AOI222_X1 port map( A1 => n175, A2 => DATA2(1), B1 => n198, B2 => 
                           n134, C1 => n169, C2 => DATA1(0), ZN => n192);
   U171 : NOR2_X1 port map( A1 => n156, A2 => n184, ZN => n169);
   U172 : XOR2_X1 port map( A => n180, B => n179, Z => n198);
   U173 : INV_X1 port map( A => n183, ZN => n179);
   U174 : XNOR2_X1 port map( A => n178, B => DATA2(1), ZN => n183);
   U175 : OAI21_X1 port map( B1 => n144, B2 => n200, A => n201, ZN => n180);
   U176 : OAI21_X1 port map( B1 => n202, B2 => n178, A => n168, ZN => n201);
   U177 : INV_X1 port map( A => DATA1(0), ZN => n168);
   U178 : OAI211_X1 port map( C1 => n189, C2 => n141, A => n203, B => n204, ZN 
                           => OUTALU(0));
   U179 : AOI221_X1 port map( B1 => DATA1(1), B2 => n163, C1 => DATA1(2), C2 =>
                           n187, A => n205, ZN => n204);
   U180 : AOI21_X1 port map( B1 => n191, B2 => n206, A => n139, ZN => n205);
   U181 : INV_X1 port map( A => DATA1(3), ZN => n139);
   U182 : NAND3_X1 port map( A1 => n154, A2 => n207, A3 => n208, ZN => n206);
   U183 : INV_X1 port map( A => n209, ZN => n208);
   U184 : AOI22_X1 port map( A1 => n210, A2 => n199, B1 => n211, B2 => n207, ZN
                           => n191);
   U185 : OAI21_X1 port map( B1 => n165, B2 => n209, A => n166, ZN => n187);
   U186 : OAI211_X1 port map( C1 => n210, C2 => n211, A => n189, B => DATA2(1),
                           ZN => n166);
   U187 : NAND3_X1 port map( A1 => DATA2(1), A2 => n189, A3 => n154, ZN => n165
                           );
   U188 : OAI21_X1 port map( B1 => n190, B2 => n209, A => n152, ZN => n163);
   U189 : AOI22_X1 port map( A1 => n207, A2 => n210, B1 => n211, B2 => n199, ZN
                           => n152);
   U190 : INV_X1 port map( A => n151, ZN => n207);
   U191 : NAND2_X1 port map( A1 => DATA2(1), A2 => DATA2(0), ZN => n151);
   U192 : NAND2_X1 port map( A1 => n154, A2 => n199, ZN => n190);
   U193 : INV_X1 port map( A => n212, ZN => n199);
   U194 : MUX2_X1 port map( A => n213, B => n214, S => DATA1(0), Z => n203);
   U195 : AOI211_X1 port map( C1 => n215, C2 => n134, A => n216, B => n159, ZN 
                           => n214);
   U196 : NAND3_X1 port map( A1 => n217, A2 => n141, A3 => n218, ZN => n159);
   U197 : NAND4_X1 port map( A1 => n154, A2 => n219, A3 => n189, A4 => n184, ZN
                           => n218);
   U198 : NAND2_X1 port map( A1 => n157, A2 => n209, ZN => n219);
   U199 : NAND3_X1 port map( A1 => FUNC_1_port, A2 => n220, A3 => FUNC_2_port, 
                           ZN => n209);
   U200 : NAND3_X1 port map( A1 => n221, A2 => FUNC_1_port, A3 => FUNC_2_port, 
                           ZN => n157);
   U201 : NOR2_X1 port map( A1 => DATA2(3), A2 => DATA2(2), ZN => n154);
   U202 : OAI211_X1 port map( C1 => n210, C2 => n211, A => n212, B => n184, ZN 
                           => n217);
   U203 : NAND2_X1 port map( A1 => DATA2(0), A2 => n184, ZN => n212);
   U204 : INV_X1 port map( A => DATA2(1), ZN => n184);
   U205 : AND3_X1 port map( A1 => n222, A2 => FUNC_0_port, A3 => FUNC_3_port, 
                           ZN => n211);
   U206 : AND3_X1 port map( A1 => n222, A2 => n223, A3 => FUNC_3_port, ZN => 
                           n210);
   U207 : MUX2_X1 port map( A => n175, B => n224, S => DATA2(0), Z => n216);
   U208 : NAND2_X1 port map( A1 => n156, A2 => n140, ZN => n224);
   U209 : NAND3_X1 port map( A1 => n220, A2 => n225, A3 => FUNC_1_port, ZN => 
                           n140);
   U210 : NAND3_X1 port map( A1 => FUNC_1_port, A2 => n225, A3 => n221, ZN => 
                           n156);
   U211 : INV_X1 port map( A => FUNC_2_port, ZN => n225);
   U212 : XOR2_X1 port map( A => n202, B => n144, Z => n215);
   U213 : AOI22_X1 port map( A1 => n226, A2 => n134, B1 => n175, B2 => DATA2(0)
                           , ZN => n213);
   U214 : INV_X1 port map( A => n129, ZN => n175);
   U215 : NAND3_X1 port map( A1 => n220, A2 => n227, A3 => FUNC_2_port, ZN => 
                           n129);
   U216 : INV_X1 port map( A => n197, ZN => n134);
   U217 : AOI21_X1 port map( B1 => n221, B2 => n222, A => n144, ZN => n197);
   U218 : INV_X1 port map( A => n178, ZN => n144);
   U219 : XOR2_X1 port map( A => n178, B => n202, Z => n226);
   U220 : INV_X1 port map( A => n200, ZN => n202);
   U221 : XNOR2_X1 port map( A => n178, B => DATA2(0), ZN => n200);
   U222 : NAND2_X1 port map( A1 => n222, A2 => n220, ZN => n178);
   U223 : NOR2_X1 port map( A1 => n223, A2 => FUNC_3_port, ZN => n220);
   U224 : INV_X1 port map( A => FUNC_0_port, ZN => n223);
   U225 : NOR2_X1 port map( A1 => FUNC_2_port, A2 => FUNC_1_port, ZN => n222);
   U226 : NAND3_X1 port map( A1 => n221, A2 => n227, A3 => FUNC_2_port, ZN => 
                           n141);
   U227 : INV_X1 port map( A => FUNC_1_port, ZN => n227);
   U228 : NOR2_X1 port map( A1 => FUNC_0_port, A2 => FUNC_3_port, ZN => n221);
   U229 : INV_X1 port map( A => DATA2(0), ZN => n189);

end SYN_BEHAVIOR;
