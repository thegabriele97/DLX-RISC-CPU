
module prop_gen_0 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_1 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_2 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_3 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_4 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_5 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_6 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_7 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_8 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_9 ( a, b, p, g );
  input a, b;
  output p, g;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(b), .A2(n2), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n1), .A2(a), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n3), .A2(n4), .ZN(p) );
  INV_X1 U4 ( .A(b), .ZN(n1) );
  INV_X1 U5 ( .A(a), .ZN(n2) );
  AND2_X1 U6 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_10 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_11 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_12 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_13 ( a, b, p, g );
  input a, b;
  output p, g;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(b), .A2(n2), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n1), .A2(a), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n3), .A2(n4), .ZN(p) );
  INV_X1 U4 ( .A(b), .ZN(n1) );
  INV_X1 U5 ( .A(a), .ZN(n2) );
  AND2_X1 U6 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_14 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_15 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_16 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_17 ( a, b, p, g );
  input a, b;
  output p, g;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(n2), .A2(b), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n1), .A2(a), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n4), .A2(n3), .ZN(p) );
  INV_X1 U4 ( .A(b), .ZN(n1) );
  INV_X1 U5 ( .A(a), .ZN(n2) );
  AND2_X1 U6 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_18 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_19 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_20 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_21 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_22 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_23 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_24 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_25 ( a, b, p, g );
  input a, b;
  output p, g;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(n2), .A2(b), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n1), .A2(a), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n3), .A2(n4), .ZN(p) );
  INV_X1 U4 ( .A(b), .ZN(n1) );
  INV_X1 U5 ( .A(a), .ZN(n2) );
  AND2_X1 U6 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_26 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_27 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_28 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_29 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_30 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_31 ( a, b, p, g );
  input a, b;
  output p, g;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(p) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(g) );
endmodule


module prop_gen_generic_NBIT32 ( a, b, p, g );
  input [31:0] a;
  input [31:0] b;
  output [31:0] p;
  output [31:0] g;


  prop_gen_0 pg_network_i_0 ( .a(a[0]), .b(b[0]), .p(p[0]), .g(g[0]) );
  prop_gen_31 pg_network_i_1 ( .a(a[1]), .b(b[1]), .p(p[1]), .g(g[1]) );
  prop_gen_30 pg_network_i_2 ( .a(a[2]), .b(b[2]), .p(p[2]), .g(g[2]) );
  prop_gen_29 pg_network_i_3 ( .a(a[3]), .b(b[3]), .p(p[3]), .g(g[3]) );
  prop_gen_28 pg_network_i_4 ( .a(a[4]), .b(b[4]), .p(p[4]), .g(g[4]) );
  prop_gen_27 pg_network_i_5 ( .a(a[5]), .b(b[5]), .p(p[5]), .g(g[5]) );
  prop_gen_26 pg_network_i_6 ( .a(a[6]), .b(b[6]), .p(p[6]), .g(g[6]) );
  prop_gen_25 pg_network_i_7 ( .a(a[7]), .b(b[7]), .p(p[7]), .g(g[7]) );
  prop_gen_24 pg_network_i_8 ( .a(a[8]), .b(b[8]), .p(p[8]), .g(g[8]) );
  prop_gen_23 pg_network_i_9 ( .a(a[9]), .b(b[9]), .p(p[9]), .g(g[9]) );
  prop_gen_22 pg_network_i_10 ( .a(a[10]), .b(b[10]), .p(p[10]), .g(g[10]) );
  prop_gen_21 pg_network_i_11 ( .a(a[11]), .b(b[11]), .p(p[11]), .g(g[11]) );
  prop_gen_20 pg_network_i_12 ( .a(a[12]), .b(b[12]), .p(p[12]), .g(g[12]) );
  prop_gen_19 pg_network_i_13 ( .a(a[13]), .b(b[13]), .p(p[13]), .g(g[13]) );
  prop_gen_18 pg_network_i_14 ( .a(a[14]), .b(b[14]), .p(p[14]), .g(g[14]) );
  prop_gen_17 pg_network_i_15 ( .a(a[15]), .b(b[15]), .p(p[15]), .g(g[15]) );
  prop_gen_16 pg_network_i_16 ( .a(a[16]), .b(b[16]), .p(p[16]), .g(g[16]) );
  prop_gen_15 pg_network_i_17 ( .a(a[17]), .b(b[17]), .p(p[17]), .g(g[17]) );
  prop_gen_14 pg_network_i_18 ( .a(a[18]), .b(b[18]), .p(p[18]), .g(g[18]) );
  prop_gen_13 pg_network_i_19 ( .a(a[19]), .b(b[19]), .p(p[19]), .g(g[19]) );
  prop_gen_12 pg_network_i_20 ( .a(a[20]), .b(b[20]), .p(p[20]), .g(g[20]) );
  prop_gen_11 pg_network_i_21 ( .a(a[21]), .b(b[21]), .p(p[21]), .g(g[21]) );
  prop_gen_10 pg_network_i_22 ( .a(a[22]), .b(b[22]), .p(p[22]), .g(g[22]) );
  prop_gen_9 pg_network_i_23 ( .a(a[23]), .b(b[23]), .p(p[23]), .g(g[23]) );
  prop_gen_8 pg_network_i_24 ( .a(a[24]), .b(b[24]), .p(p[24]), .g(g[24]) );
  prop_gen_7 pg_network_i_25 ( .a(a[25]), .b(b[25]), .p(p[25]), .g(g[25]) );
  prop_gen_6 pg_network_i_26 ( .a(a[26]), .b(b[26]), .p(p[26]), .g(g[26]) );
  prop_gen_5 pg_network_i_27 ( .a(a[27]), .b(b[27]), .p(p[27]), .g(g[27]) );
  prop_gen_4 pg_network_i_28 ( .a(a[28]), .b(b[28]), .p(p[28]), .g(g[28]) );
  prop_gen_3 pg_network_i_29 ( .a(a[29]), .b(b[29]), .p(p[29]), .g(g[29]) );
  prop_gen_2 pg_network_i_30 ( .a(a[30]), .b(b[30]), .p(p[30]), .g(g[30]) );
  prop_gen_1 pg_network_i_31 ( .a(a[31]), .b(b[31]), .p(p[31]), .g(g[31]) );
endmodule


module GG_0 ( p, g, go );
  input [1:0] g;
  input p;
  output go;
  wire   n3, n4;

  NOR2_X1 U1 ( .A1(g[0]), .A2(g[1]), .ZN(n3) );
  NOR2_X1 U2 ( .A1(p), .A2(g[1]), .ZN(n4) );
  NOR2_X1 U3 ( .A1(n4), .A2(n3), .ZN(go) );
endmodule


module PG_0 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3, n4, n5;

  AND2_X1 U1 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  OAI21_X1 U2 ( .B1(n3), .B2(n4), .A(n5), .ZN(go) );
  INV_X1 U3 ( .A(p[1]), .ZN(n3) );
  INV_X1 U4 ( .A(g[0]), .ZN(n4) );
  INV_X1 U5 ( .A(g[1]), .ZN(n5) );
endmodule


module GG_1 ( p, g, go );
  input [1:0] g;
  input p;
  output go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AOI21_X1 U2 ( .B1(p), .B2(g[0]), .A(g[1]), .ZN(n3) );
endmodule


module GG_2 ( p, g, go );
  input [1:0] g;
  input p;
  output go;
  wire   n3, n4;

  INV_X1 U1 ( .A(g[1]), .ZN(n3) );
  NAND2_X1 U2 ( .A1(g[0]), .A2(p), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n4), .A2(n3), .ZN(go) );
endmodule


module GG_3 ( p, g, go );
  input [1:0] g;
  input p;
  output go;
  wire   net1820, n3;

  INV_X1 U1 ( .A(g[1]), .ZN(net1820) );
  NAND2_X1 U2 ( .A1(g[0]), .A2(p), .ZN(n3) );
  NAND2_X1 U3 ( .A1(n3), .A2(net1820), .ZN(go) );
endmodule


module GG_4 ( p, g, go );
  input [1:0] g;
  input p;
  output go;
  wire   n3, n4;

  INV_X1 U1 ( .A(g[1]), .ZN(n3) );
  NAND2_X1 U2 ( .A1(g[0]), .A2(p), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n4), .A2(n3), .ZN(go) );
endmodule


module GG_5 ( p, g, go );
  input [1:0] g;
  input p;
  output go;
  wire   n3;

  AOI21_X1 U1 ( .B1(g[0]), .B2(p), .A(g[1]), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(go) );
endmodule


module GG_6 ( p, g, go );
  input [1:0] g;
  input p;
  output go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AOI21_X1 U2 ( .B1(g[0]), .B2(p), .A(g[1]), .ZN(n3) );
endmodule


module GG_7 ( p, g, go );
  input [1:0] g;
  input p;
  output go;
  wire   n3;

  AOI21_X1 U1 ( .B1(g[0]), .B2(p), .A(g[1]), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(go) );
endmodule


module GG_8 ( p, g, go );
  input [1:0] g;
  input p;
  output go;
  wire   n4, n5;

  NAND2_X1 U1 ( .A1(n4), .A2(n5), .ZN(go) );
  NAND2_X1 U2 ( .A1(g[0]), .A2(p), .ZN(n4) );
  INV_X1 U3 ( .A(g[1]), .ZN(n5) );
endmodule


module PG_1 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  AND2_X1 U1 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  INV_X1 U2 ( .A(n3), .ZN(go) );
  AOI21_X1 U3 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
endmodule


module PG_2 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3, n4;

  NOR2_X1 U1 ( .A1(p[1]), .A2(g[1]), .ZN(n3) );
  NOR2_X1 U2 ( .A1(g[0]), .A2(g[1]), .ZN(n4) );
  NOR2_X1 U3 ( .A1(n4), .A2(n3), .ZN(go) );
  AND2_X1 U4 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_3 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AOI21_X1 U2 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_4 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n4, n5;

  NAND2_X1 U1 ( .A1(n4), .A2(n5), .ZN(go) );
  NAND2_X1 U2 ( .A1(g[0]), .A2(p[1]), .ZN(n4) );
  INV_X1 U3 ( .A(g[1]), .ZN(n5) );
  AND2_X1 U4 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_5 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n4, n5, n6;

  AND2_X1 U1 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  OAI21_X1 U2 ( .B1(n4), .B2(n5), .A(n6), .ZN(go) );
  INV_X1 U3 ( .A(g[0]), .ZN(n4) );
  INV_X1 U4 ( .A(p[1]), .ZN(n5) );
  INV_X1 U5 ( .A(g[1]), .ZN(n6) );
endmodule


module PG_6 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AOI21_X1 U2 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_7 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AOI21_X1 U2 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_8 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  AOI21_X1 U1 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
  AND2_X1 U2 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  INV_X1 U3 ( .A(n3), .ZN(go) );
endmodule


module PG_9 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  AOI21_X1 U1 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
  AND2_X1 U2 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  INV_X1 U3 ( .A(n3), .ZN(go) );
endmodule


module PG_10 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n4, n5;

  AND2_X1 U1 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  NAND2_X1 U2 ( .A1(n4), .A2(n5), .ZN(go) );
  NAND2_X1 U3 ( .A1(g[0]), .A2(p[1]), .ZN(n4) );
  INV_X1 U4 ( .A(g[1]), .ZN(n5) );
endmodule


module PG_11 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n4, n5;

  AND2_X1 U1 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  NAND2_X1 U2 ( .A1(n4), .A2(n5), .ZN(go) );
  NAND2_X1 U3 ( .A1(g[0]), .A2(p[1]), .ZN(n4) );
  INV_X1 U4 ( .A(g[1]), .ZN(n5) );
endmodule


module PG_12 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n4, n5;

  AND2_X1 U1 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  NAND2_X1 U2 ( .A1(n4), .A2(n5), .ZN(go) );
  NAND2_X1 U3 ( .A1(g[0]), .A2(p[1]), .ZN(n4) );
  INV_X1 U4 ( .A(g[1]), .ZN(n5) );
endmodule


module PG_13 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AOI21_X1 U2 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_14 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AOI21_X1 U2 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_15 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AOI21_X1 U2 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_16 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AOI21_X1 U2 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_17 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  AND2_X1 U1 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  INV_X1 U2 ( .A(n3), .ZN(go) );
  AOI21_X1 U3 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
endmodule


module PG_18 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AND2_X1 U2 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  AOI21_X1 U3 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
endmodule


module PG_19 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3, n4;

  NOR2_X1 U1 ( .A1(p[1]), .A2(g[1]), .ZN(n3) );
  NOR2_X1 U2 ( .A1(g[0]), .A2(g[1]), .ZN(n4) );
  NOR2_X1 U3 ( .A1(n3), .A2(n4), .ZN(go) );
  AND2_X1 U4 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_20 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AND2_X1 U2 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  AOI21_X1 U3 ( .B1(g[0]), .B2(p[1]), .A(g[1]), .ZN(n3) );
endmodule


module PG_21 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(go) );
  AND2_X1 U2 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  AOI21_X1 U3 ( .B1(p[1]), .B2(g[0]), .A(g[1]), .ZN(n3) );
endmodule


module PG_22 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3, n4;

  NOR2_X1 U1 ( .A1(p[1]), .A2(g[1]), .ZN(n3) );
  NOR2_X1 U2 ( .A1(g[0]), .A2(g[1]), .ZN(n4) );
  NOR2_X1 U3 ( .A1(n3), .A2(n4), .ZN(go) );
  AND2_X1 U4 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_23 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3, n4, n5;

  OAI21_X1 U1 ( .B1(n3), .B2(n4), .A(n5), .ZN(go) );
  INV_X1 U2 ( .A(p[1]), .ZN(n3) );
  INV_X1 U3 ( .A(g[0]), .ZN(n4) );
  INV_X1 U4 ( .A(g[1]), .ZN(n5) );
  AND2_X1 U5 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_24 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3, n4;

  NOR2_X1 U1 ( .A1(p[1]), .A2(g[1]), .ZN(n3) );
  NOR2_X1 U2 ( .A1(g[0]), .A2(g[1]), .ZN(n4) );
  NOR2_X1 U3 ( .A1(n3), .A2(n4), .ZN(go) );
  AND2_X1 U4 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module PG_25 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3, n4, n5;

  AND2_X1 U1 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
  OAI21_X1 U2 ( .B1(n3), .B2(n4), .A(n5), .ZN(go) );
  INV_X1 U3 ( .A(p[1]), .ZN(n3) );
  INV_X1 U4 ( .A(g[0]), .ZN(n4) );
  INV_X1 U5 ( .A(g[1]), .ZN(n5) );
endmodule


module PG_26 ( p, g, po, go );
  input [1:0] p;
  input [1:0] g;
  output po, go;
  wire   n3, n5;

  NAND2_X1 U1 ( .A1(n3), .A2(n5), .ZN(go) );
  NAND2_X1 U2 ( .A1(p[1]), .A2(g[0]), .ZN(n3) );
  INV_X1 U3 ( .A(g[1]), .ZN(n5) );
  AND2_X1 U4 ( .A1(p[1]), .A2(p[0]), .ZN(po) );
endmodule


module CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 ( A, B, Cin, Co );
  input [31:0] A;
  input [31:0] B;
  output [7:0] Co;
  input Cin;
  wire   n7, n8, n9, \sigmtx[0][0][32] , \sigmtx[0][0][31] ,
         \sigmtx[0][0][30] , \sigmtx[0][0][29] , \sigmtx[0][0][28] ,
         \sigmtx[0][0][27] , \sigmtx[0][0][26] , \sigmtx[0][0][25] ,
         \sigmtx[0][0][24] , \sigmtx[0][0][23] , \sigmtx[0][0][22] ,
         \sigmtx[0][0][21] , \sigmtx[0][0][20] , \sigmtx[0][0][19] ,
         \sigmtx[0][0][18] , \sigmtx[0][0][17] , \sigmtx[0][0][16] ,
         \sigmtx[0][0][15] , \sigmtx[0][0][14] , \sigmtx[0][0][13] ,
         \sigmtx[0][0][12] , \sigmtx[0][0][11] , \sigmtx[0][0][10] ,
         \sigmtx[0][0][9] , \sigmtx[0][0][8] , \sigmtx[0][0][7] ,
         \sigmtx[0][0][6] , \sigmtx[0][0][5] , \sigmtx[0][0][4] ,
         \sigmtx[0][0][3] , \sigmtx[0][0][2] , \sigmtx[0][0][1] ,
         \sigmtx[0][1][32] , \sigmtx[0][1][30] , \sigmtx[0][1][28] ,
         \sigmtx[0][1][26] , \sigmtx[0][1][24] , \sigmtx[0][1][22] ,
         \sigmtx[0][1][20] , \sigmtx[0][1][18] , \sigmtx[0][1][16] ,
         \sigmtx[0][1][14] , \sigmtx[0][1][12] , \sigmtx[0][1][10] ,
         \sigmtx[0][1][8] , \sigmtx[0][1][6] , \sigmtx[0][1][4] ,
         \sigmtx[0][1][2] , \sigmtx[0][2][32] , \sigmtx[0][2][28] ,
         \sigmtx[0][2][24] , \sigmtx[0][2][20] , \sigmtx[0][2][16] ,
         \sigmtx[0][2][12] , \sigmtx[0][2][8] , \sigmtx[0][3][32] ,
         \sigmtx[0][3][24] , \sigmtx[0][3][16] , \sigmtx[0][4][32] ,
         \sigmtx[0][4][28] , \sigmtx[1][0][32] , \sigmtx[1][0][31] ,
         \sigmtx[1][0][30] , \sigmtx[1][0][29] , \sigmtx[1][0][28] ,
         \sigmtx[1][0][27] , \sigmtx[1][0][26] , \sigmtx[1][0][25] ,
         \sigmtx[1][0][24] , \sigmtx[1][0][23] , \sigmtx[1][0][22] ,
         \sigmtx[1][0][21] , \sigmtx[1][0][20] , \sigmtx[1][0][19] ,
         \sigmtx[1][0][18] , \sigmtx[1][0][17] , \sigmtx[1][0][16] ,
         \sigmtx[1][0][15] , \sigmtx[1][0][14] , \sigmtx[1][0][13] ,
         \sigmtx[1][0][12] , \sigmtx[1][0][11] , \sigmtx[1][0][10] ,
         \sigmtx[1][0][9] , \sigmtx[1][0][8] , \sigmtx[1][0][7] ,
         \sigmtx[1][0][6] , \sigmtx[1][0][5] , \sigmtx[1][0][4] ,
         \sigmtx[1][0][3] , \sigmtx[1][0][2] , \sigmtx[1][1][32] ,
         \sigmtx[1][1][30] , \sigmtx[1][1][28] , \sigmtx[1][1][26] ,
         \sigmtx[1][1][24] , \sigmtx[1][1][22] , \sigmtx[1][1][20] ,
         \sigmtx[1][1][18] , \sigmtx[1][1][16] , \sigmtx[1][1][14] ,
         \sigmtx[1][1][12] , \sigmtx[1][1][10] , \sigmtx[1][1][8] ,
         \sigmtx[1][1][6] , \sigmtx[1][1][4] , \sigmtx[1][2][32] ,
         \sigmtx[1][2][28] , \sigmtx[1][2][24] , \sigmtx[1][2][20] ,
         \sigmtx[1][2][16] , \sigmtx[1][2][12] , \sigmtx[1][2][8] ,
         \sigmtx[1][3][32] , \sigmtx[1][3][24] , \sigmtx[1][3][16] ,
         \sigmtx[1][4][32] , \sigmtx[1][4][28] , n3, n4, n6;
  wire   SYNOPSYS_UNCONNECTED__0;

  prop_gen_generic_NBIT32 PGNet ( .a(A), .b(B), .p({\sigmtx[1][0][32] , 
        \sigmtx[1][0][31] , \sigmtx[1][0][30] , \sigmtx[1][0][29] , 
        \sigmtx[1][0][28] , \sigmtx[1][0][27] , \sigmtx[1][0][26] , 
        \sigmtx[1][0][25] , \sigmtx[1][0][24] , \sigmtx[1][0][23] , 
        \sigmtx[1][0][22] , \sigmtx[1][0][21] , \sigmtx[1][0][20] , 
        \sigmtx[1][0][19] , \sigmtx[1][0][18] , \sigmtx[1][0][17] , 
        \sigmtx[1][0][16] , \sigmtx[1][0][15] , \sigmtx[1][0][14] , 
        \sigmtx[1][0][13] , \sigmtx[1][0][12] , \sigmtx[1][0][11] , 
        \sigmtx[1][0][10] , \sigmtx[1][0][9] , \sigmtx[1][0][8] , 
        \sigmtx[1][0][7] , \sigmtx[1][0][6] , \sigmtx[1][0][5] , 
        \sigmtx[1][0][4] , \sigmtx[1][0][3] , \sigmtx[1][0][2] , 
        SYNOPSYS_UNCONNECTED__0}), .g({\sigmtx[0][0][32] , \sigmtx[0][0][31] , 
        \sigmtx[0][0][30] , \sigmtx[0][0][29] , \sigmtx[0][0][28] , 
        \sigmtx[0][0][27] , \sigmtx[0][0][26] , \sigmtx[0][0][25] , 
        \sigmtx[0][0][24] , \sigmtx[0][0][23] , \sigmtx[0][0][22] , 
        \sigmtx[0][0][21] , \sigmtx[0][0][20] , \sigmtx[0][0][19] , 
        \sigmtx[0][0][18] , \sigmtx[0][0][17] , \sigmtx[0][0][16] , 
        \sigmtx[0][0][15] , \sigmtx[0][0][14] , \sigmtx[0][0][13] , 
        \sigmtx[0][0][12] , \sigmtx[0][0][11] , \sigmtx[0][0][10] , 
        \sigmtx[0][0][9] , \sigmtx[0][0][8] , \sigmtx[0][0][7] , 
        \sigmtx[0][0][6] , \sigmtx[0][0][5] , \sigmtx[0][0][4] , 
        \sigmtx[0][0][3] , \sigmtx[0][0][2] , \sigmtx[0][0][1] }) );
  GG_0 GGi_1_2 ( .p(\sigmtx[1][0][2] ), .g({\sigmtx[0][0][2] , 
        \sigmtx[0][0][1] }), .go(\sigmtx[0][1][2] ) );
  PG_0 PGi_1_4 ( .p({\sigmtx[1][0][4] , \sigmtx[1][0][3] }), .g({
        \sigmtx[0][0][4] , \sigmtx[0][0][3] }), .po(\sigmtx[1][1][4] ), .go(
        \sigmtx[0][1][4] ) );
  PG_26 PGi_1_6 ( .p({\sigmtx[1][0][6] , \sigmtx[1][0][5] }), .g({
        \sigmtx[0][0][6] , \sigmtx[0][0][5] }), .po(\sigmtx[1][1][6] ), .go(
        \sigmtx[0][1][6] ) );
  PG_25 PGi_1_8 ( .p({\sigmtx[1][0][8] , \sigmtx[1][0][7] }), .g({
        \sigmtx[0][0][8] , \sigmtx[0][0][7] }), .po(\sigmtx[1][1][8] ), .go(
        \sigmtx[0][1][8] ) );
  PG_24 PGi_1_10 ( .p({\sigmtx[1][0][10] , \sigmtx[1][0][9] }), .g({
        \sigmtx[0][0][10] , \sigmtx[0][0][9] }), .po(\sigmtx[1][1][10] ), .go(
        \sigmtx[0][1][10] ) );
  PG_23 PGi_1_12 ( .p({\sigmtx[1][0][12] , \sigmtx[1][0][11] }), .g({
        \sigmtx[0][0][12] , \sigmtx[0][0][11] }), .po(\sigmtx[1][1][12] ), 
        .go(\sigmtx[0][1][12] ) );
  PG_22 PGi_1_14 ( .p({\sigmtx[1][0][14] , \sigmtx[1][0][13] }), .g({
        \sigmtx[0][0][14] , \sigmtx[0][0][13] }), .po(\sigmtx[1][1][14] ), 
        .go(\sigmtx[0][1][14] ) );
  PG_21 PGi_1_16 ( .p({\sigmtx[1][0][16] , \sigmtx[1][0][15] }), .g({
        \sigmtx[0][0][16] , \sigmtx[0][0][15] }), .po(\sigmtx[1][1][16] ), 
        .go(\sigmtx[0][1][16] ) );
  PG_20 PGi_1_18 ( .p({\sigmtx[1][0][18] , \sigmtx[1][0][17] }), .g({
        \sigmtx[0][0][18] , \sigmtx[0][0][17] }), .po(\sigmtx[1][1][18] ), 
        .go(\sigmtx[0][1][18] ) );
  PG_19 PGi_1_20 ( .p({\sigmtx[1][0][20] , \sigmtx[1][0][19] }), .g({
        \sigmtx[0][0][20] , \sigmtx[0][0][19] }), .po(\sigmtx[1][1][20] ), 
        .go(\sigmtx[0][1][20] ) );
  PG_18 PGi_1_22 ( .p({\sigmtx[1][0][22] , \sigmtx[1][0][21] }), .g({
        \sigmtx[0][0][22] , \sigmtx[0][0][21] }), .po(\sigmtx[1][1][22] ), 
        .go(\sigmtx[0][1][22] ) );
  PG_17 PGi_1_24 ( .p({\sigmtx[1][0][24] , \sigmtx[1][0][23] }), .g({
        \sigmtx[0][0][24] , \sigmtx[0][0][23] }), .po(\sigmtx[1][1][24] ), 
        .go(\sigmtx[0][1][24] ) );
  PG_16 PGi_1_26 ( .p({\sigmtx[1][0][26] , \sigmtx[1][0][25] }), .g({
        \sigmtx[0][0][26] , \sigmtx[0][0][25] }), .po(\sigmtx[1][1][26] ), 
        .go(\sigmtx[0][1][26] ) );
  PG_15 PGi_1_28 ( .p({\sigmtx[1][0][28] , \sigmtx[1][0][27] }), .g({
        \sigmtx[0][0][28] , \sigmtx[0][0][27] }), .po(\sigmtx[1][1][28] ), 
        .go(\sigmtx[0][1][28] ) );
  PG_14 PGi_1_30 ( .p({\sigmtx[1][0][30] , \sigmtx[1][0][29] }), .g({
        \sigmtx[0][0][30] , \sigmtx[0][0][29] }), .po(\sigmtx[1][1][30] ), 
        .go(\sigmtx[0][1][30] ) );
  PG_13 PGi_1_32 ( .p({\sigmtx[1][0][32] , \sigmtx[1][0][31] }), .g({
        \sigmtx[0][0][32] , \sigmtx[0][0][31] }), .po(\sigmtx[1][1][32] ), 
        .go(\sigmtx[0][1][32] ) );
  GG_8 GGi_2_4 ( .p(\sigmtx[1][1][4] ), .g({\sigmtx[0][1][4] , 
        \sigmtx[0][1][2] }), .go(n9) );
  PG_12 PGi_2_8 ( .p({\sigmtx[1][1][8] , \sigmtx[1][1][6] }), .g({
        \sigmtx[0][1][8] , \sigmtx[0][1][6] }), .po(\sigmtx[1][2][8] ), .go(
        \sigmtx[0][2][8] ) );
  PG_11 PGi_2_12 ( .p({\sigmtx[1][1][12] , \sigmtx[1][1][10] }), .g({
        \sigmtx[0][1][12] , \sigmtx[0][1][10] }), .po(\sigmtx[1][2][12] ), 
        .go(\sigmtx[0][2][12] ) );
  PG_10 PGi_2_16 ( .p({\sigmtx[1][1][16] , \sigmtx[1][1][14] }), .g({
        \sigmtx[0][1][16] , \sigmtx[0][1][14] }), .po(\sigmtx[1][2][16] ), 
        .go(\sigmtx[0][2][16] ) );
  PG_9 PGi_2_20 ( .p({\sigmtx[1][1][20] , \sigmtx[1][1][18] }), .g({
        \sigmtx[0][1][20] , \sigmtx[0][1][18] }), .po(\sigmtx[1][2][20] ), 
        .go(\sigmtx[0][2][20] ) );
  PG_8 PGi_2_24 ( .p({\sigmtx[1][1][24] , \sigmtx[1][1][22] }), .g({
        \sigmtx[0][1][24] , \sigmtx[0][1][22] }), .po(\sigmtx[1][2][24] ), 
        .go(\sigmtx[0][2][24] ) );
  PG_7 PGi_2_28 ( .p({\sigmtx[1][1][28] , \sigmtx[1][1][26] }), .g({
        \sigmtx[0][1][28] , \sigmtx[0][1][26] }), .po(\sigmtx[1][2][28] ), 
        .go(\sigmtx[0][2][28] ) );
  PG_6 PGi_2_32 ( .p({\sigmtx[1][1][32] , \sigmtx[1][1][30] }), .g({
        \sigmtx[0][1][32] , \sigmtx[0][1][30] }), .po(\sigmtx[1][2][32] ), 
        .go(\sigmtx[0][2][32] ) );
  GG_7 GGi_3_8 ( .p(\sigmtx[1][2][8] ), .g({\sigmtx[0][2][8] , n9}), .go(n8)
         );
  PG_5 PGi_3_16 ( .p({\sigmtx[1][2][16] , \sigmtx[1][2][12] }), .g({
        \sigmtx[0][2][16] , \sigmtx[0][2][12] }), .po(\sigmtx[1][3][16] ), 
        .go(\sigmtx[0][3][16] ) );
  PG_4 PGi_3_24 ( .p({\sigmtx[1][2][24] , \sigmtx[1][2][20] }), .g({
        \sigmtx[0][2][24] , \sigmtx[0][2][20] }), .po(\sigmtx[1][3][24] ), 
        .go(\sigmtx[0][3][24] ) );
  PG_3 PGi_3_32 ( .p({\sigmtx[1][2][32] , \sigmtx[1][2][28] }), .g({
        \sigmtx[0][2][32] , \sigmtx[0][2][28] }), .po(\sigmtx[1][3][32] ), 
        .go(\sigmtx[0][3][32] ) );
  GG_6 GGi_4_12 ( .p(\sigmtx[1][2][12] ), .g({n3, n6}), .go(Co[2]) );
  GG_5 GGi_4_16 ( .p(\sigmtx[1][3][16] ), .g({\sigmtx[0][3][16] , n8}), .go(n7) );
  PG_2 PGi_4_28 ( .p({\sigmtx[1][2][28] , \sigmtx[1][3][24] }), .g({
        \sigmtx[0][2][28] , \sigmtx[0][3][24] }), .po(\sigmtx[1][4][28] ), 
        .go(\sigmtx[0][4][28] ) );
  PG_1 PGi_4_32 ( .p({\sigmtx[1][3][32] , \sigmtx[1][3][24] }), .g({
        \sigmtx[0][3][32] , n4}), .po(\sigmtx[1][4][32] ), .go(
        \sigmtx[0][4][32] ) );
  GG_4 GGi_5_20 ( .p(\sigmtx[1][2][20] ), .g({\sigmtx[0][2][20] , n7}), .go(
        Co[4]) );
  GG_3 GGi_5_24 ( .p(\sigmtx[1][3][24] ), .g({n4, n7}), .go(Co[5]) );
  GG_2 GGi_5_28 ( .p(\sigmtx[1][4][28] ), .g({\sigmtx[0][4][28] , n7}), .go(
        Co[6]) );
  GG_1 GGi_5_32 ( .p(\sigmtx[1][4][32] ), .g({\sigmtx[0][4][32] , Co[3]}), 
        .go(Co[7]) );
  BUF_X1 U1 ( .A(n6), .Z(Co[1]) );
  BUF_X1 U2 ( .A(n7), .Z(Co[3]) );
  BUF_X1 U3 ( .A(n8), .Z(n6) );
  CLKBUF_X1 U4 ( .A(\sigmtx[0][2][12] ), .Z(n3) );
  CLKBUF_X1 U5 ( .A(\sigmtx[0][3][24] ), .Z(n4) );
  CLKBUF_X1 U6 ( .A(n9), .Z(Co[0]) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n2), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_61 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_62 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_63 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_0 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_63 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_62 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_61 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module mux21_generic_NBIT4_0 ( a, b, s, y );
  input [3:0] a;
  input [3:0] b;
  output [3:0] y;
  input s;
  wire   n5, n6, n7, n8, n9;

  INV_X1 U1 ( .A(n7), .ZN(y[2]) );
  AOI22_X1 U2 ( .A1(a[2]), .A2(s), .B1(b[2]), .B2(n5), .ZN(n7) );
  INV_X1 U3 ( .A(n8), .ZN(y[1]) );
  AOI22_X1 U4 ( .A1(a[1]), .A2(s), .B1(b[1]), .B2(n5), .ZN(n8) );
  INV_X1 U5 ( .A(n9), .ZN(y[0]) );
  AOI22_X1 U6 ( .A1(a[0]), .A2(s), .B1(b[0]), .B2(n5), .ZN(n9) );
  INV_X1 U7 ( .A(n6), .ZN(y[3]) );
  AOI22_X1 U8 ( .A1(s), .A2(a[3]), .B1(b[3]), .B2(n5), .ZN(n6) );
  INV_X1 U9 ( .A(s), .ZN(n5) );
endmodule


module FA_57 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_58 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_59 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_60 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_15 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_60 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_59 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_58 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_57 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module carry_select_block_NBIT_PER_BLOCK4_0 ( A, B, cin, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input cin;

  wire   [3:0] sum_mux21_0;
  wire   [3:0] sum_mux21_1;

  rca_generic_nbit4_0 rca_0 ( .A(A), .B(B), .Ci(1'b0), .S(sum_mux21_0) );
  rca_generic_nbit4_15 rca_1 ( .A(A), .B(B), .Ci(1'b1), .S(sum_mux21_1) );
  mux21_generic_NBIT4_0 mux ( .a(sum_mux21_1), .b(sum_mux21_0), .s(cin), .y(
        sum) );
endmodule


module FA_49 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_50 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module rca_generic_nbit4_13 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_52 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_51 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_50 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_49 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_53 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_54 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_55 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_56 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_14 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_56 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_55 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_54 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_53 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module mux21_generic_NBIT4_7 ( a, b, s, y );
  input [3:0] a;
  input [3:0] b;
  output [3:0] y;
  input s;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(n11), .ZN(y[1]) );
  INV_X1 U2 ( .A(n12), .ZN(y[2]) );
  INV_X1 U3 ( .A(n13), .ZN(y[3]) );
  INV_X1 U4 ( .A(n10), .ZN(y[0]) );
  AOI22_X1 U5 ( .A1(a[3]), .A2(s), .B1(b[3]), .B2(n14), .ZN(n13) );
  AOI22_X1 U6 ( .A1(a[2]), .A2(s), .B1(b[2]), .B2(n14), .ZN(n12) );
  AOI22_X1 U7 ( .A1(a[1]), .A2(s), .B1(b[1]), .B2(n14), .ZN(n11) );
  AOI22_X1 U8 ( .A1(a[0]), .A2(s), .B1(b[0]), .B2(n14), .ZN(n10) );
  INV_X1 U9 ( .A(s), .ZN(n14) );
endmodule


module carry_select_block_NBIT_PER_BLOCK4_7 ( A, B, cin, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input cin;

  wire   [3:0] sum_mux21_0;
  wire   [3:0] sum_mux21_1;

  rca_generic_nbit4_14 rca_0 ( .A(A), .B(B), .Ci(1'b0), .S(sum_mux21_0) );
  rca_generic_nbit4_13 rca_1 ( .A(A), .B(B), .Ci(1'b1), .S(sum_mux21_1) );
  mux21_generic_NBIT4_7 mux ( .a(sum_mux21_1), .b(sum_mux21_0), .s(cin), .y(
        sum) );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_1 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_4 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_3 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_2 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_1 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_2 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_8 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_7 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_6 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_5 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module mux21_generic_NBIT4_1 ( a, b, s, y );
  input [3:0] a;
  input [3:0] b;
  output [3:0] y;
  input s;


  MUX2_X1 U1 ( .A(b[0]), .B(a[0]), .S(s), .Z(y[0]) );
  MUX2_X1 U2 ( .A(b[1]), .B(a[1]), .S(s), .Z(y[1]) );
  MUX2_X1 U3 ( .A(b[2]), .B(a[2]), .S(s), .Z(y[2]) );
  MUX2_X1 U4 ( .A(b[3]), .B(a[3]), .S(s), .Z(y[3]) );
endmodule


module carry_select_block_NBIT_PER_BLOCK4_1 ( A, B, cin, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input cin;

  wire   [3:0] sum_mux21_0;
  wire   [3:0] sum_mux21_1;

  rca_generic_nbit4_2 rca_0 ( .A(A), .B(B), .Ci(1'b0), .S(sum_mux21_0) );
  rca_generic_nbit4_1 rca_1 ( .A(A), .B(B), .Ci(1'b1), .S(sum_mux21_1) );
  mux21_generic_NBIT4_1 mux ( .a(sum_mux21_1), .b(sum_mux21_0), .s(cin), .y(
        sum) );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_3 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_12 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_11 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_10 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_9 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_4 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_16 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_15 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_14 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_13 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module mux21_generic_NBIT4_2 ( a, b, s, y );
  input [3:0] a;
  input [3:0] b;
  output [3:0] y;
  input s;
  wire   net1675;
  assign y[0] = net1675;

  MUX2_X1 U1 ( .A(b[0]), .B(a[0]), .S(s), .Z(net1675) );
  MUX2_X1 U2 ( .A(b[3]), .B(a[3]), .S(s), .Z(y[3]) );
  MUX2_X1 U3 ( .A(b[1]), .B(a[1]), .S(s), .Z(y[1]) );
  MUX2_X1 U4 ( .A(b[2]), .B(a[2]), .S(s), .Z(y[2]) );
endmodule


module carry_select_block_NBIT_PER_BLOCK4_2 ( A, B, cin, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input cin;

  wire   [3:0] sum_mux21_0;
  wire   [3:0] sum_mux21_1;

  rca_generic_nbit4_4 rca_0 ( .A(A), .B(B), .Ci(1'b0), .S(sum_mux21_0) );
  rca_generic_nbit4_3 rca_1 ( .A(A), .B(B), .Ci(1'b1), .S(sum_mux21_1) );
  mux21_generic_NBIT4_2 mux ( .a(sum_mux21_1), .b(sum_mux21_0), .s(cin), .y(
        sum) );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_5 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_20 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_19 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_18 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_17 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_6 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_24 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_23 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_22 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_21 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module mux21_generic_NBIT4_3 ( a, b, s, y );
  input [3:0] a;
  input [3:0] b;
  output [3:0] y;
  input s;


  MUX2_X1 U1 ( .A(b[0]), .B(a[0]), .S(s), .Z(y[0]) );
  MUX2_X1 U2 ( .A(b[1]), .B(a[1]), .S(s), .Z(y[1]) );
  MUX2_X1 U3 ( .A(b[2]), .B(a[2]), .S(s), .Z(y[2]) );
  MUX2_X1 U4 ( .A(b[3]), .B(a[3]), .S(s), .Z(y[3]) );
endmodule


module carry_select_block_NBIT_PER_BLOCK4_3 ( A, B, cin, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input cin;

  wire   [3:0] sum_mux21_0;
  wire   [3:0] sum_mux21_1;

  rca_generic_nbit4_6 rca_0 ( .A(A), .B(B), .Ci(1'b0), .S(sum_mux21_0) );
  rca_generic_nbit4_5 rca_1 ( .A(A), .B(B), .Ci(1'b1), .S(sum_mux21_1) );
  mux21_generic_NBIT4_3 mux ( .a(sum_mux21_1), .b(sum_mux21_0), .s(cin), .y(
        sum) );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_7 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_28 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_27 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_26 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_25 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_29 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_30 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_31 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_32 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_8 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_32 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_31 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_30 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_29 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module mux21_generic_NBIT4_4 ( a, b, s, y );
  input [3:0] a;
  input [3:0] b;
  output [3:0] y;
  input s;


  MUX2_X1 U1 ( .A(b[0]), .B(a[0]), .S(s), .Z(y[0]) );
  MUX2_X1 U2 ( .A(b[1]), .B(a[1]), .S(s), .Z(y[1]) );
  MUX2_X1 U3 ( .A(b[2]), .B(a[2]), .S(s), .Z(y[2]) );
  MUX2_X1 U4 ( .A(b[3]), .B(a[3]), .S(s), .Z(y[3]) );
endmodule


module carry_select_block_NBIT_PER_BLOCK4_4 ( A, B, cin, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input cin;

  wire   [3:0] sum_mux21_0;
  wire   [3:0] sum_mux21_1;

  rca_generic_nbit4_8 rca_0 ( .A(A), .B(B), .Ci(1'b0), .S(sum_mux21_0) );
  rca_generic_nbit4_7 rca_1 ( .A(A), .B(B), .Ci(1'b1), .S(sum_mux21_1) );
  mux21_generic_NBIT4_4 mux ( .a(sum_mux21_1), .b(sum_mux21_0), .s(cin), .y(
        sum) );
endmodule


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_9 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_36 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_35 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_34 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_33 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_10 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_40 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_39 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_38 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_37 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module mux21_generic_NBIT4_5 ( a, b, s, y );
  input [3:0] a;
  input [3:0] b;
  output [3:0] y;
  input s;
  wire   n5, n7, n6, n10, n11, n12;

  INV_X1 U1 ( .A(b[2]), .ZN(n6) );
  INV_X1 U2 ( .A(a[2]), .ZN(n10) );
  MUX2_X1 U3 ( .A(b[3]), .B(a[3]), .S(s), .Z(y[3]) );
  MUX2_X1 U4 ( .A(n6), .B(n10), .S(s), .Z(n7) );
  INV_X1 U5 ( .A(n12), .ZN(y[1]) );
  INV_X1 U6 ( .A(n7), .ZN(y[2]) );
  INV_X1 U7 ( .A(n11), .ZN(y[0]) );
  INV_X1 U8 ( .A(s), .ZN(n5) );
  AOI22_X1 U9 ( .A1(s), .A2(a[1]), .B1(n5), .B2(b[1]), .ZN(n12) );
  AOI22_X1 U10 ( .A1(s), .A2(a[0]), .B1(n5), .B2(b[0]), .ZN(n11) );
endmodule


module carry_select_block_NBIT_PER_BLOCK4_5 ( A, B, cin, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input cin;

  wire   [3:0] sum_mux21_0;
  wire   [3:0] sum_mux21_1;

  rca_generic_nbit4_10 rca_0 ( .A(A), .B(B), .Ci(1'b0), .S(sum_mux21_0) );
  rca_generic_nbit4_9 rca_1 ( .A(A), .B(B), .Ci(1'b1), .S(sum_mux21_1) );
  mux21_generic_NBIT4_5 mux ( .a(sum_mux21_1), .b(sum_mux21_0), .s(cin), .y(
        sum) );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module rca_generic_nbit4_11 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_44 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_43 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_42 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_41 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_48 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module rca_generic_nbit4_12 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_48 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_47 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_46 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_45 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module mux21_generic_NBIT4_6 ( a, b, s, y );
  input [3:0] a;
  input [3:0] b;
  output [3:0] y;
  input s;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(n13), .ZN(y[3]) );
  INV_X1 U2 ( .A(n12), .ZN(y[2]) );
  INV_X1 U3 ( .A(n11), .ZN(y[1]) );
  INV_X1 U4 ( .A(n10), .ZN(y[0]) );
  AOI22_X1 U5 ( .A1(a[3]), .A2(s), .B1(b[3]), .B2(n14), .ZN(n13) );
  AOI22_X1 U6 ( .A1(a[2]), .A2(s), .B1(b[2]), .B2(n14), .ZN(n12) );
  AOI22_X1 U7 ( .A1(a[1]), .A2(s), .B1(b[1]), .B2(n14), .ZN(n11) );
  AOI22_X1 U8 ( .A1(a[0]), .A2(s), .B1(b[0]), .B2(n14), .ZN(n10) );
  INV_X1 U9 ( .A(s), .ZN(n14) );
endmodule


module carry_select_block_NBIT_PER_BLOCK4_6 ( A, B, cin, sum );
  input [3:0] A;
  input [3:0] B;
  output [3:0] sum;
  input cin;

  wire   [3:0] sum_mux21_0;
  wire   [3:0] sum_mux21_1;

  rca_generic_nbit4_12 rca_0 ( .A(A), .B(B), .Ci(1'b0), .S(sum_mux21_0) );
  rca_generic_nbit4_11 rca_1 ( .A(A), .B(B), .Ci(1'b1), .S(sum_mux21_1) );
  mux21_generic_NBIT4_6 mux ( .a(sum_mux21_1), .b(sum_mux21_0), .s(cin), .y(
        sum) );
endmodule


module sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 ( A, B, Ci, S );
  input [31:0] A;
  input [31:0] B;
  input [7:0] Ci;
  output [31:0] S;


  carry_select_block_NBIT_PER_BLOCK4_0 csb_0 ( .A(A[3:0]), .B(B[3:0]), .cin(
        Ci[0]), .sum(S[3:0]) );
  carry_select_block_NBIT_PER_BLOCK4_7 csb_1 ( .A(A[7:4]), .B(B[7:4]), .cin(
        Ci[1]), .sum(S[7:4]) );
  carry_select_block_NBIT_PER_BLOCK4_6 csb_2 ( .A(A[11:8]), .B(B[11:8]), .cin(
        Ci[2]), .sum(S[11:8]) );
  carry_select_block_NBIT_PER_BLOCK4_5 csb_3 ( .A(A[15:12]), .B(B[15:12]), 
        .cin(Ci[3]), .sum(S[15:12]) );
  carry_select_block_NBIT_PER_BLOCK4_4 csb_4 ( .A(A[19:16]), .B(B[19:16]), 
        .cin(Ci[4]), .sum(S[19:16]) );
  carry_select_block_NBIT_PER_BLOCK4_3 csb_5 ( .A(A[23:20]), .B(B[23:20]), 
        .cin(Ci[5]), .sum(S[23:20]) );
  carry_select_block_NBIT_PER_BLOCK4_2 csb_6 ( .A(A[27:24]), .B(B[27:24]), 
        .cin(Ci[6]), .sum(S[27:24]) );
  carry_select_block_NBIT_PER_BLOCK4_1 csb_7 ( .A(A[31:28]), .B(B[31:28]), 
        .cin(Ci[7]), .sum(S[31:28]) );
endmodule


module P4_ADDER_NBIT32 ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [7:1] carry_sum;

  CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 CARRYGEN ( .A(A), .B(B), .Cin(1'b0), 
        .Co({Cout, carry_sum}) );
  sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 SUMGEM ( .A({A[31:16], n7, A[14], n1, 
        A[12:10], n2, A[8], n4, A[6], n3, A[4:0]}), .B({B[31:16], n6, B[14:8], 
        n5, B[6:0]}), .Ci({carry_sum, 1'b0}), .S(S) );
  BUF_X1 U2 ( .A(A[9]), .Z(n2) );
  BUF_X1 U3 ( .A(A[5]), .Z(n3) );
  BUF_X1 U4 ( .A(A[13]), .Z(n1) );
  BUF_X1 U5 ( .A(A[7]), .Z(n4) );
  BUF_X1 U6 ( .A(B[7]), .Z(n5) );
  BUF_X1 U7 ( .A(B[15]), .Z(n6) );
  BUF_X1 U8 ( .A(A[15]), .Z(n7) );
endmodule

