
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_SIPISOALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_SIPISOALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity sipisoAluControl is

   port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
         shiftC, startC : out std_logic);

end sipisoAluControl;

architecture SYN_FSM_OPC of sipisoAluControl is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal NEXT_STATE_4_port, NEXT_STATE_2_port, NEXT_STATE_0_port, n6, n7, n8, 
      n9, n92, n5, n1, n2, n14, n16, n17, n18, n27, n29, n33, n34, n37, n39, 
      n41, n42, n43, n44, n45, n48, n61, n62, n64, net1616, net1614, net1623, 
      net1624, net1633, net1635, net1647, net1651, net1650, net1727, net1730, 
      net1732, net1737, net1742, net1749, n65, net1733, net1758, net1744, 
      net1639, n63, n59, n57, n56, n32, net1757, net1747, n60, n38, net1736, 
      net1726, net1648, n55, n54, n53, n52, n51, n36, n35, n31, n30, n3, n12, 
      n10, n66, n67, n68, n69, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82
      , n83, n84, n85, n86, n87, n88, n89, n90, loadC_port : std_logic;

begin
   loadC <= loadC_port;
   startC <= loadC_port;
   
   U24 : NOR2_X1 port map( A1 => net1749, A2 => n17, ZN => NEXT_STATE_4_port);
   U27 : NAND2_X1 port map( A1 => n34, A2 => net1727, ZN => NEXT_STATE_2_port);
   U57 : NOR3_X1 port map( A1 => n90, A2 => net1633, A3 => net1742, ZN => n62);
   U60 : NAND2_X1 port map( A1 => n64, A2 => n90, ZN => n37);
   U61 : NAND2_X1 port map( A1 => n64, A2 => n9, ZN => n44);
   U64 : OAI21_X1 port map( B1 => n9, B2 => net1749, A => net1650, ZN => shiftC
                           );
   U69 : NOR2_X1 port map( A1 => n79, A2 => net1647, ZN => n45);
   U66 : NAND2_X1 port map( A1 => n6, A2 => n65, ZN => n27);
   U67 : NOR2_X1 port map( A1 => n7, A2 => n8, ZN => n65);
   U56 : NOR2_X1 port map( A1 => n5, A2 => n7, ZN => n63);
   U42 : NOR2_X1 port map( A1 => n87, A2 => n9, ZN => n29);
   U55 : NAND2_X1 port map( A1 => n63, A2 => net1744, ZN => n32);
   U68 : NOR3_X1 port map( A1 => n76, A2 => net1733, A3 => net1633, ZN => 
                           shiftA);
   U54 : OAI21_X1 port map( B1 => n62, B2 => n14, A => n76, ZN => n61);
   U36 : AOI21_X1 port map( B1 => n29, B2 => n76, A => n92, ZN => n48);
   U46 : NOR3_X1 port map( A1 => n76, A2 => n90, A3 => n32, ZN => n59);
   U45 : NOR2_X1 port map( A1 => n59, A2 => n83, ZN => n57);
   U31 : AOI21_X1 port map( B1 => n44, B2 => net1757, A => n33, ZN => n43);
   U51 : NOR2_X1 port map( A1 => net1623, A2 => n80, ZN => n60);
   U50 : NAND2_X1 port map( A1 => n73, A2 => net1747, ZN => n38);
   U33 : NOR2_X1 port map( A1 => n18, A2 => n9, ZN => n39);
   U62 : NOR4_X1 port map( A1 => net1651, A2 => net1633, A3 => n18, A4 => n76, 
                           ZN => n64);
   U26 : AOI21_X1 port map( B1 => n84, B2 => net1737, A => n33, ZN => n30);
   U59 : NAND2_X1 port map( A1 => n44, A2 => n37, ZN => n31);
   U49 : NAND2_X1 port map( A1 => strobeA, A2 => n12, ZN => n36);
   U63 : NOR2_X1 port map( A1 => n12, A2 => strobeA, ZN => n33);
   U32 : NOR4_X1 port map( A1 => n3, A2 => n39, A3 => net1733, A4 => n38, ZN =>
                           n42);
   U43 : NOR2_X1 port map( A1 => n3, A2 => n33, ZN => n55);
   U41 : OAI21_X1 port map( B1 => n85, B2 => n55, A => net1757, ZN => n54);
   U47 : AOI22_X1 port map( A1 => n81, A2 => n67, B1 => n88, B2 => net1733, ZN 
                           => n56);
   U48 : OAI21_X1 port map( B1 => n9, B2 => n67, A => n36, ZN => n53);
   U28 : AOI22_X1 port map( A1 => n35, A2 => n36, B1 => n16, B2 => n10, ZN => 
                           n34);
   U52 : AOI22_X1 port map( A1 => n33, A2 => n31, B1 => n66, B2 => n10, ZN => 
                           n51);
   U39 : NAND2_X1 port map( A1 => n51, A2 => n52, ZN => NEXT_STATE_0_port);
   U3 : INV_X1 port map( A => n33, ZN => n10);
   U4 : OR2_X1 port map( A1 => n68, A2 => n10, ZN => net1730);
   U5 : INV_X1 port map( A => n82, ZN => n66);
   U6 : NOR2_X1 port map( A1 => n54, A2 => net1726, ZN => n52);
   U9 : OR2_X1 port map( A1 => net1648, A2 => n67, ZN => net1736);
   U10 : INV_X1 port map( A => n18, ZN => n69);
   U11 : NOR2_X1 port map( A1 => net1647, A2 => n69, ZN => net1733);
   U13 : INV_X1 port map( A => n36, ZN => n3);
   U15 : INV_X1 port map( A => strobeB, ZN => n12);
   U17 : NAND2_X1 port map( A1 => net1732, A2 => n82, ZN => n35);
   U18 : INV_X1 port map( A => net1758, ZN => net1648);
   U21 : OR2_X1 port map( A1 => n17, A2 => n38, ZN => net1732);
   U30 : OR2_X1 port map( A1 => n32, A2 => n9, ZN => net1757);
   U34 : NAND2_X1 port map( A1 => n57, A2 => n56, ZN => net1639);
   U35 : AOI21_X1 port map( B1 => n89, B2 => n33, A => net1616, ZN => net1727);
   U37 : AOI21_X1 port map( B1 => net1639, B2 => n33, A => net1616, ZN => 
                           net1614);
   U44 : CLKBUF_X1 port map( A => n81, Z => loadB);
   U58 : INV_X1 port map( A => n87, ZN => n14);
   U65 : INV_X1 port map( A => net1624, ZN => net1744);
   U70 : INV_X1 port map( A => net1623, ZN => net1651);
   U71 : INV_X1 port map( A => n6, ZN => net1633);
   U74 : INV_X1 port map( A => net1651, ZN => net1742);
   U75 : INV_X1 port map( A => n14, ZN => net1737);
   U76 : NAND2_X1 port map( A1 => net1614, A2 => net1730, ZN => n41);
   U78 : OR2_X1 port map( A1 => n41, A2 => n75, ZN => n2);
   U80 : INV_X1 port map( A => n37, ZN => n16);
   U81 : INV_X1 port map( A => n39, ZN => n17);
   U82 : INV_X1 port map( A => rst, ZN => n1);
   U84 : INV_X1 port map( A => n48, ZN => net1616);
   CURRENT_STATE_reg_4_inst : DFFR_X1 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n1, Q => net1624, QN => n6);
   CURRENT_STATE_reg_0_inst : DFFR_X1 port map( D => NEXT_STATE_0_port, CK => 
                           clk, RN => n1, Q => n5, QN => n18);
   CURRENT_STATE_reg_1_inst : DFFR_X1 port map( D => n2, CK => clk, RN => n1, Q
                           => net1647, QN => n9);
   CURRENT_STATE_reg_3_inst : DFFR_X1 port map( D => n74, CK => clk, RN => n1, 
                           Q => net1623, QN => n7);
   CURRENT_STATE_reg_2_inst : DFFR_X1 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n1, Q => net1635, QN => n8);
   U7 : CLKBUF_X1 port map( A => n60, Z => n73);
   U8 : AND2_X1 port map( A1 => n60, A2 => net1747, ZN => n88);
   U12 : OR4_X1 port map( A1 => n30, A2 => n29, A3 => n31, A4 => loadC_port, ZN
                           => n74);
   U14 : OR2_X1 port map( A1 => n42, A2 => n43, ZN => n75);
   U16 : BUF_X1 port map( A => n69, Z => n67);
   U19 : INV_X1 port map( A => n8, ZN => n76);
   U20 : AOI22_X1 port map( A1 => n81, A2 => n67, B1 => n88, B2 => net1733, ZN 
                           => n77);
   U22 : NOR2_X1 port map( A1 => n27, A2 => n78, ZN => loadC_port);
   U23 : NAND2_X1 port map( A1 => n69, A2 => n9, ZN => n78);
   U25 : INV_X1 port map( A => n18, ZN => n79);
   U29 : INV_X1 port map( A => n6, ZN => n80);
   U38 : BUF_X1 port map( A => net1758, Z => n81);
   U40 : BUF_X1 port map( A => n27, Z => net1749);
   U53 : AND2_X1 port map( A1 => n61, A2 => net1736, ZN => n82);
   U72 : AND4_X1 port map( A1 => n45, A2 => net1651, A3 => net1747, A4 => 
                           net1633, ZN => n83);
   U73 : INV_X1 port map( A => n81, ZN => n84);
   U77 : AND2_X1 port map( A1 => n57, A2 => n77, ZN => n85);
   U79 : NOR2_X1 port map( A1 => n86, A2 => n27, ZN => n92);
   U83 : NAND2_X1 port map( A1 => n69, A2 => n9, ZN => n86);
   U85 : NAND2_X1 port map( A1 => n63, A2 => net1744, ZN => n87);
   U86 : CLKBUF_X1 port map( A => net1639, Z => n89);
   U87 : BUF_X1 port map( A => n8, Z => net1747);
   U88 : INV_X1 port map( A => n9, ZN => n90);
   U89 : AND4_X1 port map( A1 => net1647, A2 => net1635, A3 => n7, A4 => n6, ZN
                           => net1758);
   U90 : NAND4_X1 port map( A1 => n45, A2 => n7, A3 => net1747, A4 => net1633, 
                           ZN => net1650);
   U91 : AND2_X1 port map( A1 => net1736, A2 => n61, ZN => n68);
   U92 : AND2_X1 port map( A1 => n88, A2 => n53, ZN => net1726);

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n135, EA, LDB, LDC, n32, n44, n45, n46, n47, n48, n49, n50, n51, n52,
      n53, n54, n80, n84, n85, n87, n88, n89, n91, n92, n93, n94, n95, n96, n97
      , n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n112, n113, n114, n115, n116, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, net3022, net3042, n131, n132, 
      n133, n134, n_1000, n_1001, n_1002, n_1003 : std_logic;

begin
   STARTC <= net3022;
   
   U55 : OAI21_X1 port map( B1 => n93, B2 => EA, A => n102, ZN => n54);
   U56 : NAND2_X1 port map( A1 => EA, A2 => A, ZN => n102);
   U57 : OAI21_X1 port map( B1 => n94, B2 => EA, A => n103, ZN => n53);
   U58 : NAND2_X1 port map( A1 => EA, A2 => n88, ZN => n103);
   U59 : OAI21_X1 port map( B1 => n95, B2 => EA, A => n104, ZN => n52);
   U60 : NAND2_X1 port map( A1 => EA, A2 => n89, ZN => n104);
   U61 : OAI21_X1 port map( B1 => n96, B2 => LDB, A => n105, ZN => n51);
   U62 : NAND2_X1 port map( A1 => LDB, A2 => B(3), ZN => n105);
   U63 : OAI21_X1 port map( B1 => n97, B2 => LDB, A => n106, ZN => n50);
   U64 : NAND2_X1 port map( A1 => B(2), A2 => LDB, ZN => n106);
   U65 : OAI21_X1 port map( B1 => LDB, B2 => n134, A => n107, ZN => n49);
   U66 : NAND2_X1 port map( A1 => B(1), A2 => LDB, ZN => n107);
   U67 : OAI21_X1 port map( B1 => n133, B2 => LDB, A => n108, ZN => n48);
   U68 : NAND2_X1 port map( A1 => B(0), A2 => LDB, ZN => n108);
   U69 : OAI21_X1 port map( B1 => n109, B2 => n131, A => n110, ZN => n47);
   U70 : NAND2_X1 port map( A1 => n99, A2 => n127, ZN => n110);
   U71 : XOR2_X1 port map( A => n112, B => n113, Z => n109);
   U72 : XOR2_X1 port map( A => n96, B => n95, Z => n113);
   U73 : OAI21_X1 port map( B1 => n85, B2 => n89, A => n114, ZN => n112);
   U74 : OAI21_X1 port map( B1 => n115, B2 => n94, A => n97, ZN => n114);
   U75 : OAI21_X1 port map( B1 => n129, B2 => n91, A => n116, ZN => n46);
   U76 : AOI22_X1 port map( A1 => n128, A2 => n99, B1 => n118, B2 => net3022, 
                           ZN => n116);
   U77 : XNOR2_X1 port map( A => n119, B => n85, ZN => n118);
   U78 : AOI21_X1 port map( B1 => n80, B2 => n120, A => n121, ZN => n115);
   U79 : AOI21_X1 port map( B1 => n130, B2 => n134, A => n93, ZN => n121);
   U80 : XNOR2_X1 port map( A => n97, B => n94, ZN => n119);
   U81 : OAI21_X1 port map( B1 => n129, B2 => n92, A => n122, ZN => n45);
   U82 : AOI22_X1 port map( A1 => n100, A2 => n128, B1 => net3022, B2 => n123, 
                           ZN => n122);
   U83 : XOR2_X1 port map( A => n130, B => n124, Z => n123);
   U84 : XNOR2_X1 port map( A => n88, B => n80, ZN => n124);
   U85 : OAI21_X1 port map( B1 => n32, B2 => n129, A => n125, ZN => n44);
   U86 : AOI22_X1 port map( A1 => n128, A2 => n101, B1 => n126, B2 => net3022, 
                           ZN => n125);
   U87 : AOI21_X1 port map( B1 => n133, B2 => n87, A => n120, ZN => n126);
   U88 : NOR2_X1 port map( A1 => n87, A2 => n98, ZN => n120);
   U93 : OR2_X1 port map( A1 => net3022, A2 => net3042, ZN => n129);
   U94 : OR2_X1 port map( A1 => n87, A2 => n98, ZN => n130);
   U95 : INV_X1 port map( A => n115, ZN => n85);
   U102 : INV_X1 port map( A => RESET, ZN => n84);
   U103 : INV_X1 port map( A => A, ZN => n87);
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => LDC, shiftC => net3042, startC => n135);
   PIPO_reg_1_inst : DFFR_X1 port map( D => n49, CK => CLK, RN => n84, Q => n80
                           , QN => n134);
   PIPO_reg_0_inst : DFFR_X1 port map( D => n48, CK => CLK, RN => n84, Q => 
                           n132, QN => n98);
   SIPO_reg_2_inst : DFFR_X1 port map( D => n52, CK => CLK, RN => n84, Q => 
                           n_1000, QN => n95);
   SIPO_reg_0_inst : DFFR_X1 port map( D => n54, CK => CLK, RN => n84, Q => n88
                           , QN => n93);
   SIPO_reg_1_inst : DFFR_X1 port map( D => n53, CK => CLK, RN => n84, Q => n89
                           , QN => n94);
   PIPO_reg_2_inst : DFFR_X1 port map( D => n50, CK => CLK, RN => n84, Q => 
                           n_1001, QN => n97);
   PIPO_reg_3_inst : DFFR_X1 port map( D => n51, CK => CLK, RN => n84, Q => 
                           n_1002, QN => n96);
   PISO_reg_2_inst : DFFR_X1 port map( D => n46, CK => CLK, RN => n84, Q => 
                           n100, QN => n91);
   PISO_reg_3_inst : DFFR_X1 port map( D => n47, CK => CLK, RN => n84, Q => n99
                           , QN => n_1003);
   PISO_reg_1_inst : DFFR_X1 port map( D => n45, CK => CLK, RN => n84, Q => 
                           n101, QN => n92);
   PISO_reg_0_inst : DFFR_X1 port map( D => n44, CK => CLK, RN => n84, Q => C, 
                           QN => n32);
   U91 : INV_X1 port map( A => LDC, ZN => n131);
   U92 : AND2_X1 port map( A1 => n131, A2 => net3042, ZN => n128);
   U96 : NOR2_X1 port map( A1 => net3022, A2 => net3042, ZN => n127);
   U97 : BUF_X1 port map( A => LDC, Z => net3022);
   U98 : INV_X1 port map( A => n132, ZN => n133);

end SYN_A;
