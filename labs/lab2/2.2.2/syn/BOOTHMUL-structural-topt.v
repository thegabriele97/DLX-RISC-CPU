
module encoder_0 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   net15442, net15444, net20227, net20226, n2;
  assign vp[2] = net15442;
  assign vp[0] = net15444;

  NOR2_X2 U1 ( .A1(net20226), .A2(n2), .ZN(vp[1]) );
  BUF_X1 U2 ( .A(b[2]), .Z(net15442) );
  XNOR2_X1 U3 ( .A(b[1]), .B(net20227), .ZN(net20226) );
  INV_X1 U4 ( .A(b[0]), .ZN(net20227) );
  XNOR2_X1 U5 ( .A(net20227), .B(b[1]), .ZN(net15444) );
  XNOR2_X1 U6 ( .A(b[2]), .B(b[0]), .ZN(n2) );
endmodule


module mux_NBIT17 ( A, B, C, S, Y );
  input [16:0] A;
  input [16:0] B;
  input [16:0] C;
  input [1:0] S;
  output [16:0] Y;
  wire   n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, net15048, net15462, net19846, net19876, net19881,
         net19882, net19892, net20054, net20055, net20093, net20126, net20118,
         net20120, net20119, net20101, net23689, net20123, net20134, net20100,
         n112, n113, n114, n115;
  assign Y[0] = net15048;
  assign net19846 = S[0];
  assign Y[1] = net23689;

  INV_X1 U1 ( .A(net20119), .ZN(n20) );
  NAND2_X1 U2 ( .A1(net20120), .A2(n113), .ZN(net20119) );
  INV_X1 U3 ( .A(net19892), .ZN(net20120) );
  CLKBUF_X1 U4 ( .A(net20134), .Z(net19892) );
  AND2_X1 U5 ( .A1(net19892), .A2(C[0]), .ZN(n112) );
  AOI21_X1 U6 ( .B1(n114), .B2(B[0]), .A(n112), .ZN(net20100) );
  NAND2_X1 U7 ( .A1(net20100), .A2(net20101), .ZN(net15048) );
  CLKBUF_X1 U8 ( .A(S[1]), .Z(net20134) );
  BUF_X2 U9 ( .A(net20134), .Z(net20093) );
  NOR2_X1 U10 ( .A1(S[1]), .A2(n113), .ZN(n114) );
  AOI21_X1 U11 ( .B1(n114), .B2(B[1]), .A(n115), .ZN(net20123) );
  INV_X1 U12 ( .A(net19846), .ZN(n113) );
  OR2_X1 U13 ( .A1(S[1]), .A2(n113), .ZN(net20118) );
  AND2_X1 U14 ( .A1(S[1]), .A2(C[1]), .ZN(n115) );
  NAND2_X1 U15 ( .A1(net20126), .A2(net20123), .ZN(net23689) );
  NAND2_X1 U16 ( .A1(A[1]), .A2(n20), .ZN(net20126) );
  NAND2_X1 U17 ( .A1(n20), .A2(A[0]), .ZN(net20101) );
  INV_X1 U18 ( .A(net20118), .ZN(net20055) );
  CLKBUF_X1 U19 ( .A(net20054), .Z(n21) );
  CLKBUF_X1 U20 ( .A(net20055), .Z(net20054) );
  CLKBUF_X1 U21 ( .A(net20093), .Z(net19881) );
  CLKBUF_X1 U22 ( .A(net20093), .Z(net19876) );
  CLKBUF_X1 U23 ( .A(net20093), .Z(net19882) );
  CLKBUF_X1 U24 ( .A(n21), .Z(net15462) );
  INV_X1 U25 ( .A(n22), .ZN(Y[15]) );
  INV_X1 U26 ( .A(n23), .ZN(Y[14]) );
  INV_X1 U27 ( .A(n24), .ZN(Y[13]) );
  INV_X1 U28 ( .A(n25), .ZN(Y[12]) );
  INV_X1 U29 ( .A(n26), .ZN(Y[11]) );
  INV_X1 U30 ( .A(n27), .ZN(Y[10]) );
  INV_X1 U31 ( .A(n28), .ZN(Y[9]) );
  INV_X1 U32 ( .A(n29), .ZN(Y[8]) );
  INV_X1 U33 ( .A(n30), .ZN(Y[7]) );
  INV_X1 U34 ( .A(n31), .ZN(Y[6]) );
  INV_X1 U35 ( .A(n32), .ZN(Y[5]) );
  INV_X1 U36 ( .A(n33), .ZN(Y[4]) );
  INV_X1 U37 ( .A(n34), .ZN(Y[3]) );
  INV_X1 U38 ( .A(n35), .ZN(Y[2]) );
  INV_X1 U39 ( .A(n19), .ZN(Y[16]) );
  AOI222_X1 U40 ( .A1(net19882), .A2(C[16]), .B1(A[16]), .B2(n20), .C1(B[16]), 
        .C2(net15462), .ZN(n19) );
  AOI222_X1 U41 ( .A1(C[15]), .A2(net20093), .B1(A[15]), .B2(n20), .C1(B[15]), 
        .C2(net15462), .ZN(n22) );
  AOI222_X1 U42 ( .A1(C[14]), .A2(net20093), .B1(A[14]), .B2(n20), .C1(B[14]), 
        .C2(net15462), .ZN(n23) );
  AOI222_X1 U43 ( .A1(C[13]), .A2(net19892), .B1(A[13]), .B2(n20), .C1(B[13]), 
        .C2(net15462), .ZN(n24) );
  AOI222_X1 U44 ( .A1(C[12]), .A2(net20093), .B1(A[12]), .B2(n20), .C1(B[12]), 
        .C2(net15462), .ZN(n25) );
  AOI222_X1 U45 ( .A1(C[11]), .A2(net19892), .B1(A[11]), .B2(n20), .C1(B[11]), 
        .C2(n21), .ZN(n26) );
  AOI222_X1 U46 ( .A1(C[10]), .A2(net20093), .B1(A[10]), .B2(n20), .C1(B[10]), 
        .C2(n21), .ZN(n27) );
  AOI222_X1 U47 ( .A1(C[9]), .A2(net19882), .B1(A[9]), .B2(n20), .C1(B[9]), 
        .C2(n21), .ZN(n28) );
  AOI222_X1 U48 ( .A1(C[8]), .A2(net20093), .B1(A[8]), .B2(n20), .C1(B[8]), 
        .C2(n21), .ZN(n29) );
  AOI222_X1 U49 ( .A1(C[7]), .A2(net19892), .B1(A[7]), .B2(n20), .C1(B[7]), 
        .C2(n21), .ZN(n30) );
  AOI222_X1 U50 ( .A1(C[6]), .A2(net19876), .B1(A[6]), .B2(n20), .C1(B[6]), 
        .C2(n21), .ZN(n31) );
  AOI222_X1 U51 ( .A1(C[5]), .A2(net19892), .B1(A[5]), .B2(n20), .C1(B[5]), 
        .C2(n21), .ZN(n32) );
  AOI222_X1 U52 ( .A1(C[4]), .A2(net19881), .B1(A[4]), .B2(n20), .C1(B[4]), 
        .C2(net20054), .ZN(n33) );
  AOI222_X1 U53 ( .A1(C[3]), .A2(net20093), .B1(A[3]), .B2(n20), .C1(B[3]), 
        .C2(net20054), .ZN(n34) );
  AOI222_X1 U54 ( .A1(C[2]), .A2(net20093), .B1(A[2]), .B2(n20), .C1(B[2]), 
        .C2(net20055), .ZN(n35) );
endmodule


module adder_NBIT17_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   net15769, net15768, net20002, net20014, net23643, net23639, net26379,
         net23682, net23634, net23633, net23629, net15958, net15920, net23750,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47;
  wire   [18:0] carry;
  wire   [17:0] B_AS;
  assign carry[0] = ADD_SUB;

  FA_X1 U1_17 ( .A(A[17]), .B(B_AS[17]), .CI(carry[17]), .S(SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B_AS[17]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B_AS[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B_AS[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B_AS[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B_AS[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B_AS[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_8 ( .A(A[8]), .B(B_AS[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XOR2_X1 U1 ( .A(B[9]), .B(carry[0]), .Z(B_AS[9]) );
  XOR2_X1 U2 ( .A(B[8]), .B(carry[0]), .Z(B_AS[8]) );
  XOR2_X1 U3 ( .A(B[7]), .B(carry[0]), .Z(B_AS[7]) );
  XOR2_X1 U4 ( .A(B[6]), .B(carry[0]), .Z(B_AS[6]) );
  XOR2_X1 U5 ( .A(B[5]), .B(carry[0]), .Z(B_AS[5]) );
  XOR2_X1 U6 ( .A(B[4]), .B(carry[0]), .Z(B_AS[4]) );
  XOR2_X1 U7 ( .A(B[3]), .B(carry[0]), .Z(B_AS[3]) );
  XOR2_X1 U8 ( .A(B[2]), .B(carry[0]), .Z(B_AS[2]) );
  XOR2_X1 U10 ( .A(carry[0]), .B(B[17]), .Z(B_AS[17]) );
  XOR2_X1 U11 ( .A(B[15]), .B(carry[0]), .Z(B_AS[15]) );
  XOR2_X1 U12 ( .A(B[14]), .B(carry[0]), .Z(B_AS[14]) );
  XOR2_X1 U13 ( .A(B[13]), .B(carry[0]), .Z(B_AS[13]) );
  XOR2_X1 U14 ( .A(B[12]), .B(carry[0]), .Z(B_AS[12]) );
  XOR2_X1 U15 ( .A(B[11]), .B(carry[0]), .Z(B_AS[11]) );
  XOR2_X1 U16 ( .A(B[10]), .B(carry[0]), .Z(B_AS[10]) );
  CLKBUF_X1 U9 ( .A(net20002), .Z(n1) );
  NAND2_X1 U17 ( .A1(A[0]), .A2(net23639), .ZN(n38) );
  INV_X1 U18 ( .A(A[1]), .ZN(net15920) );
  INV_X1 U19 ( .A(A[2]), .ZN(n36) );
  INV_X1 U20 ( .A(A[0]), .ZN(net23750) );
  CLKBUF_X1 U21 ( .A(n39), .Z(n2) );
  NAND3_X1 U22 ( .A1(n26), .A2(n27), .A3(n28), .ZN(n3) );
  CLKBUF_X1 U23 ( .A(n6), .Z(n4) );
  CLKBUF_X1 U24 ( .A(n40), .Z(n5) );
  XNOR2_X1 U25 ( .A(B[0]), .B(net23750), .ZN(SUM[0]) );
  INV_X1 U26 ( .A(B[0]), .ZN(net23629) );
  NAND3_X1 U27 ( .A1(n41), .A2(n42), .A3(n43), .ZN(n6) );
  NAND3_X1 U28 ( .A1(n47), .A2(net15768), .A3(net15769), .ZN(n7) );
  XOR2_X1 U29 ( .A(n13), .B(net15920), .Z(net15958) );
  BUF_X1 U30 ( .A(B_AS[2]), .Z(n40) );
  XNOR2_X1 U31 ( .A(n24), .B(n8), .ZN(SUM[5]) );
  XNOR2_X1 U32 ( .A(B_AS[5]), .B(A[5]), .ZN(n8) );
  XOR2_X1 U33 ( .A(B_AS[7]), .B(A[7]), .Z(n9) );
  XOR2_X1 U34 ( .A(n3), .B(n9), .Z(SUM[7]) );
  NAND2_X1 U35 ( .A1(carry[7]), .A2(B_AS[7]), .ZN(n10) );
  NAND2_X1 U36 ( .A1(n3), .A2(A[7]), .ZN(n11) );
  NAND2_X1 U37 ( .A1(B_AS[7]), .A2(A[7]), .ZN(n12) );
  NAND3_X1 U38 ( .A1(n10), .A2(n11), .A3(n12), .ZN(carry[8]) );
  XOR2_X1 U39 ( .A(B[1]), .B(carry[0]), .Z(n13) );
  CLKBUF_X1 U40 ( .A(n13), .Z(net20002) );
  XNOR2_X1 U41 ( .A(n6), .B(n14), .ZN(SUM[4]) );
  XNOR2_X1 U42 ( .A(B_AS[4]), .B(A[4]), .ZN(n14) );
  XOR2_X1 U43 ( .A(B_AS[9]), .B(A[9]), .Z(n15) );
  XOR2_X1 U44 ( .A(carry[9]), .B(n15), .Z(SUM[9]) );
  NAND2_X1 U45 ( .A1(carry[9]), .A2(B_AS[9]), .ZN(n16) );
  NAND2_X1 U46 ( .A1(carry[9]), .A2(A[9]), .ZN(n17) );
  NAND2_X1 U47 ( .A1(B_AS[9]), .A2(A[9]), .ZN(n18) );
  NAND3_X1 U48 ( .A1(n16), .A2(n17), .A3(n18), .ZN(carry[10]) );
  XOR2_X1 U49 ( .A(B_AS[10]), .B(A[10]), .Z(n19) );
  XOR2_X1 U50 ( .A(carry[10]), .B(n19), .Z(SUM[10]) );
  NAND2_X1 U51 ( .A1(carry[10]), .A2(B_AS[10]), .ZN(n20) );
  NAND2_X1 U52 ( .A1(carry[10]), .A2(A[10]), .ZN(n21) );
  NAND2_X1 U53 ( .A1(B_AS[10]), .A2(A[10]), .ZN(n22) );
  NAND3_X1 U54 ( .A1(n20), .A2(n21), .A3(n22), .ZN(carry[11]) );
  XNOR2_X1 U55 ( .A(net15958), .B(net23634), .ZN(SUM[1]) );
  OAI21_X1 U56 ( .B1(net23633), .B2(net23750), .A(n23), .ZN(net23634) );
  OAI21_X1 U57 ( .B1(net23629), .B2(A[0]), .A(carry[0]), .ZN(n23) );
  CLKBUF_X1 U58 ( .A(net23629), .Z(net26379) );
  OAI21_X1 U59 ( .B1(net23629), .B2(A[0]), .A(carry[0]), .ZN(net23643) );
  XNOR2_X1 U60 ( .A(carry[0]), .B(net23682), .ZN(net23633) );
  INV_X1 U61 ( .A(net23633), .ZN(net23639) );
  INV_X1 U62 ( .A(net26379), .ZN(net23682) );
  NAND2_X1 U63 ( .A1(n1), .A2(A[1]), .ZN(net15769) );
  NAND2_X1 U64 ( .A1(net20014), .A2(A[1]), .ZN(net15768) );
  NAND3_X1 U65 ( .A1(n33), .A2(n32), .A3(n34), .ZN(n24) );
  XOR2_X1 U66 ( .A(B_AS[6]), .B(A[6]), .Z(n25) );
  XOR2_X1 U67 ( .A(carry[6]), .B(n25), .Z(SUM[6]) );
  NAND2_X1 U68 ( .A1(carry[6]), .A2(B_AS[6]), .ZN(n26) );
  NAND2_X1 U69 ( .A1(carry[6]), .A2(A[6]), .ZN(n27) );
  NAND2_X1 U70 ( .A1(B_AS[6]), .A2(A[6]), .ZN(n28) );
  NAND3_X1 U71 ( .A1(n26), .A2(n27), .A3(n28), .ZN(carry[7]) );
  NAND2_X1 U72 ( .A1(carry[5]), .A2(B_AS[5]), .ZN(n29) );
  NAND2_X1 U73 ( .A1(n24), .A2(A[5]), .ZN(n30) );
  NAND2_X1 U74 ( .A1(B_AS[5]), .A2(A[5]), .ZN(n31) );
  NAND3_X1 U75 ( .A1(n29), .A2(n30), .A3(n31), .ZN(carry[6]) );
  NAND2_X1 U76 ( .A1(carry[4]), .A2(B_AS[4]), .ZN(n32) );
  NAND2_X1 U77 ( .A1(n4), .A2(A[4]), .ZN(n33) );
  NAND2_X1 U78 ( .A1(B_AS[4]), .A2(A[4]), .ZN(n34) );
  NAND3_X1 U79 ( .A1(n32), .A2(n33), .A3(n34), .ZN(carry[5]) );
  NAND2_X1 U80 ( .A1(n38), .A2(net23643), .ZN(net20014) );
  XNOR2_X1 U81 ( .A(n39), .B(n35), .ZN(SUM[3]) );
  XNOR2_X1 U82 ( .A(B_AS[3]), .B(A[3]), .ZN(n35) );
  XNOR2_X1 U83 ( .A(n7), .B(n37), .ZN(SUM[2]) );
  XOR2_X1 U84 ( .A(B_AS[2]), .B(n36), .Z(n37) );
  NAND3_X1 U85 ( .A1(n44), .A2(n45), .A3(n46), .ZN(n39) );
  NAND2_X1 U86 ( .A1(carry[3]), .A2(B_AS[3]), .ZN(n41) );
  NAND2_X1 U87 ( .A1(n2), .A2(A[3]), .ZN(n42) );
  NAND2_X1 U88 ( .A1(B_AS[3]), .A2(A[3]), .ZN(n43) );
  NAND3_X1 U89 ( .A1(n41), .A2(n42), .A3(n43), .ZN(carry[4]) );
  NAND2_X1 U90 ( .A1(n40), .A2(carry[2]), .ZN(n44) );
  NAND2_X1 U91 ( .A1(n7), .A2(A[2]), .ZN(n45) );
  NAND2_X1 U92 ( .A1(n5), .A2(A[2]), .ZN(n46) );
  NAND3_X1 U93 ( .A1(n44), .A2(n45), .A3(n46), .ZN(carry[3]) );
  NAND2_X1 U94 ( .A1(net20014), .A2(net20002), .ZN(n47) );
  NAND3_X1 U95 ( .A1(n47), .A2(net15768), .A3(net15769), .ZN(carry[2]) );
endmodule


module adder_NBIT17 ( A, B, SUB_SUMn, S );
  input [16:0] A;
  input [16:0] B;
  output [17:0] S;
  input SUB_SUMn;
  wire   N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, \U1/U1/Z_0 ;
  assign S[0] = N39;
  assign S[1] = N40;
  assign S[2] = N41;
  assign S[3] = N42;
  assign S[4] = N43;
  assign S[5] = N44;
  assign S[6] = N45;
  assign S[7] = N46;
  assign S[8] = N47;
  assign S[9] = N48;
  assign S[10] = N49;
  assign S[11] = N50;
  assign S[12] = N51;
  assign S[13] = N52;
  assign S[14] = N53;
  assign S[15] = N54;
  assign S[16] = N55;
  assign S[17] = N56;
  assign \U1/U1/Z_0  = SUB_SUMn;

  adder_NBIT17_DW01_addsub_0 r56 ( .A({A[16], A}), .B({B[16], B}), .CI(1'b0), 
        .ADD_SUB(\U1/U1/Z_0 ), .SUM({N56, N55, N54, N53, N52, N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40, N39}) );
endmodule


module encoder_7 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n2, n3;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];

  AND2_X1 U1 ( .A1(n2), .A2(n3), .ZN(vp[1]) );
  XNOR2_X1 U2 ( .A(b[0]), .B(b[1]), .ZN(n2) );
  XOR2_X1 U3 ( .A(b[0]), .B(\b[2] ), .Z(n3) );
  XOR2_X1 U4 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
endmodule


module mux_NBIT19 ( A, B, C, S, Y );
  input [18:0] A;
  input [18:0] B;
  input [18:0] C;
  input [1:0] S;
  output [18:0] Y;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n124, n125, n126, n127, n128, n148
;

  INV_X1 U1 ( .A(n22), .ZN(n124) );
  INV_X1 U2 ( .A(n124), .ZN(n125) );
  BUF_X1 U3 ( .A(n126), .Z(n128) );
  CLKBUF_X1 U4 ( .A(S[1]), .Z(n126) );
  NOR2_X1 U5 ( .A1(S[0]), .A2(n128), .ZN(n22) );
  BUF_X1 U6 ( .A(n126), .Z(n127) );
  NOR2_X4 U7 ( .A1(S[1]), .A2(n148), .ZN(n23) );
  INV_X1 U8 ( .A(S[0]), .ZN(n148) );
  INV_X1 U9 ( .A(n21), .ZN(Y[18]) );
  AOI222_X1 U10 ( .A1(n128), .A2(C[18]), .B1(A[18]), .B2(n125), .C1(B[18]), 
        .C2(n23), .ZN(n21) );
  INV_X1 U11 ( .A(n24), .ZN(Y[17]) );
  AOI222_X1 U12 ( .A1(C[17]), .A2(n128), .B1(A[17]), .B2(n125), .C1(B[17]), 
        .C2(n23), .ZN(n24) );
  INV_X1 U13 ( .A(n25), .ZN(Y[16]) );
  AOI222_X1 U14 ( .A1(C[16]), .A2(n128), .B1(A[16]), .B2(n125), .C1(B[16]), 
        .C2(n23), .ZN(n25) );
  INV_X1 U15 ( .A(n26), .ZN(Y[15]) );
  AOI222_X1 U16 ( .A1(C[15]), .A2(n127), .B1(A[15]), .B2(n125), .C1(B[15]), 
        .C2(n23), .ZN(n26) );
  INV_X1 U17 ( .A(n27), .ZN(Y[14]) );
  AOI222_X1 U18 ( .A1(C[14]), .A2(n128), .B1(A[14]), .B2(n125), .C1(B[14]), 
        .C2(n23), .ZN(n27) );
  INV_X1 U19 ( .A(n41), .ZN(Y[0]) );
  AOI222_X1 U20 ( .A1(C[0]), .A2(n127), .B1(A[0]), .B2(n125), .C1(B[0]), .C2(
        n23), .ZN(n41) );
  INV_X1 U21 ( .A(n39), .ZN(Y[2]) );
  AOI222_X1 U22 ( .A1(C[2]), .A2(n128), .B1(A[2]), .B2(n22), .C1(B[2]), .C2(
        n23), .ZN(n39) );
  INV_X1 U23 ( .A(n40), .ZN(Y[1]) );
  AOI222_X1 U24 ( .A1(C[1]), .A2(n127), .B1(A[1]), .B2(n125), .C1(B[1]), .C2(
        n23), .ZN(n40) );
  INV_X1 U25 ( .A(n38), .ZN(Y[3]) );
  AOI222_X1 U26 ( .A1(C[3]), .A2(n128), .B1(A[3]), .B2(n125), .C1(B[3]), .C2(
        n23), .ZN(n38) );
  INV_X1 U27 ( .A(n37), .ZN(Y[4]) );
  AOI222_X1 U28 ( .A1(C[4]), .A2(n128), .B1(A[4]), .B2(n125), .C1(B[4]), .C2(
        n23), .ZN(n37) );
  INV_X1 U29 ( .A(n36), .ZN(Y[5]) );
  AOI222_X1 U30 ( .A1(C[5]), .A2(n127), .B1(A[5]), .B2(n125), .C1(B[5]), .C2(
        n23), .ZN(n36) );
  INV_X1 U31 ( .A(n35), .ZN(Y[6]) );
  AOI222_X1 U32 ( .A1(C[6]), .A2(n128), .B1(A[6]), .B2(n125), .C1(B[6]), .C2(
        n23), .ZN(n35) );
  INV_X1 U33 ( .A(n34), .ZN(Y[7]) );
  AOI222_X1 U34 ( .A1(C[7]), .A2(n127), .B1(A[7]), .B2(n125), .C1(B[7]), .C2(
        n23), .ZN(n34) );
  INV_X1 U35 ( .A(n33), .ZN(Y[8]) );
  AOI222_X1 U36 ( .A1(C[8]), .A2(n128), .B1(A[8]), .B2(n125), .C1(B[8]), .C2(
        n23), .ZN(n33) );
  INV_X1 U37 ( .A(n32), .ZN(Y[9]) );
  AOI222_X1 U38 ( .A1(C[9]), .A2(n127), .B1(A[9]), .B2(n125), .C1(B[9]), .C2(
        n23), .ZN(n32) );
  INV_X1 U39 ( .A(n31), .ZN(Y[10]) );
  AOI222_X1 U40 ( .A1(C[10]), .A2(n128), .B1(A[10]), .B2(n125), .C1(B[10]), 
        .C2(n23), .ZN(n31) );
  INV_X1 U41 ( .A(n30), .ZN(Y[11]) );
  AOI222_X1 U42 ( .A1(C[11]), .A2(n127), .B1(A[11]), .B2(n125), .C1(B[11]), 
        .C2(n23), .ZN(n30) );
  INV_X1 U43 ( .A(n29), .ZN(Y[12]) );
  AOI222_X1 U44 ( .A1(C[12]), .A2(n128), .B1(A[12]), .B2(n125), .C1(B[12]), 
        .C2(n23), .ZN(n29) );
  INV_X1 U45 ( .A(n28), .ZN(Y[13]) );
  AOI222_X1 U46 ( .A1(C[13]), .A2(n127), .B1(A[13]), .B2(n125), .C1(B[13]), 
        .C2(n23), .ZN(n28) );
endmodule


module adder_NBIT19_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   net15966, net16095, net16094, \carry[9] , \carry[8] , \carry[7] ,
         \carry[6] , \carry[5] , \carry[4] , \B_AS[8] , \B_AS[7] , \B_AS[6] ,
         \B_AS[5] , \B_AS[4] , \B_AS[3] , net29349, net29347, net29340,
         net29339, net29338, net29328, net29322, net29352, net29326, net29320,
         net29385, net29335, net29306, net29305, net29302, net29354, net29331,
         net29327, net29323, net29332, net29324, net29301, net29300, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33;
  wire   [20:0] carry;
  wire   [19:0] B_AS;
  assign carry[0] = ADD_SUB;

  FA_X1 U1_18 ( .A(A[18]), .B(B_AS[19]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B_AS[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B_AS[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B_AS[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B_AS[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B_AS[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B_AS[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR2_X1 U11 ( .A(B[17]), .B(carry[0]), .Z(B_AS[17]) );
  XOR2_X1 U12 ( .A(B[16]), .B(carry[0]), .Z(B_AS[16]) );
  XOR2_X1 U13 ( .A(B[15]), .B(carry[0]), .Z(B_AS[15]) );
  XOR2_X1 U14 ( .A(B[14]), .B(carry[0]), .Z(B_AS[14]) );
  XOR2_X1 U15 ( .A(B[13]), .B(carry[0]), .Z(B_AS[13]) );
  XOR2_X1 U16 ( .A(B[12]), .B(carry[0]), .Z(B_AS[12]) );
  XOR2_X1 U17 ( .A(B[11]), .B(carry[0]), .Z(B_AS[11]) );
  XOR2_X1 U18 ( .A(B[10]), .B(carry[0]), .Z(B_AS[10]) );
  XOR2_X1 U2 ( .A(B[8]), .B(carry[0]), .Z(\B_AS[8] ) );
  XOR2_X1 U3 ( .A(B[7]), .B(carry[0]), .Z(\B_AS[7] ) );
  XOR2_X1 U4 ( .A(B[6]), .B(carry[0]), .Z(\B_AS[6] ) );
  XOR2_X1 U5 ( .A(B[5]), .B(carry[0]), .Z(\B_AS[5] ) );
  XOR2_X1 U6 ( .A(B[4]), .B(carry[0]), .Z(\B_AS[4] ) );
  XOR2_X1 U7 ( .A(B[3]), .B(carry[0]), .Z(\B_AS[3] ) );
  FA_X1 U1_4 ( .A(A[4]), .B(\B_AS[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  FA_X1 U1_6 ( .A(A[6]), .B(\B_AS[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  FA_X1 U1_8 ( .A(A[8]), .B(\B_AS[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  XNOR2_X1 U1 ( .A(net29324), .B(net29320), .ZN(net29328) );
  XNOR2_X1 U8 ( .A(carry[0]), .B(B[1]), .ZN(net29323) );
  XNOR2_X1 U9 ( .A(carry[0]), .B(B[0]), .ZN(net29324) );
  INV_X1 U10 ( .A(net29323), .ZN(net29331) );
  XOR2_X1 U19 ( .A(carry[19]), .B(n33), .Z(SUM[19]) );
  CLKBUF_X1 U20 ( .A(\carry[9] ), .Z(n1) );
  INV_X1 U21 ( .A(B_AS[9]), .ZN(net16094) );
  XOR2_X1 U22 ( .A(B[9]), .B(carry[0]), .Z(B_AS[9]) );
  INV_X1 U23 ( .A(B_AS[16]), .ZN(n6) );
  CLKBUF_X1 U24 ( .A(\carry[7] ), .Z(n2) );
  NAND2_X1 U25 ( .A1(n3), .A2(net29301), .ZN(net29300) );
  NAND2_X1 U26 ( .A1(net29300), .A2(net29331), .ZN(net29305) );
  XNOR2_X1 U27 ( .A(net29300), .B(net29331), .ZN(net29327) );
  OAI21_X1 U28 ( .B1(carry[0]), .B2(A[0]), .A(net29332), .ZN(n3) );
  INV_X1 U29 ( .A(net29324), .ZN(net29332) );
  OAI21_X1 U30 ( .B1(carry[0]), .B2(A[0]), .A(net29332), .ZN(net29302) );
  NAND2_X1 U31 ( .A1(A[0]), .A2(carry[0]), .ZN(net29301) );
  AND2_X1 U32 ( .A1(net29301), .A2(net29323), .ZN(net29385) );
  BUF_X1 U33 ( .A(A[0]), .Z(net29347) );
  XNOR2_X1 U34 ( .A(net29327), .B(net29354), .ZN(SUM[1]) );
  BUF_X1 U35 ( .A(A[1]), .Z(net29354) );
  NAND2_X1 U36 ( .A1(A[1]), .A2(net29335), .ZN(net29306) );
  CLKBUF_X1 U37 ( .A(A[3]), .Z(n4) );
  XNOR2_X1 U38 ( .A(n2), .B(n5), .ZN(SUM[7]) );
  XNOR2_X1 U39 ( .A(A[7]), .B(\B_AS[7] ), .ZN(n5) );
  XNOR2_X1 U40 ( .A(carry[16]), .B(n7), .ZN(SUM[16]) );
  XOR2_X1 U41 ( .A(A[16]), .B(n6), .Z(n7) );
  NAND2_X1 U42 ( .A1(\carry[7] ), .A2(A[7]), .ZN(n8) );
  NAND2_X1 U43 ( .A1(\carry[7] ), .A2(\B_AS[7] ), .ZN(n9) );
  NAND2_X1 U44 ( .A1(A[7]), .A2(\B_AS[7] ), .ZN(n10) );
  NAND3_X1 U45 ( .A1(n9), .A2(n8), .A3(n10), .ZN(\carry[8] ) );
  NAND2_X1 U46 ( .A1(net29306), .A2(net29305), .ZN(n11) );
  NAND2_X1 U47 ( .A1(n11), .A2(net29352), .ZN(net29340) );
  XNOR2_X1 U48 ( .A(n11), .B(net29352), .ZN(net29326) );
  AND2_X1 U49 ( .A1(net29306), .A2(net29305), .ZN(net29349) );
  NAND2_X1 U50 ( .A1(net29385), .A2(net29302), .ZN(net29335) );
  XNOR2_X1 U51 ( .A(net29326), .B(A[2]), .ZN(SUM[2]) );
  XNOR2_X1 U52 ( .A(B[2]), .B(net29320), .ZN(net29352) );
  INV_X1 U53 ( .A(carry[0]), .ZN(net29320) );
  XNOR2_X1 U54 ( .A(B[2]), .B(carry[0]), .ZN(net29322) );
  NAND2_X1 U55 ( .A1(net29338), .A2(A[2]), .ZN(net29339) );
  NAND2_X1 U56 ( .A1(n18), .A2(\B_AS[3] ), .ZN(n15) );
  XNOR2_X1 U57 ( .A(n20), .B(n12), .ZN(SUM[5]) );
  XNOR2_X1 U58 ( .A(A[5]), .B(\B_AS[5] ), .ZN(n12) );
  NAND3_X1 U59 ( .A1(n15), .A2(n13), .A3(n14), .ZN(\carry[4] ) );
  XNOR2_X1 U60 ( .A(net29347), .B(net29328), .ZN(SUM[0]) );
  XNOR2_X1 U61 ( .A(n17), .B(\B_AS[3] ), .ZN(n16) );
  XNOR2_X1 U62 ( .A(n16), .B(n4), .ZN(SUM[3]) );
  NAND2_X1 U63 ( .A1(net29349), .A2(net29322), .ZN(net29338) );
  NAND2_X1 U64 ( .A1(net29339), .A2(net29340), .ZN(n17) );
  NAND2_X1 U65 ( .A1(net29339), .A2(net29340), .ZN(n18) );
  NAND2_X1 U66 ( .A1(n18), .A2(A[3]), .ZN(n13) );
  NAND2_X1 U67 ( .A1(A[3]), .A2(\B_AS[3] ), .ZN(n14) );
  NAND2_X1 U68 ( .A1(B_AS[9]), .A2(\carry[9] ), .ZN(n19) );
  XNOR2_X1 U69 ( .A(A[10]), .B(B_AS[10]), .ZN(n25) );
  CLKBUF_X1 U70 ( .A(\carry[5] ), .Z(n20) );
  NAND3_X1 U71 ( .A1(n19), .A2(net15966), .A3(n26), .ZN(n21) );
  NAND2_X1 U72 ( .A1(\carry[5] ), .A2(A[5]), .ZN(n22) );
  NAND2_X1 U73 ( .A1(\carry[5] ), .A2(\B_AS[5] ), .ZN(n23) );
  NAND2_X1 U74 ( .A1(A[5]), .A2(\B_AS[5] ), .ZN(n24) );
  NAND3_X1 U75 ( .A1(n22), .A2(n23), .A3(n24), .ZN(\carry[6] ) );
  XNOR2_X1 U76 ( .A(n25), .B(n21), .ZN(SUM[10]) );
  XNOR2_X1 U77 ( .A(net16095), .B(n1), .ZN(SUM[9]) );
  NAND2_X1 U78 ( .A1(\carry[9] ), .A2(A[9]), .ZN(net15966) );
  XOR2_X1 U79 ( .A(A[9]), .B(net16094), .Z(net16095) );
  NAND2_X1 U80 ( .A1(A[9]), .A2(B_AS[9]), .ZN(n26) );
  NAND3_X1 U81 ( .A1(n19), .A2(net15966), .A3(n26), .ZN(carry[10]) );
  NAND2_X1 U82 ( .A1(A[10]), .A2(B_AS[10]), .ZN(n27) );
  NAND2_X1 U83 ( .A1(A[10]), .A2(carry[10]), .ZN(n28) );
  NAND2_X1 U84 ( .A1(B_AS[10]), .A2(carry[10]), .ZN(n29) );
  NAND3_X1 U85 ( .A1(n29), .A2(n28), .A3(n27), .ZN(carry[11]) );
  NAND2_X1 U86 ( .A1(carry[16]), .A2(A[16]), .ZN(n30) );
  NAND2_X1 U87 ( .A1(carry[16]), .A2(B_AS[16]), .ZN(n31) );
  NAND2_X1 U88 ( .A1(A[16]), .A2(B_AS[16]), .ZN(n32) );
  NAND3_X1 U89 ( .A1(n30), .A2(n31), .A3(n32), .ZN(carry[17]) );
  XOR2_X1 U90 ( .A(carry[0]), .B(B[19]), .Z(B_AS[19]) );
  XOR2_X1 U91 ( .A(A[19]), .B(B_AS[19]), .Z(n33) );
endmodule


module adder_NBIT19 ( A, B, SUB_SUMn, S );
  input [18:0] A;
  input [18:0] B;
  output [19:0] S;
  input SUB_SUMn;
  wire   N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N58, N59, N60, N61, N62, \U1/U1/Z_0 ;
  assign S[0] = N43;
  assign S[1] = N44;
  assign S[2] = N45;
  assign S[3] = N46;
  assign S[4] = N47;
  assign S[5] = N48;
  assign S[6] = N49;
  assign S[7] = N50;
  assign S[8] = N51;
  assign S[9] = N52;
  assign S[10] = N53;
  assign S[11] = N54;
  assign S[12] = N55;
  assign S[13] = N56;
  assign S[14] = N57;
  assign S[15] = N58;
  assign S[16] = N59;
  assign S[17] = N60;
  assign S[18] = N61;
  assign S[19] = N62;
  assign \U1/U1/Z_0  = SUB_SUMn;

  adder_NBIT19_DW01_addsub_0 r56 ( .A({A[18], A}), .B({B[18], B}), .CI(1'b0), 
        .ADD_SUB(\U1/U1/Z_0 ), .SUM({N62, N61, N60, N59, N58, N57, N56, N55, 
        N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43}) );
endmodule


module encoder_6 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n3, n1;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];
  assign vp[1] = n3;

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X4 U1 ( .A1(vp[0]), .A2(n1), .ZN(n3) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n1) );
endmodule


module mux_NBIT21 ( A, B, C, S, Y );
  input [20:0] A;
  input [20:0] B;
  input [20:0] C;
  input [1:0] S;
  output [20:0] Y;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n136, n137, n138, n139,
         n161;

  AOI222_X1 U1 ( .A1(S[1]), .A2(C[20]), .B1(A[20]), .B2(n136), .C1(B[20]), 
        .C2(n138), .ZN(n23) );
  BUF_X2 U2 ( .A(n25), .Z(n138) );
  CLKBUF_X1 U3 ( .A(n25), .Z(n139) );
  BUF_X1 U4 ( .A(n24), .Z(n136) );
  BUF_X1 U5 ( .A(n24), .Z(n137) );
  NOR2_X1 U6 ( .A1(n161), .A2(S[1]), .ZN(n25) );
  INV_X1 U7 ( .A(S[0]), .ZN(n161) );
  NOR2_X1 U8 ( .A1(S[0]), .A2(S[1]), .ZN(n24) );
  INV_X1 U9 ( .A(n26), .ZN(Y[19]) );
  AOI222_X1 U10 ( .A1(C[19]), .A2(S[1]), .B1(A[19]), .B2(n137), .C1(B[19]), 
        .C2(n139), .ZN(n26) );
  INV_X1 U11 ( .A(n27), .ZN(Y[18]) );
  AOI222_X1 U12 ( .A1(C[18]), .A2(S[1]), .B1(A[18]), .B2(n137), .C1(B[18]), 
        .C2(n139), .ZN(n27) );
  INV_X1 U13 ( .A(n28), .ZN(Y[17]) );
  AOI222_X1 U14 ( .A1(C[17]), .A2(S[1]), .B1(A[17]), .B2(n136), .C1(B[17]), 
        .C2(n138), .ZN(n28) );
  INV_X1 U15 ( .A(n29), .ZN(Y[16]) );
  AOI222_X1 U16 ( .A1(C[16]), .A2(S[1]), .B1(A[16]), .B2(n136), .C1(B[16]), 
        .C2(n138), .ZN(n29) );
  INV_X1 U17 ( .A(n30), .ZN(Y[15]) );
  AOI222_X1 U18 ( .A1(C[15]), .A2(S[1]), .B1(A[15]), .B2(n137), .C1(B[15]), 
        .C2(n139), .ZN(n30) );
  INV_X1 U19 ( .A(n45), .ZN(Y[0]) );
  AOI222_X1 U20 ( .A1(C[0]), .A2(S[1]), .B1(A[0]), .B2(n136), .C1(B[0]), .C2(
        n138), .ZN(n45) );
  INV_X1 U21 ( .A(n31), .ZN(Y[14]) );
  AOI222_X1 U22 ( .A1(C[14]), .A2(S[1]), .B1(A[14]), .B2(n137), .C1(B[14]), 
        .C2(n139), .ZN(n31) );
  INV_X1 U23 ( .A(n41), .ZN(Y[4]) );
  AOI222_X1 U24 ( .A1(C[4]), .A2(S[1]), .B1(A[4]), .B2(n136), .C1(B[4]), .C2(
        n138), .ZN(n41) );
  INV_X1 U25 ( .A(n40), .ZN(Y[5]) );
  AOI222_X1 U26 ( .A1(C[5]), .A2(S[1]), .B1(A[5]), .B2(n136), .C1(B[5]), .C2(
        n138), .ZN(n40) );
  INV_X1 U27 ( .A(n39), .ZN(Y[6]) );
  AOI222_X1 U28 ( .A1(C[6]), .A2(S[1]), .B1(A[6]), .B2(n137), .C1(B[6]), .C2(
        n139), .ZN(n39) );
  INV_X1 U29 ( .A(n38), .ZN(Y[7]) );
  AOI222_X1 U30 ( .A1(C[7]), .A2(S[1]), .B1(A[7]), .B2(n137), .C1(B[7]), .C2(
        n139), .ZN(n38) );
  INV_X1 U31 ( .A(n37), .ZN(Y[8]) );
  AOI222_X1 U32 ( .A1(C[8]), .A2(S[1]), .B1(A[8]), .B2(n136), .C1(B[8]), .C2(
        n138), .ZN(n37) );
  INV_X1 U33 ( .A(n36), .ZN(Y[9]) );
  AOI222_X1 U34 ( .A1(C[9]), .A2(S[1]), .B1(A[9]), .B2(n136), .C1(B[9]), .C2(
        n138), .ZN(n36) );
  INV_X1 U35 ( .A(n35), .ZN(Y[10]) );
  AOI222_X1 U36 ( .A1(C[10]), .A2(S[1]), .B1(A[10]), .B2(n137), .C1(B[10]), 
        .C2(n139), .ZN(n35) );
  INV_X1 U37 ( .A(n34), .ZN(Y[11]) );
  AOI222_X1 U38 ( .A1(C[11]), .A2(S[1]), .B1(A[11]), .B2(n137), .C1(B[11]), 
        .C2(n139), .ZN(n34) );
  INV_X1 U39 ( .A(n33), .ZN(Y[12]) );
  AOI222_X1 U40 ( .A1(C[12]), .A2(S[1]), .B1(A[12]), .B2(n136), .C1(B[12]), 
        .C2(n138), .ZN(n33) );
  INV_X1 U41 ( .A(n32), .ZN(Y[13]) );
  AOI222_X1 U42 ( .A1(C[13]), .A2(S[1]), .B1(A[13]), .B2(n136), .C1(B[13]), 
        .C2(n138), .ZN(n32) );
  INV_X1 U43 ( .A(n42), .ZN(Y[3]) );
  AOI222_X1 U44 ( .A1(C[3]), .A2(S[1]), .B1(A[3]), .B2(n137), .C1(B[3]), .C2(
        n139), .ZN(n42) );
  INV_X1 U45 ( .A(n43), .ZN(Y[2]) );
  AOI222_X1 U46 ( .A1(C[2]), .A2(S[1]), .B1(A[2]), .B2(n137), .C1(B[2]), .C2(
        n139), .ZN(n43) );
  INV_X1 U47 ( .A(n44), .ZN(Y[1]) );
  AOI222_X1 U48 ( .A1(C[1]), .A2(S[1]), .B1(A[1]), .B2(n136), .C1(B[1]), .C2(
        n138), .ZN(n44) );
  INV_X1 U49 ( .A(n23), .ZN(Y[20]) );
endmodule


module adder_NBIT21_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   net15264, net26310, net26288, net26211, net26210, net26193, net26160,
         net26159, net26156, net26155, net26152, net26691, net26688, net26687,
         net26776, net26234, net26228, net26769, net26768, net26312, net26304,
         net26196, net28724, net28723, net26226, net26148, net26219, net26209,
         net26195, net26258, net26223, net26221, net26143, net26142, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77;
  wire   [22:0] carry;
  wire   [21:0] B_AS;
  assign net15264 = ADD_SUB;

  FA_X1 U1_19 ( .A(A[19]), .B(B_AS[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B_AS[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B_AS[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B_AS[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B_AS[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B_AS[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B_AS[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B_AS[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B_AS[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B_AS[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR2_X1 U1 ( .A(B[9]), .B(net15264), .Z(B_AS[9]) );
  XOR2_X1 U11 ( .A(B[19]), .B(net15264), .Z(B_AS[19]) );
  XOR2_X1 U12 ( .A(B[18]), .B(net15264), .Z(B_AS[18]) );
  XOR2_X1 U13 ( .A(B[17]), .B(net15264), .Z(B_AS[17]) );
  XOR2_X1 U14 ( .A(B[16]), .B(net15264), .Z(B_AS[16]) );
  XOR2_X1 U15 ( .A(B[15]), .B(net15264), .Z(B_AS[15]) );
  XOR2_X1 U16 ( .A(B[14]), .B(net15264), .Z(B_AS[14]) );
  XOR2_X1 U17 ( .A(B[13]), .B(net15264), .Z(B_AS[13]) );
  XOR2_X1 U18 ( .A(B[12]), .B(net15264), .Z(B_AS[12]) );
  XOR2_X1 U19 ( .A(B[11]), .B(net15264), .Z(B_AS[11]) );
  XOR2_X1 U20 ( .A(B[10]), .B(net15264), .Z(B_AS[10]) );
  NOR2_X1 U2 ( .A1(n1), .A2(n54), .ZN(n16) );
  NOR2_X1 U3 ( .A1(net26312), .A2(net26196), .ZN(n1) );
  AND2_X1 U4 ( .A1(n42), .A2(n43), .ZN(n2) );
  CLKBUF_X1 U5 ( .A(A[8]), .Z(n3) );
  NAND2_X1 U6 ( .A1(net26234), .A2(A[5]), .ZN(n4) );
  XNOR2_X1 U7 ( .A(n27), .B(net26691), .ZN(net26211) );
  NAND2_X1 U8 ( .A1(n27), .A2(net26691), .ZN(n28) );
  INV_X1 U9 ( .A(n27), .ZN(n29) );
  XNOR2_X1 U10 ( .A(net15264), .B(B[1]), .ZN(net26193) );
  XNOR2_X1 U21 ( .A(net15264), .B(B[2]), .ZN(net26195) );
  XOR2_X1 U22 ( .A(net15264), .B(B[21]), .Z(B_AS[21]) );
  INV_X1 U23 ( .A(net15264), .ZN(net26691) );
  INV_X1 U24 ( .A(net26193), .ZN(n11) );
  INV_X1 U25 ( .A(net26195), .ZN(net26219) );
  AND2_X1 U26 ( .A1(n42), .A2(n43), .ZN(n62) );
  INV_X1 U27 ( .A(B_AS[9]), .ZN(n40) );
  CLKBUF_X1 U28 ( .A(A[6]), .Z(n5) );
  NAND2_X1 U29 ( .A1(n57), .A2(A[7]), .ZN(n6) );
  INV_X1 U30 ( .A(net26196), .ZN(net26768) );
  XNOR2_X1 U31 ( .A(net15264), .B(B[3]), .ZN(net26196) );
  NAND2_X1 U32 ( .A1(net26152), .A2(n72), .ZN(n7) );
  NAND2_X1 U33 ( .A1(n12), .A2(net26143), .ZN(n8) );
  NAND2_X1 U34 ( .A1(n33), .A2(n58), .ZN(n9) );
  OR2_X1 U35 ( .A1(net26196), .A2(net26312), .ZN(n10) );
  NAND2_X1 U36 ( .A1(n12), .A2(net26143), .ZN(net26142) );
  NAND2_X1 U37 ( .A1(net26142), .A2(net26219), .ZN(net26312) );
  XNOR2_X1 U38 ( .A(n8), .B(net26219), .ZN(net26209) );
  NAND2_X1 U39 ( .A1(A[1]), .A2(net26223), .ZN(n12) );
  NAND2_X1 U40 ( .A1(n11), .A2(net26258), .ZN(net26143) );
  NAND2_X1 U41 ( .A1(net26143), .A2(net26195), .ZN(net28724) );
  XNOR2_X1 U42 ( .A(net26258), .B(n11), .ZN(net26210) );
  BUF_X1 U43 ( .A(A[1]), .Z(net26776) );
  AND2_X1 U44 ( .A1(A[1]), .A2(net26223), .ZN(net28723) );
  NAND2_X1 U45 ( .A1(net26221), .A2(net26193), .ZN(net26223) );
  AND2_X1 U46 ( .A1(net26687), .A2(net26688), .ZN(net26221) );
  NAND2_X1 U47 ( .A1(net26688), .A2(net26687), .ZN(net26258) );
  XNOR2_X1 U48 ( .A(net26209), .B(A[2]), .ZN(SUM[2]) );
  AND2_X1 U49 ( .A1(A[2]), .A2(net26768), .ZN(net26310) );
  NAND2_X1 U50 ( .A1(net26226), .A2(A[2]), .ZN(net26148) );
  CLKBUF_X1 U51 ( .A(A[3]), .Z(n13) );
  CLKBUF_X1 U52 ( .A(net26159), .Z(n14) );
  NAND2_X1 U53 ( .A1(n32), .A2(n56), .ZN(n15) );
  AND2_X1 U54 ( .A1(n16), .A2(n70), .ZN(n18) );
  NAND2_X1 U55 ( .A1(net26148), .A2(net26304), .ZN(net26228) );
  NAND2_X1 U56 ( .A1(net26312), .A2(net26148), .ZN(net26769) );
  OR2_X1 U57 ( .A1(net28723), .A2(net28724), .ZN(net26226) );
  XNOR2_X1 U58 ( .A(net26769), .B(net26768), .ZN(n17) );
  XNOR2_X1 U59 ( .A(n17), .B(n13), .ZN(SUM[3]) );
  AND2_X1 U60 ( .A1(net26312), .A2(net26196), .ZN(net26304) );
  NAND2_X1 U61 ( .A1(A[3]), .A2(net26228), .ZN(net26152) );
  NAND2_X1 U62 ( .A1(n18), .A2(net26152), .ZN(n53) );
  NAND2_X1 U63 ( .A1(n24), .A2(n21), .ZN(n19) );
  CLKBUF_X1 U64 ( .A(A[4]), .Z(n25) );
  XNOR2_X1 U65 ( .A(n20), .B(n23), .ZN(n22) );
  XNOR2_X1 U66 ( .A(n22), .B(A[5]), .ZN(SUM[5]) );
  INV_X1 U67 ( .A(n21), .ZN(n23) );
  NAND2_X1 U68 ( .A1(n20), .A2(n23), .ZN(net26159) );
  NAND2_X1 U69 ( .A1(net26156), .A2(net26155), .ZN(n20) );
  XNOR2_X1 U70 ( .A(net15264), .B(B[5]), .ZN(n21) );
  NAND2_X1 U71 ( .A1(n24), .A2(n21), .ZN(net26234) );
  AND2_X1 U72 ( .A1(net26156), .A2(net26155), .ZN(n24) );
  NAND2_X1 U73 ( .A1(net26234), .A2(A[5]), .ZN(net26288) );
  NAND2_X1 U74 ( .A1(n19), .A2(A[5]), .ZN(net26160) );
  NAND2_X1 U75 ( .A1(B_AS[9]), .A2(n41), .ZN(n39) );
  NAND2_X1 U76 ( .A1(n61), .A2(A[9]), .ZN(n38) );
  XNOR2_X1 U77 ( .A(n26), .B(n58), .ZN(n50) );
  NAND2_X1 U78 ( .A1(n15), .A2(n67), .ZN(n26) );
  NAND2_X1 U79 ( .A1(n2), .A2(n40), .ZN(n61) );
  XNOR2_X2 U80 ( .A(net15264), .B(B[0]), .ZN(n27) );
  NAND2_X1 U81 ( .A1(A[0]), .A2(n28), .ZN(net26688) );
  NAND2_X1 U82 ( .A1(net15264), .A2(n29), .ZN(net26687) );
  XNOR2_X1 U83 ( .A(n52), .B(n25), .ZN(SUM[4]) );
  NAND2_X1 U84 ( .A1(n38), .A2(n39), .ZN(carry[10]) );
  XNOR2_X1 U85 ( .A(n30), .B(n60), .ZN(n49) );
  NAND2_X1 U86 ( .A1(n65), .A2(n9), .ZN(n30) );
  XNOR2_X1 U87 ( .A(A[0]), .B(net26211), .ZN(SUM[0]) );
  NAND2_X1 U88 ( .A1(n59), .A2(A[8]), .ZN(n43) );
  NAND2_X1 U89 ( .A1(n36), .A2(n60), .ZN(n42) );
  NAND2_X1 U90 ( .A1(n3), .A2(n59), .ZN(n63) );
  NAND2_X1 U91 ( .A1(n9), .A2(n6), .ZN(n36) );
  INV_X1 U92 ( .A(n47), .ZN(n60) );
  XNOR2_X1 U93 ( .A(net15264), .B(B[8]), .ZN(n47) );
  NAND2_X1 U94 ( .A1(n33), .A2(n58), .ZN(n37) );
  AND2_X1 U95 ( .A1(n47), .A2(n37), .ZN(n64) );
  NAND2_X1 U96 ( .A1(n6), .A2(n64), .ZN(n59) );
  NAND2_X1 U97 ( .A1(n57), .A2(A[7]), .ZN(n65) );
  XNOR2_X1 U98 ( .A(n49), .B(n71), .ZN(SUM[8]) );
  NAND2_X1 U99 ( .A1(n42), .A2(n63), .ZN(n41) );
  NAND2_X1 U100 ( .A1(n15), .A2(n35), .ZN(n33) );
  INV_X1 U101 ( .A(n46), .ZN(n58) );
  XNOR2_X1 U102 ( .A(net15264), .B(B[7]), .ZN(n46) );
  XNOR2_X1 U103 ( .A(n50), .B(A[7]), .ZN(SUM[7]) );
  NAND2_X1 U104 ( .A1(n55), .A2(A[6]), .ZN(n35) );
  NAND2_X1 U105 ( .A1(n32), .A2(n56), .ZN(n34) );
  AND2_X1 U106 ( .A1(n34), .A2(n46), .ZN(n66) );
  NAND2_X1 U107 ( .A1(n66), .A2(n67), .ZN(n57) );
  NAND2_X1 U108 ( .A1(n55), .A2(A[6]), .ZN(n67) );
  NAND2_X1 U109 ( .A1(net26288), .A2(net26159), .ZN(n32) );
  INV_X1 U110 ( .A(n45), .ZN(n56) );
  XNOR2_X1 U111 ( .A(net15264), .B(B[6]), .ZN(n45) );
  AND2_X1 U112 ( .A1(net26159), .A2(n45), .ZN(n68) );
  NAND2_X1 U113 ( .A1(n68), .A2(n4), .ZN(n55) );
  XNOR2_X1 U114 ( .A(n51), .B(n5), .ZN(SUM[6]) );
  NAND2_X1 U115 ( .A1(net26160), .A2(n14), .ZN(n69) );
  XNOR2_X1 U116 ( .A(n69), .B(n56), .ZN(n51) );
  NAND2_X1 U117 ( .A1(A[4]), .A2(n53), .ZN(net26156) );
  NAND2_X1 U118 ( .A1(n31), .A2(n54), .ZN(net26155) );
  NAND2_X1 U119 ( .A1(net26310), .A2(net26226), .ZN(n70) );
  INV_X1 U120 ( .A(n44), .ZN(n54) );
  XNOR2_X1 U121 ( .A(net15264), .B(B[4]), .ZN(n44) );
  NAND2_X1 U122 ( .A1(net26152), .A2(n72), .ZN(n31) );
  XNOR2_X1 U123 ( .A(n7), .B(n54), .ZN(n52) );
  XNOR2_X1 U124 ( .A(net26776), .B(net26210), .ZN(SUM[1]) );
  XNOR2_X1 U125 ( .A(n62), .B(n40), .ZN(n48) );
  XNOR2_X1 U126 ( .A(n48), .B(A[9]), .ZN(SUM[9]) );
  AND2_X1 U127 ( .A1(n70), .A2(n10), .ZN(n72) );
  BUF_X1 U128 ( .A(A[8]), .Z(n71) );
  XOR2_X1 U129 ( .A(A[20]), .B(B_AS[21]), .Z(n73) );
  XOR2_X1 U130 ( .A(carry[20]), .B(n73), .Z(SUM[20]) );
  NAND2_X1 U131 ( .A1(carry[20]), .A2(A[20]), .ZN(n74) );
  NAND2_X1 U132 ( .A1(carry[20]), .A2(B_AS[21]), .ZN(n75) );
  NAND2_X1 U133 ( .A1(A[20]), .A2(B_AS[21]), .ZN(n76) );
  NAND3_X1 U134 ( .A1(n74), .A2(n75), .A3(n76), .ZN(carry[21]) );
  XOR2_X2 U135 ( .A(carry[21]), .B(n77), .Z(SUM[21]) );
  XOR2_X1 U136 ( .A(A[21]), .B(B_AS[21]), .Z(n77) );
endmodule


module adder_NBIT21 ( A, B, SUB_SUMn, S );
  input [20:0] A;
  input [20:0] B;
  output [21:0] S;
  input SUB_SUMn;
  wire   N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60,
         N61, N62, N63, N64, N65, N66, N67, N68, \U1/U1/Z_0 ;
  assign S[0] = N47;
  assign S[1] = N48;
  assign S[2] = N49;
  assign S[3] = N50;
  assign S[4] = N51;
  assign S[5] = N52;
  assign S[6] = N53;
  assign S[7] = N54;
  assign S[8] = N55;
  assign S[9] = N56;
  assign S[10] = N57;
  assign S[11] = N58;
  assign S[12] = N59;
  assign S[13] = N60;
  assign S[14] = N61;
  assign S[15] = N62;
  assign S[16] = N63;
  assign S[17] = N64;
  assign S[18] = N65;
  assign S[19] = N66;
  assign S[20] = N67;
  assign S[21] = N68;
  assign \U1/U1/Z_0  = SUB_SUMn;

  adder_NBIT21_DW01_addsub_0 r56 ( .A({A[20], A}), .B({B[20], B}), .CI(1'b0), 
        .ADD_SUB(\U1/U1/Z_0 ), .SUM({N68, N67, N66, N65, N64, N63, N62, N61, 
        N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47})
         );
endmodule


module encoder_5 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n3, n1;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];
  assign vp[1] = n3;

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X1 U1 ( .A1(vp[0]), .A2(n1), .ZN(n3) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n1) );
endmodule


module mux_NBIT23 ( A, B, C, S, Y );
  input [22:0] A;
  input [22:0] B;
  input [22:0] C;
  input [1:0] S;
  output [22:0] Y;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n187;

  BUF_X1 U1 ( .A(n26), .Z(n149) );
  BUF_X1 U2 ( .A(n26), .Z(n150) );
  BUF_X1 U3 ( .A(n26), .Z(n148) );
  BUF_X1 U4 ( .A(n26), .Z(n151) );
  BUF_X1 U5 ( .A(S[1]), .Z(n162) );
  BUF_X1 U6 ( .A(S[1]), .Z(n163) );
  NOR2_X1 U7 ( .A1(n187), .A2(n162), .ZN(n27) );
  INV_X1 U8 ( .A(S[0]), .ZN(n187) );
  NOR2_X1 U9 ( .A1(S[0]), .A2(n162), .ZN(n26) );
  INV_X1 U10 ( .A(n28), .ZN(Y[21]) );
  AOI222_X1 U11 ( .A1(C[21]), .A2(n163), .B1(A[21]), .B2(n148), .C1(B[21]), 
        .C2(n159), .ZN(n28) );
  INV_X1 U12 ( .A(n31), .ZN(Y[18]) );
  AOI222_X1 U13 ( .A1(C[18]), .A2(n163), .B1(A[18]), .B2(n150), .C1(B[18]), 
        .C2(n156), .ZN(n31) );
  INV_X1 U14 ( .A(n32), .ZN(Y[17]) );
  AOI222_X1 U15 ( .A1(C[17]), .A2(n163), .B1(A[17]), .B2(n149), .C1(B[17]), 
        .C2(n156), .ZN(n32) );
  INV_X1 U16 ( .A(n33), .ZN(Y[16]) );
  AOI222_X1 U17 ( .A1(C[16]), .A2(n163), .B1(A[16]), .B2(n148), .C1(B[16]), 
        .C2(n155), .ZN(n33) );
  INV_X1 U18 ( .A(n34), .ZN(Y[15]) );
  AOI222_X1 U19 ( .A1(C[15]), .A2(n163), .B1(A[15]), .B2(n149), .C1(B[15]), 
        .C2(n155), .ZN(n34) );
  INV_X1 U20 ( .A(n35), .ZN(Y[14]) );
  AOI222_X1 U21 ( .A1(C[14]), .A2(n163), .B1(A[14]), .B2(n151), .C1(B[14]), 
        .C2(n155), .ZN(n35) );
  INV_X1 U22 ( .A(n36), .ZN(Y[13]) );
  AOI222_X1 U23 ( .A1(C[13]), .A2(n163), .B1(A[13]), .B2(n150), .C1(B[13]), 
        .C2(n154), .ZN(n36) );
  INV_X1 U24 ( .A(n45), .ZN(Y[4]) );
  AOI222_X1 U25 ( .A1(C[4]), .A2(n162), .B1(A[4]), .B2(n151), .C1(B[4]), .C2(
        n156), .ZN(n45) );
  INV_X1 U26 ( .A(n44), .ZN(Y[5]) );
  AOI222_X1 U27 ( .A1(C[5]), .A2(n162), .B1(A[5]), .B2(n148), .C1(B[5]), .C2(
        n156), .ZN(n44) );
  INV_X1 U28 ( .A(n43), .ZN(Y[6]) );
  AOI222_X1 U29 ( .A1(C[6]), .A2(n162), .B1(A[6]), .B2(n149), .C1(B[6]), .C2(
        n157), .ZN(n43) );
  INV_X1 U30 ( .A(n42), .ZN(Y[7]) );
  AOI222_X1 U31 ( .A1(C[7]), .A2(n162), .B1(A[7]), .B2(n151), .C1(B[7]), .C2(
        n158), .ZN(n42) );
  INV_X1 U32 ( .A(n41), .ZN(Y[8]) );
  AOI222_X1 U33 ( .A1(C[8]), .A2(n162), .B1(A[8]), .B2(n150), .C1(B[8]), .C2(
        n159), .ZN(n41) );
  INV_X1 U34 ( .A(n40), .ZN(Y[9]) );
  AOI222_X1 U35 ( .A1(C[9]), .A2(n162), .B1(A[9]), .B2(n151), .C1(B[9]), .C2(
        n160), .ZN(n40) );
  INV_X1 U36 ( .A(n39), .ZN(Y[10]) );
  AOI222_X1 U37 ( .A1(C[10]), .A2(n163), .B1(A[10]), .B2(n148), .C1(B[10]), 
        .C2(n161), .ZN(n39) );
  INV_X1 U38 ( .A(n38), .ZN(Y[11]) );
  AOI222_X1 U39 ( .A1(C[11]), .A2(n163), .B1(A[11]), .B2(n148), .C1(B[11]), 
        .C2(n161), .ZN(n38) );
  INV_X1 U40 ( .A(n37), .ZN(Y[12]) );
  AOI222_X1 U41 ( .A1(C[12]), .A2(n163), .B1(A[12]), .B2(n149), .C1(B[12]), 
        .C2(n154), .ZN(n37) );
  INV_X1 U42 ( .A(n46), .ZN(Y[3]) );
  AOI222_X1 U43 ( .A1(C[3]), .A2(n162), .B1(A[3]), .B2(n150), .C1(B[3]), .C2(
        n155), .ZN(n46) );
  INV_X1 U44 ( .A(n48), .ZN(Y[1]) );
  AOI222_X1 U45 ( .A1(C[1]), .A2(n162), .B1(A[1]), .B2(n149), .C1(B[1]), .C2(
        n156), .ZN(n48) );
  INV_X1 U46 ( .A(n29), .ZN(Y[20]) );
  AOI222_X1 U47 ( .A1(C[20]), .A2(n163), .B1(A[20]), .B2(n151), .C1(B[20]), 
        .C2(n158), .ZN(n29) );
  INV_X1 U48 ( .A(n30), .ZN(Y[19]) );
  AOI222_X1 U49 ( .A1(C[19]), .A2(n163), .B1(A[19]), .B2(n150), .C1(B[19]), 
        .C2(n157), .ZN(n30) );
  INV_X1 U50 ( .A(n49), .ZN(Y[0]) );
  AOI222_X1 U51 ( .A1(C[0]), .A2(n162), .B1(A[0]), .B2(n148), .C1(B[0]), .C2(
        n154), .ZN(n49) );
  INV_X1 U52 ( .A(n47), .ZN(Y[2]) );
  AOI222_X1 U53 ( .A1(C[2]), .A2(n162), .B1(A[2]), .B2(n150), .C1(B[2]), .C2(
        n156), .ZN(n47) );
  INV_X1 U54 ( .A(n25), .ZN(Y[22]) );
  AOI222_X1 U55 ( .A1(n163), .A2(C[22]), .B1(A[22]), .B2(n149), .C1(B[22]), 
        .C2(n160), .ZN(n25) );
  INV_X1 U56 ( .A(n27), .ZN(n152) );
  INV_X1 U57 ( .A(n27), .ZN(n153) );
  INV_X1 U58 ( .A(n153), .ZN(n154) );
  INV_X1 U59 ( .A(n153), .ZN(n155) );
  INV_X1 U60 ( .A(n152), .ZN(n156) );
  INV_X1 U61 ( .A(n152), .ZN(n157) );
  INV_X1 U62 ( .A(n152), .ZN(n158) );
  INV_X1 U63 ( .A(n153), .ZN(n159) );
  INV_X1 U64 ( .A(n153), .ZN(n160) );
  INV_X1 U65 ( .A(n153), .ZN(n161) );
endmodule


module adder_NBIT23_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   net15260, net33264, \carry[16] , \B_AS[15] , \carry[15] , \B_AS[14] ,
         \carry[14] , \B_AS[13] , \carry[13] , \B_AS[12] , \carry[12] ,
         \B_AS[11] , \carry[11] , \B_AS[10] , \carry[10] , \B_AS[9] , net33237,
         net33236, \carry[9] , \carry[8] , \carry[7] , \carry[6] , \B_AS[8] ,
         \B_AS[7] , \B_AS[6] , \B_AS[5] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74;
  wire   [24:0] carry;
  wire   [23:0] B_AS;
  assign net15260 = ADD_SUB;

  FA_X1 U1_19 ( .A(A[19]), .B(B_AS[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B_AS[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B_AS[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR2_X1 U13 ( .A(B[19]), .B(net15260), .Z(B_AS[19]) );
  XOR2_X1 U14 ( .A(B[18]), .B(net15260), .Z(B_AS[18]) );
  XOR2_X1 U15 ( .A(B[17]), .B(net15260), .Z(B_AS[17]) );
  XOR2_X1 U16 ( .A(B[16]), .B(net15260), .Z(B_AS[16]) );
  XOR2_X1 U17 ( .A(B[15]), .B(net15260), .Z(\B_AS[15] ) );
  FA_X1 U1_16 ( .A(A[16]), .B(B_AS[16]), .CI(\carry[16] ), .CO(carry[17]), .S(
        SUM[16]) );
  XOR2_X1 U18 ( .A(B[14]), .B(net15260), .Z(\B_AS[14] ) );
  FA_X1 U1_15 ( .A(A[15]), .B(\B_AS[15] ), .CI(\carry[15] ), .CO(\carry[16] ), 
        .S(SUM[15]) );
  XOR2_X1 U19 ( .A(B[13]), .B(net15260), .Z(\B_AS[13] ) );
  FA_X1 U1_14 ( .A(A[14]), .B(\B_AS[14] ), .CI(\carry[14] ), .CO(\carry[15] ), 
        .S(SUM[14]) );
  XOR2_X1 U20 ( .A(B[12]), .B(net15260), .Z(\B_AS[12] ) );
  FA_X1 U1_13 ( .A(A[13]), .B(\B_AS[13] ), .CI(\carry[13] ), .CO(\carry[14] ), 
        .S(SUM[13]) );
  XOR2_X1 U21 ( .A(B[11]), .B(net15260), .Z(\B_AS[11] ) );
  FA_X1 U1_12 ( .A(A[12]), .B(\B_AS[12] ), .CI(\carry[12] ), .CO(\carry[13] ), 
        .S(SUM[12]) );
  XOR2_X1 U22 ( .A(B[10]), .B(net15260), .Z(\B_AS[10] ) );
  FA_X1 U1_11 ( .A(A[11]), .B(\B_AS[11] ), .CI(\carry[11] ), .CO(\carry[12] ), 
        .S(SUM[11]) );
  XOR2_X1 U1 ( .A(B[9]), .B(net15260), .Z(\B_AS[9] ) );
  FA_X1 U1_10 ( .A(A[10]), .B(\B_AS[10] ), .CI(\carry[10] ), .CO(\carry[11] ), 
        .S(SUM[10]) );
  XOR2_X1 U5 ( .A(B[5]), .B(net15260), .Z(\B_AS[5] ) );
  XOR2_X1 U2 ( .A(B[8]), .B(net15260), .Z(\B_AS[8] ) );
  XOR2_X1 U3 ( .A(B[7]), .B(net15260), .Z(\B_AS[7] ) );
  FA_X1 U1_7 ( .A(A[7]), .B(\B_AS[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  FA_X1 U1_9 ( .A(\B_AS[9] ), .B(A[9]), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  FA_X1 U1_8 ( .A(A[8]), .B(\B_AS[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  CLKBUF_X1 U4 ( .A(n9), .Z(n1) );
  AND2_X2 U6 ( .A1(n13), .A2(n14), .ZN(n51) );
  NAND2_X1 U7 ( .A1(n20), .A2(n22), .ZN(n34) );
  INV_X1 U8 ( .A(n22), .ZN(n35) );
  INV_X1 U9 ( .A(n24), .ZN(n39) );
  XNOR2_X1 U10 ( .A(net15260), .B(B[1]), .ZN(n21) );
  XNOR2_X1 U11 ( .A(net15260), .B(B[2]), .ZN(n23) );
  NAND2_X1 U12 ( .A1(n15), .A2(n43), .ZN(n42) );
  NAND2_X1 U23 ( .A1(n7), .A2(n48), .ZN(n6) );
  INV_X1 U24 ( .A(n21), .ZN(n33) );
  INV_X1 U25 ( .A(n23), .ZN(n32) );
  XNOR2_X1 U26 ( .A(n22), .B(n20), .ZN(n31) );
  NAND2_X1 U27 ( .A1(n45), .A2(n21), .ZN(n36) );
  XOR2_X1 U28 ( .A(B[20]), .B(net15260), .Z(B_AS[20]) );
  XOR2_X1 U29 ( .A(B[21]), .B(net15260), .Z(B_AS[21]) );
  XOR2_X1 U30 ( .A(net15260), .B(B[23]), .Z(B_AS[23]) );
  INV_X1 U31 ( .A(net15260), .ZN(n20) );
  XNOR2_X1 U32 ( .A(net15260), .B(B[3]), .ZN(n24) );
  NAND2_X1 U33 ( .A1(\B_AS[5] ), .A2(A[5]), .ZN(n18) );
  OAI21_X1 U34 ( .B1(A[5]), .B2(\B_AS[5] ), .A(n47), .ZN(n19) );
  XOR2_X1 U35 ( .A(B[6]), .B(net15260), .Z(\B_AS[6] ) );
  XNOR2_X1 U36 ( .A(n33), .B(n6), .ZN(n30) );
  CLKBUF_X1 U37 ( .A(A[3]), .Z(n2) );
  NAND2_X1 U38 ( .A1(n18), .A2(n19), .ZN(\carry[6] ) );
  XNOR2_X1 U39 ( .A(net15260), .B(B[4]), .ZN(n25) );
  INV_X1 U40 ( .A(n25), .ZN(n43) );
  NAND2_X1 U41 ( .A1(n51), .A2(n5), .ZN(n3) );
  NAND2_X1 U42 ( .A1(n3), .A2(n4), .ZN(n55) );
  OR2_X1 U43 ( .A1(A[3]), .A2(n43), .ZN(n4) );
  AND2_X1 U44 ( .A1(n24), .A2(n25), .ZN(n5) );
  XNOR2_X2 U45 ( .A(net15260), .B(B[0]), .ZN(n22) );
  NAND2_X1 U46 ( .A1(A[0]), .A2(n34), .ZN(n8) );
  XNOR2_X1 U47 ( .A(A[0]), .B(n31), .ZN(SUM[0]) );
  NAND2_X1 U48 ( .A1(n41), .A2(n42), .ZN(n44) );
  XNOR2_X1 U49 ( .A(n44), .B(\B_AS[5] ), .ZN(n26) );
  XNOR2_X1 U50 ( .A(n26), .B(A[5]), .ZN(SUM[5]) );
  NAND2_X1 U51 ( .A1(n35), .A2(net15260), .ZN(n7) );
  AND2_X1 U52 ( .A1(n8), .A2(n7), .ZN(n45) );
  NAND2_X1 U53 ( .A1(A[1]), .A2(n36), .ZN(n11) );
  XNOR2_X1 U54 ( .A(n49), .B(n30), .ZN(SUM[1]) );
  NAND2_X1 U55 ( .A1(n33), .A2(n6), .ZN(n10) );
  AND2_X1 U56 ( .A1(n11), .A2(n10), .ZN(n46) );
  NAND2_X1 U57 ( .A1(n40), .A2(A[4]), .ZN(n41) );
  NAND2_X1 U58 ( .A1(n41), .A2(n42), .ZN(n47) );
  NAND2_X1 U59 ( .A1(A[0]), .A2(n34), .ZN(n48) );
  CLKBUF_X1 U60 ( .A(A[1]), .Z(n49) );
  NAND2_X1 U61 ( .A1(n37), .A2(A[2]), .ZN(n14) );
  NAND2_X1 U62 ( .A1(n56), .A2(n53), .ZN(n12) );
  XNOR2_X1 U63 ( .A(n52), .B(n25), .ZN(n27) );
  XNOR2_X1 U64 ( .A(A[4]), .B(n27), .ZN(SUM[4]) );
  NAND2_X1 U65 ( .A1(n9), .A2(n32), .ZN(n13) );
  NAND2_X1 U66 ( .A1(n24), .A2(n51), .ZN(n38) );
  NAND2_X1 U67 ( .A1(n38), .A2(A[3]), .ZN(n17) );
  NAND2_X1 U68 ( .A1(n16), .A2(n17), .ZN(n15) );
  NAND2_X1 U69 ( .A1(n12), .A2(n39), .ZN(n16) );
  AND2_X1 U70 ( .A1(n17), .A2(n16), .ZN(n52) );
  NAND2_X1 U71 ( .A1(n50), .A2(n10), .ZN(n9) );
  XNOR2_X1 U72 ( .A(n54), .B(n32), .ZN(n29) );
  NAND2_X1 U73 ( .A1(n23), .A2(n46), .ZN(n37) );
  NAND2_X1 U74 ( .A1(A[2]), .A2(n57), .ZN(n53) );
  XNOR2_X1 U75 ( .A(n29), .B(n58), .ZN(SUM[2]) );
  NAND2_X1 U76 ( .A1(n50), .A2(n10), .ZN(n54) );
  NAND2_X1 U77 ( .A1(n16), .A2(n55), .ZN(n40) );
  NAND2_X1 U78 ( .A1(n1), .A2(n32), .ZN(n56) );
  BUF_X1 U79 ( .A(n11), .Z(n50) );
  CLKBUF_X1 U80 ( .A(n37), .Z(n57) );
  CLKBUF_X1 U81 ( .A(A[2]), .Z(n58) );
  XNOR2_X1 U82 ( .A(n51), .B(n24), .ZN(n28) );
  XNOR2_X1 U83 ( .A(n28), .B(n2), .ZN(SUM[3]) );
  NAND3_X1 U84 ( .A1(net33236), .A2(n59), .A3(net33237), .ZN(\carry[7] ) );
  NAND2_X1 U85 ( .A1(A[6]), .A2(\B_AS[6] ), .ZN(n59) );
  NAND2_X1 U86 ( .A1(\carry[6] ), .A2(\B_AS[6] ), .ZN(net33237) );
  NAND2_X1 U87 ( .A1(A[6]), .A2(\carry[6] ), .ZN(net33236) );
  XNOR2_X1 U88 ( .A(A[6]), .B(\B_AS[6] ), .ZN(net33264) );
  NAND3_X1 U89 ( .A1(n67), .A2(n68), .A3(n69), .ZN(n60) );
  NAND3_X1 U90 ( .A1(n67), .A2(n68), .A3(n69), .ZN(n61) );
  XNOR2_X1 U91 ( .A(net33264), .B(\carry[6] ), .ZN(SUM[6]) );
  XOR2_X1 U92 ( .A(A[20]), .B(B_AS[20]), .Z(n62) );
  XOR2_X1 U93 ( .A(carry[20]), .B(n62), .Z(SUM[20]) );
  NAND2_X1 U94 ( .A1(carry[20]), .A2(A[20]), .ZN(n63) );
  NAND2_X1 U95 ( .A1(carry[20]), .A2(B_AS[20]), .ZN(n64) );
  NAND2_X1 U96 ( .A1(A[20]), .A2(B_AS[20]), .ZN(n65) );
  NAND3_X1 U97 ( .A1(n63), .A2(n64), .A3(n65), .ZN(carry[21]) );
  XOR2_X1 U98 ( .A(A[21]), .B(B_AS[21]), .Z(n66) );
  XOR2_X1 U99 ( .A(carry[21]), .B(n66), .Z(SUM[21]) );
  NAND2_X1 U100 ( .A1(carry[21]), .A2(A[21]), .ZN(n67) );
  NAND2_X1 U101 ( .A1(carry[21]), .A2(B_AS[21]), .ZN(n68) );
  NAND2_X1 U102 ( .A1(A[21]), .A2(B_AS[21]), .ZN(n69) );
  NAND3_X1 U103 ( .A1(n67), .A2(n68), .A3(n69), .ZN(carry[22]) );
  XOR2_X1 U104 ( .A(A[22]), .B(B_AS[23]), .Z(n70) );
  XOR2_X1 U105 ( .A(n61), .B(n70), .Z(SUM[22]) );
  NAND2_X1 U106 ( .A1(n60), .A2(A[22]), .ZN(n71) );
  NAND2_X1 U107 ( .A1(carry[22]), .A2(B_AS[23]), .ZN(n72) );
  NAND2_X1 U108 ( .A1(A[22]), .A2(B_AS[23]), .ZN(n73) );
  NAND3_X1 U109 ( .A1(n71), .A2(n72), .A3(n73), .ZN(carry[23]) );
  XOR2_X1 U110 ( .A(A[23]), .B(B_AS[23]), .Z(n74) );
  XOR2_X1 U111 ( .A(carry[23]), .B(n74), .Z(SUM[23]) );
endmodule


module adder_NBIT23 ( A, B, SUB_SUMn, S );
  input [22:0] A;
  input [22:0] B;
  output [23:0] S;
  input SUB_SUMn;
  wire   N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64,
         N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, \U1/U1/Z_0 ;
  assign S[0] = N51;
  assign S[1] = N52;
  assign S[2] = N53;
  assign S[3] = N54;
  assign S[4] = N55;
  assign S[5] = N56;
  assign S[6] = N57;
  assign S[7] = N58;
  assign S[8] = N59;
  assign S[9] = N60;
  assign S[10] = N61;
  assign S[11] = N62;
  assign S[12] = N63;
  assign S[13] = N64;
  assign S[14] = N65;
  assign S[15] = N66;
  assign S[16] = N67;
  assign S[17] = N68;
  assign S[18] = N69;
  assign S[19] = N70;
  assign S[20] = N71;
  assign S[21] = N72;
  assign S[22] = N73;
  assign S[23] = N74;
  assign \U1/U1/Z_0  = SUB_SUMn;

  adder_NBIT23_DW01_addsub_0 r56 ( .A({A[22], A}), .B({B[22], B}), .CI(1'b0), 
        .ADD_SUB(\U1/U1/Z_0 ), .SUM({N74, N73, N72, N71, N70, N69, N68, N67, 
        N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, 
        N52, N51}) );
endmodule


module encoder_4 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n3, n4;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];
  assign vp[1] = n3;

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X1 U1 ( .A1(vp[0]), .A2(n4), .ZN(n3) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n4) );
endmodule


module mux_NBIT25 ( A, B, C, S, Y );
  input [24:0] A;
  input [24:0] B;
  input [24:0] C;
  input [1:0] S;
  output [24:0] Y;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n160,
         n161, n162, n163, n164, n165, n166, n192;

  BUF_X1 U1 ( .A(n29), .Z(n160) );
  BUF_X1 U2 ( .A(n29), .Z(n161) );
  BUF_X1 U3 ( .A(n28), .Z(n162) );
  BUF_X1 U4 ( .A(n28), .Z(n163) );
  NOR2_X1 U5 ( .A1(n192), .A2(n164), .ZN(n29) );
  INV_X1 U6 ( .A(S[0]), .ZN(n192) );
  BUF_X1 U7 ( .A(S[1]), .Z(n164) );
  BUF_X1 U8 ( .A(S[1]), .Z(n165) );
  BUF_X1 U9 ( .A(S[1]), .Z(n166) );
  NOR2_X1 U10 ( .A1(S[0]), .A2(n164), .ZN(n28) );
  INV_X1 U11 ( .A(n30), .ZN(Y[23]) );
  AOI222_X1 U12 ( .A1(C[23]), .A2(n166), .B1(A[23]), .B2(n163), .C1(B[23]), 
        .C2(n161), .ZN(n30) );
  INV_X1 U13 ( .A(n31), .ZN(Y[22]) );
  AOI222_X1 U14 ( .A1(C[22]), .A2(n166), .B1(A[22]), .B2(n163), .C1(B[22]), 
        .C2(n161), .ZN(n31) );
  INV_X1 U15 ( .A(n32), .ZN(Y[21]) );
  AOI222_X1 U16 ( .A1(C[21]), .A2(n165), .B1(A[21]), .B2(n163), .C1(B[21]), 
        .C2(n161), .ZN(n32) );
  INV_X1 U17 ( .A(n34), .ZN(Y[19]) );
  AOI222_X1 U18 ( .A1(C[19]), .A2(n165), .B1(A[19]), .B2(n163), .C1(B[19]), 
        .C2(n161), .ZN(n34) );
  INV_X1 U19 ( .A(n33), .ZN(Y[20]) );
  AOI222_X1 U20 ( .A1(C[20]), .A2(n165), .B1(A[20]), .B2(n163), .C1(B[20]), 
        .C2(n161), .ZN(n33) );
  INV_X1 U21 ( .A(n35), .ZN(Y[18]) );
  AOI222_X1 U22 ( .A1(C[18]), .A2(n165), .B1(A[18]), .B2(n163), .C1(B[18]), 
        .C2(n161), .ZN(n35) );
  INV_X1 U23 ( .A(n36), .ZN(Y[17]) );
  AOI222_X1 U24 ( .A1(C[17]), .A2(n165), .B1(A[17]), .B2(n163), .C1(B[17]), 
        .C2(n161), .ZN(n36) );
  INV_X1 U25 ( .A(n53), .ZN(Y[0]) );
  AOI222_X1 U26 ( .A1(C[0]), .A2(n164), .B1(A[0]), .B2(n162), .C1(B[0]), .C2(
        n160), .ZN(n53) );
  INV_X1 U27 ( .A(n37), .ZN(Y[16]) );
  AOI222_X1 U28 ( .A1(C[16]), .A2(n165), .B1(A[16]), .B2(n163), .C1(B[16]), 
        .C2(n161), .ZN(n37) );
  INV_X1 U29 ( .A(n38), .ZN(Y[15]) );
  AOI222_X1 U30 ( .A1(C[15]), .A2(n165), .B1(A[15]), .B2(n163), .C1(B[15]), 
        .C2(n161), .ZN(n38) );
  INV_X1 U31 ( .A(n49), .ZN(Y[4]) );
  AOI222_X1 U32 ( .A1(C[4]), .A2(n164), .B1(A[4]), .B2(n162), .C1(B[4]), .C2(
        n160), .ZN(n49) );
  INV_X1 U33 ( .A(n48), .ZN(Y[5]) );
  AOI222_X1 U34 ( .A1(C[5]), .A2(n164), .B1(A[5]), .B2(n162), .C1(B[5]), .C2(
        n160), .ZN(n48) );
  INV_X1 U35 ( .A(n47), .ZN(Y[6]) );
  AOI222_X1 U36 ( .A1(C[6]), .A2(n164), .B1(A[6]), .B2(n162), .C1(B[6]), .C2(
        n160), .ZN(n47) );
  INV_X1 U37 ( .A(n46), .ZN(Y[7]) );
  AOI222_X1 U38 ( .A1(C[7]), .A2(n164), .B1(A[7]), .B2(n162), .C1(B[7]), .C2(
        n160), .ZN(n46) );
  INV_X1 U39 ( .A(n45), .ZN(Y[8]) );
  AOI222_X1 U40 ( .A1(C[8]), .A2(n164), .B1(A[8]), .B2(n162), .C1(B[8]), .C2(
        n160), .ZN(n45) );
  INV_X1 U41 ( .A(n44), .ZN(Y[9]) );
  AOI222_X1 U42 ( .A1(C[9]), .A2(n164), .B1(A[9]), .B2(n162), .C1(B[9]), .C2(
        n160), .ZN(n44) );
  INV_X1 U43 ( .A(n43), .ZN(Y[10]) );
  AOI222_X1 U44 ( .A1(C[10]), .A2(n165), .B1(A[10]), .B2(n162), .C1(B[10]), 
        .C2(n160), .ZN(n43) );
  INV_X1 U45 ( .A(n42), .ZN(Y[11]) );
  AOI222_X1 U46 ( .A1(C[11]), .A2(n165), .B1(A[11]), .B2(n162), .C1(B[11]), 
        .C2(n160), .ZN(n42) );
  INV_X1 U47 ( .A(n41), .ZN(Y[12]) );
  AOI222_X1 U48 ( .A1(C[12]), .A2(n165), .B1(A[12]), .B2(n163), .C1(B[12]), 
        .C2(n161), .ZN(n41) );
  INV_X1 U49 ( .A(n40), .ZN(Y[13]) );
  AOI222_X1 U50 ( .A1(C[13]), .A2(n165), .B1(A[13]), .B2(n163), .C1(B[13]), 
        .C2(n161), .ZN(n40) );
  INV_X1 U51 ( .A(n39), .ZN(Y[14]) );
  AOI222_X1 U52 ( .A1(C[14]), .A2(n165), .B1(A[14]), .B2(n163), .C1(B[14]), 
        .C2(n161), .ZN(n39) );
  INV_X1 U53 ( .A(n50), .ZN(Y[3]) );
  AOI222_X1 U54 ( .A1(C[3]), .A2(n164), .B1(A[3]), .B2(n162), .C1(B[3]), .C2(
        n160), .ZN(n50) );
  INV_X1 U55 ( .A(n51), .ZN(Y[2]) );
  AOI222_X1 U56 ( .A1(C[2]), .A2(n164), .B1(A[2]), .B2(n162), .C1(B[2]), .C2(
        n160), .ZN(n51) );
  INV_X1 U57 ( .A(n52), .ZN(Y[1]) );
  AOI222_X1 U58 ( .A1(C[1]), .A2(n164), .B1(A[1]), .B2(n162), .C1(B[1]), .C2(
        n160), .ZN(n52) );
  INV_X1 U59 ( .A(n27), .ZN(Y[24]) );
  AOI222_X1 U60 ( .A1(n166), .A2(C[24]), .B1(A[24]), .B2(n28), .C1(B[24]), 
        .C2(n161), .ZN(n27) );
endmodule


module adder_NBIT25_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   net15256, net15861, net15860, net28713, net28682, net28668, net28665,
         net28640, net28639, net28638, net28637, net28632, net28631, net28626,
         net28605, net28667, \B_AS[6] , net33257, net33421, \carry[22] ,
         \carry[21] , \carry[20] , \carry[19] , \carry[18] , \carry[17] ,
         net28714, \carry[9] , \carry[8] , \carry[7] , \carry[16] ,
         \carry[15] , \carry[14] , \carry[13] , \carry[12] , \carry[11] ,
         \carry[10] , \B_AS[9] , \B_AS[8] , \B_AS[7] , \B_AS[14] , \B_AS[13] ,
         \B_AS[12] , \B_AS[11] , \B_AS[10] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65;
  wire   [26:0] carry;
  wire   [25:0] B_AS;
  assign net15256 = ADD_SUB;

  XOR2_X1 U12 ( .A(B[21]), .B(net15256), .Z(B_AS[21]) );
  XOR2_X1 U13 ( .A(B[20]), .B(net15256), .Z(B_AS[20]) );
  XOR2_X1 U15 ( .A(B[19]), .B(net15256), .Z(B_AS[19]) );
  XOR2_X1 U16 ( .A(B[18]), .B(net15256), .Z(B_AS[18]) );
  XOR2_X1 U17 ( .A(B[17]), .B(net15256), .Z(B_AS[17]) );
  XOR2_X1 U18 ( .A(B[16]), .B(net15256), .Z(B_AS[16]) );
  XOR2_X1 U19 ( .A(B[15]), .B(net15256), .Z(B_AS[15]) );
  XOR2_X1 U4 ( .A(B[6]), .B(net15256), .Z(\B_AS[6] ) );
  FA_X1 U1_21 ( .A(A[21]), .B(B_AS[21]), .CI(\carry[21] ), .CO(\carry[22] ), 
        .S(SUM[21]) );
  FA_X1 U1_20 ( .A(A[20]), .B(B_AS[20]), .CI(\carry[20] ), .CO(\carry[21] ), 
        .S(SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B_AS[19]), .CI(\carry[19] ), .CO(\carry[20] ), 
        .S(SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B_AS[18]), .CI(\carry[18] ), .CO(\carry[19] ), 
        .S(SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B_AS[17]), .CI(\carry[17] ), .CO(\carry[18] ), 
        .S(SUM[17]) );
  XOR2_X1 U20 ( .A(B[14]), .B(net15256), .Z(\B_AS[14] ) );
  XOR2_X1 U21 ( .A(B[13]), .B(net15256), .Z(\B_AS[13] ) );
  XOR2_X1 U22 ( .A(B[12]), .B(net15256), .Z(\B_AS[12] ) );
  XOR2_X1 U23 ( .A(B[11]), .B(net15256), .Z(\B_AS[11] ) );
  XOR2_X1 U24 ( .A(B[10]), .B(net15256), .Z(\B_AS[10] ) );
  XOR2_X1 U1 ( .A(B[9]), .B(net15256), .Z(\B_AS[9] ) );
  XOR2_X1 U2 ( .A(B[8]), .B(net15256), .Z(\B_AS[8] ) );
  XOR2_X1 U3 ( .A(B[7]), .B(net15256), .Z(\B_AS[7] ) );
  FA_X1 U1_7 ( .A(\B_AS[7] ), .B(\carry[7] ), .CI(A[7]), .CO(\carry[8] ), .S(
        SUM[7]) );
  FA_X1 U1_8 ( .A(A[8]), .B(\B_AS[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  FA_X1 U1_9 ( .A(A[9]), .B(\B_AS[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  FA_X1 U1_10 ( .A(A[10]), .B(\B_AS[10] ), .CI(\carry[10] ), .CO(\carry[11] ), 
        .S(SUM[10]) );
  FA_X1 U1_11 ( .A(A[11]), .B(\B_AS[11] ), .CI(\carry[11] ), .CO(\carry[12] ), 
        .S(SUM[11]) );
  FA_X1 U1_12 ( .A(A[12]), .B(\B_AS[12] ), .CI(\carry[12] ), .CO(\carry[13] ), 
        .S(SUM[12]) );
  FA_X1 U1_13 ( .A(A[13]), .B(\B_AS[13] ), .CI(\carry[13] ), .CO(\carry[14] ), 
        .S(SUM[13]) );
  FA_X1 U1_14 ( .A(A[14]), .B(\B_AS[14] ), .CI(\carry[14] ), .CO(\carry[15] ), 
        .S(SUM[14]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B_AS[16]), .CI(\carry[16] ), .CO(\carry[17] ), 
        .S(SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B_AS[15]), .CI(\carry[15] ), .CO(\carry[16] ), 
        .S(SUM[15]) );
  CLKBUF_X1 U5 ( .A(A[3]), .Z(n1) );
  XNOR2_X1 U6 ( .A(\carry[22] ), .B(n2), .ZN(SUM[22]) );
  XNOR2_X1 U7 ( .A(A[22]), .B(B_AS[22]), .ZN(n2) );
  BUF_X1 U8 ( .A(n43), .Z(n53) );
  NAND2_X1 U9 ( .A1(net28626), .A2(n28), .ZN(n37) );
  INV_X1 U10 ( .A(n28), .ZN(n38) );
  INV_X1 U11 ( .A(n30), .ZN(n42) );
  INV_X1 U14 ( .A(net15256), .ZN(net28626) );
  XNOR2_X1 U25 ( .A(net15256), .B(B[1]), .ZN(n29) );
  XOR2_X1 U26 ( .A(B[22]), .B(net15256), .Z(B_AS[22]) );
  XOR2_X1 U27 ( .A(B[23]), .B(net15256), .Z(B_AS[23]) );
  XOR2_X1 U28 ( .A(net15256), .B(B[25]), .Z(B_AS[25]) );
  XNOR2_X1 U29 ( .A(B[2]), .B(net15256), .ZN(n30) );
  INV_X1 U30 ( .A(n29), .ZN(n40) );
  INV_X1 U31 ( .A(\B_AS[6] ), .ZN(n7) );
  XNOR2_X1 U32 ( .A(n28), .B(net28626), .ZN(n36) );
  CLKBUF_X1 U33 ( .A(A[4]), .Z(n3) );
  XNOR2_X1 U34 ( .A(n4), .B(net28637), .ZN(n32) );
  AND2_X1 U35 ( .A1(n26), .A2(n25), .ZN(n4) );
  NAND2_X1 U36 ( .A1(n5), .A2(n6), .ZN(\carry[7] ) );
  NAND2_X1 U37 ( .A1(\B_AS[6] ), .A2(n8), .ZN(n6) );
  NAND2_X1 U38 ( .A1(net28631), .A2(n10), .ZN(n8) );
  NAND2_X1 U39 ( .A1(net28714), .A2(n11), .ZN(n10) );
  CLKBUF_X1 U40 ( .A(net28667), .Z(n11) );
  BUF_X1 U41 ( .A(A[5]), .Z(net28714) );
  XNOR2_X1 U42 ( .A(net28640), .B(net28714), .ZN(SUM[5]) );
  NAND2_X1 U43 ( .A1(n9), .A2(A[6]), .ZN(n5) );
  NAND2_X1 U44 ( .A1(net28682), .A2(n7), .ZN(n9) );
  XNOR2_X1 U45 ( .A(net28682), .B(n7), .ZN(net28639) );
  NAND2_X1 U46 ( .A1(\carry[22] ), .A2(B_AS[22]), .ZN(net15861) );
  NAND2_X1 U47 ( .A1(\carry[22] ), .A2(net33421), .ZN(net15860) );
  CLKBUF_X1 U48 ( .A(A[22]), .Z(net33421) );
  CLKBUF_X1 U49 ( .A(A[2]), .Z(n12) );
  XNOR2_X1 U50 ( .A(n46), .B(n29), .ZN(n35) );
  AND2_X1 U51 ( .A1(n17), .A2(n18), .ZN(n46) );
  CLKBUF_X1 U52 ( .A(A[6]), .Z(net33257) );
  XNOR2_X1 U53 ( .A(carry[24]), .B(n13), .ZN(SUM[24]) );
  XNOR2_X1 U54 ( .A(A[24]), .B(B_AS[25]), .ZN(n13) );
  XNOR2_X1 U55 ( .A(n12), .B(n34), .ZN(SUM[2]) );
  NAND2_X1 U56 ( .A1(net28667), .A2(A[5]), .ZN(net28632) );
  NAND2_X1 U57 ( .A1(net28713), .A2(n15), .ZN(net28667) );
  AND2_X1 U58 ( .A1(net28638), .A2(n14), .ZN(n15) );
  NAND2_X1 U59 ( .A1(net28605), .A2(net28665), .ZN(n14) );
  INV_X1 U60 ( .A(net28637), .ZN(net28665) );
  XNOR2_X1 U61 ( .A(n1), .B(n33), .ZN(SUM[3]) );
  XNOR2_X2 U62 ( .A(net15256), .B(B[0]), .ZN(n28) );
  NAND2_X1 U63 ( .A1(A[0]), .A2(n37), .ZN(n18) );
  XNOR2_X1 U64 ( .A(A[0]), .B(n36), .ZN(SUM[0]) );
  NAND2_X1 U65 ( .A1(n17), .A2(n18), .ZN(n16) );
  NAND2_X1 U66 ( .A1(n38), .A2(net15256), .ZN(n17) );
  NAND2_X1 U67 ( .A1(n27), .A2(net28668), .ZN(net28631) );
  AND2_X2 U68 ( .A1(net28631), .A2(net28632), .ZN(net28682) );
  NAND2_X1 U69 ( .A1(net28713), .A2(n51), .ZN(n27) );
  INV_X1 U70 ( .A(net28638), .ZN(net28668) );
  XNOR2_X1 U71 ( .A(B[5]), .B(net15256), .ZN(net28638) );
  AND2_X1 U72 ( .A1(net28713), .A2(n51), .ZN(n47) );
  XNOR2_X1 U73 ( .A(n47), .B(net28638), .ZN(net28640) );
  NAND2_X1 U74 ( .A1(n26), .A2(n25), .ZN(net28605) );
  XNOR2_X1 U75 ( .A(B[4]), .B(net15256), .ZN(net28637) );
  NAND2_X1 U76 ( .A1(A[1]), .A2(n39), .ZN(n21) );
  XNOR2_X1 U77 ( .A(A[1]), .B(n35), .ZN(SUM[1]) );
  NAND2_X1 U78 ( .A1(A[3]), .A2(n43), .ZN(n26) );
  NAND2_X1 U79 ( .A1(n22), .A2(n44), .ZN(n25) );
  NAND2_X1 U80 ( .A1(n29), .A2(n46), .ZN(n39) );
  NAND2_X1 U81 ( .A1(n20), .A2(n21), .ZN(n19) );
  NAND2_X1 U82 ( .A1(n16), .A2(n40), .ZN(n20) );
  AND2_X1 U83 ( .A1(net28637), .A2(n25), .ZN(n49) );
  NAND2_X1 U84 ( .A1(n50), .A2(n49), .ZN(n45) );
  NAND2_X1 U85 ( .A1(A[3]), .A2(n53), .ZN(n50) );
  XNOR2_X1 U86 ( .A(n32), .B(n3), .ZN(SUM[4]) );
  XNOR2_X1 U87 ( .A(net33257), .B(net28639), .ZN(SUM[6]) );
  NAND2_X1 U88 ( .A1(net28605), .A2(net28665), .ZN(n51) );
  NAND2_X1 U89 ( .A1(n31), .A2(n52), .ZN(n43) );
  INV_X1 U90 ( .A(n31), .ZN(n44) );
  XNOR2_X1 U91 ( .A(B[3]), .B(net15256), .ZN(n31) );
  NAND2_X1 U92 ( .A1(n23), .A2(n24), .ZN(n22) );
  XNOR2_X1 U93 ( .A(n22), .B(n44), .ZN(n33) );
  NAND2_X1 U94 ( .A1(A[2]), .A2(n41), .ZN(n24) );
  NAND2_X1 U95 ( .A1(n19), .A2(n42), .ZN(n23) );
  AND2_X1 U96 ( .A1(n24), .A2(n23), .ZN(n52) );
  NAND2_X1 U97 ( .A1(A[4]), .A2(n45), .ZN(net28713) );
  AND2_X1 U98 ( .A1(n20), .A2(n21), .ZN(n48) );
  NAND2_X1 U99 ( .A1(n21), .A2(n54), .ZN(n41) );
  XNOR2_X1 U100 ( .A(n48), .B(n30), .ZN(n34) );
  AND2_X1 U101 ( .A1(n20), .A2(n30), .ZN(n54) );
  XNOR2_X1 U102 ( .A(carry[25]), .B(n65), .ZN(SUM[25]) );
  NAND3_X1 U103 ( .A1(net15860), .A2(net15861), .A3(n57), .ZN(n55) );
  NAND3_X1 U104 ( .A1(net15860), .A2(net15861), .A3(n57), .ZN(n56) );
  NAND2_X1 U105 ( .A1(net33421), .A2(B_AS[22]), .ZN(n57) );
  NAND3_X1 U106 ( .A1(net15860), .A2(net15861), .A3(n57), .ZN(carry[23]) );
  XOR2_X1 U107 ( .A(A[23]), .B(B_AS[23]), .Z(n58) );
  XOR2_X1 U108 ( .A(n56), .B(n58), .Z(SUM[23]) );
  NAND2_X1 U109 ( .A1(n55), .A2(A[23]), .ZN(n59) );
  NAND2_X1 U110 ( .A1(carry[23]), .A2(B_AS[23]), .ZN(n60) );
  NAND2_X1 U111 ( .A1(A[23]), .A2(B_AS[23]), .ZN(n61) );
  NAND3_X1 U112 ( .A1(n59), .A2(n60), .A3(n61), .ZN(carry[24]) );
  NAND2_X1 U113 ( .A1(carry[24]), .A2(A[24]), .ZN(n62) );
  NAND2_X1 U114 ( .A1(carry[24]), .A2(B_AS[25]), .ZN(n63) );
  NAND2_X1 U115 ( .A1(A[24]), .A2(B_AS[25]), .ZN(n64) );
  NAND3_X1 U116 ( .A1(n62), .A2(n63), .A3(n64), .ZN(carry[25]) );
  XNOR2_X1 U117 ( .A(A[25]), .B(B_AS[25]), .ZN(n65) );
endmodule


module adder_NBIT25 ( A, B, SUB_SUMn, S );
  input [24:0] A;
  input [24:0] B;
  output [25:0] S;
  input SUB_SUMn;
  wire   N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         \U1/U1/Z_0 ;
  assign S[0] = N55;
  assign S[1] = N56;
  assign S[2] = N57;
  assign S[3] = N58;
  assign S[4] = N59;
  assign S[5] = N60;
  assign S[6] = N61;
  assign S[7] = N62;
  assign S[8] = N63;
  assign S[9] = N64;
  assign S[10] = N65;
  assign S[11] = N66;
  assign S[12] = N67;
  assign S[13] = N68;
  assign S[14] = N69;
  assign S[15] = N70;
  assign S[16] = N71;
  assign S[17] = N72;
  assign S[18] = N73;
  assign S[19] = N74;
  assign S[20] = N75;
  assign S[21] = N76;
  assign S[22] = N77;
  assign S[23] = N78;
  assign S[24] = N79;
  assign S[25] = N80;
  assign \U1/U1/Z_0  = SUB_SUMn;

  adder_NBIT25_DW01_addsub_0 r56 ( .A({A[24], A}), .B({B[24], B}), .CI(1'b0), 
        .ADD_SUB(\U1/U1/Z_0 ), .SUM({N80, N79, N78, N77, N76, N75, N74, N73, 
        N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, N56, N55}) );
endmodule


module encoder_3 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n3, n4;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];
  assign vp[1] = n3;

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X1 U1 ( .A1(vp[0]), .A2(n4), .ZN(n3) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n4) );
endmodule


module mux_NBIT27 ( A, B, C, S, Y );
  input [26:0] A;
  input [26:0] B;
  input [26:0] C;
  input [1:0] S;
  output [26:0] Y;
  wire   n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n172, n173, n174, n175, n176, n177, n178, n179, n180, n208;

  BUF_X1 U1 ( .A(n31), .Z(n172) );
  BUF_X1 U2 ( .A(n31), .Z(n173) );
  BUF_X1 U3 ( .A(n31), .Z(n174) );
  BUF_X1 U4 ( .A(n30), .Z(n175) );
  BUF_X1 U5 ( .A(n30), .Z(n176) );
  BUF_X1 U6 ( .A(n30), .Z(n177) );
  NOR2_X1 U7 ( .A1(n208), .A2(n178), .ZN(n31) );
  INV_X1 U8 ( .A(S[0]), .ZN(n208) );
  BUF_X1 U9 ( .A(S[1]), .Z(n178) );
  BUF_X1 U10 ( .A(S[1]), .Z(n179) );
  BUF_X1 U11 ( .A(S[1]), .Z(n180) );
  NOR2_X1 U12 ( .A1(S[0]), .A2(n178), .ZN(n30) );
  INV_X1 U13 ( .A(n32), .ZN(Y[25]) );
  AOI222_X1 U14 ( .A1(C[25]), .A2(n180), .B1(A[25]), .B2(n177), .C1(B[25]), 
        .C2(n174), .ZN(n32) );
  INV_X1 U15 ( .A(n33), .ZN(Y[24]) );
  AOI222_X1 U16 ( .A1(C[24]), .A2(n180), .B1(A[24]), .B2(n177), .C1(B[24]), 
        .C2(n174), .ZN(n33) );
  INV_X1 U17 ( .A(n34), .ZN(Y[23]) );
  AOI222_X1 U18 ( .A1(C[23]), .A2(n180), .B1(A[23]), .B2(n176), .C1(B[23]), 
        .C2(n173), .ZN(n34) );
  INV_X1 U19 ( .A(n35), .ZN(Y[22]) );
  AOI222_X1 U20 ( .A1(C[22]), .A2(n180), .B1(A[22]), .B2(n176), .C1(B[22]), 
        .C2(n173), .ZN(n35) );
  INV_X1 U21 ( .A(n36), .ZN(Y[21]) );
  AOI222_X1 U22 ( .A1(C[21]), .A2(n179), .B1(A[21]), .B2(n176), .C1(B[21]), 
        .C2(n173), .ZN(n36) );
  INV_X1 U23 ( .A(n37), .ZN(Y[20]) );
  AOI222_X1 U24 ( .A1(C[20]), .A2(n179), .B1(A[20]), .B2(n176), .C1(B[20]), 
        .C2(n173), .ZN(n37) );
  INV_X1 U25 ( .A(n38), .ZN(Y[19]) );
  AOI222_X1 U26 ( .A1(C[19]), .A2(n179), .B1(A[19]), .B2(n176), .C1(B[19]), 
        .C2(n173), .ZN(n38) );
  INV_X1 U27 ( .A(n39), .ZN(Y[18]) );
  AOI222_X1 U28 ( .A1(C[18]), .A2(n179), .B1(A[18]), .B2(n176), .C1(B[18]), 
        .C2(n173), .ZN(n39) );
  INV_X1 U29 ( .A(n40), .ZN(Y[17]) );
  AOI222_X1 U30 ( .A1(C[17]), .A2(n179), .B1(A[17]), .B2(n176), .C1(B[17]), 
        .C2(n173), .ZN(n40) );
  INV_X1 U31 ( .A(n57), .ZN(Y[0]) );
  AOI222_X1 U32 ( .A1(C[0]), .A2(n178), .B1(A[0]), .B2(n175), .C1(B[0]), .C2(
        n172), .ZN(n57) );
  INV_X1 U33 ( .A(n41), .ZN(Y[16]) );
  AOI222_X1 U34 ( .A1(C[16]), .A2(n179), .B1(A[16]), .B2(n176), .C1(B[16]), 
        .C2(n173), .ZN(n41) );
  INV_X1 U35 ( .A(n53), .ZN(Y[4]) );
  AOI222_X1 U36 ( .A1(C[4]), .A2(n178), .B1(A[4]), .B2(n175), .C1(B[4]), .C2(
        n172), .ZN(n53) );
  INV_X1 U37 ( .A(n49), .ZN(Y[8]) );
  AOI222_X1 U38 ( .A1(C[8]), .A2(n178), .B1(A[8]), .B2(n175), .C1(B[8]), .C2(
        n172), .ZN(n49) );
  INV_X1 U39 ( .A(n48), .ZN(Y[9]) );
  AOI222_X1 U40 ( .A1(C[9]), .A2(n178), .B1(A[9]), .B2(n175), .C1(B[9]), .C2(
        n172), .ZN(n48) );
  INV_X1 U41 ( .A(n47), .ZN(Y[10]) );
  AOI222_X1 U42 ( .A1(C[10]), .A2(n179), .B1(A[10]), .B2(n175), .C1(B[10]), 
        .C2(n172), .ZN(n47) );
  INV_X1 U43 ( .A(n46), .ZN(Y[11]) );
  AOI222_X1 U44 ( .A1(C[11]), .A2(n179), .B1(A[11]), .B2(n175), .C1(B[11]), 
        .C2(n172), .ZN(n46) );
  INV_X1 U45 ( .A(n45), .ZN(Y[12]) );
  AOI222_X1 U46 ( .A1(C[12]), .A2(n179), .B1(A[12]), .B2(n176), .C1(B[12]), 
        .C2(n173), .ZN(n45) );
  INV_X1 U47 ( .A(n44), .ZN(Y[13]) );
  AOI222_X1 U48 ( .A1(C[13]), .A2(n179), .B1(A[13]), .B2(n176), .C1(B[13]), 
        .C2(n173), .ZN(n44) );
  INV_X1 U49 ( .A(n43), .ZN(Y[14]) );
  AOI222_X1 U50 ( .A1(C[14]), .A2(n179), .B1(A[14]), .B2(n176), .C1(B[14]), 
        .C2(n173), .ZN(n43) );
  INV_X1 U51 ( .A(n42), .ZN(Y[15]) );
  AOI222_X1 U52 ( .A1(C[15]), .A2(n179), .B1(A[15]), .B2(n176), .C1(B[15]), 
        .C2(n173), .ZN(n42) );
  INV_X1 U53 ( .A(n52), .ZN(Y[5]) );
  AOI222_X1 U54 ( .A1(C[5]), .A2(n178), .B1(A[5]), .B2(n175), .C1(B[5]), .C2(
        n172), .ZN(n52) );
  INV_X1 U55 ( .A(n51), .ZN(Y[6]) );
  AOI222_X1 U56 ( .A1(C[6]), .A2(n178), .B1(A[6]), .B2(n175), .C1(B[6]), .C2(
        n172), .ZN(n51) );
  INV_X1 U57 ( .A(n50), .ZN(Y[7]) );
  AOI222_X1 U58 ( .A1(C[7]), .A2(n178), .B1(A[7]), .B2(n175), .C1(B[7]), .C2(
        n172), .ZN(n50) );
  INV_X1 U59 ( .A(n54), .ZN(Y[3]) );
  AOI222_X1 U60 ( .A1(C[3]), .A2(n178), .B1(A[3]), .B2(n175), .C1(B[3]), .C2(
        n172), .ZN(n54) );
  INV_X1 U61 ( .A(n55), .ZN(Y[2]) );
  AOI222_X1 U62 ( .A1(C[2]), .A2(n178), .B1(A[2]), .B2(n175), .C1(B[2]), .C2(
        n172), .ZN(n55) );
  INV_X1 U63 ( .A(n56), .ZN(Y[1]) );
  AOI222_X1 U64 ( .A1(C[1]), .A2(n178), .B1(A[1]), .B2(n175), .C1(B[1]), .C2(
        n172), .ZN(n56) );
  INV_X1 U65 ( .A(n29), .ZN(Y[26]) );
  AOI222_X1 U66 ( .A1(n180), .A2(C[26]), .B1(A[26]), .B2(n177), .C1(B[26]), 
        .C2(n174), .ZN(n29) );
endmodule


module adder_NBIT27_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   net15252, net15866, net15865, net15250, \B_AS[20] , \B_AS[19] ,
         \B_AS[18] , \B_AS[17] , \B_AS[16] , \B_AS[15] , \B_AS[14] , \B_AS[9] ,
         \B_AS[8] , \B_AS[7] , \B_AS[6] , \B_AS[5] , \B_AS[13] , \B_AS[12] ,
         \B_AS[11] , \B_AS[10] , \carry[23] , net32981, net32889, net32857,
         net32856, net33659, net33658, net33649, net33668, net33214, net32925,
         net32931, net32930, \B_AS[22] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224;
  wire   [28:0] carry;
  wire   [27:0] B_AS;
  assign net15250 = ADD_SUB;

  XOR2_X1 U11 ( .A(B[24]), .B(net15250), .Z(B_AS[24]) );
  XOR2_X1 U12 ( .A(B[23]), .B(net15250), .Z(B_AS[23]) );
  XOR2_X1 U15 ( .A(B[20]), .B(net15250), .Z(\B_AS[20] ) );
  XOR2_X1 U19 ( .A(B[17]), .B(net15250), .Z(\B_AS[17] ) );
  XOR2_X1 U18 ( .A(B[18]), .B(net15250), .Z(\B_AS[18] ) );
  XOR2_X1 U17 ( .A(B[19]), .B(net15250), .Z(\B_AS[19] ) );
  XOR2_X1 U22 ( .A(B[14]), .B(net15250), .Z(\B_AS[14] ) );
  XOR2_X1 U21 ( .A(B[15]), .B(net15250), .Z(\B_AS[15] ) );
  XOR2_X1 U20 ( .A(B[16]), .B(net15250), .Z(\B_AS[16] ) );
  XOR2_X1 U5 ( .A(B[5]), .B(net15250), .Z(\B_AS[5] ) );
  XOR2_X1 U4 ( .A(B[6]), .B(net15250), .Z(\B_AS[6] ) );
  XOR2_X1 U3 ( .A(B[7]), .B(net15250), .Z(\B_AS[7] ) );
  XOR2_X1 U2 ( .A(B[8]), .B(net15250), .Z(\B_AS[8] ) );
  XOR2_X1 U1 ( .A(B[9]), .B(net15250), .Z(\B_AS[9] ) );
  XOR2_X1 U26 ( .A(B[10]), .B(net15252), .Z(\B_AS[10] ) );
  XOR2_X1 U25 ( .A(B[11]), .B(net15250), .Z(\B_AS[11] ) );
  XOR2_X1 U24 ( .A(B[12]), .B(net15250), .Z(\B_AS[12] ) );
  XOR2_X1 U23 ( .A(B[13]), .B(net15250), .Z(\B_AS[13] ) );
  XOR2_X1 U13 ( .A(B[22]), .B(net15250), .Z(\B_AS[22] ) );
  BUF_X1 U6 ( .A(n43), .Z(n5) );
  NAND2_X1 U7 ( .A1(n41), .A2(\B_AS[5] ), .ZN(n1) );
  NAND2_X1 U8 ( .A1(n132), .A2(A[5]), .ZN(n2) );
  CLKBUF_X1 U9 ( .A(A[18]), .Z(n3) );
  CLKBUF_X1 U10 ( .A(A[17]), .Z(n4) );
  INV_X1 U14 ( .A(n101), .ZN(n127) );
  XNOR2_X1 U16 ( .A(net15250), .B(B[0]), .ZN(n100) );
  NAND2_X1 U27 ( .A1(net32889), .A2(n100), .ZN(n124) );
  INV_X1 U28 ( .A(\B_AS[7] ), .ZN(n86) );
  XNOR2_X1 U29 ( .A(net15250), .B(B[21]), .ZN(net33658) );
  INV_X1 U30 ( .A(net15250), .ZN(net32889) );
  INV_X1 U31 ( .A(n100), .ZN(n125) );
  XNOR2_X1 U32 ( .A(net15250), .B(B[1]), .ZN(n101) );
  OR2_X1 U33 ( .A1(n150), .A2(n151), .ZN(n152) );
  INV_X1 U34 ( .A(\B_AS[5] ), .ZN(n84) );
  INV_X1 U35 ( .A(\B_AS[6] ), .ZN(n85) );
  AND2_X1 U36 ( .A1(n59), .A2(n58), .ZN(n166) );
  INV_X1 U37 ( .A(\B_AS[11] ), .ZN(n90) );
  NAND2_X1 U38 ( .A1(\B_AS[11] ), .A2(n57), .ZN(n60) );
  NAND2_X1 U39 ( .A1(n187), .A2(n167), .ZN(n57) );
  AND2_X1 U40 ( .A1(n66), .A2(n67), .ZN(n164) );
  INV_X1 U41 ( .A(\B_AS[14] ), .ZN(n93) );
  NAND2_X1 U42 ( .A1(n182), .A2(n165), .ZN(n65) );
  AND2_X1 U43 ( .A1(n74), .A2(n75), .ZN(n162) );
  INV_X1 U44 ( .A(\B_AS[17] ), .ZN(n96) );
  NAND2_X1 U45 ( .A1(n177), .A2(n163), .ZN(n73) );
  INV_X1 U46 ( .A(net33658), .ZN(n16) );
  XOR2_X1 U47 ( .A(B[25]), .B(net15250), .Z(B_AS[25]) );
  XOR2_X1 U48 ( .A(net15252), .B(B[27]), .Z(B_AS[27]) );
  XNOR2_X1 U49 ( .A(n100), .B(net32889), .ZN(n123) );
  XNOR2_X1 U50 ( .A(n159), .B(n101), .ZN(n112) );
  AND2_X1 U51 ( .A1(n38), .A2(n37), .ZN(n159) );
  NAND2_X1 U52 ( .A1(A[11]), .A2(n138), .ZN(n6) );
  CLKBUF_X1 U53 ( .A(A[20]), .Z(n7) );
  CLKBUF_X1 U54 ( .A(A[5]), .Z(n8) );
  XOR2_X1 U55 ( .A(B[4]), .B(net15250), .Z(n9) );
  XOR2_X1 U56 ( .A(B[2]), .B(net15250), .Z(n10) );
  XNOR2_X1 U57 ( .A(B[3]), .B(net15250), .ZN(n102) );
  INV_X1 U58 ( .A(n102), .ZN(n130) );
  INV_X1 U59 ( .A(\B_AS[22] ), .ZN(n11) );
  INV_X1 U60 ( .A(\B_AS[20] ), .ZN(n99) );
  INV_X1 U61 ( .A(\B_AS[8] ), .ZN(n87) );
  XNOR2_X1 U62 ( .A(A[3]), .B(n109), .ZN(SUM[3]) );
  XNOR2_X1 U63 ( .A(n12), .B(\B_AS[22] ), .ZN(n13) );
  XNOR2_X1 U64 ( .A(n13), .B(net33214), .ZN(SUM[22]) );
  OAI21_X1 U65 ( .B1(net32925), .B2(n11), .A(n15), .ZN(n14) );
  NAND2_X1 U66 ( .A1(net32931), .A2(n18), .ZN(n12) );
  OAI21_X1 U67 ( .B1(net33214), .B2(\B_AS[22] ), .A(n14), .ZN(net32981) );
  NAND2_X1 U68 ( .A1(A[21]), .A2(n17), .ZN(net32931) );
  AND2_X1 U69 ( .A1(net32931), .A2(n18), .ZN(n15) );
  NAND2_X1 U70 ( .A1(n16), .A2(net33649), .ZN(n18) );
  NAND2_X1 U71 ( .A1(n16), .A2(net33649), .ZN(net32930) );
  CLKBUF_X1 U72 ( .A(A[21]), .Z(net33668) );
  NAND2_X1 U73 ( .A1(net32930), .A2(n17), .ZN(net33659) );
  NAND3_X1 U74 ( .A1(net32857), .A2(net32856), .A3(net33658), .ZN(n17) );
  INV_X1 U75 ( .A(net32925), .ZN(net33214) );
  INV_X1 U76 ( .A(A[22]), .ZN(net32925) );
  CLKBUF_X1 U77 ( .A(A[25]), .Z(n19) );
  CLKBUF_X1 U78 ( .A(A[23]), .Z(n20) );
  XOR2_X1 U79 ( .A(n188), .B(n88), .Z(n103) );
  NAND2_X1 U80 ( .A1(n144), .A2(n23), .ZN(n21) );
  AND2_X2 U81 ( .A1(n21), .A2(n22), .ZN(n79) );
  OR2_X1 U82 ( .A1(n97), .A2(n76), .ZN(n22) );
  AND2_X1 U83 ( .A1(A[17]), .A2(\B_AS[18] ), .ZN(n23) );
  AND2_X1 U84 ( .A1(n43), .A2(n42), .ZN(n24) );
  AND2_X1 U85 ( .A1(n43), .A2(n42), .ZN(n171) );
  CLKBUF_X1 U86 ( .A(A[24]), .Z(n25) );
  XNOR2_X1 U87 ( .A(net33668), .B(net33659), .ZN(SUM[21]) );
  NAND2_X1 U88 ( .A1(net32857), .A2(net32856), .ZN(net33649) );
  XNOR2_X1 U89 ( .A(n8), .B(n107), .ZN(SUM[5]) );
  XNOR2_X1 U90 ( .A(n26), .B(\B_AS[20] ), .ZN(n111) );
  NAND2_X1 U91 ( .A1(n83), .A2(n82), .ZN(n26) );
  XNOR2_X1 U92 ( .A(n27), .B(\B_AS[10] ), .ZN(n122) );
  NAND2_X1 U93 ( .A1(n56), .A2(n189), .ZN(n27) );
  XNOR2_X1 U94 ( .A(n28), .B(\carry[23] ), .ZN(SUM[23]) );
  XNOR2_X1 U95 ( .A(A[23]), .B(B_AS[23]), .ZN(n28) );
  AND2_X1 U96 ( .A1(n82), .A2(n99), .ZN(n29) );
  XNOR2_X1 U97 ( .A(n30), .B(\B_AS[13] ), .ZN(n119) );
  NAND2_X1 U98 ( .A1(n184), .A2(n64), .ZN(n30) );
  XNOR2_X1 U99 ( .A(n152), .B(n10), .ZN(n110) );
  XNOR2_X1 U100 ( .A(n210), .B(n31), .ZN(SUM[26]) );
  XNOR2_X1 U101 ( .A(A[26]), .B(B_AS[27]), .ZN(n31) );
  XNOR2_X1 U102 ( .A(n214), .B(n32), .ZN(SUM[24]) );
  XNOR2_X1 U103 ( .A(A[24]), .B(B_AS[24]), .ZN(n32) );
  AND2_X1 U104 ( .A1(n102), .A2(n39), .ZN(n33) );
  AND2_X1 U105 ( .A1(n40), .A2(n39), .ZN(n170) );
  XNOR2_X1 U106 ( .A(n34), .B(\B_AS[16] ), .ZN(n116) );
  NAND2_X1 U107 ( .A1(n179), .A2(n72), .ZN(n34) );
  XNOR2_X1 U108 ( .A(carry[25]), .B(n35), .ZN(SUM[25]) );
  XNOR2_X1 U109 ( .A(A[25]), .B(B_AS[25]), .ZN(n35) );
  NAND2_X1 U110 ( .A1(A[0]), .A2(n124), .ZN(n38) );
  XNOR2_X1 U111 ( .A(A[0]), .B(n123), .ZN(SUM[0]) );
  INV_X1 U112 ( .A(net32981), .ZN(\carry[23] ) );
  NAND2_X1 U113 ( .A1(n133), .A2(A[6]), .ZN(n49) );
  NAND2_X1 U114 ( .A1(n44), .A2(\B_AS[6] ), .ZN(n48) );
  AND2_X1 U115 ( .A1(n36), .A2(n127), .ZN(n151) );
  NAND2_X1 U116 ( .A1(n157), .A2(n85), .ZN(n133) );
  NAND2_X1 U117 ( .A1(n158), .A2(A[6]), .ZN(n153) );
  OR2_X1 U118 ( .A1(n10), .A2(n151), .ZN(n154) );
  OR2_X1 U119 ( .A1(n154), .A2(n150), .ZN(n128) );
  OR2_X1 U120 ( .A1(n148), .A2(n9), .ZN(n155) );
  OR2_X1 U121 ( .A1(n156), .A2(n155), .ZN(n131) );
  AND2_X1 U122 ( .A1(n129), .A2(A[3]), .ZN(n156) );
  NAND2_X1 U123 ( .A1(n132), .A2(A[5]), .ZN(n46) );
  NAND2_X1 U124 ( .A1(n1), .A2(n2), .ZN(n44) );
  NAND2_X1 U125 ( .A1(n41), .A2(\B_AS[5] ), .ZN(n45) );
  AND2_X2 U126 ( .A1(n46), .A2(n45), .ZN(n157) );
  NAND2_X1 U127 ( .A1(n171), .A2(n84), .ZN(n132) );
  XNOR2_X1 U128 ( .A(n157), .B(n85), .ZN(n106) );
  NAND2_X1 U129 ( .A1(n157), .A2(n85), .ZN(n158) );
  NAND2_X1 U130 ( .A1(n153), .A2(n48), .ZN(n47) );
  NAND2_X1 U131 ( .A1(n37), .A2(n160), .ZN(n36) );
  NAND2_X1 U132 ( .A1(n125), .A2(net15250), .ZN(n37) );
  AND2_X1 U133 ( .A1(A[1]), .A2(n126), .ZN(n150) );
  XNOR2_X1 U134 ( .A(A[1]), .B(n112), .ZN(SUM[1]) );
  NAND2_X1 U135 ( .A1(A[2]), .A2(n128), .ZN(n40) );
  XNOR2_X1 U136 ( .A(A[2]), .B(n110), .ZN(SUM[2]) );
  NAND2_X1 U137 ( .A1(A[0]), .A2(n124), .ZN(n160) );
  NAND2_X1 U138 ( .A1(A[19]), .A2(n146), .ZN(n83) );
  NAND2_X1 U139 ( .A1(n78), .A2(\B_AS[19] ), .ZN(n82) );
  NAND2_X1 U140 ( .A1(A[19]), .A2(n146), .ZN(n161) );
  INV_X1 U141 ( .A(\B_AS[19] ), .ZN(n98) );
  NAND2_X1 U142 ( .A1(n79), .A2(n80), .ZN(n78) );
  NAND2_X1 U143 ( .A1(A[18]), .A2(n145), .ZN(n80) );
  NAND2_X1 U144 ( .A1(n143), .A2(A[16]), .ZN(n75) );
  NAND2_X1 U145 ( .A1(n70), .A2(\B_AS[16] ), .ZN(n74) );
  NAND2_X1 U146 ( .A1(A[16]), .A2(n143), .ZN(n163) );
  INV_X1 U147 ( .A(\B_AS[16] ), .ZN(n95) );
  NAND2_X1 U148 ( .A1(n72), .A2(n179), .ZN(n70) );
  NAND2_X1 U149 ( .A1(A[15]), .A2(n142), .ZN(n72) );
  NAND2_X1 U150 ( .A1(n178), .A2(\B_AS[15] ), .ZN(n71) );
  NAND2_X1 U151 ( .A1(A[13]), .A2(n140), .ZN(n67) );
  NAND2_X1 U152 ( .A1(n62), .A2(\B_AS[13] ), .ZN(n66) );
  NAND2_X1 U153 ( .A1(A[13]), .A2(n140), .ZN(n165) );
  INV_X1 U154 ( .A(\B_AS[13] ), .ZN(n92) );
  NAND2_X1 U155 ( .A1(n64), .A2(n184), .ZN(n62) );
  NAND2_X1 U156 ( .A1(A[12]), .A2(n139), .ZN(n64) );
  NAND2_X1 U157 ( .A1(n183), .A2(\B_AS[12] ), .ZN(n63) );
  NAND2_X1 U158 ( .A1(A[10]), .A2(n137), .ZN(n59) );
  NAND2_X1 U159 ( .A1(n54), .A2(\B_AS[10] ), .ZN(n58) );
  NAND2_X1 U160 ( .A1(A[10]), .A2(n137), .ZN(n167) );
  INV_X1 U161 ( .A(\B_AS[10] ), .ZN(n89) );
  NAND2_X1 U162 ( .A1(n56), .A2(n189), .ZN(n54) );
  NAND2_X1 U163 ( .A1(A[9]), .A2(n136), .ZN(n56) );
  NAND2_X1 U164 ( .A1(n188), .A2(\B_AS[9] ), .ZN(n55) );
  NAND2_X1 U165 ( .A1(n134), .A2(A[7]), .ZN(n51) );
  NAND2_X1 U166 ( .A1(n47), .A2(\B_AS[7] ), .ZN(n50) );
  NAND2_X1 U167 ( .A1(n208), .A2(n49), .ZN(n134) );
  AND2_X1 U168 ( .A1(n37), .A2(n101), .ZN(n169) );
  NAND2_X1 U169 ( .A1(n38), .A2(n169), .ZN(n126) );
  NAND2_X1 U170 ( .A1(n152), .A2(n10), .ZN(n39) );
  NAND2_X1 U171 ( .A1(n33), .A2(n40), .ZN(n129) );
  XNOR2_X1 U172 ( .A(n170), .B(n102), .ZN(n109) );
  NAND2_X1 U173 ( .A1(A[4]), .A2(n131), .ZN(n43) );
  NAND2_X1 U174 ( .A1(n172), .A2(n5), .ZN(n41) );
  NAND2_X1 U175 ( .A1(n149), .A2(n9), .ZN(n42) );
  NAND2_X1 U176 ( .A1(n149), .A2(n9), .ZN(n172) );
  XNOR2_X1 U177 ( .A(n191), .B(n9), .ZN(n108) );
  XNOR2_X1 U178 ( .A(n24), .B(n84), .ZN(n107) );
  AND2_X1 U179 ( .A1(n79), .A2(n98), .ZN(n173) );
  NAND2_X1 U180 ( .A1(n174), .A2(n173), .ZN(n146) );
  NAND2_X1 U181 ( .A1(n145), .A2(A[18]), .ZN(n174) );
  NAND2_X1 U182 ( .A1(n82), .A2(n161), .ZN(n81) );
  NAND2_X1 U183 ( .A1(n29), .A2(n161), .ZN(n147) );
  INV_X1 U184 ( .A(\B_AS[18] ), .ZN(n97) );
  NAND2_X1 U185 ( .A1(n144), .A2(A[17]), .ZN(n77) );
  NAND2_X1 U186 ( .A1(n162), .A2(n96), .ZN(n144) );
  NAND2_X1 U187 ( .A1(A[20]), .A2(n147), .ZN(net32857) );
  NAND2_X1 U188 ( .A1(\B_AS[20] ), .A2(n81), .ZN(net32856) );
  XNOR2_X1 U189 ( .A(A[19]), .B(n113), .ZN(SUM[19]) );
  XNOR2_X1 U190 ( .A(n193), .B(n97), .ZN(n114) );
  XNOR2_X1 U191 ( .A(n114), .B(n3), .ZN(SUM[18]) );
  AND2_X1 U192 ( .A1(n71), .A2(n95), .ZN(n175) );
  NAND2_X1 U193 ( .A1(n176), .A2(n175), .ZN(n143) );
  NAND2_X1 U194 ( .A1(n142), .A2(A[15]), .ZN(n176) );
  NAND2_X1 U195 ( .A1(n70), .A2(\B_AS[16] ), .ZN(n177) );
  XNOR2_X1 U196 ( .A(n162), .B(n96), .ZN(n115) );
  XNOR2_X1 U197 ( .A(n116), .B(A[16]), .ZN(SUM[16]) );
  INV_X1 U198 ( .A(\B_AS[15] ), .ZN(n94) );
  NAND2_X1 U199 ( .A1(A[14]), .A2(n141), .ZN(n69) );
  NAND2_X1 U200 ( .A1(n69), .A2(n68), .ZN(n178) );
  NAND2_X1 U201 ( .A1(n164), .A2(n93), .ZN(n141) );
  AND2_X1 U202 ( .A1(n63), .A2(n92), .ZN(n180) );
  NAND2_X1 U203 ( .A1(n181), .A2(n180), .ZN(n140) );
  NAND2_X1 U204 ( .A1(n139), .A2(A[12]), .ZN(n181) );
  NAND2_X1 U205 ( .A1(n62), .A2(\B_AS[13] ), .ZN(n182) );
  XNOR2_X1 U206 ( .A(n164), .B(n93), .ZN(n118) );
  INV_X1 U207 ( .A(\B_AS[12] ), .ZN(n91) );
  NAND2_X1 U208 ( .A1(A[11]), .A2(n138), .ZN(n61) );
  NAND2_X1 U209 ( .A1(n61), .A2(n60), .ZN(n183) );
  NAND2_X1 U210 ( .A1(n166), .A2(n90), .ZN(n138) );
  AND2_X1 U211 ( .A1(n89), .A2(n55), .ZN(n185) );
  NAND2_X1 U212 ( .A1(n186), .A2(n185), .ZN(n137) );
  NAND2_X1 U213 ( .A1(n136), .A2(A[9]), .ZN(n186) );
  NAND2_X1 U214 ( .A1(n54), .A2(\B_AS[10] ), .ZN(n187) );
  XNOR2_X1 U215 ( .A(n166), .B(n90), .ZN(n121) );
  INV_X1 U216 ( .A(\B_AS[9] ), .ZN(n88) );
  NAND2_X1 U217 ( .A1(n135), .A2(A[8]), .ZN(n53) );
  NAND2_X1 U218 ( .A1(n52), .A2(n53), .ZN(n188) );
  NAND2_X1 U219 ( .A1(n200), .A2(n51), .ZN(n135) );
  CLKBUF_X1 U220 ( .A(n55), .Z(n189) );
  XNOR2_X1 U221 ( .A(n168), .B(n87), .ZN(n104) );
  CLKBUF_X1 U222 ( .A(n148), .Z(n190) );
  OR2_X1 U223 ( .A1(n156), .A2(n190), .ZN(n149) );
  OR2_X1 U224 ( .A1(n156), .A2(n190), .ZN(n191) );
  AND2_X1 U225 ( .A1(n76), .A2(n97), .ZN(n192) );
  NAND2_X1 U226 ( .A1(n77), .A2(n192), .ZN(n145) );
  XNOR2_X1 U227 ( .A(n195), .B(n94), .ZN(n117) );
  XNOR2_X1 U228 ( .A(n117), .B(A[15]), .ZN(SUM[15]) );
  XNOR2_X1 U229 ( .A(n119), .B(A[13]), .ZN(SUM[13]) );
  NAND2_X1 U230 ( .A1(\B_AS[17] ), .A2(n73), .ZN(n76) );
  AND2_X1 U231 ( .A1(n77), .A2(n76), .ZN(n193) );
  XNOR2_X1 U232 ( .A(A[12]), .B(n120), .ZN(SUM[12]) );
  AND2_X1 U233 ( .A1(n68), .A2(n94), .ZN(n194) );
  NAND2_X1 U234 ( .A1(n69), .A2(n194), .ZN(n142) );
  XNOR2_X1 U235 ( .A(n122), .B(A[10]), .ZN(SUM[10]) );
  XNOR2_X1 U236 ( .A(n108), .B(n199), .ZN(SUM[4]) );
  NAND2_X1 U237 ( .A1(\B_AS[14] ), .A2(n65), .ZN(n68) );
  AND2_X1 U238 ( .A1(n69), .A2(n68), .ZN(n195) );
  XNOR2_X1 U239 ( .A(n103), .B(A[9]), .ZN(SUM[9]) );
  BUF_X1 U240 ( .A(n71), .Z(n179) );
  AND2_X1 U241 ( .A1(n60), .A2(n91), .ZN(n196) );
  NAND2_X1 U242 ( .A1(n6), .A2(n196), .ZN(n139) );
  XNOR2_X1 U243 ( .A(n106), .B(A[6]), .ZN(SUM[6]) );
  XNOR2_X1 U244 ( .A(n197), .B(\B_AS[12] ), .ZN(n120) );
  NAND2_X1 U245 ( .A1(n6), .A2(n60), .ZN(n197) );
  AND2_X1 U246 ( .A1(n53), .A2(n88), .ZN(n198) );
  NAND2_X1 U247 ( .A1(n52), .A2(n198), .ZN(n136) );
  XNOR2_X1 U248 ( .A(n47), .B(\B_AS[7] ), .ZN(n105) );
  XNOR2_X1 U249 ( .A(n105), .B(A[7]), .ZN(SUM[7]) );
  CLKBUF_X1 U250 ( .A(A[4]), .Z(n199) );
  AND2_X1 U251 ( .A1(n50), .A2(n87), .ZN(n200) );
  AND2_X1 U252 ( .A1(n128), .A2(n130), .ZN(n201) );
  OR2_X1 U253 ( .A1(n102), .A2(n39), .ZN(n202) );
  NAND2_X1 U254 ( .A1(n203), .A2(n202), .ZN(n148) );
  NAND2_X1 U255 ( .A1(A[2]), .A2(n201), .ZN(n203) );
  AND2_X1 U256 ( .A1(A[7]), .A2(\B_AS[8] ), .ZN(n204) );
  OR2_X1 U257 ( .A1(n87), .A2(n50), .ZN(n205) );
  AND2_X1 U258 ( .A1(n206), .A2(n205), .ZN(n52) );
  NAND2_X1 U259 ( .A1(n134), .A2(n204), .ZN(n206) );
  XNOR2_X1 U260 ( .A(A[8]), .B(n104), .ZN(SUM[8]) );
  NAND2_X1 U261 ( .A1(n79), .A2(n80), .ZN(n207) );
  XNOR2_X1 U262 ( .A(n207), .B(\B_AS[19] ), .ZN(n113) );
  XNOR2_X1 U263 ( .A(n4), .B(n115), .ZN(SUM[17]) );
  BUF_X1 U264 ( .A(n63), .Z(n184) );
  XNOR2_X1 U265 ( .A(A[14]), .B(n118), .ZN(SUM[14]) );
  XNOR2_X1 U266 ( .A(n111), .B(n7), .ZN(SUM[20]) );
  AND2_X1 U267 ( .A1(n51), .A2(n50), .ZN(n168) );
  AND2_X1 U268 ( .A1(n48), .A2(n86), .ZN(n208) );
  XNOR2_X1 U269 ( .A(A[11]), .B(n121), .ZN(SUM[11]) );
  NAND2_X1 U270 ( .A1(\carry[23] ), .A2(n20), .ZN(net15865) );
  NAND2_X1 U271 ( .A1(B_AS[23]), .A2(\carry[23] ), .ZN(net15866) );
  NAND3_X1 U272 ( .A1(n219), .A2(n220), .A3(n221), .ZN(n209) );
  NAND3_X1 U273 ( .A1(n219), .A2(n220), .A3(n221), .ZN(n210) );
  XNOR2_X1 U274 ( .A(carry[27]), .B(n211), .ZN(SUM[27]) );
  XNOR2_X1 U275 ( .A(A[27]), .B(B_AS[27]), .ZN(n211) );
  BUF_X1 U276 ( .A(net15250), .Z(net15252) );
  NAND3_X1 U277 ( .A1(n216), .A2(n217), .A3(n218), .ZN(n212) );
  NAND3_X1 U278 ( .A1(n215), .A2(net15865), .A3(net15866), .ZN(n213) );
  NAND3_X1 U279 ( .A1(net15866), .A2(net15865), .A3(n215), .ZN(n214) );
  NAND2_X1 U280 ( .A1(n20), .A2(B_AS[23]), .ZN(n215) );
  NAND3_X1 U281 ( .A1(net15866), .A2(net15865), .A3(n215), .ZN(carry[24]) );
  NAND2_X1 U282 ( .A1(n25), .A2(B_AS[24]), .ZN(n216) );
  NAND2_X1 U283 ( .A1(n25), .A2(n213), .ZN(n217) );
  NAND2_X1 U284 ( .A1(B_AS[24]), .A2(carry[24]), .ZN(n218) );
  NAND3_X1 U285 ( .A1(n217), .A2(n216), .A3(n218), .ZN(carry[25]) );
  NAND2_X1 U286 ( .A1(n212), .A2(n19), .ZN(n219) );
  NAND2_X1 U287 ( .A1(carry[25]), .A2(B_AS[25]), .ZN(n220) );
  NAND2_X1 U288 ( .A1(n19), .A2(B_AS[25]), .ZN(n221) );
  NAND3_X1 U289 ( .A1(n219), .A2(n220), .A3(n221), .ZN(carry[26]) );
  NAND2_X1 U290 ( .A1(n209), .A2(A[26]), .ZN(n222) );
  NAND2_X1 U291 ( .A1(carry[26]), .A2(B_AS[27]), .ZN(n223) );
  NAND2_X1 U292 ( .A1(A[26]), .A2(B_AS[27]), .ZN(n224) );
  NAND3_X1 U293 ( .A1(n222), .A2(n223), .A3(n224), .ZN(carry[27]) );
endmodule


module adder_NBIT27 ( A, B, SUB_SUMn, S );
  input [26:0] A;
  input [26:0] B;
  output [27:0] S;
  input SUB_SUMn;
  wire   N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72,
         N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         \U1/U1/Z_0 ;
  assign S[0] = N59;
  assign S[1] = N60;
  assign S[2] = N61;
  assign S[3] = N62;
  assign S[4] = N63;
  assign S[5] = N64;
  assign S[6] = N65;
  assign S[7] = N66;
  assign S[8] = N67;
  assign S[9] = N68;
  assign S[10] = N69;
  assign S[11] = N70;
  assign S[12] = N71;
  assign S[13] = N72;
  assign S[14] = N73;
  assign S[15] = N74;
  assign S[16] = N75;
  assign S[17] = N76;
  assign S[18] = N77;
  assign S[19] = N78;
  assign S[20] = N79;
  assign S[21] = N80;
  assign S[22] = N81;
  assign S[23] = N82;
  assign S[24] = N83;
  assign S[25] = N84;
  assign S[26] = N85;
  assign S[27] = N86;
  assign \U1/U1/Z_0  = SUB_SUMn;

  adder_NBIT27_DW01_addsub_0 r56 ( .A({A[26], A}), .B({B[26], B}), .CI(1'b0), 
        .ADD_SUB(\U1/U1/Z_0 ), .SUM({N86, N85, N84, N83, N82, N81, N80, N79, 
        N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, 
        N64, N63, N62, N61, N60, N59}) );
endmodule


module encoder_2 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n1;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X1 U1 ( .A1(vp[0]), .A2(n1), .ZN(vp[1]) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n1) );
endmodule


module mux_NBIT29 ( A, B, C, S, Y );
  input [28:0] A;
  input [28:0] B;
  input [28:0] C;
  input [1:0] S;
  output [28:0] Y;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n222;

  BUF_X1 U1 ( .A(n33), .Z(n185) );
  BUF_X1 U2 ( .A(n33), .Z(n186) );
  BUF_X1 U3 ( .A(n32), .Z(n187) );
  BUF_X1 U4 ( .A(n32), .Z(n188) );
  BUF_X1 U5 ( .A(n33), .Z(n184) );
  BUF_X1 U6 ( .A(n32), .Z(n189) );
  NOR2_X1 U7 ( .A1(n222), .A2(n190), .ZN(n33) );
  INV_X1 U8 ( .A(S[0]), .ZN(n222) );
  BUF_X1 U9 ( .A(S[1]), .Z(n190) );
  BUF_X1 U10 ( .A(S[1]), .Z(n191) );
  BUF_X1 U11 ( .A(S[1]), .Z(n192) );
  NOR2_X1 U12 ( .A1(S[0]), .A2(n190), .ZN(n32) );
  INV_X1 U13 ( .A(n34), .ZN(Y[27]) );
  AOI222_X1 U14 ( .A1(C[27]), .A2(n192), .B1(A[27]), .B2(n189), .C1(B[27]), 
        .C2(n186), .ZN(n34) );
  INV_X1 U15 ( .A(n36), .ZN(Y[25]) );
  AOI222_X1 U16 ( .A1(C[25]), .A2(n192), .B1(A[25]), .B2(n189), .C1(B[25]), 
        .C2(n186), .ZN(n36) );
  INV_X1 U17 ( .A(n35), .ZN(Y[26]) );
  AOI222_X1 U18 ( .A1(C[26]), .A2(n192), .B1(A[26]), .B2(n189), .C1(B[26]), 
        .C2(n186), .ZN(n35) );
  INV_X1 U19 ( .A(n37), .ZN(Y[24]) );
  AOI222_X1 U20 ( .A1(C[24]), .A2(n192), .B1(A[24]), .B2(n189), .C1(B[24]), 
        .C2(n186), .ZN(n37) );
  INV_X1 U21 ( .A(n38), .ZN(Y[23]) );
  AOI222_X1 U22 ( .A1(C[23]), .A2(n192), .B1(A[23]), .B2(n188), .C1(B[23]), 
        .C2(n185), .ZN(n38) );
  INV_X1 U23 ( .A(n39), .ZN(Y[22]) );
  AOI222_X1 U24 ( .A1(C[22]), .A2(n192), .B1(A[22]), .B2(n188), .C1(B[22]), 
        .C2(n185), .ZN(n39) );
  INV_X1 U25 ( .A(n40), .ZN(Y[21]) );
  AOI222_X1 U26 ( .A1(C[21]), .A2(n191), .B1(A[21]), .B2(n188), .C1(B[21]), 
        .C2(n185), .ZN(n40) );
  INV_X1 U27 ( .A(n41), .ZN(Y[20]) );
  AOI222_X1 U28 ( .A1(C[20]), .A2(n191), .B1(A[20]), .B2(n188), .C1(B[20]), 
        .C2(n185), .ZN(n41) );
  INV_X1 U29 ( .A(n42), .ZN(Y[19]) );
  AOI222_X1 U30 ( .A1(C[19]), .A2(n191), .B1(A[19]), .B2(n188), .C1(B[19]), 
        .C2(n185), .ZN(n42) );
  INV_X1 U31 ( .A(n43), .ZN(Y[18]) );
  AOI222_X1 U32 ( .A1(C[18]), .A2(n191), .B1(A[18]), .B2(n188), .C1(B[18]), 
        .C2(n185), .ZN(n43) );
  INV_X1 U33 ( .A(n53), .ZN(Y[8]) );
  AOI222_X1 U34 ( .A1(C[8]), .A2(n190), .B1(A[8]), .B2(n187), .C1(B[8]), .C2(
        n184), .ZN(n53) );
  INV_X1 U35 ( .A(n52), .ZN(Y[9]) );
  AOI222_X1 U36 ( .A1(C[9]), .A2(n190), .B1(A[9]), .B2(n187), .C1(B[9]), .C2(
        n184), .ZN(n52) );
  INV_X1 U37 ( .A(n51), .ZN(Y[10]) );
  AOI222_X1 U38 ( .A1(C[10]), .A2(n191), .B1(A[10]), .B2(n187), .C1(B[10]), 
        .C2(n184), .ZN(n51) );
  INV_X1 U39 ( .A(n50), .ZN(Y[11]) );
  AOI222_X1 U40 ( .A1(C[11]), .A2(n191), .B1(A[11]), .B2(n187), .C1(B[11]), 
        .C2(n184), .ZN(n50) );
  INV_X1 U41 ( .A(n49), .ZN(Y[12]) );
  AOI222_X1 U42 ( .A1(C[12]), .A2(n191), .B1(A[12]), .B2(n188), .C1(B[12]), 
        .C2(n185), .ZN(n49) );
  INV_X1 U43 ( .A(n48), .ZN(Y[13]) );
  AOI222_X1 U44 ( .A1(C[13]), .A2(n191), .B1(A[13]), .B2(n188), .C1(B[13]), 
        .C2(n185), .ZN(n48) );
  INV_X1 U45 ( .A(n47), .ZN(Y[14]) );
  AOI222_X1 U46 ( .A1(C[14]), .A2(n191), .B1(A[14]), .B2(n188), .C1(B[14]), 
        .C2(n185), .ZN(n47) );
  INV_X1 U47 ( .A(n46), .ZN(Y[15]) );
  AOI222_X1 U48 ( .A1(C[15]), .A2(n191), .B1(A[15]), .B2(n188), .C1(B[15]), 
        .C2(n185), .ZN(n46) );
  INV_X1 U49 ( .A(n45), .ZN(Y[16]) );
  AOI222_X1 U50 ( .A1(C[16]), .A2(n191), .B1(A[16]), .B2(n188), .C1(B[16]), 
        .C2(n185), .ZN(n45) );
  INV_X1 U51 ( .A(n44), .ZN(Y[17]) );
  AOI222_X1 U52 ( .A1(C[17]), .A2(n191), .B1(A[17]), .B2(n188), .C1(B[17]), 
        .C2(n185), .ZN(n44) );
  INV_X1 U53 ( .A(n56), .ZN(Y[5]) );
  AOI222_X1 U54 ( .A1(C[5]), .A2(n190), .B1(A[5]), .B2(n187), .C1(B[5]), .C2(
        n184), .ZN(n56) );
  INV_X1 U55 ( .A(n55), .ZN(Y[6]) );
  AOI222_X1 U56 ( .A1(C[6]), .A2(n190), .B1(A[6]), .B2(n187), .C1(B[6]), .C2(
        n184), .ZN(n55) );
  INV_X1 U57 ( .A(n54), .ZN(Y[7]) );
  AOI222_X1 U58 ( .A1(C[7]), .A2(n190), .B1(A[7]), .B2(n187), .C1(B[7]), .C2(
        n184), .ZN(n54) );
  INV_X1 U59 ( .A(n57), .ZN(Y[4]) );
  AOI222_X1 U60 ( .A1(C[4]), .A2(n190), .B1(A[4]), .B2(n187), .C1(B[4]), .C2(
        n184), .ZN(n57) );
  INV_X1 U61 ( .A(n58), .ZN(Y[3]) );
  AOI222_X1 U62 ( .A1(C[3]), .A2(n190), .B1(A[3]), .B2(n187), .C1(B[3]), .C2(
        n184), .ZN(n58) );
  INV_X1 U63 ( .A(n59), .ZN(Y[2]) );
  AOI222_X1 U64 ( .A1(C[2]), .A2(n190), .B1(A[2]), .B2(n187), .C1(B[2]), .C2(
        n184), .ZN(n59) );
  INV_X1 U65 ( .A(n60), .ZN(Y[1]) );
  AOI222_X1 U66 ( .A1(C[1]), .A2(n190), .B1(A[1]), .B2(n187), .C1(B[1]), .C2(
        n184), .ZN(n60) );
  INV_X1 U67 ( .A(n61), .ZN(Y[0]) );
  AOI222_X1 U68 ( .A1(C[0]), .A2(n190), .B1(A[0]), .B2(n187), .C1(B[0]), .C2(
        n184), .ZN(n61) );
  INV_X1 U69 ( .A(n31), .ZN(Y[28]) );
  AOI222_X1 U70 ( .A1(n192), .A2(C[28]), .B1(A[28]), .B2(n189), .C1(B[28]), 
        .C2(n186), .ZN(n31) );
endmodule


module adder_NBIT29_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   net15246, net15244, net15242, net15927, net15926, net15932, \B_AS[9] ,
         \B_AS[8] , \B_AS[7] , \B_AS[6] , \B_AS[5] , \B_AS[4] , \B_AS[3] ,
         \B_AS[2] , \B_AS[18] , \B_AS[17] , \B_AS[16] , \B_AS[15] , \B_AS[14] ,
         \B_AS[13] , \B_AS[12] , \B_AS[11] , \B_AS[10] , net19811, \carry[9] ,
         \carry[8] , \carry[7] , \carry[6] , \carry[5] , \carry[4] ,
         \carry[3] , \carry[2] , \carry[1] , \carry[17] , \carry[16] ,
         \carry[15] , \carry[14] , \carry[13] , \carry[12] , \carry[11] ,
         \carry[10] , \B_AS[1] , \B_AS[0] , net33317, net33316, net33315,
         net33342, net33338, net33405, net33428, \carry[23] , \carry[22] ,
         \carry[21] , \carry[20] , \carry[19] , \carry[18] , \B_AS[22] ,
         \B_AS[21] , \B_AS[20] , \B_AS[19] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51;
  wire   [30:0] carry;
  wire   [29:0] B_AS;
  assign carry[0] = ADD_SUB;

  XOR2_X1 U11 ( .A(B[26]), .B(net15242), .Z(B_AS[26]) );
  XOR2_X1 U12 ( .A(B[25]), .B(net15242), .Z(B_AS[25]) );
  XOR2_X1 U13 ( .A(B[24]), .B(net15242), .Z(B_AS[24]) );
  XOR2_X1 U14 ( .A(B[23]), .B(net15244), .Z(B_AS[23]) );
  XOR2_X1 U8 ( .A(B[2]), .B(net15242), .Z(\B_AS[2] ) );
  XOR2_X1 U7 ( .A(B[3]), .B(net15242), .Z(\B_AS[3] ) );
  XOR2_X1 U6 ( .A(B[4]), .B(net15244), .Z(\B_AS[4] ) );
  XOR2_X1 U5 ( .A(B[5]), .B(net15242), .Z(\B_AS[5] ) );
  XOR2_X1 U4 ( .A(B[6]), .B(net15242), .Z(\B_AS[6] ) );
  XOR2_X1 U3 ( .A(B[7]), .B(net15242), .Z(\B_AS[7] ) );
  XOR2_X1 U2 ( .A(B[8]), .B(net15242), .Z(\B_AS[8] ) );
  XOR2_X1 U1 ( .A(B[9]), .B(net15242), .Z(\B_AS[9] ) );
  XOR2_X1 U28 ( .A(B[10]), .B(net15246), .Z(\B_AS[10] ) );
  XOR2_X1 U27 ( .A(B[11]), .B(net15246), .Z(\B_AS[11] ) );
  XOR2_X1 U26 ( .A(B[12]), .B(net15246), .Z(\B_AS[12] ) );
  XOR2_X1 U25 ( .A(B[13]), .B(net15244), .Z(\B_AS[13] ) );
  XOR2_X1 U24 ( .A(B[14]), .B(net15244), .Z(\B_AS[14] ) );
  XOR2_X1 U23 ( .A(B[15]), .B(net15244), .Z(\B_AS[15] ) );
  XOR2_X1 U22 ( .A(B[16]), .B(net15244), .Z(\B_AS[16] ) );
  XOR2_X1 U21 ( .A(B[17]), .B(net15244), .Z(\B_AS[17] ) );
  XOR2_X1 U20 ( .A(B[18]), .B(net15244), .Z(\B_AS[18] ) );
  XOR2_X1 U18 ( .A(B[1]), .B(net15244), .Z(\B_AS[1] ) );
  XOR2_X1 U29 ( .A(B[0]), .B(net15242), .Z(\B_AS[0] ) );
  FA_X1 U1_0 ( .A(A[0]), .B(\B_AS[0] ), .CI(net15242), .CO(\carry[1] ), .S(
        SUM[0]) );
  FA_X1 U1_1 ( .A(A[1]), .B(\B_AS[1] ), .CI(\carry[1] ), .CO(\carry[2] ), .S(
        SUM[1]) );
  FA_X1 U1_2 ( .A(A[2]), .B(\B_AS[2] ), .CI(\carry[2] ), .CO(\carry[3] ), .S(
        SUM[2]) );
  FA_X1 U1_3 ( .A(A[3]), .B(\B_AS[3] ), .CI(\carry[3] ), .CO(\carry[4] ), .S(
        SUM[3]) );
  FA_X1 U1_4 ( .A(A[4]), .B(\B_AS[4] ), .CI(\carry[4] ), .CO(\carry[5] ), .S(
        SUM[4]) );
  FA_X1 U1_5 ( .A(A[5]), .B(\B_AS[5] ), .CI(\carry[5] ), .CO(\carry[6] ), .S(
        SUM[5]) );
  FA_X1 U1_6 ( .A(A[6]), .B(\B_AS[6] ), .CI(\carry[6] ), .CO(\carry[7] ), .S(
        SUM[6]) );
  FA_X1 U1_7 ( .A(A[7]), .B(\B_AS[7] ), .CI(\carry[7] ), .CO(\carry[8] ), .S(
        SUM[7]) );
  FA_X1 U1_8 ( .A(A[8]), .B(\B_AS[8] ), .CI(\carry[8] ), .CO(\carry[9] ), .S(
        SUM[8]) );
  FA_X1 U1_9 ( .A(A[9]), .B(\B_AS[9] ), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        SUM[9]) );
  FA_X1 U1_10 ( .A(A[10]), .B(\B_AS[10] ), .CI(\carry[10] ), .CO(\carry[11] ), 
        .S(SUM[10]) );
  FA_X1 U1_11 ( .A(A[11]), .B(\B_AS[11] ), .CI(\carry[11] ), .CO(\carry[12] ), 
        .S(SUM[11]) );
  FA_X1 U1_12 ( .A(A[12]), .B(\B_AS[12] ), .CI(\carry[12] ), .CO(\carry[13] ), 
        .S(SUM[12]) );
  FA_X1 U1_13 ( .A(A[13]), .B(\B_AS[13] ), .CI(\carry[13] ), .CO(\carry[14] ), 
        .S(SUM[13]) );
  FA_X1 U1_14 ( .A(A[14]), .B(\B_AS[14] ), .CI(\carry[14] ), .CO(\carry[15] ), 
        .S(SUM[14]) );
  FA_X1 U1_15 ( .A(A[15]), .B(\B_AS[15] ), .CI(\carry[15] ), .CO(\carry[16] ), 
        .S(SUM[15]) );
  FA_X1 U1_16 ( .A(A[16]), .B(\B_AS[16] ), .CI(\carry[16] ), .CO(\carry[17] ), 
        .S(SUM[16]) );
  XOR2_X1 U19 ( .A(B[19]), .B(net15244), .Z(\B_AS[19] ) );
  XOR2_X1 U15 ( .A(B[22]), .B(net15244), .Z(\B_AS[22] ) );
  XOR2_X1 U16 ( .A(B[21]), .B(net15244), .Z(\B_AS[21] ) );
  XOR2_X1 U17 ( .A(B[20]), .B(net15244), .Z(\B_AS[20] ) );
  FA_X1 U1_20 ( .A(A[20]), .B(\B_AS[20] ), .CI(\carry[20] ), .CO(\carry[21] ), 
        .S(SUM[20]) );
  FA_X1 U1_21 ( .A(A[21]), .B(\B_AS[21] ), .CI(\carry[21] ), .CO(\carry[22] ), 
        .S(SUM[21]) );
  FA_X1 U1_22 ( .A(A[22]), .B(\B_AS[22] ), .CI(\carry[22] ), .CO(\carry[23] ), 
        .S(SUM[22]) );
  XOR2_X1 U9 ( .A(B[27]), .B(net15242), .Z(B_AS[27]) );
  XOR2_X1 U10 ( .A(net15246), .B(B[29]), .Z(B_AS[29]) );
  CLKBUF_X1 U30 ( .A(n6), .Z(n1) );
  CLKBUF_X1 U31 ( .A(net33316), .Z(n2) );
  NAND2_X1 U32 ( .A1(n27), .A2(B_AS[24]), .ZN(n3) );
  CLKBUF_X1 U33 ( .A(\carry[17] ), .Z(n4) );
  INV_X1 U34 ( .A(\B_AS[18] ), .ZN(n11) );
  INV_X1 U35 ( .A(B_AS[26]), .ZN(n34) );
  XNOR2_X1 U36 ( .A(\carry[23] ), .B(net15932), .ZN(SUM[23]) );
  NAND2_X1 U37 ( .A1(\carry[23] ), .A2(net19811), .ZN(net15926) );
  NAND2_X1 U38 ( .A1(\carry[23] ), .A2(B_AS[23]), .ZN(net15927) );
  NAND3_X1 U39 ( .A1(n10), .A2(n9), .A3(n8), .ZN(\carry[20] ) );
  NAND2_X1 U40 ( .A1(\B_AS[19] ), .A2(\carry[19] ), .ZN(n10) );
  NAND3_X1 U41 ( .A1(n7), .A2(n6), .A3(n5), .ZN(\carry[19] ) );
  NAND2_X1 U42 ( .A1(n13), .A2(A[19]), .ZN(n9) );
  NAND3_X1 U43 ( .A1(n7), .A2(n6), .A3(n5), .ZN(n13) );
  NAND2_X1 U44 ( .A1(A[19]), .A2(\B_AS[19] ), .ZN(n8) );
  BUF_X1 U45 ( .A(carry[0]), .Z(net15244) );
  XOR2_X1 U46 ( .A(A[19]), .B(\B_AS[19] ), .Z(net33342) );
  NAND2_X1 U47 ( .A1(\B_AS[18] ), .A2(\carry[18] ), .ZN(n7) );
  NAND3_X1 U48 ( .A1(n7), .A2(n1), .A3(n5), .ZN(net33428) );
  NAND3_X1 U49 ( .A1(net33315), .A2(net33316), .A3(net33317), .ZN(\carry[18] )
         );
  NAND2_X1 U50 ( .A1(n12), .A2(A[18]), .ZN(n6) );
  NAND3_X1 U51 ( .A1(net33315), .A2(net33316), .A3(net33317), .ZN(n12) );
  NAND2_X1 U52 ( .A1(A[18]), .A2(\B_AS[18] ), .ZN(n5) );
  BUF_X1 U53 ( .A(carry[0]), .Z(net15246) );
  BUF_X1 U54 ( .A(carry[0]), .Z(net15242) );
  NAND3_X1 U55 ( .A1(net33315), .A2(n2), .A3(net33317), .ZN(net33405) );
  XNOR2_X1 U56 ( .A(A[18]), .B(n11), .ZN(net33338) );
  BUF_X1 U57 ( .A(A[25]), .Z(n18) );
  BUF_X1 U58 ( .A(A[24]), .Z(n14) );
  XNOR2_X1 U59 ( .A(n4), .B(n15), .ZN(SUM[17]) );
  XNOR2_X1 U60 ( .A(A[17]), .B(\B_AS[17] ), .ZN(n15) );
  XOR2_X1 U61 ( .A(net33338), .B(net33405), .Z(SUM[18]) );
  XOR2_X1 U62 ( .A(net33342), .B(net33428), .Z(SUM[19]) );
  NAND2_X1 U63 ( .A1(\carry[17] ), .A2(A[17]), .ZN(net33315) );
  NAND2_X1 U64 ( .A1(\carry[17] ), .A2(\B_AS[17] ), .ZN(net33316) );
  NAND2_X1 U65 ( .A1(A[17]), .A2(\B_AS[17] ), .ZN(net33317) );
  CLKBUF_X1 U66 ( .A(A[27]), .Z(n16) );
  BUF_X1 U67 ( .A(A[26]), .Z(n23) );
  NAND3_X1 U68 ( .A1(n40), .A2(n41), .A3(n39), .ZN(n17) );
  NAND3_X1 U69 ( .A1(net15927), .A2(net15926), .A3(n35), .ZN(n19) );
  XNOR2_X1 U70 ( .A(n42), .B(n20), .ZN(SUM[26]) );
  AND3_X1 U71 ( .A1(n40), .A2(n41), .A3(n39), .ZN(n20) );
  NAND3_X1 U72 ( .A1(n45), .A2(n44), .A3(n43), .ZN(n21) );
  NAND3_X1 U73 ( .A1(n45), .A2(n44), .A3(n43), .ZN(n22) );
  BUF_X1 U74 ( .A(A[23]), .Z(net19811) );
  XNOR2_X1 U75 ( .A(carry[29]), .B(n26), .ZN(SUM[29]) );
  NAND3_X1 U76 ( .A1(n47), .A2(n46), .A3(n48), .ZN(n24) );
  NAND3_X1 U77 ( .A1(n46), .A2(n47), .A3(n48), .ZN(n25) );
  XNOR2_X1 U78 ( .A(A[29]), .B(B_AS[29]), .ZN(n26) );
  NAND3_X1 U79 ( .A1(net15927), .A2(net15926), .A3(n35), .ZN(n27) );
  XNOR2_X1 U80 ( .A(n24), .B(n28), .ZN(SUM[28]) );
  XNOR2_X1 U81 ( .A(A[28]), .B(B_AS[29]), .ZN(n28) );
  XNOR2_X1 U82 ( .A(n29), .B(n21), .ZN(SUM[27]) );
  XNOR2_X1 U83 ( .A(A[27]), .B(B_AS[27]), .ZN(n29) );
  NAND3_X1 U84 ( .A1(n3), .A2(n36), .A3(n37), .ZN(n30) );
  NAND3_X1 U85 ( .A1(n3), .A2(n36), .A3(n37), .ZN(n31) );
  XNOR2_X1 U86 ( .A(n32), .B(n19), .ZN(SUM[24]) );
  XNOR2_X1 U87 ( .A(A[24]), .B(B_AS[24]), .ZN(n32) );
  XNOR2_X1 U88 ( .A(n33), .B(n31), .ZN(SUM[25]) );
  XNOR2_X1 U89 ( .A(A[25]), .B(B_AS[25]), .ZN(n33) );
  XNOR2_X1 U90 ( .A(A[26]), .B(n34), .ZN(n42) );
  XNOR2_X1 U91 ( .A(A[23]), .B(B_AS[23]), .ZN(net15932) );
  NAND2_X1 U92 ( .A1(net19811), .A2(B_AS[23]), .ZN(n35) );
  NAND3_X1 U93 ( .A1(net15927), .A2(net15926), .A3(n35), .ZN(carry[24]) );
  NAND2_X1 U94 ( .A1(n14), .A2(B_AS[24]), .ZN(n36) );
  NAND2_X1 U95 ( .A1(carry[24]), .A2(n14), .ZN(n37) );
  NAND2_X1 U96 ( .A1(n27), .A2(B_AS[24]), .ZN(n38) );
  NAND3_X1 U97 ( .A1(n37), .A2(n36), .A3(n38), .ZN(carry[25]) );
  NAND2_X1 U98 ( .A1(n18), .A2(B_AS[25]), .ZN(n39) );
  NAND2_X1 U99 ( .A1(n30), .A2(n18), .ZN(n40) );
  NAND2_X1 U100 ( .A1(carry[25]), .A2(B_AS[25]), .ZN(n41) );
  NAND3_X1 U101 ( .A1(n41), .A2(n40), .A3(n39), .ZN(carry[26]) );
  NAND2_X1 U102 ( .A1(n23), .A2(B_AS[26]), .ZN(n43) );
  NAND2_X1 U103 ( .A1(n17), .A2(n23), .ZN(n44) );
  NAND2_X1 U104 ( .A1(carry[26]), .A2(B_AS[26]), .ZN(n45) );
  NAND3_X1 U105 ( .A1(n45), .A2(n44), .A3(n43), .ZN(carry[27]) );
  NAND2_X1 U106 ( .A1(n22), .A2(n16), .ZN(n46) );
  NAND2_X1 U107 ( .A1(carry[27]), .A2(B_AS[27]), .ZN(n47) );
  NAND2_X1 U108 ( .A1(n16), .A2(B_AS[27]), .ZN(n48) );
  NAND2_X1 U109 ( .A1(n25), .A2(A[28]), .ZN(n49) );
  NAND2_X1 U110 ( .A1(n25), .A2(B_AS[29]), .ZN(n50) );
  NAND2_X1 U111 ( .A1(A[28]), .A2(B_AS[29]), .ZN(n51) );
  NAND3_X1 U112 ( .A1(n50), .A2(n49), .A3(n51), .ZN(carry[29]) );
endmodule


module adder_NBIT29 ( A, B, SUB_SUMn, S );
  input [28:0] A;
  input [28:0] B;
  output [29:0] S;
  input SUB_SUMn;
  wire   N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76,
         N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90,
         N91, N92, \U1/U1/Z_0 ;
  assign S[0] = N63;
  assign S[1] = N64;
  assign S[2] = N65;
  assign S[3] = N66;
  assign S[4] = N67;
  assign S[5] = N68;
  assign S[6] = N69;
  assign S[7] = N70;
  assign S[8] = N71;
  assign S[9] = N72;
  assign S[10] = N73;
  assign S[11] = N74;
  assign S[12] = N75;
  assign S[13] = N76;
  assign S[14] = N77;
  assign S[15] = N78;
  assign S[16] = N79;
  assign S[17] = N80;
  assign S[18] = N81;
  assign S[19] = N82;
  assign S[20] = N83;
  assign S[21] = N84;
  assign S[22] = N85;
  assign S[23] = N86;
  assign S[24] = N87;
  assign S[25] = N88;
  assign S[26] = N89;
  assign S[27] = N90;
  assign S[28] = N91;
  assign S[29] = N92;
  assign \U1/U1/Z_0  = SUB_SUMn;

  adder_NBIT29_DW01_addsub_0 r56 ( .A({A[28], A}), .B({B[28], B}), .CI(1'b0), 
        .ADD_SUB(\U1/U1/Z_0 ), .SUM({N92, N91, N90, N89, N88, N87, N86, N85, 
        N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65, N64, N63}) );
endmodule


module encoder_1 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n2;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X1 U1 ( .A1(vp[0]), .A2(n2), .ZN(vp[1]) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n2) );
endmodule


module mux_NBIT31 ( A, B, C, S, Y );
  input [30:0] A;
  input [30:0] B;
  input [30:0] C;
  input [1:0] S;
  output [30:0] Y;
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n242;

  BUF_X1 U1 ( .A(n35), .Z(n203) );
  BUF_X1 U2 ( .A(n35), .Z(n204) );
  BUF_X1 U3 ( .A(n34), .Z(n205) );
  BUF_X1 U4 ( .A(n34), .Z(n206) );
  BUF_X1 U5 ( .A(n35), .Z(n202) );
  BUF_X1 U6 ( .A(n34), .Z(n207) );
  NOR2_X1 U7 ( .A1(n242), .A2(n208), .ZN(n35) );
  INV_X1 U8 ( .A(S[0]), .ZN(n242) );
  BUF_X1 U9 ( .A(S[1]), .Z(n208) );
  BUF_X1 U10 ( .A(S[1]), .Z(n209) );
  BUF_X1 U11 ( .A(S[1]), .Z(n210) );
  NOR2_X1 U12 ( .A1(n208), .A2(S[0]), .ZN(n34) );
  INV_X1 U13 ( .A(n36), .ZN(Y[29]) );
  AOI222_X1 U14 ( .A1(C[29]), .A2(n208), .B1(A[29]), .B2(n207), .C1(B[29]), 
        .C2(n204), .ZN(n36) );
  INV_X1 U15 ( .A(n37), .ZN(Y[28]) );
  AOI222_X1 U16 ( .A1(C[28]), .A2(n208), .B1(A[28]), .B2(n207), .C1(B[28]), 
        .C2(n204), .ZN(n37) );
  INV_X1 U17 ( .A(n38), .ZN(Y[27]) );
  AOI222_X1 U18 ( .A1(C[27]), .A2(n208), .B1(A[27]), .B2(n207), .C1(B[27]), 
        .C2(n204), .ZN(n38) );
  INV_X1 U19 ( .A(n41), .ZN(Y[24]) );
  AOI222_X1 U20 ( .A1(C[24]), .A2(n208), .B1(A[24]), .B2(n207), .C1(B[24]), 
        .C2(n204), .ZN(n41) );
  INV_X1 U21 ( .A(n43), .ZN(Y[22]) );
  AOI222_X1 U22 ( .A1(C[22]), .A2(n209), .B1(A[22]), .B2(n206), .C1(B[22]), 
        .C2(n203), .ZN(n43) );
  INV_X1 U23 ( .A(n42), .ZN(Y[23]) );
  AOI222_X1 U24 ( .A1(C[23]), .A2(n208), .B1(A[23]), .B2(n206), .C1(B[23]), 
        .C2(n203), .ZN(n42) );
  INV_X1 U25 ( .A(n39), .ZN(Y[26]) );
  AOI222_X1 U26 ( .A1(C[26]), .A2(n208), .B1(A[26]), .B2(n207), .C1(B[26]), 
        .C2(n204), .ZN(n39) );
  INV_X1 U27 ( .A(n40), .ZN(Y[25]) );
  AOI222_X1 U28 ( .A1(C[25]), .A2(n208), .B1(A[25]), .B2(n207), .C1(B[25]), 
        .C2(n204), .ZN(n40) );
  INV_X1 U29 ( .A(n44), .ZN(Y[21]) );
  AOI222_X1 U30 ( .A1(C[21]), .A2(n208), .B1(A[21]), .B2(n206), .C1(B[21]), 
        .C2(n203), .ZN(n44) );
  INV_X1 U31 ( .A(n45), .ZN(Y[20]) );
  AOI222_X1 U32 ( .A1(C[20]), .A2(n208), .B1(A[20]), .B2(n206), .C1(B[20]), 
        .C2(n203), .ZN(n45) );
  INV_X1 U33 ( .A(n46), .ZN(Y[19]) );
  AOI222_X1 U34 ( .A1(C[19]), .A2(n209), .B1(A[19]), .B2(n206), .C1(B[19]), 
        .C2(n203), .ZN(n46) );
  INV_X1 U35 ( .A(n57), .ZN(Y[8]) );
  AOI222_X1 U36 ( .A1(C[8]), .A2(n210), .B1(A[8]), .B2(n205), .C1(B[8]), .C2(
        n202), .ZN(n57) );
  INV_X1 U37 ( .A(n56), .ZN(Y[9]) );
  AOI222_X1 U38 ( .A1(C[9]), .A2(n209), .B1(A[9]), .B2(n205), .C1(B[9]), .C2(
        n202), .ZN(n56) );
  INV_X1 U39 ( .A(n55), .ZN(Y[10]) );
  AOI222_X1 U40 ( .A1(C[10]), .A2(n209), .B1(A[10]), .B2(n205), .C1(B[10]), 
        .C2(n202), .ZN(n55) );
  INV_X1 U41 ( .A(n54), .ZN(Y[11]) );
  AOI222_X1 U42 ( .A1(C[11]), .A2(n209), .B1(A[11]), .B2(n205), .C1(B[11]), 
        .C2(n202), .ZN(n54) );
  INV_X1 U43 ( .A(n53), .ZN(Y[12]) );
  AOI222_X1 U44 ( .A1(C[12]), .A2(n209), .B1(A[12]), .B2(n206), .C1(B[12]), 
        .C2(n203), .ZN(n53) );
  INV_X1 U45 ( .A(n52), .ZN(Y[13]) );
  AOI222_X1 U46 ( .A1(C[13]), .A2(n209), .B1(A[13]), .B2(n206), .C1(B[13]), 
        .C2(n203), .ZN(n52) );
  INV_X1 U47 ( .A(n51), .ZN(Y[14]) );
  AOI222_X1 U48 ( .A1(C[14]), .A2(n209), .B1(A[14]), .B2(n206), .C1(B[14]), 
        .C2(n203), .ZN(n51) );
  INV_X1 U49 ( .A(n50), .ZN(Y[15]) );
  AOI222_X1 U50 ( .A1(C[15]), .A2(n209), .B1(A[15]), .B2(n206), .C1(B[15]), 
        .C2(n203), .ZN(n50) );
  INV_X1 U51 ( .A(n49), .ZN(Y[16]) );
  AOI222_X1 U52 ( .A1(C[16]), .A2(n209), .B1(A[16]), .B2(n206), .C1(B[16]), 
        .C2(n203), .ZN(n49) );
  INV_X1 U53 ( .A(n48), .ZN(Y[17]) );
  AOI222_X1 U54 ( .A1(C[17]), .A2(n209), .B1(A[17]), .B2(n206), .C1(B[17]), 
        .C2(n203), .ZN(n48) );
  INV_X1 U55 ( .A(n47), .ZN(Y[18]) );
  AOI222_X1 U56 ( .A1(C[18]), .A2(n209), .B1(A[18]), .B2(n206), .C1(B[18]), 
        .C2(n203), .ZN(n47) );
  INV_X1 U57 ( .A(n60), .ZN(Y[5]) );
  AOI222_X1 U58 ( .A1(C[5]), .A2(n210), .B1(A[5]), .B2(n205), .C1(B[5]), .C2(
        n202), .ZN(n60) );
  INV_X1 U59 ( .A(n59), .ZN(Y[6]) );
  AOI222_X1 U60 ( .A1(C[6]), .A2(n210), .B1(A[6]), .B2(n205), .C1(B[6]), .C2(
        n202), .ZN(n59) );
  INV_X1 U61 ( .A(n58), .ZN(Y[7]) );
  AOI222_X1 U62 ( .A1(C[7]), .A2(n210), .B1(A[7]), .B2(n205), .C1(B[7]), .C2(
        n202), .ZN(n58) );
  INV_X1 U63 ( .A(n61), .ZN(Y[4]) );
  AOI222_X1 U64 ( .A1(C[4]), .A2(n210), .B1(A[4]), .B2(n205), .C1(B[4]), .C2(
        n202), .ZN(n61) );
  INV_X1 U65 ( .A(n62), .ZN(Y[3]) );
  AOI222_X1 U66 ( .A1(C[3]), .A2(n210), .B1(A[3]), .B2(n205), .C1(B[3]), .C2(
        n202), .ZN(n62) );
  INV_X1 U67 ( .A(n63), .ZN(Y[2]) );
  AOI222_X1 U68 ( .A1(C[2]), .A2(n210), .B1(A[2]), .B2(n205), .C1(B[2]), .C2(
        n202), .ZN(n63) );
  INV_X1 U69 ( .A(n64), .ZN(Y[1]) );
  AOI222_X1 U70 ( .A1(C[1]), .A2(n210), .B1(A[1]), .B2(n205), .C1(B[1]), .C2(
        n202), .ZN(n64) );
  INV_X1 U71 ( .A(n65), .ZN(Y[0]) );
  AOI222_X1 U72 ( .A1(C[0]), .A2(n208), .B1(A[0]), .B2(n205), .C1(B[0]), .C2(
        n202), .ZN(n65) );
  INV_X1 U73 ( .A(n33), .ZN(Y[30]) );
  AOI222_X1 U74 ( .A1(n210), .A2(C[30]), .B1(A[30]), .B2(n207), .C1(B[30]), 
        .C2(n204), .ZN(n33) );
endmodule


module adder_NBIT31_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI, ADD_SUB;
  output CO;
  wire   net15240, net15238, net15236, net15802, net15810, net15815, net15814,
         net15818, net15827, net15835, net15858, net15857, net15856, net15945,
         net15953, net16168, net16218, net16238, net16237, net15952, net15800,
         \carry[31] , net16175, net16174, net15813, net15812, net15809,
         net15808, net15807, net15819, net15854, net15853, net15852, net19804,
         net19808, net19835, net15803, \carry[30] , \carry[29] , net15922,
         net15838, net15837, \carry[23] , \B_AS[24] , net15836, net15951,
         net19833, net19824, net16262, net16243, net15830, net15829, net15828,
         net15821, net15820, \carry[25] , \carry[24] , \B_AS[25] , net16306,
         net15804, \B_AS[29] , net16212, net15817, net15816, \B_AS[26] , n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [32:0] carry;
  wire   [31:0] B_AS;
  assign carry[0] = ADD_SUB;

  FA_X1 U1_16 ( .A(A[16]), .B(B_AS[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B_AS[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B_AS[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B_AS[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B_AS[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B_AS[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B_AS[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B_AS[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  FA_X1 U1_8 ( .A(A[8]), .B(B_AS[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FA_X1 U1_7 ( .A(A[7]), .B(B_AS[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FA_X1 U1_6 ( .A(A[6]), .B(B_AS[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FA_X1 U1_5 ( .A(A[5]), .B(B_AS[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FA_X1 U1_4 ( .A(A[4]), .B(B_AS[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FA_X1 U1_3 ( .A(A[3]), .B(B_AS[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FA_X1 U1_2 ( .A(A[2]), .B(B_AS[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FA_X1 U1_1 ( .A(A[1]), .B(B_AS[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  FA_X1 U1_0 ( .A(A[0]), .B(B_AS[0]), .CI(net15236), .CO(carry[1]), .S(SUM[0])
         );
  XOR2_X1 U1 ( .A(B[9]), .B(net15236), .Z(B_AS[9]) );
  XOR2_X1 U2 ( .A(B[8]), .B(net15236), .Z(B_AS[8]) );
  XOR2_X1 U3 ( .A(B[7]), .B(net15236), .Z(B_AS[7]) );
  XOR2_X1 U4 ( .A(B[6]), .B(net15238), .Z(B_AS[6]) );
  XOR2_X1 U5 ( .A(B[5]), .B(net15236), .Z(B_AS[5]) );
  XOR2_X1 U6 ( .A(B[4]), .B(net15236), .Z(B_AS[4]) );
  XOR2_X1 U7 ( .A(B[3]), .B(net15236), .Z(B_AS[3]) );
  XOR2_X1 U9 ( .A(B[2]), .B(net15236), .Z(B_AS[2]) );
  XOR2_X1 U20 ( .A(B[1]), .B(net15238), .Z(B_AS[1]) );
  XOR2_X1 U22 ( .A(B[18]), .B(net15238), .Z(B_AS[18]) );
  XOR2_X1 U23 ( .A(B[17]), .B(net15238), .Z(B_AS[17]) );
  XOR2_X1 U24 ( .A(B[16]), .B(net15238), .Z(B_AS[16]) );
  XOR2_X1 U25 ( .A(B[15]), .B(net15238), .Z(B_AS[15]) );
  XOR2_X1 U26 ( .A(B[14]), .B(net15240), .Z(B_AS[14]) );
  XOR2_X1 U27 ( .A(B[13]), .B(net15240), .Z(B_AS[13]) );
  XOR2_X1 U28 ( .A(B[12]), .B(net15240), .Z(B_AS[12]) );
  XOR2_X1 U29 ( .A(B[11]), .B(net15240), .Z(B_AS[11]) );
  XOR2_X1 U30 ( .A(B[10]), .B(net15240), .Z(B_AS[10]) );
  XOR2_X1 U31 ( .A(B[0]), .B(net15236), .Z(B_AS[0]) );
  CLKBUF_X1 U8 ( .A(net15858), .Z(n1) );
  CLKBUF_X1 U10 ( .A(A[29]), .Z(n2) );
  CLKBUF_X1 U11 ( .A(net15856), .Z(n3) );
  CLKBUF_X1 U12 ( .A(A[25]), .Z(n4) );
  CLKBUF_X1 U13 ( .A(A[28]), .Z(n5) );
  CLKBUF_X1 U14 ( .A(net15813), .Z(n6) );
  XOR2_X1 U15 ( .A(B[19]), .B(net15238), .Z(B_AS[19]) );
  XOR2_X1 U16 ( .A(B[20]), .B(net15238), .Z(B_AS[20]) );
  XOR2_X1 U17 ( .A(B[21]), .B(net15238), .Z(B_AS[21]) );
  XOR2_X1 U18 ( .A(B[22]), .B(net15238), .Z(B_AS[22]) );
  XOR2_X1 U19 ( .A(B[23]), .B(net15238), .Z(B_AS[23]) );
  XOR2_X1 U21 ( .A(B[24]), .B(net15238), .Z(\B_AS[24] ) );
  XOR2_X1 U32 ( .A(B[25]), .B(net15238), .Z(\B_AS[25] ) );
  XOR2_X1 U33 ( .A(B[26]), .B(net15236), .Z(\B_AS[26] ) );
  XOR2_X1 U34 ( .A(B[27]), .B(net15236), .Z(B_AS[27]) );
  XOR2_X1 U35 ( .A(B[28]), .B(net15236), .Z(B_AS[28]) );
  XOR2_X1 U36 ( .A(B[29]), .B(net15236), .Z(\B_AS[29] ) );
  XOR2_X1 U37 ( .A(net15240), .B(B[31]), .Z(B_AS[31]) );
  CLKBUF_X1 U38 ( .A(n47), .Z(n7) );
  CLKBUF_X1 U39 ( .A(A[19]), .Z(n8) );
  CLKBUF_X1 U40 ( .A(A[23]), .Z(n9) );
  CLKBUF_X1 U41 ( .A(A[26]), .Z(n10) );
  NAND3_X1 U42 ( .A1(net15856), .A2(net15858), .A3(net15857), .ZN(n11) );
  CLKBUF_X1 U43 ( .A(n32), .Z(n12) );
  CLKBUF_X1 U44 ( .A(n45), .Z(n13) );
  CLKBUF_X1 U45 ( .A(n33), .Z(n14) );
  NAND2_X1 U46 ( .A1(net16212), .A2(\B_AS[26] ), .ZN(net15816) );
  NAND3_X1 U47 ( .A1(net15816), .A2(net15817), .A3(net15815), .ZN(net15951) );
  NAND3_X1 U48 ( .A1(net15816), .A2(net15817), .A3(net15815), .ZN(carry[27])
         );
  NAND3_X1 U49 ( .A1(net15819), .A2(net15820), .A3(net15821), .ZN(net16212) );
  CLKBUF_X1 U50 ( .A(net16212), .Z(net15953) );
  XOR2_X1 U51 ( .A(n10), .B(\B_AS[26] ), .Z(net15814) );
  NAND2_X1 U52 ( .A1(A[26]), .A2(\B_AS[26] ), .ZN(net15817) );
  BUF_X1 U53 ( .A(carry[0]), .Z(net15236) );
  NAND3_X1 U54 ( .A1(net15819), .A2(net15820), .A3(net15821), .ZN(carry[26])
         );
  BUF_X1 U55 ( .A(carry[0]), .Z(net15240) );
  BUF_X1 U56 ( .A(carry[0]), .Z(net15238) );
  NAND2_X1 U57 ( .A1(net16306), .A2(\B_AS[29] ), .ZN(net15804) );
  NAND3_X1 U58 ( .A1(net15804), .A2(net15803), .A3(n15), .ZN(net15952) );
  NAND3_X1 U59 ( .A1(net15804), .A2(net15803), .A3(n15), .ZN(\carry[30] ) );
  NAND3_X1 U60 ( .A1(net15808), .A2(net15807), .A3(net15809), .ZN(net16306) );
  CLKBUF_X1 U61 ( .A(net16306), .Z(net16168) );
  XOR2_X1 U62 ( .A(n2), .B(\B_AS[29] ), .Z(net15802) );
  NAND2_X1 U63 ( .A1(A[29]), .A2(\B_AS[29] ), .ZN(n15) );
  NAND3_X1 U64 ( .A1(net15807), .A2(net15808), .A3(net15809), .ZN(\carry[29] )
         );
  NAND2_X1 U65 ( .A1(\carry[25] ), .A2(\B_AS[25] ), .ZN(net15820) );
  NAND3_X1 U66 ( .A1(net15828), .A2(net15830), .A3(net15829), .ZN(\carry[25] )
         );
  NAND2_X1 U67 ( .A1(A[25]), .A2(\B_AS[25] ), .ZN(net15821) );
  XOR2_X1 U68 ( .A(n4), .B(\B_AS[25] ), .Z(net15818) );
  NAND2_X1 U69 ( .A1(A[24]), .A2(net19824), .ZN(net15828) );
  CLKBUF_X1 U70 ( .A(net15828), .Z(net16243) );
  NAND3_X1 U71 ( .A1(net15828), .A2(net15830), .A3(net15829), .ZN(net16237) );
  NAND3_X1 U72 ( .A1(net15836), .A2(net15838), .A3(net15837), .ZN(net19824) );
  NAND2_X1 U73 ( .A1(\carry[24] ), .A2(\B_AS[24] ), .ZN(net15830) );
  CLKBUF_X1 U74 ( .A(net15830), .Z(net16262) );
  NAND3_X1 U75 ( .A1(net15836), .A2(net15838), .A3(net15837), .ZN(\carry[24] )
         );
  NAND2_X1 U76 ( .A1(A[24]), .A2(\B_AS[24] ), .ZN(net15829) );
  NAND3_X1 U77 ( .A1(net16243), .A2(net16262), .A3(net15829), .ZN(net16238) );
  CLKBUF_X1 U78 ( .A(net15836), .Z(net19833) );
  NAND3_X1 U79 ( .A1(net19833), .A2(net15838), .A3(net15837), .ZN(n16) );
  XOR2_X1 U80 ( .A(n16), .B(\B_AS[24] ), .Z(net15827) );
  NAND2_X1 U81 ( .A1(net15951), .A2(A[27]), .ZN(n17) );
  NAND3_X1 U82 ( .A1(n17), .A2(net15813), .A3(net15812), .ZN(net16175) );
  NAND3_X1 U83 ( .A1(n17), .A2(net15813), .A3(net15812), .ZN(net16174) );
  CLKBUF_X1 U84 ( .A(n17), .Z(net19804) );
  CLKBUF_X1 U85 ( .A(net15951), .Z(net19808) );
  CLKBUF_X1 U86 ( .A(A[27]), .Z(net19835) );
  NAND2_X1 U87 ( .A1(A[27]), .A2(B_AS[27]), .ZN(net15813) );
  NAND2_X1 U88 ( .A1(n18), .A2(A[23]), .ZN(net15836) );
  NAND3_X1 U89 ( .A1(net15853), .A2(net15852), .A3(net15854), .ZN(n18) );
  CLKBUF_X1 U90 ( .A(n18), .Z(net15922) );
  NAND2_X1 U91 ( .A1(A[23]), .A2(B_AS[23]), .ZN(net15837) );
  NAND3_X1 U92 ( .A1(net15852), .A2(net15853), .A3(net15854), .ZN(\carry[23] )
         );
  NAND2_X1 U93 ( .A1(\carry[23] ), .A2(B_AS[23]), .ZN(net15838) );
  XOR2_X1 U94 ( .A(net15922), .B(B_AS[23]), .Z(net15835) );
  CLKBUF_X1 U95 ( .A(n49), .Z(n19) );
  NAND3_X1 U96 ( .A1(n44), .A2(n43), .A3(n45), .ZN(n20) );
  NAND3_X1 U97 ( .A1(n44), .A2(n43), .A3(n13), .ZN(n21) );
  NAND3_X1 U98 ( .A1(n47), .A2(n49), .A3(n48), .ZN(n22) );
  NAND3_X1 U99 ( .A1(n7), .A2(n19), .A3(n48), .ZN(n23) );
  CLKBUF_X1 U100 ( .A(carry[17]), .Z(n24) );
  NAND3_X1 U101 ( .A1(net15856), .A2(net15857), .A3(net15858), .ZN(n25) );
  CLKBUF_X1 U102 ( .A(A[21]), .Z(n26) );
  NAND3_X1 U103 ( .A1(n35), .A2(n36), .A3(n37), .ZN(n27) );
  NAND3_X1 U104 ( .A1(n33), .A2(n32), .A3(n31), .ZN(n28) );
  NAND3_X1 U105 ( .A1(n31), .A2(n12), .A3(n14), .ZN(n29) );
  XOR2_X1 U106 ( .A(A[17]), .B(B_AS[17]), .Z(n30) );
  XOR2_X1 U107 ( .A(n30), .B(n24), .Z(SUM[17]) );
  NAND2_X1 U108 ( .A1(A[17]), .A2(B_AS[17]), .ZN(n31) );
  NAND2_X1 U109 ( .A1(A[17]), .A2(carry[17]), .ZN(n32) );
  NAND2_X1 U110 ( .A1(B_AS[17]), .A2(carry[17]), .ZN(n33) );
  NAND3_X1 U111 ( .A1(n33), .A2(n32), .A3(n31), .ZN(carry[18]) );
  XOR2_X1 U112 ( .A(A[18]), .B(B_AS[18]), .Z(n34) );
  XOR2_X1 U113 ( .A(n34), .B(n29), .Z(SUM[18]) );
  NAND2_X1 U114 ( .A1(A[18]), .A2(B_AS[18]), .ZN(n35) );
  NAND2_X1 U115 ( .A1(A[18]), .A2(n28), .ZN(n36) );
  NAND2_X1 U116 ( .A1(B_AS[18]), .A2(carry[18]), .ZN(n37) );
  NAND3_X1 U117 ( .A1(n35), .A2(n36), .A3(n37), .ZN(carry[19]) );
  CLKBUF_X1 U118 ( .A(\carry[30] ), .Z(net16218) );
  NAND2_X1 U119 ( .A1(\carry[30] ), .A2(B_AS[31]), .ZN(net15800) );
  NAND2_X1 U120 ( .A1(A[29]), .A2(\carry[29] ), .ZN(net15803) );
  XNOR2_X1 U121 ( .A(net16218), .B(n38), .ZN(SUM[30]) );
  XNOR2_X1 U122 ( .A(A[30]), .B(B_AS[31]), .ZN(n38) );
  NAND2_X1 U123 ( .A1(A[22]), .A2(B_AS[22]), .ZN(net15853) );
  NAND2_X1 U124 ( .A1(A[22]), .A2(n25), .ZN(net15852) );
  NAND2_X1 U125 ( .A1(n11), .A2(B_AS[22]), .ZN(net15854) );
  NAND3_X1 U126 ( .A1(n3), .A2(n1), .A3(net15857), .ZN(carry[22]) );
  NAND2_X1 U127 ( .A1(A[25]), .A2(net16237), .ZN(net15819) );
  NAND2_X1 U128 ( .A1(net16175), .A2(B_AS[28]), .ZN(net15808) );
  NAND2_X1 U129 ( .A1(net16174), .A2(A[28]), .ZN(net15807) );
  NAND2_X1 U130 ( .A1(A[28]), .A2(B_AS[28]), .ZN(net15809) );
  NAND2_X1 U131 ( .A1(carry[27]), .A2(B_AS[27]), .ZN(net15812) );
  NAND3_X1 U132 ( .A1(net19804), .A2(net15812), .A3(n6), .ZN(carry[28]) );
  NAND2_X1 U133 ( .A1(A[26]), .A2(carry[26]), .ZN(net15815) );
  XOR2_X1 U134 ( .A(net15810), .B(net19808), .Z(SUM[27]) );
  XNOR2_X1 U135 ( .A(\carry[31] ), .B(n41), .ZN(SUM[31]) );
  NAND3_X1 U136 ( .A1(net15800), .A2(n39), .A3(n40), .ZN(\carry[31] ) );
  NAND2_X1 U137 ( .A1(A[30]), .A2(net15952), .ZN(n39) );
  NAND2_X1 U138 ( .A1(A[30]), .A2(B_AS[31]), .ZN(n40) );
  XNOR2_X1 U139 ( .A(A[31]), .B(B_AS[31]), .ZN(n41) );
  CLKBUF_X1 U140 ( .A(A[22]), .Z(net15945) );
  XOR2_X1 U141 ( .A(carry[19]), .B(B_AS[19]), .Z(n42) );
  XOR2_X1 U142 ( .A(n8), .B(n42), .Z(SUM[19]) );
  NAND2_X1 U143 ( .A1(A[19]), .A2(n27), .ZN(n43) );
  NAND2_X1 U144 ( .A1(A[19]), .A2(B_AS[19]), .ZN(n44) );
  NAND2_X1 U145 ( .A1(carry[19]), .A2(B_AS[19]), .ZN(n45) );
  NAND3_X1 U146 ( .A1(n45), .A2(n44), .A3(n43), .ZN(carry[20]) );
  XOR2_X1 U147 ( .A(n21), .B(B_AS[20]), .Z(n46) );
  XOR2_X1 U148 ( .A(A[20]), .B(n46), .Z(SUM[20]) );
  NAND2_X1 U149 ( .A1(A[20]), .A2(n20), .ZN(n47) );
  NAND2_X1 U150 ( .A1(A[20]), .A2(B_AS[20]), .ZN(n48) );
  NAND2_X1 U151 ( .A1(carry[20]), .A2(B_AS[20]), .ZN(n49) );
  NAND3_X1 U152 ( .A1(n47), .A2(n49), .A3(n48), .ZN(carry[21]) );
  XOR2_X1 U153 ( .A(n23), .B(B_AS[21]), .Z(n50) );
  XOR2_X1 U154 ( .A(n26), .B(n50), .Z(SUM[21]) );
  NAND2_X1 U155 ( .A1(A[21]), .A2(n22), .ZN(net15856) );
  NAND2_X1 U156 ( .A1(A[21]), .A2(B_AS[21]), .ZN(net15857) );
  NAND2_X1 U157 ( .A1(carry[21]), .A2(B_AS[21]), .ZN(net15858) );
  XOR2_X1 U158 ( .A(carry[22]), .B(B_AS[22]), .Z(n51) );
  XOR2_X1 U159 ( .A(net15945), .B(n51), .Z(SUM[22]) );
  XOR2_X1 U160 ( .A(n9), .B(net15835), .Z(SUM[23]) );
  XOR2_X1 U161 ( .A(A[24]), .B(net15827), .Z(SUM[24]) );
  XOR2_X1 U162 ( .A(net16238), .B(net15818), .Z(SUM[25]) );
  XOR2_X1 U163 ( .A(net15953), .B(net15814), .Z(SUM[26]) );
  XOR2_X1 U164 ( .A(net19835), .B(B_AS[27]), .Z(net15810) );
  XOR2_X1 U165 ( .A(n5), .B(B_AS[28]), .Z(n52) );
  XOR2_X1 U166 ( .A(carry[28]), .B(n52), .Z(SUM[28]) );
  XOR2_X1 U167 ( .A(net16168), .B(net15802), .Z(SUM[29]) );
endmodule


module adder_NBIT31 ( A, B, SUB_SUMn, S );
  input [30:0] A;
  input [30:0] B;
  output [31:0] S;
  input SUB_SUMn;
  wire   N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, \U1/U1/Z_0 ;
  assign S[0] = N67;
  assign S[1] = N68;
  assign S[2] = N69;
  assign S[3] = N70;
  assign S[4] = N71;
  assign S[5] = N72;
  assign S[6] = N73;
  assign S[7] = N74;
  assign S[8] = N75;
  assign S[9] = N76;
  assign S[10] = N77;
  assign S[11] = N78;
  assign S[12] = N79;
  assign S[13] = N80;
  assign S[14] = N81;
  assign S[15] = N82;
  assign S[16] = N83;
  assign S[17] = N84;
  assign S[18] = N85;
  assign S[19] = N86;
  assign S[20] = N87;
  assign S[21] = N88;
  assign S[22] = N89;
  assign S[23] = N90;
  assign S[24] = N91;
  assign S[25] = N92;
  assign S[26] = N93;
  assign S[27] = N94;
  assign S[28] = N95;
  assign S[29] = N96;
  assign S[30] = N97;
  assign S[31] = N98;
  assign \U1/U1/Z_0  = SUB_SUMn;

  adder_NBIT31_DW01_addsub_0 r56 ( .A({A[30], A}), .B({B[30], B}), .CI(1'b0), 
        .ADD_SUB(\U1/U1/Z_0 ), .SUM({N98, N97, N96, N95, N94, N93, N92, N91, 
        N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, 
        N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
endmodule


module multiplier_NBIT16 ( A, B, Y );
  input [15:0] A;
  input [15:0] B;
  output [31:0] Y;
  wire   \sum[1][17] , \sum[1][16] , \sum[1][15] , \sum[1][14] , \sum[1][13] ,
         \sum[1][12] , \sum[1][11] , \sum[1][10] , \sum[1][9] , \sum[1][8] ,
         \sum[1][7] , \sum[1][6] , \sum[1][5] , \sum[1][4] , \sum[1][3] ,
         \sum[1][2] , \sum[1][1] , \sum[1][0] , \sum[2][19] , \sum[2][18] ,
         \sum[2][17] , \sum[2][16] , \sum[2][15] , \sum[2][14] , \sum[2][13] ,
         \sum[2][12] , \sum[2][11] , \sum[2][10] , \sum[2][9] , \sum[2][8] ,
         \sum[2][7] , \sum[2][6] , \sum[2][5] , \sum[2][4] , \sum[2][3] ,
         \sum[2][2] , \sum[2][1] , \sum[2][0] , \sum[3][21] , \sum[3][20] ,
         \sum[3][19] , \sum[3][18] , \sum[3][17] , \sum[3][16] , \sum[3][15] ,
         \sum[3][14] , \sum[3][13] , \sum[3][12] , \sum[3][11] , \sum[3][10] ,
         \sum[3][9] , \sum[3][8] , \sum[3][7] , \sum[3][6] , \sum[3][5] ,
         \sum[3][4] , \sum[3][3] , \sum[3][2] , \sum[3][1] , \sum[3][0] ,
         \sum[4][23] , \sum[4][22] , \sum[4][21] , \sum[4][20] , \sum[4][19] ,
         \sum[4][18] , \sum[4][17] , \sum[4][16] , \sum[4][15] , \sum[4][14] ,
         \sum[4][13] , \sum[4][12] , \sum[4][11] , \sum[4][10] , \sum[4][9] ,
         \sum[4][8] , \sum[4][7] , \sum[4][6] , \sum[4][5] , \sum[4][4] ,
         \sum[4][3] , \sum[4][2] , \sum[4][1] , \sum[4][0] , \sum[5][25] ,
         \sum[5][24] , \sum[5][23] , \sum[5][22] , \sum[5][21] , \sum[5][20] ,
         \sum[5][19] , \sum[5][18] , \sum[5][17] , \sum[5][16] , \sum[5][15] ,
         \sum[5][14] , \sum[5][13] , \sum[5][12] , \sum[5][11] , \sum[5][10] ,
         \sum[5][9] , \sum[5][8] , \sum[5][7] , \sum[5][6] , \sum[5][5] ,
         \sum[5][4] , \sum[5][3] , \sum[5][2] , \sum[5][1] , \sum[5][0] ,
         \sum[6][27] , \sum[6][26] , \sum[6][25] , \sum[6][24] , \sum[6][23] ,
         \sum[6][22] , \sum[6][21] , \sum[6][20] , \sum[6][19] , \sum[6][18] ,
         \sum[6][17] , \sum[6][16] , \sum[6][15] , \sum[6][14] , \sum[6][13] ,
         \sum[6][12] , \sum[6][11] , \sum[6][10] , \sum[6][9] , \sum[6][8] ,
         \sum[6][7] , \sum[6][6] , \sum[6][5] , \sum[6][4] , \sum[6][3] ,
         \sum[6][2] , \sum[6][1] , \sum[6][0] , \sum[7][29] , \sum[7][28] ,
         \sum[7][27] , \sum[7][26] , \sum[7][25] , \sum[7][24] , \sum[7][23] ,
         \sum[7][22] , \sum[7][21] , \sum[7][20] , \sum[7][19] , \sum[7][18] ,
         \sum[7][17] , \sum[7][16] , \sum[7][15] , \sum[7][14] , \sum[7][13] ,
         \sum[7][12] , \sum[7][11] , \sum[7][10] , \sum[7][9] , \sum[7][8] ,
         \sum[7][7] , \sum[7][6] , \sum[7][5] , \sum[7][4] , \sum[7][3] ,
         \sum[7][2] , \sum[7][1] , \sum[7][0] , \sel[0][1] , \sel[0][0] ,
         \sel[1][1] , \sel[1][0] , \sel[2][1] , \sel[2][0] , \sel[3][1] ,
         \sel[3][0] , \sel[4][1] , \sel[4][0] , \sel[5][1] , \sel[5][0] ,
         \sel[6][1] , \sel[6][0] , \sel[7][1] , \sel[7][0] , \mux_out[0][16] ,
         \mux_out[0][15] , \mux_out[0][14] , \mux_out[0][13] ,
         \mux_out[0][12] , \mux_out[0][11] , \mux_out[0][10] , \mux_out[0][9] ,
         \mux_out[0][8] , \mux_out[0][7] , \mux_out[0][6] , \mux_out[0][5] ,
         \mux_out[0][4] , \mux_out[0][3] , \mux_out[0][2] , \mux_out[0][1] ,
         \mux_out[0][0] , \mux_out[1][18] , \mux_out[1][17] , \mux_out[1][16] ,
         \mux_out[1][15] , \mux_out[1][14] , \mux_out[1][13] ,
         \mux_out[1][12] , \mux_out[1][11] , \mux_out[1][10] , \mux_out[1][9] ,
         \mux_out[1][8] , \mux_out[1][7] , \mux_out[1][6] , \mux_out[1][5] ,
         \mux_out[1][4] , \mux_out[1][3] , \mux_out[1][2] , \mux_out[1][1] ,
         \mux_out[1][0] , \mux_out[2][20] , \mux_out[2][19] , \mux_out[2][18] ,
         \mux_out[2][17] , \mux_out[2][16] , \mux_out[2][15] ,
         \mux_out[2][14] , \mux_out[2][13] , \mux_out[2][12] ,
         \mux_out[2][11] , \mux_out[2][10] , \mux_out[2][9] , \mux_out[2][8] ,
         \mux_out[2][7] , \mux_out[2][6] , \mux_out[2][5] , \mux_out[2][4] ,
         \mux_out[2][3] , \mux_out[2][2] , \mux_out[2][1] , \mux_out[2][0] ,
         \mux_out[3][22] , \mux_out[3][21] , \mux_out[3][20] ,
         \mux_out[3][19] , \mux_out[3][18] , \mux_out[3][17] ,
         \mux_out[3][16] , \mux_out[3][15] , \mux_out[3][14] ,
         \mux_out[3][13] , \mux_out[3][12] , \mux_out[3][11] ,
         \mux_out[3][10] , \mux_out[3][9] , \mux_out[3][8] , \mux_out[3][7] ,
         \mux_out[3][6] , \mux_out[3][5] , \mux_out[3][4] , \mux_out[3][3] ,
         \mux_out[3][2] , \mux_out[3][1] , \mux_out[3][0] , \mux_out[4][24] ,
         \mux_out[4][23] , \mux_out[4][22] , \mux_out[4][21] ,
         \mux_out[4][20] , \mux_out[4][19] , \mux_out[4][18] ,
         \mux_out[4][17] , \mux_out[4][16] , \mux_out[4][15] ,
         \mux_out[4][14] , \mux_out[4][13] , \mux_out[4][12] ,
         \mux_out[4][11] , \mux_out[4][10] , \mux_out[4][9] , \mux_out[4][8] ,
         \mux_out[4][7] , \mux_out[4][6] , \mux_out[4][5] , \mux_out[4][4] ,
         \mux_out[4][3] , \mux_out[4][2] , \mux_out[4][1] , \mux_out[4][0] ,
         \mux_out[5][26] , \mux_out[5][25] , \mux_out[5][24] ,
         \mux_out[5][23] , \mux_out[5][22] , \mux_out[5][21] ,
         \mux_out[5][20] , \mux_out[5][19] , \mux_out[5][18] ,
         \mux_out[5][17] , \mux_out[5][16] , \mux_out[5][15] ,
         \mux_out[5][14] , \mux_out[5][13] , \mux_out[5][12] ,
         \mux_out[5][11] , \mux_out[5][10] , \mux_out[5][9] , \mux_out[5][8] ,
         \mux_out[5][7] , \mux_out[5][6] , \mux_out[5][5] , \mux_out[5][4] ,
         \mux_out[5][3] , \mux_out[5][2] , \mux_out[5][1] , \mux_out[5][0] ,
         \mux_out[6][28] , \mux_out[6][27] , \mux_out[6][26] ,
         \mux_out[6][25] , \mux_out[6][24] , \mux_out[6][23] ,
         \mux_out[6][22] , \mux_out[6][21] , \mux_out[6][20] ,
         \mux_out[6][19] , \mux_out[6][18] , \mux_out[6][17] ,
         \mux_out[6][16] , \mux_out[6][15] , \mux_out[6][14] ,
         \mux_out[6][13] , \mux_out[6][12] , \mux_out[6][11] ,
         \mux_out[6][10] , \mux_out[6][9] , \mux_out[6][8] , \mux_out[6][7] ,
         \mux_out[6][6] , \mux_out[6][5] , \mux_out[6][4] , \mux_out[6][3] ,
         \mux_out[6][2] , \mux_out[6][1] , \mux_out[6][0] , \mux_out[7][30] ,
         \mux_out[7][29] , \mux_out[7][28] , \mux_out[7][27] ,
         \mux_out[7][26] , \mux_out[7][25] , \mux_out[7][24] ,
         \mux_out[7][23] , \mux_out[7][22] , \mux_out[7][21] ,
         \mux_out[7][20] , \mux_out[7][19] , \mux_out[7][18] ,
         \mux_out[7][17] , \mux_out[7][16] , \mux_out[7][15] ,
         \mux_out[7][14] , \mux_out[7][13] , \mux_out[7][12] ,
         \mux_out[7][11] , \mux_out[7][10] , \mux_out[7][9] , \mux_out[7][8] ,
         \mux_out[7][7] , \mux_out[7][6] , \mux_out[7][5] , \mux_out[7][4] ,
         \mux_out[7][3] , \mux_out[7][2] , \mux_out[7][1] , \mux_out[7][0] ,
         n1, n2, n3, n4, n5, n6, n7;
  wire   [0:7] sum_subn;

  encoder_0 ENCi_0 ( .b({B[1:0], 1'b0}), .vp({sum_subn[0], \sel[0][1] , 
        \sel[0][0] }) );
  mux_NBIT17 MUXi_0 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n7, n7, A[14:0]}), .C({n6, A[14:0], 1'b0}), .S({\sel[0][1] , \sel[0][0] }), .Y({
        \mux_out[0][16] , \mux_out[0][15] , \mux_out[0][14] , \mux_out[0][13] , 
        \mux_out[0][12] , \mux_out[0][11] , \mux_out[0][10] , \mux_out[0][9] , 
        \mux_out[0][8] , \mux_out[0][7] , \mux_out[0][6] , \mux_out[0][5] , 
        \mux_out[0][4] , \mux_out[0][3] , \mux_out[0][2] , \mux_out[0][1] , 
        \mux_out[0][0] }) );
  adder_NBIT17 ADDERi_0 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({
        \mux_out[0][16] , \mux_out[0][15] , \mux_out[0][14] , \mux_out[0][13] , 
        \mux_out[0][12] , \mux_out[0][11] , \mux_out[0][10] , \mux_out[0][9] , 
        \mux_out[0][8] , \mux_out[0][7] , \mux_out[0][6] , \mux_out[0][5] , 
        \mux_out[0][4] , \mux_out[0][3] , \mux_out[0][2] , \mux_out[0][1] , 
        \mux_out[0][0] }), .SUB_SUMn(sum_subn[0]), .S({\sum[1][17] , 
        \sum[1][16] , \sum[1][15] , \sum[1][14] , \sum[1][13] , \sum[1][12] , 
        \sum[1][11] , \sum[1][10] , \sum[1][9] , \sum[1][8] , \sum[1][7] , 
        \sum[1][6] , \sum[1][5] , \sum[1][4] , \sum[1][3] , \sum[1][2] , 
        \sum[1][1] , \sum[1][0] }) );
  encoder_7 ENCi_1 ( .b({B[3:2], n2}), .vp({sum_subn[1], \sel[1][1] , 
        \sel[1][0] }) );
  mux_NBIT19 MUXi_1 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n7, 
        n7, A[14:0], 1'b0, 1'b0}), .C({n6, A[14:0], 1'b0, 1'b0, 1'b0}), .S({
        \sel[1][1] , \sel[1][0] }), .Y({\mux_out[1][18] , \mux_out[1][17] , 
        \mux_out[1][16] , \mux_out[1][15] , \mux_out[1][14] , \mux_out[1][13] , 
        \mux_out[1][12] , \mux_out[1][11] , \mux_out[1][10] , \mux_out[1][9] , 
        \mux_out[1][8] , \mux_out[1][7] , \mux_out[1][6] , \mux_out[1][5] , 
        \mux_out[1][4] , \mux_out[1][3] , \mux_out[1][2] , \mux_out[1][1] , 
        \mux_out[1][0] }) );
  adder_NBIT19 ADDERi_1 ( .A({\sum[1][17] , \sum[1][17] , \sum[1][16] , 
        \sum[1][15] , \sum[1][14] , \sum[1][13] , \sum[1][12] , \sum[1][11] , 
        \sum[1][10] , \sum[1][9] , \sum[1][8] , \sum[1][7] , \sum[1][6] , 
        \sum[1][5] , \sum[1][4] , \sum[1][3] , \sum[1][2] , \sum[1][1] , 
        \sum[1][0] }), .B({\mux_out[1][18] , \mux_out[1][17] , 
        \mux_out[1][16] , \mux_out[1][15] , \mux_out[1][14] , \mux_out[1][13] , 
        \mux_out[1][12] , \mux_out[1][11] , \mux_out[1][10] , \mux_out[1][9] , 
        \mux_out[1][8] , \mux_out[1][7] , \mux_out[1][6] , \mux_out[1][5] , 
        \mux_out[1][4] , \mux_out[1][3] , \mux_out[1][2] , \mux_out[1][1] , 
        \mux_out[1][0] }), .SUB_SUMn(sum_subn[1]), .S({\sum[2][19] , 
        \sum[2][18] , \sum[2][17] , \sum[2][16] , \sum[2][15] , \sum[2][14] , 
        \sum[2][13] , \sum[2][12] , \sum[2][11] , \sum[2][10] , \sum[2][9] , 
        \sum[2][8] , \sum[2][7] , \sum[2][6] , \sum[2][5] , \sum[2][4] , 
        \sum[2][3] , \sum[2][2] , \sum[2][1] , \sum[2][0] }) );
  encoder_6 ENCi_2 ( .b(B[5:3]), .vp({sum_subn[2], \sel[2][1] , \sel[2][0] })
         );
  mux_NBIT21 MUXi_2 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n6, n6, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0}), .C({n6, A[14:0], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .S({\sel[2][1] , \sel[2][0] }), .Y({
        \mux_out[2][20] , \mux_out[2][19] , \mux_out[2][18] , \mux_out[2][17] , 
        \mux_out[2][16] , \mux_out[2][15] , \mux_out[2][14] , \mux_out[2][13] , 
        \mux_out[2][12] , \mux_out[2][11] , \mux_out[2][10] , \mux_out[2][9] , 
        \mux_out[2][8] , \mux_out[2][7] , \mux_out[2][6] , \mux_out[2][5] , 
        \mux_out[2][4] , \mux_out[2][3] , \mux_out[2][2] , \mux_out[2][1] , 
        \mux_out[2][0] }) );
  adder_NBIT21 ADDERi_2 ( .A({\sum[2][19] , \sum[2][19] , \sum[2][18] , 
        \sum[2][17] , \sum[2][16] , \sum[2][15] , \sum[2][14] , \sum[2][13] , 
        \sum[2][12] , \sum[2][11] , \sum[2][10] , \sum[2][9] , \sum[2][8] , 
        \sum[2][7] , \sum[2][6] , \sum[2][5] , \sum[2][4] , \sum[2][3] , 
        \sum[2][2] , \sum[2][1] , \sum[2][0] }), .B({\mux_out[2][20] , 
        \mux_out[2][19] , \mux_out[2][18] , \mux_out[2][17] , \mux_out[2][16] , 
        \mux_out[2][15] , \mux_out[2][14] , \mux_out[2][13] , \mux_out[2][12] , 
        \mux_out[2][11] , \mux_out[2][10] , \mux_out[2][9] , \mux_out[2][8] , 
        \mux_out[2][7] , \mux_out[2][6] , \mux_out[2][5] , \mux_out[2][4] , 
        \mux_out[2][3] , \mux_out[2][2] , \mux_out[2][1] , \mux_out[2][0] }), 
        .SUB_SUMn(sum_subn[2]), .S({\sum[3][21] , \sum[3][20] , \sum[3][19] , 
        \sum[3][18] , \sum[3][17] , \sum[3][16] , \sum[3][15] , \sum[3][14] , 
        \sum[3][13] , \sum[3][12] , \sum[3][11] , \sum[3][10] , \sum[3][9] , 
        \sum[3][8] , \sum[3][7] , \sum[3][6] , \sum[3][5] , \sum[3][4] , 
        \sum[3][3] , \sum[3][2] , \sum[3][1] , \sum[3][0] }) );
  encoder_5 ENCi_3 ( .b(B[7:5]), .vp({sum_subn[3], \sel[3][1] , \sel[3][0] })
         );
  mux_NBIT23 MUXi_3 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .B({n6, n6, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .C({n6, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .S({\sel[3][1] , 
        \sel[3][0] }), .Y({\mux_out[3][22] , \mux_out[3][21] , 
        \mux_out[3][20] , \mux_out[3][19] , \mux_out[3][18] , \mux_out[3][17] , 
        \mux_out[3][16] , \mux_out[3][15] , \mux_out[3][14] , \mux_out[3][13] , 
        \mux_out[3][12] , \mux_out[3][11] , \mux_out[3][10] , \mux_out[3][9] , 
        \mux_out[3][8] , \mux_out[3][7] , \mux_out[3][6] , \mux_out[3][5] , 
        \mux_out[3][4] , \mux_out[3][3] , \mux_out[3][2] , \mux_out[3][1] , 
        \mux_out[3][0] }) );
  adder_NBIT23 ADDERi_3 ( .A({\sum[3][21] , \sum[3][21] , \sum[3][20] , 
        \sum[3][19] , \sum[3][18] , \sum[3][17] , \sum[3][16] , \sum[3][15] , 
        \sum[3][14] , \sum[3][13] , \sum[3][12] , \sum[3][11] , \sum[3][10] , 
        \sum[3][9] , \sum[3][8] , \sum[3][7] , \sum[3][6] , \sum[3][5] , 
        \sum[3][4] , \sum[3][3] , \sum[3][2] , \sum[3][1] , \sum[3][0] }), .B(
        {\mux_out[3][22] , \mux_out[3][21] , \mux_out[3][20] , 
        \mux_out[3][19] , \mux_out[3][18] , \mux_out[3][17] , \mux_out[3][16] , 
        \mux_out[3][15] , \mux_out[3][14] , \mux_out[3][13] , \mux_out[3][12] , 
        \mux_out[3][11] , \mux_out[3][10] , \mux_out[3][9] , \mux_out[3][8] , 
        \mux_out[3][7] , \mux_out[3][6] , \mux_out[3][5] , \mux_out[3][4] , 
        \mux_out[3][3] , \mux_out[3][2] , \mux_out[3][1] , \mux_out[3][0] }), 
        .SUB_SUMn(sum_subn[3]), .S({\sum[4][23] , \sum[4][22] , \sum[4][21] , 
        \sum[4][20] , \sum[4][19] , \sum[4][18] , \sum[4][17] , \sum[4][16] , 
        \sum[4][15] , \sum[4][14] , \sum[4][13] , \sum[4][12] , \sum[4][11] , 
        \sum[4][10] , \sum[4][9] , \sum[4][8] , \sum[4][7] , \sum[4][6] , 
        \sum[4][5] , \sum[4][4] , \sum[4][3] , \sum[4][2] , \sum[4][1] , 
        \sum[4][0] }) );
  encoder_4 ENCi_4 ( .b(B[9:7]), .vp({sum_subn[4], \sel[4][1] , \sel[4][0] })
         );
  mux_NBIT25 MUXi_4 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .B({n7, n7, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .C({n6, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .S({\sel[4][1] , \sel[4][0] }), .Y({
        \mux_out[4][24] , \mux_out[4][23] , \mux_out[4][22] , \mux_out[4][21] , 
        \mux_out[4][20] , \mux_out[4][19] , \mux_out[4][18] , \mux_out[4][17] , 
        \mux_out[4][16] , \mux_out[4][15] , \mux_out[4][14] , \mux_out[4][13] , 
        \mux_out[4][12] , \mux_out[4][11] , \mux_out[4][10] , \mux_out[4][9] , 
        \mux_out[4][8] , \mux_out[4][7] , \mux_out[4][6] , \mux_out[4][5] , 
        \mux_out[4][4] , \mux_out[4][3] , \mux_out[4][2] , \mux_out[4][1] , 
        \mux_out[4][0] }) );
  adder_NBIT25 ADDERi_4 ( .A({n5, \sum[4][23] , \sum[4][22] , \sum[4][21] , 
        \sum[4][20] , \sum[4][19] , \sum[4][18] , \sum[4][17] , \sum[4][16] , 
        \sum[4][15] , \sum[4][14] , \sum[4][13] , \sum[4][12] , \sum[4][11] , 
        \sum[4][10] , \sum[4][9] , \sum[4][8] , \sum[4][7] , \sum[4][6] , 
        \sum[4][5] , \sum[4][4] , \sum[4][3] , \sum[4][2] , \sum[4][1] , 
        \sum[4][0] }), .B({\mux_out[4][24] , \mux_out[4][23] , 
        \mux_out[4][22] , \mux_out[4][21] , \mux_out[4][20] , \mux_out[4][19] , 
        \mux_out[4][18] , \mux_out[4][17] , \mux_out[4][16] , \mux_out[4][15] , 
        \mux_out[4][14] , \mux_out[4][13] , \mux_out[4][12] , \mux_out[4][11] , 
        \mux_out[4][10] , \mux_out[4][9] , \mux_out[4][8] , \mux_out[4][7] , 
        \mux_out[4][6] , \mux_out[4][5] , \mux_out[4][4] , \mux_out[4][3] , 
        \mux_out[4][2] , \mux_out[4][1] , \mux_out[4][0] }), .SUB_SUMn(
        sum_subn[4]), .S({\sum[5][25] , \sum[5][24] , \sum[5][23] , 
        \sum[5][22] , \sum[5][21] , \sum[5][20] , \sum[5][19] , \sum[5][18] , 
        \sum[5][17] , \sum[5][16] , \sum[5][15] , \sum[5][14] , \sum[5][13] , 
        \sum[5][12] , \sum[5][11] , \sum[5][10] , \sum[5][9] , \sum[5][8] , 
        \sum[5][7] , \sum[5][6] , \sum[5][5] , \sum[5][4] , \sum[5][3] , 
        \sum[5][2] , \sum[5][1] , \sum[5][0] }) );
  encoder_3 ENCi_5 ( .b(B[11:9]), .vp({sum_subn[5], \sel[5][1] , \sel[5][0] })
         );
  mux_NBIT27 MUXi_5 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n7, n7, A[14:0], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .C({n6, A[14:0], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .S({\sel[5][1] , \sel[5][0] }), .Y({\mux_out[5][26] , \mux_out[5][25] , 
        \mux_out[5][24] , \mux_out[5][23] , \mux_out[5][22] , \mux_out[5][21] , 
        \mux_out[5][20] , \mux_out[5][19] , \mux_out[5][18] , \mux_out[5][17] , 
        \mux_out[5][16] , \mux_out[5][15] , \mux_out[5][14] , \mux_out[5][13] , 
        \mux_out[5][12] , \mux_out[5][11] , \mux_out[5][10] , \mux_out[5][9] , 
        \mux_out[5][8] , \mux_out[5][7] , \mux_out[5][6] , \mux_out[5][5] , 
        \mux_out[5][4] , \mux_out[5][3] , \mux_out[5][2] , \mux_out[5][1] , 
        \mux_out[5][0] }) );
  adder_NBIT27 ADDERi_5 ( .A({n1, \sum[5][25] , \sum[5][24] , \sum[5][23] , 
        \sum[5][22] , \sum[5][21] , \sum[5][20] , \sum[5][19] , \sum[5][18] , 
        \sum[5][17] , \sum[5][16] , \sum[5][15] , \sum[5][14] , \sum[5][13] , 
        \sum[5][12] , \sum[5][11] , \sum[5][10] , \sum[5][9] , \sum[5][8] , 
        \sum[5][7] , \sum[5][6] , \sum[5][5] , \sum[5][4] , \sum[5][3] , 
        \sum[5][2] , \sum[5][1] , \sum[5][0] }), .B({\mux_out[5][26] , 
        \mux_out[5][25] , \mux_out[5][24] , \mux_out[5][23] , \mux_out[5][22] , 
        \mux_out[5][21] , \mux_out[5][20] , \mux_out[5][19] , \mux_out[5][18] , 
        \mux_out[5][17] , \mux_out[5][16] , \mux_out[5][15] , \mux_out[5][14] , 
        \mux_out[5][13] , \mux_out[5][12] , \mux_out[5][11] , \mux_out[5][10] , 
        \mux_out[5][9] , \mux_out[5][8] , \mux_out[5][7] , \mux_out[5][6] , 
        \mux_out[5][5] , \mux_out[5][4] , \mux_out[5][3] , \mux_out[5][2] , 
        \mux_out[5][1] , \mux_out[5][0] }), .SUB_SUMn(sum_subn[5]), .S({
        \sum[6][27] , \sum[6][26] , \sum[6][25] , \sum[6][24] , \sum[6][23] , 
        \sum[6][22] , \sum[6][21] , \sum[6][20] , \sum[6][19] , \sum[6][18] , 
        \sum[6][17] , \sum[6][16] , \sum[6][15] , \sum[6][14] , \sum[6][13] , 
        \sum[6][12] , \sum[6][11] , \sum[6][10] , \sum[6][9] , \sum[6][8] , 
        \sum[6][7] , \sum[6][6] , \sum[6][5] , \sum[6][4] , \sum[6][3] , 
        \sum[6][2] , \sum[6][1] , \sum[6][0] }) );
  encoder_2 ENCi_6 ( .b(B[13:11]), .vp({sum_subn[6], \sel[6][1] , \sel[6][0] }) );
  mux_NBIT29 MUXi_6 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n7, n7, A[14:0], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .C({n6, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .S({\sel[6][1] , \sel[6][0] }), .Y({
        \mux_out[6][28] , \mux_out[6][27] , \mux_out[6][26] , \mux_out[6][25] , 
        \mux_out[6][24] , \mux_out[6][23] , \mux_out[6][22] , \mux_out[6][21] , 
        \mux_out[6][20] , \mux_out[6][19] , \mux_out[6][18] , \mux_out[6][17] , 
        \mux_out[6][16] , \mux_out[6][15] , \mux_out[6][14] , \mux_out[6][13] , 
        \mux_out[6][12] , \mux_out[6][11] , \mux_out[6][10] , \mux_out[6][9] , 
        \mux_out[6][8] , \mux_out[6][7] , \mux_out[6][6] , \mux_out[6][5] , 
        \mux_out[6][4] , \mux_out[6][3] , \mux_out[6][2] , \mux_out[6][1] , 
        \mux_out[6][0] }) );
  adder_NBIT29 ADDERi_6 ( .A({n4, \sum[6][27] , \sum[6][26] , \sum[6][25] , 
        \sum[6][24] , \sum[6][23] , \sum[6][22] , \sum[6][21] , \sum[6][20] , 
        \sum[6][19] , \sum[6][18] , \sum[6][17] , \sum[6][16] , \sum[6][15] , 
        \sum[6][14] , \sum[6][13] , \sum[6][12] , \sum[6][11] , \sum[6][10] , 
        \sum[6][9] , \sum[6][8] , \sum[6][7] , \sum[6][6] , \sum[6][5] , 
        \sum[6][4] , \sum[6][3] , \sum[6][2] , \sum[6][1] , \sum[6][0] }), .B(
        {\mux_out[6][28] , \mux_out[6][27] , \mux_out[6][26] , 
        \mux_out[6][25] , \mux_out[6][24] , \mux_out[6][23] , \mux_out[6][22] , 
        \mux_out[6][21] , \mux_out[6][20] , \mux_out[6][19] , \mux_out[6][18] , 
        \mux_out[6][17] , \mux_out[6][16] , \mux_out[6][15] , \mux_out[6][14] , 
        \mux_out[6][13] , \mux_out[6][12] , \mux_out[6][11] , \mux_out[6][10] , 
        \mux_out[6][9] , \mux_out[6][8] , \mux_out[6][7] , \mux_out[6][6] , 
        \mux_out[6][5] , \mux_out[6][4] , \mux_out[6][3] , \mux_out[6][2] , 
        \mux_out[6][1] , \mux_out[6][0] }), .SUB_SUMn(sum_subn[6]), .S({
        \sum[7][29] , \sum[7][28] , \sum[7][27] , \sum[7][26] , \sum[7][25] , 
        \sum[7][24] , \sum[7][23] , \sum[7][22] , \sum[7][21] , \sum[7][20] , 
        \sum[7][19] , \sum[7][18] , \sum[7][17] , \sum[7][16] , \sum[7][15] , 
        \sum[7][14] , \sum[7][13] , \sum[7][12] , \sum[7][11] , \sum[7][10] , 
        \sum[7][9] , \sum[7][8] , \sum[7][7] , \sum[7][6] , \sum[7][5] , 
        \sum[7][4] , \sum[7][3] , \sum[7][2] , \sum[7][1] , \sum[7][0] }) );
  encoder_1 ENCi_7 ( .b(B[15:13]), .vp({sum_subn[7], \sel[7][1] , \sel[7][0] }) );
  mux_NBIT31 MUXi_7 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n7, 
        n7, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .C({n6, A[14:0], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .S({\sel[7][1] , \sel[7][0] }), .Y({\mux_out[7][30] , \mux_out[7][29] , 
        \mux_out[7][28] , \mux_out[7][27] , \mux_out[7][26] , \mux_out[7][25] , 
        \mux_out[7][24] , \mux_out[7][23] , \mux_out[7][22] , \mux_out[7][21] , 
        \mux_out[7][20] , \mux_out[7][19] , \mux_out[7][18] , \mux_out[7][17] , 
        \mux_out[7][16] , \mux_out[7][15] , \mux_out[7][14] , \mux_out[7][13] , 
        \mux_out[7][12] , \mux_out[7][11] , \mux_out[7][10] , \mux_out[7][9] , 
        \mux_out[7][8] , \mux_out[7][7] , \mux_out[7][6] , \mux_out[7][5] , 
        \mux_out[7][4] , \mux_out[7][3] , \mux_out[7][2] , \mux_out[7][1] , 
        \mux_out[7][0] }) );
  adder_NBIT31 ADDERi_7 ( .A({n3, \sum[7][29] , \sum[7][28] , \sum[7][27] , 
        \sum[7][26] , \sum[7][25] , \sum[7][24] , \sum[7][23] , \sum[7][22] , 
        \sum[7][21] , \sum[7][20] , \sum[7][19] , \sum[7][18] , \sum[7][17] , 
        \sum[7][16] , \sum[7][15] , \sum[7][14] , \sum[7][13] , \sum[7][12] , 
        \sum[7][11] , \sum[7][10] , \sum[7][9] , \sum[7][8] , \sum[7][7] , 
        \sum[7][6] , \sum[7][5] , \sum[7][4] , \sum[7][3] , \sum[7][2] , 
        \sum[7][1] , \sum[7][0] }), .B({\mux_out[7][30] , \mux_out[7][29] , 
        \mux_out[7][28] , \mux_out[7][27] , \mux_out[7][26] , \mux_out[7][25] , 
        \mux_out[7][24] , \mux_out[7][23] , \mux_out[7][22] , \mux_out[7][21] , 
        \mux_out[7][20] , \mux_out[7][19] , \mux_out[7][18] , \mux_out[7][17] , 
        \mux_out[7][16] , \mux_out[7][15] , \mux_out[7][14] , \mux_out[7][13] , 
        \mux_out[7][12] , \mux_out[7][11] , \mux_out[7][10] , \mux_out[7][9] , 
        \mux_out[7][8] , \mux_out[7][7] , \mux_out[7][6] , \mux_out[7][5] , 
        \mux_out[7][4] , \mux_out[7][3] , \mux_out[7][2] , \mux_out[7][1] , 
        \mux_out[7][0] }), .SUB_SUMn(sum_subn[7]), .S(Y) );
  BUF_X1 U2 ( .A(B[1]), .Z(n2) );
  CLKBUF_X1 U3 ( .A(\sum[5][25] ), .Z(n1) );
  CLKBUF_X1 U4 ( .A(\sum[6][27] ), .Z(n4) );
  CLKBUF_X1 U5 ( .A(\sum[7][29] ), .Z(n3) );
  CLKBUF_X1 U6 ( .A(\sum[4][23] ), .Z(n5) );
  BUF_X1 U7 ( .A(A[15]), .Z(n6) );
  BUF_X1 U8 ( .A(A[15]), .Z(n7) );
endmodule

