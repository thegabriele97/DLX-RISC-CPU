
module encoder_0 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   n5, n1, n4;

  BUF_X1 U1 ( .A(b[2]), .Z(vp[2]) );
  XNOR2_X1 U2 ( .A(b[1]), .B(n4), .ZN(vp[0]) );
  INV_X1 U3 ( .A(b[0]), .ZN(n4) );
  XNOR2_X1 U4 ( .A(b[1]), .B(n4), .ZN(n5) );
  NOR2_X1 U5 ( .A1(n1), .A2(n5), .ZN(vp[1]) );
  XNOR2_X1 U6 ( .A(b[2]), .B(b[0]), .ZN(n1) );
endmodule


module mux_NBIT17 ( A, B, C, S, Y );
  input [16:0] A;
  input [16:0] B;
  input [16:0] C;
  input [1:0] S;
  output [16:0] Y;
  wire   n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, net48151, net49182, n37, n38, n39, n40, n41, n43,
         n44, n45, n46;

  INV_X1 U1 ( .A(n37), .ZN(n38) );
  OR3_X1 U2 ( .A1(n43), .A2(n45), .A3(n44), .ZN(Y[0]) );
  INV_X1 U3 ( .A(n21), .ZN(n37) );
  INV_X1 U4 ( .A(S[1]), .ZN(n39) );
  INV_X1 U5 ( .A(n39), .ZN(n40) );
  INV_X1 U6 ( .A(n39), .ZN(net48151) );
  INV_X1 U7 ( .A(S[0]), .ZN(net49182) );
  NOR2_X1 U8 ( .A1(S[1]), .A2(net49182), .ZN(n41) );
  AND2_X2 U9 ( .A1(n39), .A2(S[0]), .ZN(n20) );
  INV_X1 U10 ( .A(n29), .ZN(Y[10]) );
  NOR2_X1 U11 ( .A1(net48151), .A2(S[0]), .ZN(n21) );
  AND2_X1 U12 ( .A1(C[0]), .A2(net48151), .ZN(n43) );
  AND2_X1 U13 ( .A1(B[0]), .A2(n41), .ZN(n44) );
  AND2_X1 U14 ( .A1(A[0]), .A2(n38), .ZN(n45) );
  INV_X1 U15 ( .A(n23), .ZN(Y[16]) );
  INV_X1 U16 ( .A(n35), .ZN(Y[4]) );
  INV_X1 U17 ( .A(n36), .ZN(Y[3]) );
  INV_X1 U18 ( .A(n32), .ZN(Y[7]) );
  INV_X1 U19 ( .A(n33), .ZN(Y[6]) );
  INV_X1 U20 ( .A(n34), .ZN(Y[5]) );
  INV_X1 U21 ( .A(n30), .ZN(Y[9]) );
  INV_X1 U22 ( .A(n31), .ZN(Y[8]) );
  INV_X1 U23 ( .A(n22), .ZN(Y[2]) );
  INV_X1 U24 ( .A(n28), .ZN(Y[11]) );
  INV_X1 U25 ( .A(n27), .ZN(Y[12]) );
  INV_X1 U26 ( .A(n26), .ZN(Y[13]) );
  INV_X1 U27 ( .A(n25), .ZN(Y[14]) );
  INV_X1 U28 ( .A(n24), .ZN(Y[15]) );
  INV_X1 U29 ( .A(n19), .ZN(Y[1]) );
  NOR2_X1 U30 ( .A1(net49182), .A2(n40), .ZN(n46) );
  AOI222_X1 U31 ( .A1(n40), .A2(C[1]), .B1(B[1]), .B2(n41), .C1(A[1]), .C2(n21), .ZN(n19) );
  AOI222_X1 U32 ( .A1(C[16]), .A2(net48151), .B1(B[16]), .B2(n46), .C1(A[16]), 
        .C2(n38), .ZN(n23) );
  AOI222_X1 U33 ( .A1(C[15]), .A2(net48151), .B1(B[15]), .B2(n46), .C1(A[15]), 
        .C2(n38), .ZN(n24) );
  AOI222_X1 U34 ( .A1(C[14]), .A2(net48151), .B1(B[14]), .B2(n46), .C1(A[14]), 
        .C2(n38), .ZN(n25) );
  AOI222_X1 U35 ( .A1(C[13]), .A2(net48151), .B1(B[13]), .B2(n46), .C1(A[13]), 
        .C2(n38), .ZN(n26) );
  AOI222_X1 U36 ( .A1(C[12]), .A2(net48151), .B1(B[12]), .B2(n46), .C1(A[12]), 
        .C2(n38), .ZN(n27) );
  AOI222_X1 U37 ( .A1(C[11]), .A2(net48151), .B1(B[11]), .B2(n46), .C1(A[11]), 
        .C2(n38), .ZN(n28) );
  AOI222_X1 U38 ( .A1(C[10]), .A2(net48151), .B1(B[10]), .B2(n46), .C1(A[10]), 
        .C2(n38), .ZN(n29) );
  AOI222_X1 U39 ( .A1(C[9]), .A2(n40), .B1(B[9]), .B2(n20), .C1(A[9]), .C2(n38), .ZN(n30) );
  AOI222_X1 U40 ( .A1(C[8]), .A2(n40), .B1(B[8]), .B2(n20), .C1(A[8]), .C2(n38), .ZN(n31) );
  AOI222_X1 U41 ( .A1(C[7]), .A2(n40), .B1(B[7]), .B2(n20), .C1(A[7]), .C2(n38), .ZN(n32) );
  AOI222_X1 U42 ( .A1(C[6]), .A2(n40), .B1(B[6]), .B2(n20), .C1(A[6]), .C2(n38), .ZN(n33) );
  AOI222_X1 U43 ( .A1(C[5]), .A2(n40), .B1(B[5]), .B2(n20), .C1(A[5]), .C2(n38), .ZN(n34) );
  AOI222_X1 U44 ( .A1(C[4]), .A2(n40), .B1(B[4]), .B2(n20), .C1(A[4]), .C2(n38), .ZN(n35) );
  AOI222_X1 U45 ( .A1(C[3]), .A2(n40), .B1(B[3]), .B2(n20), .C1(A[3]), .C2(n38), .ZN(n36) );
  AOI222_X1 U46 ( .A1(C[2]), .A2(n40), .B1(B[2]), .B2(n20), .C1(A[2]), .C2(n21), .ZN(n22) );
endmodule


module adder_NBIT17_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n76, n77, n78, n79, n80, n81, n83, n84, n85, n86, n87, n89, n90, n92,
         n93, n94, n95, n96, n97, n98, n100, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n82, n88, n91, n99, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118;
  wire   [18:0] carry;

  FA_X1 U2_16 ( .A(A[16]), .B(n118), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FA_X1 U2_15 ( .A(A[15]), .B(n117), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA_X1 U2_14 ( .A(A[14]), .B(n116), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA_X1 U2_13 ( .A(A[13]), .B(n115), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA_X1 U2_12 ( .A(A[12]), .B(n114), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA_X1 U2_11 ( .A(A[11]), .B(n113), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA_X1 U2_9 ( .A(A[9]), .B(n111), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  XOR2_X1 U46 ( .A(n54), .B(n79), .Z(DIFF[7]) );
  XOR2_X1 U47 ( .A(n107), .B(B[7]), .Z(n79) );
  XOR2_X1 U50 ( .A(n105), .B(B[5]), .Z(n85) );
  XOR2_X1 U56 ( .A(n91), .B(n98), .Z(DIFF[1]) );
  XOR2_X1 U57 ( .A(B[1]), .B(A[1]), .Z(n98) );
  XOR2_X1 U60 ( .A(n108), .B(n100), .Z(DIFF[10]) );
  CLKBUF_X1 U1 ( .A(n81), .Z(n52) );
  INV_X1 U2 ( .A(B[2]), .ZN(n53) );
  XNOR2_X1 U3 ( .A(carry[10]), .B(n112), .ZN(n100) );
  OAI22_X1 U4 ( .A1(n75), .A2(n106), .B1(B[6]), .B2(n80), .ZN(n54) );
  OAI22_X1 U5 ( .A1(n75), .A2(n106), .B1(B[6]), .B2(n80), .ZN(n77) );
  BUF_X1 U6 ( .A(n83), .Z(n73) );
  OR2_X1 U7 ( .A1(B[10]), .A2(n108), .ZN(n55) );
  NAND2_X1 U8 ( .A1(n55), .A2(n78), .ZN(carry[11]) );
  OR2_X1 U9 ( .A1(A[10]), .A2(n112), .ZN(n56) );
  NAND2_X1 U10 ( .A1(carry[10]), .A2(n56), .ZN(n78) );
  XNOR2_X1 U11 ( .A(n57), .B(A[17]), .ZN(DIFF[17]) );
  XNOR2_X1 U12 ( .A(n118), .B(carry[17]), .ZN(n57) );
  CLKBUF_X1 U13 ( .A(n94), .Z(n58) );
  CLKBUF_X1 U14 ( .A(B[0]), .Z(n59) );
  AND2_X1 U15 ( .A1(B[0]), .A2(n63), .ZN(n60) );
  AND2_X1 U16 ( .A1(B[0]), .A2(n63), .ZN(n96) );
  OAI22_X1 U17 ( .A1(n74), .A2(n107), .B1(n76), .B2(B[7]), .ZN(n61) );
  OAI22_X1 U18 ( .A1(n74), .A2(n107), .B1(n76), .B2(B[7]), .ZN(carry[8]) );
  XNOR2_X1 U19 ( .A(n95), .B(A[2]), .ZN(DIFF[2]) );
  OR2_X1 U20 ( .A1(n71), .A2(n109), .ZN(n62) );
  NAND2_X1 U21 ( .A1(n93), .A2(n62), .ZN(n95) );
  NOR2_X1 U22 ( .A1(A[1]), .A2(A[0]), .ZN(n63) );
  XNOR2_X1 U23 ( .A(n86), .B(n64), .ZN(DIFF[4]) );
  XNOR2_X1 U24 ( .A(n104), .B(B[4]), .ZN(n64) );
  XOR2_X1 U25 ( .A(n110), .B(A[8]), .Z(n65) );
  XOR2_X1 U26 ( .A(n61), .B(n65), .Z(DIFF[8]) );
  NAND2_X1 U27 ( .A1(carry[8]), .A2(n110), .ZN(n66) );
  NAND2_X1 U28 ( .A1(n61), .A2(A[8]), .ZN(n67) );
  NAND2_X1 U29 ( .A1(n110), .A2(A[8]), .ZN(n68) );
  NAND3_X1 U30 ( .A1(n66), .A2(n67), .A3(n68), .ZN(carry[9]) );
  XNOR2_X1 U31 ( .A(n90), .B(n69), .ZN(DIFF[3]) );
  XNOR2_X1 U32 ( .A(n103), .B(B[3]), .ZN(n69) );
  AND2_X1 U33 ( .A1(n86), .A2(A[4]), .ZN(n70) );
  NOR2_X1 U34 ( .A1(n70), .A2(n87), .ZN(n83) );
  OAI22_X1 U35 ( .A1(n91), .A2(n101), .B1(n60), .B2(B[1]), .ZN(n71) );
  INV_X1 U36 ( .A(B[17]), .ZN(n118) );
  INV_X1 U37 ( .A(B[2]), .ZN(n109) );
  INV_X1 U38 ( .A(B[10]), .ZN(n112) );
  INV_X1 U39 ( .A(n90), .ZN(n88) );
  INV_X1 U40 ( .A(A[1]), .ZN(n101) );
  AOI21_X1 U41 ( .B1(n82), .B2(n104), .A(B[4]), .ZN(n87) );
  XNOR2_X1 U42 ( .A(n81), .B(n72), .ZN(DIFF[6]) );
  XNOR2_X1 U43 ( .A(n106), .B(B[6]), .ZN(n72) );
  INV_X1 U44 ( .A(B[9]), .ZN(n111) );
  INV_X1 U45 ( .A(B[12]), .ZN(n114) );
  INV_X1 U48 ( .A(B[13]), .ZN(n115) );
  INV_X1 U49 ( .A(B[14]), .ZN(n116) );
  INV_X1 U51 ( .A(B[15]), .ZN(n117) );
  INV_X1 U52 ( .A(B[8]), .ZN(n110) );
  INV_X1 U53 ( .A(B[11]), .ZN(n113) );
  INV_X1 U54 ( .A(A[10]), .ZN(n108) );
  INV_X1 U55 ( .A(A[4]), .ZN(n104) );
  INV_X1 U58 ( .A(A[5]), .ZN(n105) );
  INV_X1 U59 ( .A(A[3]), .ZN(n103) );
  INV_X1 U61 ( .A(A[6]), .ZN(n106) );
  INV_X1 U62 ( .A(A[7]), .ZN(n107) );
  INV_X1 U63 ( .A(A[2]), .ZN(n102) );
  INV_X1 U64 ( .A(A[0]), .ZN(n99) );
  OAI22_X1 U65 ( .A1(n91), .A2(n101), .B1(n96), .B2(B[1]), .ZN(n94) );
  OAI22_X1 U66 ( .A1(n88), .A2(n103), .B1(n89), .B2(B[3]), .ZN(n86) );
  INV_X1 U67 ( .A(n97), .ZN(n91) );
  OAI21_X1 U68 ( .B1(n92), .B2(n102), .A(n93), .ZN(n90) );
  NOR2_X1 U69 ( .A1(A[3]), .A2(n90), .ZN(n89) );
  OAI21_X1 U70 ( .B1(n59), .B2(n99), .A(n97), .ZN(DIFF[0]) );
  NAND2_X1 U71 ( .A1(n59), .A2(n99), .ZN(n97) );
  XNOR2_X1 U72 ( .A(n73), .B(n85), .ZN(DIFF[5]) );
  OAI22_X1 U73 ( .A1(n73), .A2(n105), .B1(n84), .B2(B[5]), .ZN(n81) );
  AND2_X1 U74 ( .A1(n83), .A2(n105), .ZN(n84) );
  INV_X1 U75 ( .A(n54), .ZN(n74) );
  NOR2_X1 U76 ( .A1(n77), .A2(A[7]), .ZN(n76) );
  INV_X1 U77 ( .A(n52), .ZN(n75) );
  NOR2_X1 U78 ( .A1(n81), .A2(A[6]), .ZN(n80) );
  INV_X1 U79 ( .A(n86), .ZN(n82) );
  NOR2_X1 U80 ( .A1(n58), .A2(n109), .ZN(n92) );
  NAND2_X1 U81 ( .A1(n53), .A2(n94), .ZN(n93) );
endmodule


module adder_NBIT17_DW01_add_0 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;

  wire   [17:1] carry;

  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .S(SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FA_X1 U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
endmodule


module adder_NBIT17 ( A, B, SUB_SUMn, S );
  input [16:0] A;
  input [16:0] B;
  output [17:0] S;
  input SUB_SUMn;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n62;

  adder_NBIT17_DW01_sub_0 sub_20 ( .A({A[16], A}), .B({B[16], B}), .CI(1'b0), 
        .DIFF({N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, 
        N25, N24, N23, N22, N21}) );
  adder_NBIT17_DW01_add_0 add_20 ( .A({A[16], A}), .B({B[16], B[16:2], n42, 
        n43}), .CI(1'b0), .SUM({N19, N18, N17, N16, N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  INV_X1 U1 ( .A(n30), .ZN(S[12]) );
  INV_X1 U2 ( .A(n25), .ZN(S[17]) );
  CLKBUF_X1 U5 ( .A(B[1]), .Z(n42) );
  CLKBUF_X1 U6 ( .A(B[0]), .Z(n43) );
  INV_X1 U7 ( .A(SUB_SUMn), .ZN(n62) );
  AOI22_X1 U8 ( .A1(N19), .A2(n62), .B1(N38), .B2(SUB_SUMn), .ZN(n25) );
  AOI22_X1 U9 ( .A1(N13), .A2(n62), .B1(N32), .B2(SUB_SUMn), .ZN(n31) );
  AOI22_X1 U10 ( .A1(N26), .A2(SUB_SUMn), .B1(N7), .B2(n62), .ZN(n40) );
  INV_X1 U11 ( .A(n32), .ZN(S[9]) );
  AOI22_X1 U12 ( .A1(N11), .A2(n62), .B1(N30), .B2(SUB_SUMn), .ZN(n32) );
  INV_X1 U13 ( .A(n36), .ZN(S[3]) );
  AOI22_X1 U14 ( .A1(N28), .A2(SUB_SUMn), .B1(N9), .B2(n62), .ZN(n33) );
  AOI22_X1 U15 ( .A1(N12), .A2(n62), .B1(N31), .B2(SUB_SUMn), .ZN(n41) );
  INV_X1 U16 ( .A(n28), .ZN(S[14]) );
  AOI22_X1 U17 ( .A1(N16), .A2(n62), .B1(N35), .B2(SUB_SUMn), .ZN(n28) );
  AOI22_X1 U18 ( .A1(N14), .A2(n62), .B1(N33), .B2(SUB_SUMn), .ZN(n30) );
  INV_X1 U19 ( .A(n26), .ZN(S[16]) );
  AOI22_X1 U20 ( .A1(N18), .A2(n62), .B1(N37), .B2(SUB_SUMn), .ZN(n26) );
  INV_X1 U21 ( .A(n27), .ZN(S[15]) );
  AOI22_X1 U22 ( .A1(N17), .A2(n62), .B1(N36), .B2(SUB_SUMn), .ZN(n27) );
  INV_X1 U23 ( .A(n29), .ZN(S[13]) );
  AOI22_X1 U24 ( .A1(N15), .A2(n62), .B1(N34), .B2(SUB_SUMn), .ZN(n29) );
  INV_X1 U25 ( .A(n35), .ZN(S[4]) );
  AOI22_X1 U26 ( .A1(N25), .A2(SUB_SUMn), .B1(N6), .B2(n62), .ZN(n35) );
  INV_X1 U27 ( .A(n37), .ZN(S[1]) );
  AOI22_X1 U28 ( .A1(N22), .A2(SUB_SUMn), .B1(N3), .B2(n62), .ZN(n37) );
  INV_X1 U29 ( .A(n38), .ZN(S[0]) );
  AOI22_X1 U30 ( .A1(N2), .A2(n62), .B1(N21), .B2(SUB_SUMn), .ZN(n38) );
  INV_X1 U31 ( .A(n41), .ZN(S[10]) );
  INV_X1 U32 ( .A(n40), .ZN(S[5]) );
  INV_X1 U33 ( .A(n31), .ZN(S[11]) );
  INV_X1 U34 ( .A(n33), .ZN(S[7]) );
  AOI22_X1 U35 ( .A1(N24), .A2(SUB_SUMn), .B1(N5), .B2(n62), .ZN(n36) );
  INV_X1 U36 ( .A(n24), .ZN(S[2]) );
  AOI22_X1 U37 ( .A1(N10), .A2(n62), .B1(N29), .B2(SUB_SUMn), .ZN(n39) );
  INV_X1 U38 ( .A(n34), .ZN(S[6]) );
  AOI22_X1 U39 ( .A1(N27), .A2(SUB_SUMn), .B1(N8), .B2(n62), .ZN(n34) );
  INV_X1 U40 ( .A(n39), .ZN(S[8]) );
  AOI22_X1 U41 ( .A1(N23), .A2(SUB_SUMn), .B1(N4), .B2(n62), .ZN(n24) );
endmodule


module encoder_7 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n2;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];

  XOR2_X1 U1 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X4 U2 ( .A1(vp[0]), .A2(n2), .ZN(vp[1]) );
  XNOR2_X1 U3 ( .A(b[0]), .B(\b[2] ), .ZN(n2) );
endmodule


module mux_NBIT19 ( A, B, C, S, Y );
  input [18:0] A;
  input [18:0] B;
  input [18:0] C;
  input [1:0] S;
  output [18:0] Y;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n44, n64;

  NOR2_X2 U20 ( .A1(S[0]), .A2(S[1]), .ZN(n23) );
  INV_X1 U1 ( .A(n31), .ZN(Y[10]) );
  BUF_X2 U2 ( .A(n22), .Z(n44) );
  NOR2_X1 U3 ( .A1(n64), .A2(S[1]), .ZN(n22) );
  INV_X1 U4 ( .A(S[0]), .ZN(n64) );
  INV_X1 U5 ( .A(n27), .ZN(Y[14]) );
  INV_X1 U6 ( .A(n38), .ZN(Y[3]) );
  INV_X1 U7 ( .A(n30), .ZN(Y[11]) );
  INV_X1 U8 ( .A(n36), .ZN(Y[5]) );
  INV_X1 U9 ( .A(n37), .ZN(Y[4]) );
  INV_X1 U10 ( .A(n35), .ZN(Y[6]) );
  INV_X1 U11 ( .A(n34), .ZN(Y[7]) );
  INV_X1 U12 ( .A(n33), .ZN(Y[8]) );
  INV_X1 U13 ( .A(n32), .ZN(Y[9]) );
  INV_X1 U14 ( .A(n29), .ZN(Y[12]) );
  INV_X1 U15 ( .A(n28), .ZN(Y[13]) );
  INV_X1 U16 ( .A(n26), .ZN(Y[15]) );
  INV_X1 U17 ( .A(n25), .ZN(Y[16]) );
  INV_X1 U18 ( .A(n39), .ZN(Y[2]) );
  INV_X1 U19 ( .A(n21), .ZN(Y[18]) );
  INV_X1 U21 ( .A(n24), .ZN(Y[17]) );
  INV_X1 U22 ( .A(n41), .ZN(Y[0]) );
  INV_X1 U23 ( .A(n40), .ZN(Y[1]) );
  AOI222_X1 U24 ( .A1(C[1]), .A2(S[1]), .B1(B[1]), .B2(n44), .C1(A[1]), .C2(
        n23), .ZN(n40) );
  AOI222_X1 U25 ( .A1(C[0]), .A2(S[1]), .B1(B[0]), .B2(n44), .C1(A[0]), .C2(
        n23), .ZN(n41) );
  AOI222_X4 U26 ( .A1(S[1]), .A2(C[18]), .B1(B[18]), .B2(n44), .C1(A[18]), 
        .C2(n23), .ZN(n21) );
  AOI222_X1 U27 ( .A1(C[17]), .A2(S[1]), .B1(B[17]), .B2(n44), .C1(A[17]), 
        .C2(n23), .ZN(n24) );
  AOI222_X1 U28 ( .A1(C[16]), .A2(S[1]), .B1(B[16]), .B2(n44), .C1(A[16]), 
        .C2(n23), .ZN(n25) );
  AOI222_X1 U29 ( .A1(C[15]), .A2(S[1]), .B1(B[15]), .B2(n44), .C1(A[15]), 
        .C2(n23), .ZN(n26) );
  AOI222_X1 U30 ( .A1(C[14]), .A2(S[1]), .B1(B[14]), .B2(n44), .C1(A[14]), 
        .C2(n23), .ZN(n27) );
  AOI222_X1 U31 ( .A1(C[13]), .A2(S[1]), .B1(B[13]), .B2(n44), .C1(A[13]), 
        .C2(n23), .ZN(n28) );
  AOI222_X1 U32 ( .A1(C[12]), .A2(S[1]), .B1(B[12]), .B2(n44), .C1(A[12]), 
        .C2(n23), .ZN(n29) );
  AOI222_X1 U33 ( .A1(C[11]), .A2(S[1]), .B1(B[11]), .B2(n44), .C1(A[11]), 
        .C2(n23), .ZN(n30) );
  AOI222_X1 U34 ( .A1(C[10]), .A2(S[1]), .B1(B[10]), .B2(n44), .C1(A[10]), 
        .C2(n23), .ZN(n31) );
  AOI222_X1 U35 ( .A1(C[9]), .A2(S[1]), .B1(B[9]), .B2(n44), .C1(A[9]), .C2(
        n23), .ZN(n32) );
  AOI222_X1 U36 ( .A1(C[8]), .A2(S[1]), .B1(B[8]), .B2(n44), .C1(A[8]), .C2(
        n23), .ZN(n33) );
  AOI222_X1 U37 ( .A1(C[7]), .A2(S[1]), .B1(B[7]), .B2(n44), .C1(A[7]), .C2(
        n23), .ZN(n34) );
  AOI222_X1 U38 ( .A1(C[6]), .A2(S[1]), .B1(B[6]), .B2(n44), .C1(A[6]), .C2(
        n23), .ZN(n35) );
  AOI222_X1 U39 ( .A1(C[5]), .A2(S[1]), .B1(B[5]), .B2(n44), .C1(A[5]), .C2(
        n23), .ZN(n36) );
  AOI222_X1 U40 ( .A1(C[4]), .A2(S[1]), .B1(B[4]), .B2(n44), .C1(A[4]), .C2(
        n23), .ZN(n37) );
  AOI222_X1 U41 ( .A1(C[3]), .A2(S[1]), .B1(B[3]), .B2(n44), .C1(A[3]), .C2(
        n23), .ZN(n38) );
  AOI222_X1 U42 ( .A1(C[2]), .A2(S[1]), .B1(B[2]), .B2(n44), .C1(A[2]), .C2(
        n23), .ZN(n39) );
endmodule


module adder_NBIT19_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147;
  wire   [20:0] carry;

  FA_X1 U2_19 ( .A(A[19]), .B(n147), .CI(carry[19]), .S(DIFF[19]) );
  FA_X1 U2_17 ( .A(A[17]), .B(n146), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FA_X1 U2_15 ( .A(A[15]), .B(n144), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n132), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR2_X1 U43 ( .A(A[7]), .B(carry[7]), .Z(n79) );
  XOR2_X1 U44 ( .A(n86), .B(n81), .Z(DIFF[5]) );
  XOR2_X1 U45 ( .A(n127), .B(B[5]), .Z(n86) );
  XOR2_X1 U46 ( .A(n129), .B(B[4]), .Z(n89) );
  XOR2_X1 U47 ( .A(carry[3]), .B(B[3]), .Z(n91) );
  CLKBUF_X1 U1 ( .A(carry[6]), .Z(n53) );
  AND2_X1 U2 ( .A1(n134), .A2(n109), .ZN(n67) );
  INV_X1 U3 ( .A(B[13]), .ZN(n142) );
  INV_X1 U4 ( .A(n141), .ZN(n57) );
  BUF_X1 U5 ( .A(A[9]), .Z(n55) );
  NAND3_X1 U6 ( .A1(n69), .A2(n70), .A3(n71), .ZN(n54) );
  BUF_X1 U7 ( .A(n126), .Z(n75) );
  CLKBUF_X1 U8 ( .A(n70), .Z(n56) );
  XNOR2_X1 U9 ( .A(n85), .B(n57), .ZN(DIFF[12]) );
  CLKBUF_X1 U10 ( .A(n125), .Z(n58) );
  CLKBUF_X1 U11 ( .A(n100), .Z(n59) );
  OR2_X1 U12 ( .A1(n78), .A2(B[8]), .ZN(n101) );
  NAND3_X1 U13 ( .A1(n100), .A2(n101), .A3(n102), .ZN(n60) );
  NAND3_X1 U14 ( .A1(n69), .A2(n70), .A3(n71), .ZN(n61) );
  CLKBUF_X1 U15 ( .A(A[7]), .Z(n62) );
  XOR2_X1 U16 ( .A(A[6]), .B(n135), .Z(n63) );
  XOR2_X1 U17 ( .A(n53), .B(n63), .Z(DIFF[6]) );
  NAND2_X1 U18 ( .A1(carry[6]), .A2(A[6]), .ZN(n64) );
  NAND2_X1 U19 ( .A1(carry[6]), .A2(n135), .ZN(n65) );
  NAND2_X1 U20 ( .A1(A[6]), .A2(n135), .ZN(n66) );
  NAND3_X1 U21 ( .A1(n64), .A2(n65), .A3(n66), .ZN(carry[7]) );
  NOR2_X1 U22 ( .A1(n67), .A2(n130), .ZN(n87) );
  BUF_X1 U23 ( .A(A[3]), .Z(n109) );
  XOR2_X1 U24 ( .A(A[9]), .B(n138), .Z(n68) );
  XOR2_X1 U25 ( .A(carry[9]), .B(n68), .Z(DIFF[9]) );
  NAND2_X1 U26 ( .A1(n60), .A2(n55), .ZN(n69) );
  NAND2_X1 U27 ( .A1(n60), .A2(n138), .ZN(n70) );
  NAND2_X1 U28 ( .A1(n55), .A2(n138), .ZN(n71) );
  NAND3_X1 U29 ( .A1(n69), .A2(n56), .A3(n71), .ZN(carry[10]) );
  XNOR2_X1 U30 ( .A(n79), .B(B[7]), .ZN(DIFF[7]) );
  XNOR2_X1 U31 ( .A(n75), .B(n72), .ZN(DIFF[8]) );
  XNOR2_X1 U32 ( .A(A[8]), .B(n137), .ZN(n72) );
  AND3_X1 U33 ( .A1(n92), .A2(n93), .A3(n94), .ZN(n73) );
  XNOR2_X1 U34 ( .A(n58), .B(n74), .ZN(DIFF[13]) );
  XNOR2_X1 U35 ( .A(A[13]), .B(n142), .ZN(n74) );
  NAND3_X1 U36 ( .A1(n111), .A2(n112), .A3(n113), .ZN(n76) );
  XOR2_X1 U37 ( .A(A[11]), .B(n140), .Z(n77) );
  XOR2_X1 U38 ( .A(n76), .B(n77), .Z(DIFF[11]) );
  NAND2_X1 U39 ( .A1(carry[11]), .A2(A[11]), .ZN(n92) );
  NAND2_X1 U40 ( .A1(carry[11]), .A2(n140), .ZN(n93) );
  NAND2_X1 U41 ( .A1(A[11]), .A2(n140), .ZN(n94) );
  NAND3_X1 U42 ( .A1(n93), .A2(n92), .A3(n94), .ZN(carry[12]) );
  AOI21_X1 U48 ( .B1(n134), .B2(n109), .A(n130), .ZN(n95) );
  XOR2_X1 U49 ( .A(A[16]), .B(n145), .Z(n96) );
  XOR2_X1 U50 ( .A(carry[16]), .B(n96), .Z(DIFF[16]) );
  NAND2_X1 U51 ( .A1(carry[16]), .A2(A[16]), .ZN(n97) );
  NAND2_X1 U52 ( .A1(carry[16]), .A2(n145), .ZN(n98) );
  NAND2_X1 U53 ( .A1(A[16]), .A2(n145), .ZN(n99) );
  NAND3_X1 U54 ( .A1(n97), .A2(n98), .A3(n99), .ZN(carry[17]) );
  NAND2_X1 U55 ( .A1(n126), .A2(A[8]), .ZN(n100) );
  NAND2_X1 U56 ( .A1(A[8]), .A2(n137), .ZN(n102) );
  NAND3_X1 U57 ( .A1(n59), .A2(n101), .A3(n102), .ZN(carry[9]) );
  NAND3_X1 U58 ( .A1(n104), .A2(n105), .A3(n106), .ZN(n103) );
  NAND2_X1 U59 ( .A1(n125), .A2(A[13]), .ZN(n104) );
  NAND2_X1 U60 ( .A1(n125), .A2(n142), .ZN(n105) );
  NAND2_X1 U61 ( .A1(A[13]), .A2(n142), .ZN(n106) );
  NAND3_X1 U62 ( .A1(n105), .A2(n104), .A3(n106), .ZN(carry[14]) );
  OR2_X1 U63 ( .A1(A[14]), .A2(n143), .ZN(n107) );
  NAND2_X1 U64 ( .A1(n107), .A2(carry[14]), .ZN(n83) );
  OR2_X1 U65 ( .A1(B[14]), .A2(n124), .ZN(n108) );
  NAND2_X1 U66 ( .A1(n83), .A2(n108), .ZN(carry[15]) );
  XOR2_X1 U67 ( .A(A[10]), .B(n139), .Z(n110) );
  XOR2_X1 U68 ( .A(carry[10]), .B(n110), .Z(DIFF[10]) );
  NAND2_X1 U69 ( .A1(n54), .A2(A[10]), .ZN(n111) );
  NAND2_X1 U70 ( .A1(n61), .A2(n139), .ZN(n112) );
  NAND2_X1 U71 ( .A1(A[10]), .A2(n139), .ZN(n113) );
  NAND3_X1 U72 ( .A1(n111), .A2(n112), .A3(n113), .ZN(carry[11]) );
  XOR2_X1 U73 ( .A(A[2]), .B(n133), .Z(n114) );
  XOR2_X1 U74 ( .A(carry[2]), .B(n114), .Z(DIFF[2]) );
  NAND2_X1 U75 ( .A1(carry[2]), .A2(A[2]), .ZN(n115) );
  NAND2_X1 U76 ( .A1(carry[2]), .A2(n133), .ZN(n116) );
  NAND2_X1 U77 ( .A1(A[2]), .A2(n133), .ZN(n117) );
  NAND3_X1 U78 ( .A1(n115), .A2(n117), .A3(n116), .ZN(carry[3]) );
  NAND2_X1 U79 ( .A1(n73), .A2(A[12]), .ZN(n119) );
  NAND2_X1 U80 ( .A1(carry[12]), .A2(n118), .ZN(n120) );
  NAND2_X1 U81 ( .A1(n120), .A2(n119), .ZN(n85) );
  INV_X1 U82 ( .A(A[12]), .ZN(n118) );
  INV_X1 U83 ( .A(B[6]), .ZN(n135) );
  INV_X1 U84 ( .A(B[3]), .ZN(n134) );
  INV_X1 U85 ( .A(B[8]), .ZN(n137) );
  XNOR2_X1 U86 ( .A(n121), .B(n124), .ZN(DIFF[14]) );
  XNOR2_X1 U87 ( .A(n103), .B(B[14]), .ZN(n121) );
  XNOR2_X1 U88 ( .A(n122), .B(n123), .ZN(DIFF[18]) );
  XNOR2_X1 U89 ( .A(carry[18]), .B(B[19]), .ZN(n122) );
  INV_X1 U90 ( .A(B[11]), .ZN(n140) );
  INV_X1 U91 ( .A(B[17]), .ZN(n146) );
  INV_X1 U92 ( .A(B[2]), .ZN(n133) );
  INV_X1 U93 ( .A(B[16]), .ZN(n145) );
  INV_X1 U94 ( .A(B[15]), .ZN(n144) );
  INV_X1 U95 ( .A(B[10]), .ZN(n139) );
  INV_X1 U96 ( .A(B[9]), .ZN(n138) );
  INV_X1 U97 ( .A(A[14]), .ZN(n124) );
  INV_X1 U98 ( .A(A[19]), .ZN(n123) );
  INV_X1 U99 ( .A(A[4]), .ZN(n129) );
  INV_X1 U100 ( .A(B[7]), .ZN(n136) );
  INV_X1 U101 ( .A(B[12]), .ZN(n141) );
  INV_X1 U102 ( .A(A[5]), .ZN(n127) );
  INV_X1 U103 ( .A(B[14]), .ZN(n143) );
  INV_X1 U104 ( .A(B[19]), .ZN(n147) );
  INV_X1 U105 ( .A(B[1]), .ZN(n132) );
  XNOR2_X1 U106 ( .A(n109), .B(n91), .ZN(DIFF[3]) );
  OAI21_X1 U107 ( .B1(B[0]), .B2(n131), .A(carry[1]), .ZN(DIFF[0]) );
  INV_X1 U108 ( .A(A[0]), .ZN(n131) );
  NAND2_X1 U109 ( .A1(B[0]), .A2(n131), .ZN(carry[1]) );
  OAI21_X1 U110 ( .B1(B[19]), .B2(n123), .A(n82), .ZN(carry[19]) );
  INV_X1 U111 ( .A(n78), .ZN(n126) );
  INV_X1 U112 ( .A(n90), .ZN(n130) );
  OAI21_X1 U113 ( .B1(A[3]), .B2(n134), .A(carry[3]), .ZN(n90) );
  OAI22_X1 U114 ( .A1(n128), .A2(n127), .B1(n80), .B2(B[5]), .ZN(carry[6]) );
  OAI21_X1 U115 ( .B1(A[18]), .B2(n147), .A(carry[18]), .ZN(n82) );
  INV_X1 U116 ( .A(n84), .ZN(n125) );
  AOI22_X1 U117 ( .A1(carry[12]), .A2(A[12]), .B1(n85), .B2(n141), .ZN(n84) );
  AOI22_X1 U118 ( .A1(carry[7]), .A2(n62), .B1(n79), .B2(n136), .ZN(n78) );
  XNOR2_X1 U119 ( .A(n95), .B(n89), .ZN(DIFF[4]) );
  INV_X1 U120 ( .A(n81), .ZN(n128) );
  NOR2_X1 U121 ( .A1(n81), .A2(A[5]), .ZN(n80) );
  OAI22_X1 U122 ( .A1(n95), .A2(n129), .B1(n88), .B2(B[4]), .ZN(n81) );
  AND2_X1 U123 ( .A1(n87), .A2(n129), .ZN(n88) );
endmodule


module adder_NBIT19_DW01_add_0 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   \carry[6] , \carry[5] , \carry[3] , \carry[2] , n3, n13, n14, n15,
         n16, n17, n18, n10, n11, n12, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31;
  wire   [19:1] carry;

  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(n29), .CO(carry[13]), .S(SUM[12]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_5 ( .A(B[5]), .B(A[5]), .CI(\carry[5] ), .CO(\carry[6] ), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(B[4]), .B(A[4]), .CI(n31), .CO(\carry[5] ), .S(SUM[4]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n3), .CO(\carry[2] ), .S(SUM[1]) );
  FA_X1 U1_2 ( .A(\carry[2] ), .B(B[2]), .CI(A[2]), .CO(\carry[3] ), .S(SUM[2]) );
  XOR2_X1 U8 ( .A(\carry[6] ), .B(n14), .Z(SUM[6]) );
  XOR2_X1 U9 ( .A(A[6]), .B(B[6]), .Z(n14) );
  XOR2_X1 U10 ( .A(\carry[3] ), .B(n24), .Z(SUM[3]) );
  XOR2_X1 U11 ( .A(A[3]), .B(B[3]), .Z(n16) );
  XOR2_X1 U12 ( .A(carry[11]), .B(n22), .Z(SUM[11]) );
  XOR2_X1 U14 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  INV_X1 U1 ( .A(B[10]), .ZN(n23) );
  INV_X1 U2 ( .A(B[11]), .ZN(n25) );
  XOR2_X1 U3 ( .A(A[19]), .B(B[19]), .Z(n10) );
  XOR2_X1 U4 ( .A(carry[19]), .B(n10), .Z(SUM[19]) );
  XOR2_X1 U5 ( .A(A[7]), .B(B[7]), .Z(n11) );
  XOR2_X1 U6 ( .A(n30), .B(n11), .Z(SUM[7]) );
  NAND2_X1 U7 ( .A1(n30), .A2(A[7]), .ZN(n12) );
  NAND2_X1 U13 ( .A1(n30), .A2(B[7]), .ZN(n19) );
  NAND2_X1 U15 ( .A1(A[7]), .A2(B[7]), .ZN(n20) );
  NAND3_X1 U16 ( .A1(n12), .A2(n19), .A3(n20), .ZN(carry[8]) );
  XNOR2_X1 U17 ( .A(carry[10]), .B(n21), .ZN(SUM[10]) );
  XOR2_X1 U18 ( .A(A[10]), .B(n23), .Z(n21) );
  CLKBUF_X1 U19 ( .A(n18), .Z(n22) );
  XOR2_X1 U20 ( .A(A[3]), .B(B[3]), .Z(n24) );
  XNOR2_X1 U21 ( .A(A[11]), .B(n25), .ZN(n18) );
  NAND2_X1 U22 ( .A1(carry[10]), .A2(A[10]), .ZN(n26) );
  NAND2_X1 U23 ( .A1(carry[10]), .A2(B[10]), .ZN(n27) );
  NAND2_X1 U24 ( .A1(A[10]), .A2(B[10]), .ZN(n28) );
  NAND3_X1 U25 ( .A1(n26), .A2(n27), .A3(n28), .ZN(carry[11]) );
  INV_X1 U26 ( .A(n17), .ZN(n29) );
  AOI22_X1 U27 ( .A1(B[11]), .A2(A[11]), .B1(carry[11]), .B2(n18), .ZN(n17) );
  INV_X1 U28 ( .A(n15), .ZN(n31) );
  AOI22_X1 U29 ( .A1(B[3]), .A2(A[3]), .B1(n16), .B2(\carry[3] ), .ZN(n15) );
  INV_X1 U30 ( .A(n13), .ZN(n30) );
  AND2_X1 U31 ( .A1(A[0]), .A2(B[0]), .ZN(n3) );
  AOI22_X1 U32 ( .A1(B[6]), .A2(A[6]), .B1(n14), .B2(\carry[6] ), .ZN(n13) );
endmodule


module adder_NBIT19 ( A, B, SUB_SUMn, S );
  input [18:0] A;
  input [18:0] B;
  output [19:0] S;
  input SUB_SUMn;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n21, n22, n23, n24, n25, n46, n47, n48;

  adder_NBIT19_DW01_sub_0 sub_20 ( .A({A[18], A}), .B({B[18], B}), .CI(1'b0), 
        .DIFF({N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, 
        N29, N28, N27, N26, N25, N24, N23}) );
  adder_NBIT19_DW01_add_0 add_20 ( .A({A[18], A}), .B({B[18], B}), .CI(1'b0), 
        .SUM({N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, 
        N8, N7, N6, N5, N4, N3, N2}) );
  INV_X1 U1 ( .A(n43), .ZN(S[12]) );
  AOI22_X1 U2 ( .A1(N14), .A2(n23), .B1(N35), .B2(n46), .ZN(n43) );
  AOI22_X1 U5 ( .A1(N18), .A2(n23), .B1(N39), .B2(n47), .ZN(n39) );
  INV_X1 U6 ( .A(n35), .ZN(S[6]) );
  AOI22_X1 U7 ( .A1(N29), .A2(n25), .B1(N8), .B2(n23), .ZN(n35) );
  AOI22_X1 U8 ( .A1(N19), .A2(n23), .B1(N40), .B2(n47), .ZN(n38) );
  AOI22_X1 U9 ( .A1(N17), .A2(n23), .B1(N38), .B2(n47), .ZN(n40) );
  INV_X1 U10 ( .A(n34), .ZN(S[7]) );
  AOI22_X1 U11 ( .A1(N30), .A2(n25), .B1(N9), .B2(n23), .ZN(n34) );
  INV_X1 U12 ( .A(n44), .ZN(S[11]) );
  AOI22_X1 U13 ( .A1(N13), .A2(n23), .B1(N34), .B2(n48), .ZN(n44) );
  INV_X1 U14 ( .A(n42), .ZN(S[13]) );
  AOI22_X1 U15 ( .A1(N15), .A2(n23), .B1(N36), .B2(n48), .ZN(n42) );
  INV_X1 U16 ( .A(n45), .ZN(S[10]) );
  AOI22_X1 U17 ( .A1(N12), .A2(n23), .B1(N33), .B2(n48), .ZN(n45) );
  INV_X1 U18 ( .A(n32), .ZN(S[9]) );
  AOI22_X1 U19 ( .A1(N11), .A2(n23), .B1(N32), .B2(n25), .ZN(n32) );
  INV_X1 U20 ( .A(n33), .ZN(S[8]) );
  AOI22_X1 U21 ( .A1(N10), .A2(n23), .B1(N31), .B2(n46), .ZN(n33) );
  INV_X1 U22 ( .A(n30), .ZN(S[1]) );
  AOI22_X1 U23 ( .A1(N24), .A2(n24), .B1(N3), .B2(n23), .ZN(n30) );
  INV_X1 U24 ( .A(n29), .ZN(S[2]) );
  AOI22_X1 U25 ( .A1(N25), .A2(n24), .B1(N4), .B2(n23), .ZN(n29) );
  INV_X1 U26 ( .A(n36), .ZN(S[19]) );
  AOI22_X1 U27 ( .A1(N21), .A2(n23), .B1(N42), .B2(n46), .ZN(n36) );
  INV_X1 U28 ( .A(n26), .ZN(S[5]) );
  AOI22_X1 U29 ( .A1(n48), .A2(N28), .B1(N7), .B2(n23), .ZN(n26) );
  INV_X1 U30 ( .A(n27), .ZN(S[4]) );
  AOI22_X1 U31 ( .A1(N27), .A2(n24), .B1(N6), .B2(n23), .ZN(n27) );
  BUF_X1 U32 ( .A(n21), .Z(n24) );
  BUF_X1 U33 ( .A(n21), .Z(n25) );
  BUF_X1 U34 ( .A(n22), .Z(n48) );
  BUF_X1 U35 ( .A(n21), .Z(n46) );
  BUF_X1 U36 ( .A(n22), .Z(n47) );
  INV_X1 U37 ( .A(n28), .ZN(S[3]) );
  AOI22_X1 U38 ( .A1(N26), .A2(n24), .B1(N5), .B2(n23), .ZN(n28) );
  INV_X1 U39 ( .A(n31), .ZN(S[0]) );
  AOI22_X1 U40 ( .A1(N2), .A2(n23), .B1(N23), .B2(n25), .ZN(n31) );
  BUF_X1 U41 ( .A(SUB_SUMn), .Z(n22) );
  BUF_X1 U42 ( .A(SUB_SUMn), .Z(n21) );
  INV_X1 U43 ( .A(n39), .ZN(S[16]) );
  AOI22_X1 U44 ( .A1(N16), .A2(n23), .B1(N37), .B2(n47), .ZN(n41) );
  INV_X1 U45 ( .A(n38), .ZN(S[17]) );
  INV_X1 U46 ( .A(n40), .ZN(S[15]) );
  INV_X1 U47 ( .A(n41), .ZN(S[14]) );
  INV_X1 U48 ( .A(n37), .ZN(S[18]) );
  AOI22_X1 U49 ( .A1(N20), .A2(n23), .B1(N41), .B2(n46), .ZN(n37) );
  INV_X1 U50 ( .A(SUB_SUMn), .ZN(n23) );
endmodule


module encoder_6 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n2;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X4 U1 ( .A1(vp[0]), .A2(n2), .ZN(vp[1]) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n2) );
endmodule


module mux_NBIT21 ( A, B, C, S, Y );
  input [20:0] A;
  input [20:0] B;
  input [20:0] C;
  input [1:0] S;
  output [20:0] Y;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n106;

  INV_X1 U1 ( .A(n30), .ZN(Y[15]) );
  INV_X1 U2 ( .A(n28), .ZN(Y[17]) );
  INV_X1 U3 ( .A(n27), .ZN(Y[18]) );
  INV_X1 U4 ( .A(n23), .ZN(Y[20]) );
  NOR2_X1 U5 ( .A1(n106), .A2(S[1]), .ZN(n24) );
  INV_X1 U6 ( .A(S[0]), .ZN(n106) );
  NOR2_X1 U7 ( .A1(S[0]), .A2(S[1]), .ZN(n25) );
  INV_X1 U8 ( .A(n40), .ZN(Y[5]) );
  AOI222_X1 U9 ( .A1(C[5]), .A2(S[1]), .B1(B[5]), .B2(n71), .C1(A[5]), .C2(n82), .ZN(n40) );
  INV_X1 U10 ( .A(n33), .ZN(Y[12]) );
  AOI222_X1 U11 ( .A1(C[12]), .A2(S[1]), .B1(B[12]), .B2(n75), .C1(A[12]), 
        .C2(n25), .ZN(n33) );
  INV_X1 U12 ( .A(n39), .ZN(Y[6]) );
  AOI222_X1 U13 ( .A1(C[6]), .A2(S[1]), .B1(B[6]), .B2(n72), .C1(A[6]), .C2(
        n83), .ZN(n39) );
  INV_X1 U14 ( .A(n38), .ZN(Y[7]) );
  AOI222_X1 U15 ( .A1(C[7]), .A2(S[1]), .B1(B[7]), .B2(n73), .C1(A[7]), .C2(
        n84), .ZN(n38) );
  INV_X1 U16 ( .A(n37), .ZN(Y[8]) );
  AOI222_X1 U17 ( .A1(C[8]), .A2(S[1]), .B1(B[8]), .B2(n74), .C1(A[8]), .C2(
        n25), .ZN(n37) );
  INV_X1 U18 ( .A(n36), .ZN(Y[9]) );
  AOI222_X1 U19 ( .A1(C[9]), .A2(S[1]), .B1(B[9]), .B2(n72), .C1(A[9]), .C2(
        n83), .ZN(n36) );
  INV_X1 U20 ( .A(n35), .ZN(Y[10]) );
  AOI222_X1 U21 ( .A1(C[10]), .A2(S[1]), .B1(B[10]), .B2(n73), .C1(A[10]), 
        .C2(n84), .ZN(n35) );
  INV_X1 U22 ( .A(n34), .ZN(Y[11]) );
  AOI222_X1 U23 ( .A1(C[11]), .A2(S[1]), .B1(B[11]), .B2(n74), .C1(A[11]), 
        .C2(n84), .ZN(n34) );
  INV_X1 U24 ( .A(n32), .ZN(Y[13]) );
  AOI222_X1 U25 ( .A1(C[13]), .A2(S[1]), .B1(B[13]), .B2(n68), .C1(A[13]), 
        .C2(n25), .ZN(n32) );
  INV_X1 U26 ( .A(n41), .ZN(Y[4]) );
  AOI222_X1 U27 ( .A1(C[4]), .A2(S[1]), .B1(B[4]), .B2(n70), .C1(A[4]), .C2(
        n81), .ZN(n41) );
  AOI222_X1 U28 ( .A1(C[17]), .A2(S[1]), .B1(B[17]), .B2(n69), .C1(A[17]), 
        .C2(n80), .ZN(n28) );
  AOI222_X1 U29 ( .A1(C[18]), .A2(S[1]), .B1(B[18]), .B2(n69), .C1(A[18]), 
        .C2(n25), .ZN(n27) );
  INV_X1 U30 ( .A(n26), .ZN(Y[19]) );
  AOI222_X1 U31 ( .A1(C[19]), .A2(S[1]), .B1(B[19]), .B2(n70), .C1(A[19]), 
        .C2(n81), .ZN(n26) );
  AOI222_X1 U32 ( .A1(S[1]), .A2(C[20]), .B1(B[20]), .B2(n71), .C1(A[20]), 
        .C2(n82), .ZN(n23) );
  INV_X1 U33 ( .A(n29), .ZN(Y[16]) );
  AOI222_X1 U34 ( .A1(C[16]), .A2(S[1]), .B1(B[16]), .B2(n69), .C1(A[16]), 
        .C2(n79), .ZN(n29) );
  INV_X1 U35 ( .A(n31), .ZN(Y[14]) );
  AOI222_X1 U36 ( .A1(C[14]), .A2(S[1]), .B1(B[14]), .B2(n69), .C1(A[14]), 
        .C2(n25), .ZN(n31) );
  AOI222_X1 U37 ( .A1(C[15]), .A2(S[1]), .B1(B[15]), .B2(n68), .C1(A[15]), 
        .C2(n78), .ZN(n30) );
  INV_X1 U38 ( .A(n45), .ZN(Y[0]) );
  AOI222_X1 U39 ( .A1(C[0]), .A2(S[1]), .B1(B[0]), .B2(n68), .C1(A[0]), .C2(
        n78), .ZN(n45) );
  INV_X1 U40 ( .A(n44), .ZN(Y[1]) );
  AOI222_X1 U41 ( .A1(C[1]), .A2(S[1]), .B1(B[1]), .B2(n69), .C1(A[1]), .C2(
        n79), .ZN(n44) );
  INV_X1 U42 ( .A(n43), .ZN(Y[2]) );
  AOI222_X1 U43 ( .A1(C[2]), .A2(S[1]), .B1(B[2]), .B2(n69), .C1(A[2]), .C2(
        n80), .ZN(n43) );
  INV_X1 U44 ( .A(n42), .ZN(Y[3]) );
  AOI222_X1 U45 ( .A1(C[3]), .A2(S[1]), .B1(B[3]), .B2(n69), .C1(A[3]), .C2(
        n83), .ZN(n42) );
  INV_X1 U46 ( .A(n24), .ZN(n66) );
  INV_X1 U47 ( .A(n24), .ZN(n67) );
  INV_X1 U48 ( .A(n67), .ZN(n68) );
  INV_X1 U49 ( .A(n67), .ZN(n69) );
  INV_X1 U50 ( .A(n66), .ZN(n70) );
  INV_X1 U51 ( .A(n66), .ZN(n71) );
  INV_X1 U52 ( .A(n66), .ZN(n72) );
  INV_X1 U53 ( .A(n66), .ZN(n73) );
  INV_X1 U54 ( .A(n67), .ZN(n74) );
  INV_X1 U55 ( .A(n67), .ZN(n75) );
  INV_X1 U56 ( .A(n25), .ZN(n76) );
  INV_X1 U57 ( .A(n25), .ZN(n77) );
  INV_X1 U58 ( .A(n76), .ZN(n78) );
  INV_X1 U59 ( .A(n76), .ZN(n79) );
  INV_X1 U60 ( .A(n76), .ZN(n80) );
  INV_X1 U61 ( .A(n77), .ZN(n81) );
  INV_X1 U62 ( .A(n77), .ZN(n82) );
  INV_X1 U63 ( .A(n77), .ZN(n83) );
  INV_X1 U64 ( .A(n77), .ZN(n84) );
endmodule


module adder_NBIT21_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] DIFF;
  input CI;
  output CO;
  wire   \carry[9] , \carry[8] , \carry[7] , \carry[14] , \carry[13] ,
         \carry[12] , \carry[11] , \carry[10] , \carry[6] , \carry[5] ,
         \carry[4] , \carry[3] , \carry[2] , \carry[1] , n31, n32, n33, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56;
  wire   [22:0] carry;

  FA_X1 U2_20 ( .A(A[20]), .B(n56), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FA_X1 U2_19 ( .A(A[19]), .B(n55), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FA_X1 U2_16 ( .A(A[16]), .B(n52), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FA_X1 U2_7 ( .A(n43), .B(A[7]), .CI(\carry[7] ), .CO(\carry[8] ), .S(DIFF[7]) );
  FA_X1 U2_8 ( .A(\carry[8] ), .B(n44), .CI(A[8]), .CO(\carry[9] ), .S(DIFF[8]) );
  FA_X1 U2_9 ( .A(A[9]), .B(n45), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        DIFF[9]) );
  FA_X1 U2_10 ( .A(A[10]), .B(n46), .CI(\carry[10] ), .CO(\carry[11] ), .S(
        DIFF[10]) );
  FA_X1 U2_11 ( .A(A[11]), .B(n47), .CI(\carry[11] ), .CO(\carry[12] ), .S(
        DIFF[11]) );
  FA_X1 U2_12 ( .A(A[12]), .B(n48), .CI(\carry[12] ), .CO(\carry[13] ), .S(
        DIFF[12]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n37), .CI(\carry[1] ), .CO(\carry[2] ), .S(DIFF[1]) );
  FA_X1 U2_2 ( .A(A[2]), .B(n38), .CI(\carry[2] ), .CO(\carry[3] ), .S(DIFF[2]) );
  FA_X1 U2_3 ( .A(A[3]), .B(n39), .CI(\carry[3] ), .CO(\carry[4] ), .S(DIFF[3]) );
  FA_X1 U2_4 ( .A(A[4]), .B(n40), .CI(\carry[4] ), .CO(\carry[5] ), .S(DIFF[4]) );
  FA_X1 U2_6 ( .A(A[6]), .B(n42), .CI(\carry[6] ), .CO(\carry[7] ), .S(DIFF[6]) );
  XOR2_X1 U27 ( .A(n35), .B(n32), .Z(DIFF[5]) );
  XOR2_X1 U28 ( .A(\carry[5] ), .B(B[5]), .Z(n32) );
  XOR2_X1 U29 ( .A(n33), .B(A[21]), .Z(DIFF[21]) );
  XNOR2_X1 U1 ( .A(n17), .B(n10), .ZN(DIFF[14]) );
  AND3_X1 U2 ( .A1(n14), .A2(n15), .A3(n16), .ZN(n10) );
  NAND3_X1 U3 ( .A1(n14), .A2(n15), .A3(n16), .ZN(n11) );
  XNOR2_X1 U4 ( .A(A[14]), .B(B[14]), .ZN(n17) );
  XNOR2_X1 U5 ( .A(carry[18]), .B(n12), .ZN(DIFF[18]) );
  XNOR2_X1 U6 ( .A(A[18]), .B(n54), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(\carry[13] ), .ZN(DIFF[13]) );
  XNOR2_X1 U8 ( .A(A[13]), .B(n49), .ZN(n13) );
  NAND2_X1 U9 ( .A1(A[13]), .A2(n49), .ZN(n14) );
  NAND2_X1 U10 ( .A1(A[13]), .A2(\carry[13] ), .ZN(n15) );
  NAND2_X1 U11 ( .A1(n49), .A2(\carry[13] ), .ZN(n16) );
  NAND3_X1 U12 ( .A1(n14), .A2(n15), .A3(n16), .ZN(\carry[14] ) );
  NAND2_X1 U13 ( .A1(A[14]), .A2(n50), .ZN(n18) );
  NAND2_X1 U14 ( .A1(A[14]), .A2(\carry[14] ), .ZN(n19) );
  NAND2_X1 U15 ( .A1(n50), .A2(n11), .ZN(n20) );
  NAND3_X1 U16 ( .A1(n20), .A2(n19), .A3(n18), .ZN(carry[15]) );
  XOR2_X1 U17 ( .A(A[15]), .B(n51), .Z(n21) );
  XOR2_X1 U18 ( .A(carry[15]), .B(n21), .Z(DIFF[15]) );
  NAND2_X1 U19 ( .A1(carry[15]), .A2(A[15]), .ZN(n22) );
  NAND2_X1 U20 ( .A1(carry[15]), .A2(n51), .ZN(n23) );
  NAND2_X1 U21 ( .A1(A[15]), .A2(n51), .ZN(n24) );
  NAND3_X1 U22 ( .A1(n22), .A2(n23), .A3(n24), .ZN(carry[16]) );
  XNOR2_X1 U23 ( .A(carry[21]), .B(B[20]), .ZN(n33) );
  XOR2_X1 U24 ( .A(A[17]), .B(n53), .Z(n25) );
  XOR2_X1 U25 ( .A(carry[17]), .B(n25), .Z(DIFF[17]) );
  NAND2_X1 U26 ( .A1(carry[17]), .A2(A[17]), .ZN(n26) );
  NAND2_X1 U30 ( .A1(carry[17]), .A2(n53), .ZN(n27) );
  NAND2_X1 U31 ( .A1(A[17]), .A2(n53), .ZN(n28) );
  NAND3_X1 U32 ( .A1(n26), .A2(n27), .A3(n28), .ZN(carry[18]) );
  NAND2_X1 U33 ( .A1(A[18]), .A2(carry[18]), .ZN(n29) );
  NAND2_X1 U34 ( .A1(carry[18]), .A2(n54), .ZN(n30) );
  NAND2_X1 U35 ( .A1(A[18]), .A2(n54), .ZN(n34) );
  NAND3_X1 U36 ( .A1(n29), .A2(n30), .A3(n34), .ZN(carry[19]) );
  INV_X1 U37 ( .A(A[5]), .ZN(n35) );
  INV_X1 U38 ( .A(A[0]), .ZN(n36) );
  INV_X1 U39 ( .A(B[4]), .ZN(n40) );
  INV_X1 U40 ( .A(B[19]), .ZN(n55) );
  INV_X1 U41 ( .A(B[18]), .ZN(n54) );
  INV_X1 U42 ( .A(B[17]), .ZN(n53) );
  INV_X1 U43 ( .A(B[16]), .ZN(n52) );
  INV_X1 U44 ( .A(B[15]), .ZN(n51) );
  INV_X1 U45 ( .A(B[14]), .ZN(n50) );
  INV_X1 U46 ( .A(B[13]), .ZN(n49) );
  INV_X1 U47 ( .A(B[12]), .ZN(n48) );
  INV_X1 U48 ( .A(B[11]), .ZN(n47) );
  INV_X1 U49 ( .A(B[10]), .ZN(n46) );
  INV_X1 U50 ( .A(B[9]), .ZN(n45) );
  INV_X1 U51 ( .A(B[8]), .ZN(n44) );
  INV_X1 U52 ( .A(B[6]), .ZN(n42) );
  OAI21_X1 U53 ( .B1(B[5]), .B2(n35), .A(n31), .ZN(\carry[6] ) );
  OAI21_X1 U54 ( .B1(A[5]), .B2(n41), .A(\carry[5] ), .ZN(n31) );
  INV_X1 U55 ( .A(B[7]), .ZN(n43) );
  INV_X1 U56 ( .A(B[5]), .ZN(n41) );
  INV_X1 U57 ( .A(B[21]), .ZN(n56) );
  INV_X1 U58 ( .A(B[1]), .ZN(n37) );
  INV_X1 U59 ( .A(B[2]), .ZN(n38) );
  INV_X1 U60 ( .A(B[3]), .ZN(n39) );
  OAI21_X1 U61 ( .B1(B[0]), .B2(n36), .A(\carry[1] ), .ZN(DIFF[0]) );
  NAND2_X1 U62 ( .A1(B[0]), .A2(n36), .ZN(\carry[1] ) );
endmodule


module adder_NBIT21_DW01_add_0 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n14, n17, n18, n19, n20, n15, n16, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [21:1] carry;

  FA_X1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .S(SUM[21]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(B[13]), .B(A[13]), .CI(n41), .CO(carry[14]), .S(SUM[13]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(B[5]), .B(A[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n14), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U6 ( .A(carry[16]), .B(n18), .Z(SUM[16]) );
  XOR2_X1 U8 ( .A(n26), .B(carry[12]), .Z(SUM[12]) );
  XOR2_X1 U10 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  INV_X1 U1 ( .A(B[12]), .ZN(n31) );
  INV_X1 U2 ( .A(B[16]), .ZN(n15) );
  XNOR2_X1 U3 ( .A(A[16]), .B(n15), .ZN(n18) );
  CLKBUF_X1 U4 ( .A(A[12]), .Z(n16) );
  XOR2_X1 U5 ( .A(A[15]), .B(B[15]), .Z(n21) );
  XOR2_X1 U7 ( .A(carry[15]), .B(n21), .Z(SUM[15]) );
  NAND2_X1 U9 ( .A1(carry[15]), .A2(A[15]), .ZN(n22) );
  NAND2_X1 U11 ( .A1(carry[15]), .A2(B[15]), .ZN(n23) );
  NAND2_X1 U12 ( .A1(A[15]), .A2(B[15]), .ZN(n24) );
  NAND3_X1 U13 ( .A1(n22), .A2(n23), .A3(n24), .ZN(carry[16]) );
  CLKBUF_X1 U14 ( .A(A[18]), .Z(n25) );
  XNOR2_X1 U15 ( .A(A[12]), .B(n31), .ZN(n26) );
  XOR2_X1 U16 ( .A(A[17]), .B(B[17]), .Z(n27) );
  XOR2_X1 U17 ( .A(n40), .B(n27), .Z(SUM[17]) );
  NAND2_X1 U18 ( .A1(n40), .A2(A[17]), .ZN(n28) );
  NAND2_X1 U19 ( .A1(n40), .A2(B[17]), .ZN(n29) );
  NAND2_X1 U20 ( .A1(A[17]), .A2(B[17]), .ZN(n30) );
  NAND3_X1 U21 ( .A1(n28), .A2(n29), .A3(n30), .ZN(carry[18]) );
  XNOR2_X1 U22 ( .A(A[12]), .B(n31), .ZN(n20) );
  XOR2_X1 U23 ( .A(A[18]), .B(B[18]), .Z(n32) );
  XOR2_X1 U24 ( .A(carry[18]), .B(n32), .Z(SUM[18]) );
  NAND2_X1 U25 ( .A1(carry[18]), .A2(n25), .ZN(n33) );
  NAND2_X1 U26 ( .A1(carry[18]), .A2(B[18]), .ZN(n34) );
  NAND2_X1 U27 ( .A1(n25), .A2(B[18]), .ZN(n35) );
  NAND3_X1 U28 ( .A1(n33), .A2(n34), .A3(n35), .ZN(carry[19]) );
  XOR2_X1 U29 ( .A(A[20]), .B(B[20]), .Z(n36) );
  XOR2_X1 U30 ( .A(carry[20]), .B(n36), .Z(SUM[20]) );
  NAND2_X1 U31 ( .A1(carry[20]), .A2(A[20]), .ZN(n37) );
  NAND2_X1 U32 ( .A1(carry[20]), .A2(B[20]), .ZN(n38) );
  NAND2_X1 U33 ( .A1(A[20]), .A2(B[20]), .ZN(n39) );
  NAND3_X1 U34 ( .A1(n38), .A2(n37), .A3(n39), .ZN(carry[21]) );
  INV_X1 U35 ( .A(n17), .ZN(n40) );
  AOI22_X1 U36 ( .A1(B[16]), .A2(A[16]), .B1(n18), .B2(carry[16]), .ZN(n17) );
  INV_X1 U37 ( .A(n19), .ZN(n41) );
  AOI22_X1 U38 ( .A1(B[12]), .A2(n16), .B1(n20), .B2(carry[12]), .ZN(n19) );
  AND2_X1 U39 ( .A1(A[0]), .A2(B[0]), .ZN(n14) );
endmodule


module adder_NBIT21 ( A, B, SUB_SUMn, S );
  input [20:0] A;
  input [20:0] B;
  output [21:0] S;
  input SUB_SUMn;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n22, n23, n24, n25, n26,
         n27, n50, n51, n52;

  adder_NBIT21_DW01_sub_0 sub_20 ( .A({A[20], A}), .B({B[20], B}), .CI(1'b0), 
        .DIFF({N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33, N32, N31, N30, N29, N28, N27, N26, N25}) );
  adder_NBIT21_DW01_add_0 add_20 ( .A({A[20], A}), .B({B[20], B}), .CI(1'b0), 
        .SUM({N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  INV_X1 U1 ( .A(n28), .ZN(S[21]) );
  INV_X1 U2 ( .A(n31), .ZN(S[13]) );
  AOI22_X1 U5 ( .A1(N15), .A2(n24), .B1(N38), .B2(n50), .ZN(n31) );
  INV_X1 U6 ( .A(n32), .ZN(S[12]) );
  AOI22_X1 U7 ( .A1(N14), .A2(n24), .B1(N37), .B2(n27), .ZN(n32) );
  INV_X1 U8 ( .A(n41), .ZN(S[7]) );
  AOI22_X1 U9 ( .A1(N32), .A2(n26), .B1(N9), .B2(n24), .ZN(n41) );
  INV_X1 U10 ( .A(n42), .ZN(S[6]) );
  AOI22_X1 U11 ( .A1(N31), .A2(n26), .B1(N8), .B2(n24), .ZN(n42) );
  INV_X1 U12 ( .A(n30), .ZN(S[14]) );
  AOI22_X1 U13 ( .A1(N16), .A2(n24), .B1(N39), .B2(n27), .ZN(n30) );
  INV_X1 U14 ( .A(n49), .ZN(S[10]) );
  AOI22_X1 U15 ( .A1(N12), .A2(n24), .B1(N35), .B2(n52), .ZN(n49) );
  INV_X1 U16 ( .A(n40), .ZN(S[8]) );
  AOI22_X1 U17 ( .A1(N10), .A2(n24), .B1(N33), .B2(n50), .ZN(n40) );
  INV_X1 U18 ( .A(n39), .ZN(S[9]) );
  AOI22_X1 U19 ( .A1(N11), .A2(n24), .B1(N34), .B2(n27), .ZN(n39) );
  INV_X1 U20 ( .A(n44), .ZN(S[19]) );
  AOI22_X1 U21 ( .A1(N21), .A2(n24), .B1(N44), .B2(n50), .ZN(n44) );
  INV_X1 U22 ( .A(n43), .ZN(S[20]) );
  AOI22_X1 U23 ( .A1(N22), .A2(n24), .B1(N45), .B2(n50), .ZN(n43) );
  INV_X1 U24 ( .A(n46), .ZN(S[17]) );
  AOI22_X1 U25 ( .A1(N19), .A2(n24), .B1(N42), .B2(n51), .ZN(n46) );
  INV_X1 U26 ( .A(n29), .ZN(S[15]) );
  AOI22_X1 U27 ( .A1(N17), .A2(n24), .B1(N40), .B2(n26), .ZN(n29) );
  INV_X1 U28 ( .A(n45), .ZN(S[18]) );
  AOI22_X1 U29 ( .A1(N20), .A2(n24), .B1(N43), .B2(n51), .ZN(n45) );
  INV_X1 U30 ( .A(n47), .ZN(S[16]) );
  AOI22_X1 U31 ( .A1(N18), .A2(n24), .B1(N41), .B2(n51), .ZN(n47) );
  INV_X1 U32 ( .A(n48), .ZN(S[11]) );
  AOI22_X1 U33 ( .A1(N13), .A2(n24), .B1(N36), .B2(n51), .ZN(n48) );
  INV_X1 U34 ( .A(n52), .ZN(n24) );
  INV_X1 U35 ( .A(n34), .ZN(S[4]) );
  AOI22_X1 U36 ( .A1(N29), .A2(n25), .B1(N6), .B2(n24), .ZN(n34) );
  INV_X1 U37 ( .A(n37), .ZN(S[1]) );
  AOI22_X1 U38 ( .A1(N26), .A2(n26), .B1(N3), .B2(n24), .ZN(n37) );
  INV_X1 U39 ( .A(n36), .ZN(S[2]) );
  AOI22_X1 U40 ( .A1(N27), .A2(n25), .B1(N4), .B2(n24), .ZN(n36) );
  INV_X1 U41 ( .A(n35), .ZN(S[3]) );
  AOI22_X1 U42 ( .A1(N28), .A2(n25), .B1(N5), .B2(n24), .ZN(n35) );
  BUF_X1 U43 ( .A(n23), .Z(n52) );
  BUF_X1 U44 ( .A(n22), .Z(n26) );
  BUF_X1 U45 ( .A(n23), .Z(n51) );
  BUF_X1 U46 ( .A(n23), .Z(n50) );
  BUF_X1 U47 ( .A(n22), .Z(n27) );
  INV_X1 U48 ( .A(n33), .ZN(S[5]) );
  AOI22_X1 U49 ( .A1(N30), .A2(n25), .B1(N7), .B2(n24), .ZN(n33) );
  INV_X1 U50 ( .A(n38), .ZN(S[0]) );
  AOI22_X1 U51 ( .A1(N2), .A2(n24), .B1(N25), .B2(n27), .ZN(n38) );
  BUF_X1 U52 ( .A(n22), .Z(n25) );
  BUF_X1 U53 ( .A(SUB_SUMn), .Z(n23) );
  BUF_X1 U54 ( .A(SUB_SUMn), .Z(n22) );
  AOI22_X1 U55 ( .A1(N23), .A2(n24), .B1(N46), .B2(n52), .ZN(n28) );
endmodule


module encoder_5 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n2;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X1 U1 ( .A1(vp[0]), .A2(n2), .ZN(vp[1]) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n2) );
endmodule


module mux_NBIT23 ( A, B, C, S, Y );
  input [22:0] A;
  input [22:0] B;
  input [22:0] C;
  input [1:0] S;
  output [22:0] Y;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n93;

  INV_X1 U1 ( .A(n25), .ZN(Y[22]) );
  BUF_X1 U2 ( .A(n26), .Z(n61) );
  BUF_X1 U3 ( .A(n26), .Z(n62) );
  BUF_X1 U4 ( .A(n26), .Z(n63) );
  BUF_X1 U5 ( .A(n26), .Z(n60) );
  BUF_X1 U6 ( .A(n27), .Z(n64) );
  BUF_X1 U7 ( .A(n27), .Z(n65) );
  BUF_X1 U8 ( .A(n27), .Z(n66) );
  BUF_X1 U9 ( .A(n27), .Z(n67) );
  BUF_X1 U10 ( .A(S[1]), .Z(n68) );
  NOR2_X1 U11 ( .A1(n93), .A2(n68), .ZN(n26) );
  INV_X1 U12 ( .A(S[0]), .ZN(n93) );
  BUF_X1 U13 ( .A(S[1]), .Z(n69) );
  NOR2_X1 U14 ( .A1(S[0]), .A2(n68), .ZN(n27) );
  INV_X1 U15 ( .A(n41), .ZN(Y[8]) );
  AOI222_X1 U16 ( .A1(C[8]), .A2(n68), .B1(B[8]), .B2(n62), .C1(A[8]), .C2(n66), .ZN(n41) );
  INV_X1 U17 ( .A(n42), .ZN(Y[7]) );
  AOI222_X1 U18 ( .A1(C[7]), .A2(n68), .B1(B[7]), .B2(n63), .C1(A[7]), .C2(n67), .ZN(n42) );
  INV_X1 U19 ( .A(n40), .ZN(Y[9]) );
  AOI222_X1 U20 ( .A1(C[9]), .A2(n68), .B1(B[9]), .B2(n63), .C1(A[9]), .C2(n67), .ZN(n40) );
  INV_X1 U21 ( .A(n43), .ZN(Y[6]) );
  AOI222_X1 U22 ( .A1(C[6]), .A2(n68), .B1(B[6]), .B2(n61), .C1(A[6]), .C2(n65), .ZN(n43) );
  INV_X1 U23 ( .A(n37), .ZN(Y[12]) );
  AOI222_X1 U24 ( .A1(C[12]), .A2(n69), .B1(B[12]), .B2(n61), .C1(A[12]), .C2(
        n65), .ZN(n37) );
  INV_X1 U25 ( .A(n39), .ZN(Y[10]) );
  AOI222_X1 U26 ( .A1(C[10]), .A2(n69), .B1(B[10]), .B2(n60), .C1(A[10]), .C2(
        n64), .ZN(n39) );
  INV_X1 U27 ( .A(n38), .ZN(Y[11]) );
  AOI222_X1 U28 ( .A1(C[11]), .A2(n69), .B1(B[11]), .B2(n60), .C1(A[11]), .C2(
        n64), .ZN(n38) );
  INV_X1 U29 ( .A(n36), .ZN(Y[13]) );
  AOI222_X1 U30 ( .A1(C[13]), .A2(n69), .B1(B[13]), .B2(n62), .C1(A[13]), .C2(
        n66), .ZN(n36) );
  INV_X1 U31 ( .A(n34), .ZN(Y[15]) );
  AOI222_X1 U32 ( .A1(C[15]), .A2(n69), .B1(B[15]), .B2(n61), .C1(A[15]), .C2(
        n65), .ZN(n34) );
  INV_X1 U33 ( .A(n33), .ZN(Y[16]) );
  AOI222_X1 U34 ( .A1(C[16]), .A2(n69), .B1(B[16]), .B2(n60), .C1(A[16]), .C2(
        n64), .ZN(n33) );
  INV_X1 U35 ( .A(n32), .ZN(Y[17]) );
  AOI222_X1 U36 ( .A1(C[17]), .A2(n69), .B1(B[17]), .B2(n61), .C1(A[17]), .C2(
        n65), .ZN(n32) );
  INV_X1 U37 ( .A(n31), .ZN(Y[18]) );
  AOI222_X1 U38 ( .A1(C[18]), .A2(n69), .B1(B[18]), .B2(n62), .C1(A[18]), .C2(
        n66), .ZN(n31) );
  INV_X1 U39 ( .A(n30), .ZN(Y[19]) );
  AOI222_X1 U40 ( .A1(C[19]), .A2(n69), .B1(B[19]), .B2(n62), .C1(A[19]), .C2(
        n66), .ZN(n30) );
  INV_X1 U41 ( .A(n35), .ZN(Y[14]) );
  AOI222_X1 U42 ( .A1(C[14]), .A2(n69), .B1(B[14]), .B2(n63), .C1(A[14]), .C2(
        n67), .ZN(n35) );
  AOI222_X1 U43 ( .A1(n69), .A2(C[22]), .B1(B[22]), .B2(n61), .C1(A[22]), .C2(
        n65), .ZN(n25) );
  INV_X1 U44 ( .A(n28), .ZN(Y[21]) );
  AOI222_X1 U45 ( .A1(C[21]), .A2(n69), .B1(B[21]), .B2(n60), .C1(A[21]), .C2(
        n64), .ZN(n28) );
  INV_X1 U46 ( .A(n29), .ZN(Y[20]) );
  AOI222_X1 U47 ( .A1(C[20]), .A2(n69), .B1(B[20]), .B2(n63), .C1(A[20]), .C2(
        n67), .ZN(n29) );
  INV_X1 U48 ( .A(n49), .ZN(Y[0]) );
  AOI222_X1 U49 ( .A1(C[0]), .A2(n68), .B1(B[0]), .B2(n60), .C1(A[0]), .C2(n64), .ZN(n49) );
  INV_X1 U50 ( .A(n48), .ZN(Y[1]) );
  AOI222_X1 U51 ( .A1(C[1]), .A2(n68), .B1(B[1]), .B2(n61), .C1(A[1]), .C2(n65), .ZN(n48) );
  INV_X1 U52 ( .A(n47), .ZN(Y[2]) );
  AOI222_X1 U53 ( .A1(C[2]), .A2(n68), .B1(B[2]), .B2(n62), .C1(A[2]), .C2(n66), .ZN(n47) );
  INV_X1 U54 ( .A(n46), .ZN(Y[3]) );
  AOI222_X1 U55 ( .A1(C[3]), .A2(n68), .B1(B[3]), .B2(n62), .C1(A[3]), .C2(n66), .ZN(n46) );
  INV_X1 U56 ( .A(n45), .ZN(Y[4]) );
  AOI222_X1 U57 ( .A1(C[4]), .A2(n68), .B1(B[4]), .B2(n63), .C1(A[4]), .C2(n67), .ZN(n45) );
  INV_X1 U58 ( .A(n44), .ZN(Y[5]) );
  AOI222_X1 U59 ( .A1(C[5]), .A2(n68), .B1(B[5]), .B2(n60), .C1(A[5]), .C2(n64), .ZN(n44) );
endmodule


module adder_NBIT23_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   \carry[9] , \carry[8] , \carry[7] , \carry[6] , \carry[5] ,
         \carry[4] , \carry[3] , \carry[2] , \carry[1] , \carry[14] ,
         \carry[13] , \carry[12] , \carry[11] , \carry[10] , n51, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67;
  wire   [24:0] carry;

  FA_X1 U2_23 ( .A(A[23]), .B(n67), .CI(carry[23]), .S(DIFF[23]) );
  FA_X1 U2_21 ( .A(n66), .B(A[21]), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FA_X1 U2_19 ( .A(n64), .B(A[19]), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FA_X1 U2_17 ( .A(n62), .B(A[17]), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FA_X1 U2_15 ( .A(A[15]), .B(n60), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n45), .CI(\carry[1] ), .CO(\carry[2] ), .S(DIFF[1]) );
  FA_X1 U2_2 ( .A(A[2]), .B(n46), .CI(\carry[2] ), .CO(\carry[3] ), .S(DIFF[2]) );
  FA_X1 U2_3 ( .A(A[3]), .B(n47), .CI(\carry[3] ), .CO(\carry[4] ), .S(DIFF[3]) );
  FA_X1 U2_4 ( .A(A[4]), .B(n48), .CI(\carry[4] ), .CO(\carry[5] ), .S(DIFF[4]) );
  FA_X1 U2_5 ( .A(A[5]), .B(n49), .CI(\carry[5] ), .CO(\carry[6] ), .S(DIFF[5]) );
  FA_X1 U2_6 ( .A(A[6]), .B(n50), .CI(\carry[6] ), .CO(\carry[7] ), .S(DIFF[6]) );
  FA_X1 U2_7 ( .A(A[7]), .B(n52), .CI(\carry[7] ), .CO(\carry[8] ), .S(DIFF[7]) );
  FA_X1 U2_8 ( .A(n53), .B(A[8]), .CI(\carry[8] ), .CO(\carry[9] ), .S(DIFF[8]) );
  FA_X1 U2_9 ( .A(A[9]), .B(n54), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        DIFF[9]) );
  FA_X1 U2_10 ( .A(A[10]), .B(n55), .CI(\carry[10] ), .CO(\carry[11] ), .S(
        DIFF[10]) );
  FA_X1 U2_11 ( .A(A[11]), .B(n56), .CI(\carry[11] ), .CO(\carry[12] ), .S(
        DIFF[11]) );
  FA_X1 U2_12 ( .A(n57), .B(A[12]), .CI(\carry[12] ), .CO(\carry[13] ), .S(
        DIFF[12]) );
  FA_X1 U2_14 ( .A(A[14]), .B(n59), .CI(\carry[14] ), .CO(carry[15]), .S(
        DIFF[14]) );
  FA_X1 U2_13 ( .A(\carry[13] ), .B(n58), .CI(A[13]), .CO(\carry[14] ), .S(
        DIFF[13]) );
  OR2_X1 U1 ( .A1(B[23]), .A2(n43), .ZN(n31) );
  XOR2_X1 U2 ( .A(A[16]), .B(n61), .Z(n27) );
  XOR2_X1 U3 ( .A(carry[16]), .B(n27), .Z(DIFF[16]) );
  NAND2_X1 U4 ( .A1(carry[16]), .A2(A[16]), .ZN(n28) );
  NAND2_X1 U5 ( .A1(carry[16]), .A2(n61), .ZN(n29) );
  NAND2_X1 U6 ( .A1(A[16]), .A2(n61), .ZN(n30) );
  NAND3_X1 U7 ( .A1(n28), .A2(n29), .A3(n30), .ZN(carry[17]) );
  NAND2_X1 U8 ( .A1(n31), .A2(n51), .ZN(carry[23]) );
  XNOR2_X1 U9 ( .A(carry[18]), .B(n32), .ZN(DIFF[18]) );
  XNOR2_X1 U10 ( .A(A[18]), .B(n63), .ZN(n32) );
  NAND2_X1 U11 ( .A1(carry[18]), .A2(A[18]), .ZN(n33) );
  NAND2_X1 U12 ( .A1(carry[18]), .A2(n63), .ZN(n34) );
  NAND2_X1 U13 ( .A1(A[18]), .A2(n63), .ZN(n35) );
  NAND3_X1 U14 ( .A1(n33), .A2(n34), .A3(n35), .ZN(carry[19]) );
  XOR2_X1 U15 ( .A(A[20]), .B(n65), .Z(n36) );
  XOR2_X1 U16 ( .A(carry[20]), .B(n36), .Z(DIFF[20]) );
  NAND2_X1 U17 ( .A1(carry[20]), .A2(A[20]), .ZN(n37) );
  NAND2_X1 U18 ( .A1(carry[20]), .A2(n65), .ZN(n38) );
  NAND2_X1 U19 ( .A1(A[20]), .A2(n65), .ZN(n39) );
  NAND3_X1 U20 ( .A1(n37), .A2(n38), .A3(n39), .ZN(carry[21]) );
  NOR2_X1 U21 ( .A1(A[22]), .A2(n67), .ZN(n40) );
  INV_X1 U22 ( .A(carry[22]), .ZN(n41) );
  OR2_X1 U23 ( .A1(n40), .A2(n41), .ZN(n51) );
  INV_X1 U24 ( .A(A[0]), .ZN(n44) );
  XNOR2_X1 U25 ( .A(n42), .B(n43), .ZN(DIFF[22]) );
  XNOR2_X1 U26 ( .A(carry[22]), .B(B[22]), .ZN(n42) );
  INV_X1 U27 ( .A(B[21]), .ZN(n66) );
  INV_X1 U28 ( .A(B[19]), .ZN(n64) );
  INV_X1 U29 ( .A(B[20]), .ZN(n65) );
  INV_X1 U30 ( .A(B[18]), .ZN(n63) );
  INV_X1 U31 ( .A(B[17]), .ZN(n62) );
  INV_X1 U32 ( .A(B[16]), .ZN(n61) );
  INV_X1 U33 ( .A(B[15]), .ZN(n60) );
  INV_X1 U34 ( .A(B[14]), .ZN(n59) );
  INV_X1 U35 ( .A(B[13]), .ZN(n58) );
  INV_X1 U36 ( .A(B[12]), .ZN(n57) );
  INV_X1 U37 ( .A(B[11]), .ZN(n56) );
  INV_X1 U38 ( .A(B[10]), .ZN(n55) );
  INV_X1 U39 ( .A(B[9]), .ZN(n54) );
  INV_X1 U40 ( .A(B[8]), .ZN(n53) );
  INV_X1 U41 ( .A(B[7]), .ZN(n52) );
  INV_X1 U42 ( .A(B[6]), .ZN(n50) );
  OAI21_X1 U43 ( .B1(B[0]), .B2(n44), .A(\carry[1] ), .ZN(DIFF[0]) );
  INV_X1 U44 ( .A(B[1]), .ZN(n45) );
  INV_X1 U45 ( .A(B[2]), .ZN(n46) );
  INV_X1 U46 ( .A(B[3]), .ZN(n47) );
  INV_X1 U47 ( .A(B[4]), .ZN(n48) );
  INV_X1 U48 ( .A(B[5]), .ZN(n49) );
  INV_X1 U49 ( .A(B[23]), .ZN(n67) );
  NAND2_X1 U50 ( .A1(B[0]), .A2(n44), .ZN(\carry[1] ) );
  INV_X1 U51 ( .A(A[23]), .ZN(n43) );
endmodule


module adder_NBIT23_DW01_add_0 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7;
  wire   [23:1] carry;

  FA_X1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(carry[13]), .B(B[13]), .CI(A[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(B[12]), .B(A[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n2), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  XOR2_X1 U2 ( .A(A[22]), .B(B[22]), .Z(n3) );
  XOR2_X1 U3 ( .A(carry[22]), .B(n3), .Z(SUM[22]) );
  NAND2_X1 U4 ( .A1(carry[22]), .A2(A[22]), .ZN(n4) );
  NAND2_X1 U5 ( .A1(carry[22]), .A2(B[22]), .ZN(n5) );
  NAND2_X1 U6 ( .A1(A[22]), .A2(B[22]), .ZN(n6) );
  NAND3_X1 U7 ( .A1(n4), .A2(n5), .A3(n6), .ZN(carry[23]) );
  XOR2_X1 U8 ( .A(A[23]), .B(B[23]), .Z(n7) );
  XOR2_X1 U9 ( .A(carry[23]), .B(n7), .Z(SUM[23]) );
  AND2_X1 U10 ( .A1(B[0]), .A2(A[0]), .ZN(n2) );
endmodule


module adder_NBIT23 ( A, B, SUB_SUMn, S );
  input [22:0] A;
  input [22:0] B;
  output [23:0] S;
  input SUB_SUMn;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n23, n24, n25, n26, n27, n28, n29;

  adder_NBIT23_DW01_sub_0 sub_20 ( .A({A[22], A}), .B({B[22], B}), .CI(1'b0), 
        .DIFF({N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, 
        N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27}) );
  adder_NBIT23_DW01_add_0 add_20 ( .A({A[22], A}), .B({B[22], B}), .CI(1'b0), 
        .SUM({N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, 
        N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  INV_X1 U1 ( .A(n44), .ZN(S[23]) );
  AOI22_X1 U2 ( .A1(N25), .A2(n23), .B1(N50), .B2(n27), .ZN(n44) );
  INV_X1 U5 ( .A(n33), .ZN(S[10]) );
  AOI22_X1 U6 ( .A1(N12), .A2(n23), .B1(N37), .B2(n27), .ZN(n33) );
  INV_X1 U7 ( .A(n42), .ZN(S[9]) );
  AOI22_X1 U8 ( .A1(N11), .A2(n23), .B1(N36), .B2(n26), .ZN(n42) );
  INV_X1 U9 ( .A(n43), .ZN(S[8]) );
  AOI22_X1 U10 ( .A1(N10), .A2(n23), .B1(N35), .B2(n26), .ZN(n43) );
  INV_X1 U11 ( .A(n30), .ZN(S[13]) );
  AOI22_X1 U12 ( .A1(N15), .A2(n23), .B1(n29), .B2(N40), .ZN(n30) );
  INV_X1 U13 ( .A(n47), .ZN(S[20]) );
  AOI22_X1 U14 ( .A1(N22), .A2(n23), .B1(N47), .B2(n28), .ZN(n47) );
  INV_X1 U15 ( .A(n48), .ZN(S[19]) );
  AOI22_X1 U16 ( .A1(N21), .A2(n23), .B1(N46), .B2(n28), .ZN(n48) );
  INV_X1 U17 ( .A(n49), .ZN(S[18]) );
  AOI22_X1 U18 ( .A1(N20), .A2(n23), .B1(N45), .B2(n28), .ZN(n49) );
  INV_X1 U19 ( .A(n50), .ZN(S[17]) );
  AOI22_X1 U20 ( .A1(N19), .A2(n23), .B1(N44), .B2(n28), .ZN(n50) );
  INV_X1 U21 ( .A(n51), .ZN(S[16]) );
  AOI22_X1 U22 ( .A1(N18), .A2(n23), .B1(N43), .B2(n29), .ZN(n51) );
  INV_X1 U23 ( .A(n52), .ZN(S[15]) );
  AOI22_X1 U24 ( .A1(N17), .A2(n23), .B1(N42), .B2(n29), .ZN(n52) );
  INV_X1 U25 ( .A(n53), .ZN(S[14]) );
  AOI22_X1 U26 ( .A1(N16), .A2(n23), .B1(N41), .B2(n29), .ZN(n53) );
  INV_X1 U27 ( .A(n32), .ZN(S[11]) );
  AOI22_X1 U28 ( .A1(N13), .A2(n23), .B1(N38), .B2(n26), .ZN(n32) );
  INV_X1 U29 ( .A(n46), .ZN(S[21]) );
  AOI22_X1 U30 ( .A1(N23), .A2(n23), .B1(N48), .B2(n27), .ZN(n46) );
  INV_X1 U31 ( .A(n31), .ZN(S[12]) );
  AOI22_X1 U32 ( .A1(N14), .A2(n23), .B1(N39), .B2(n25), .ZN(n31) );
  INV_X1 U33 ( .A(SUB_SUMn), .ZN(n23) );
  INV_X1 U34 ( .A(n34), .ZN(S[7]) );
  AOI22_X1 U35 ( .A1(N34), .A2(n24), .B1(N9), .B2(n23), .ZN(n34) );
  INV_X1 U36 ( .A(n40), .ZN(S[1]) );
  AOI22_X1 U37 ( .A1(N28), .A2(n25), .B1(N3), .B2(n23), .ZN(n40) );
  INV_X1 U38 ( .A(n39), .ZN(S[2]) );
  AOI22_X1 U39 ( .A1(N29), .A2(n25), .B1(N4), .B2(n23), .ZN(n39) );
  INV_X1 U40 ( .A(n38), .ZN(S[3]) );
  AOI22_X1 U41 ( .A1(N30), .A2(n24), .B1(N5), .B2(n23), .ZN(n38) );
  INV_X1 U42 ( .A(n37), .ZN(S[4]) );
  AOI22_X1 U43 ( .A1(N31), .A2(n25), .B1(N6), .B2(n23), .ZN(n37) );
  INV_X1 U44 ( .A(n36), .ZN(S[5]) );
  AOI22_X1 U45 ( .A1(N32), .A2(n24), .B1(N7), .B2(n23), .ZN(n36) );
  INV_X1 U46 ( .A(n35), .ZN(S[6]) );
  AOI22_X1 U47 ( .A1(N33), .A2(n24), .B1(N8), .B2(n23), .ZN(n35) );
  INV_X1 U48 ( .A(n41), .ZN(S[0]) );
  AOI22_X1 U49 ( .A1(N2), .A2(n23), .B1(N27), .B2(n26), .ZN(n41) );
  BUF_X1 U50 ( .A(SUB_SUMn), .Z(n25) );
  BUF_X1 U51 ( .A(SUB_SUMn), .Z(n26) );
  BUF_X1 U52 ( .A(SUB_SUMn), .Z(n27) );
  BUF_X1 U53 ( .A(SUB_SUMn), .Z(n28) );
  BUF_X1 U54 ( .A(SUB_SUMn), .Z(n29) );
  BUF_X1 U55 ( .A(SUB_SUMn), .Z(n24) );
  AOI22_X1 U56 ( .A1(N24), .A2(n23), .B1(N49), .B2(n27), .ZN(n45) );
  INV_X1 U57 ( .A(n45), .ZN(S[22]) );
endmodule


module encoder_4 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n2;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X1 U1 ( .A1(vp[0]), .A2(n2), .ZN(vp[1]) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n2) );
endmodule


module mux_NBIT25 ( A, B, C, S, Y );
  input [24:0] A;
  input [24:0] B;
  input [24:0] C;
  input [1:0] S;
  output [24:0] Y;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n61,
         n62, n63, n64, n65, n66, n67, n93;

  INV_X1 U1 ( .A(n30), .ZN(Y[23]) );
  INV_X2 U2 ( .A(n27), .ZN(Y[24]) );
  BUF_X1 U3 ( .A(n28), .Z(n63) );
  BUF_X1 U4 ( .A(n28), .Z(n64) );
  BUF_X1 U5 ( .A(n29), .Z(n61) );
  BUF_X1 U6 ( .A(n29), .Z(n62) );
  BUF_X1 U7 ( .A(S[1]), .Z(n65) );
  BUF_X1 U8 ( .A(S[1]), .Z(n66) );
  NOR2_X1 U9 ( .A1(n93), .A2(n65), .ZN(n28) );
  INV_X1 U10 ( .A(S[0]), .ZN(n93) );
  BUF_X1 U11 ( .A(S[1]), .Z(n67) );
  NOR2_X1 U12 ( .A1(S[0]), .A2(n65), .ZN(n29) );
  INV_X1 U13 ( .A(n41), .ZN(Y[12]) );
  AOI222_X1 U14 ( .A1(C[12]), .A2(n66), .B1(B[12]), .B2(n64), .C1(A[12]), .C2(
        n62), .ZN(n41) );
  INV_X1 U15 ( .A(n44), .ZN(Y[9]) );
  AOI222_X1 U16 ( .A1(C[9]), .A2(n65), .B1(B[9]), .B2(n63), .C1(A[9]), .C2(n61), .ZN(n44) );
  INV_X1 U17 ( .A(n43), .ZN(Y[10]) );
  AOI222_X1 U18 ( .A1(C[10]), .A2(n66), .B1(B[10]), .B2(n63), .C1(A[10]), .C2(
        n61), .ZN(n43) );
  INV_X1 U19 ( .A(n42), .ZN(Y[11]) );
  AOI222_X1 U20 ( .A1(C[11]), .A2(n66), .B1(B[11]), .B2(n63), .C1(A[11]), .C2(
        n61), .ZN(n42) );
  INV_X1 U21 ( .A(n40), .ZN(Y[13]) );
  AOI222_X1 U22 ( .A1(C[13]), .A2(n66), .B1(B[13]), .B2(n64), .C1(A[13]), .C2(
        n62), .ZN(n40) );
  INV_X1 U23 ( .A(n39), .ZN(Y[14]) );
  AOI222_X1 U24 ( .A1(C[14]), .A2(n66), .B1(B[14]), .B2(n64), .C1(A[14]), .C2(
        n62), .ZN(n39) );
  INV_X1 U25 ( .A(n38), .ZN(Y[15]) );
  AOI222_X1 U26 ( .A1(C[15]), .A2(n66), .B1(B[15]), .B2(n64), .C1(A[15]), .C2(
        n62), .ZN(n38) );
  INV_X1 U27 ( .A(n37), .ZN(Y[16]) );
  AOI222_X1 U28 ( .A1(C[16]), .A2(n66), .B1(B[16]), .B2(n64), .C1(A[16]), .C2(
        n62), .ZN(n37) );
  INV_X1 U29 ( .A(n36), .ZN(Y[17]) );
  AOI222_X1 U30 ( .A1(C[17]), .A2(n66), .B1(B[17]), .B2(n64), .C1(A[17]), .C2(
        n62), .ZN(n36) );
  INV_X1 U31 ( .A(n45), .ZN(Y[8]) );
  AOI222_X1 U32 ( .A1(C[8]), .A2(n65), .B1(B[8]), .B2(n63), .C1(A[8]), .C2(n61), .ZN(n45) );
  INV_X1 U33 ( .A(n32), .ZN(Y[21]) );
  AOI222_X1 U34 ( .A1(C[21]), .A2(n66), .B1(B[21]), .B2(n64), .C1(A[21]), .C2(
        n62), .ZN(n32) );
  AOI222_X1 U35 ( .A1(C[23]), .A2(n67), .B1(B[23]), .B2(n64), .C1(A[23]), .C2(
        n62), .ZN(n30) );
  INV_X1 U36 ( .A(n31), .ZN(Y[22]) );
  AOI222_X1 U37 ( .A1(C[22]), .A2(n67), .B1(B[22]), .B2(n64), .C1(A[22]), .C2(
        n62), .ZN(n31) );
  INV_X1 U38 ( .A(n35), .ZN(Y[18]) );
  AOI222_X1 U39 ( .A1(C[18]), .A2(n66), .B1(B[18]), .B2(n64), .C1(A[18]), .C2(
        n62), .ZN(n35) );
  INV_X1 U40 ( .A(n34), .ZN(Y[19]) );
  AOI222_X1 U41 ( .A1(C[19]), .A2(n66), .B1(B[19]), .B2(n64), .C1(A[19]), .C2(
        n62), .ZN(n34) );
  INV_X1 U42 ( .A(n33), .ZN(Y[20]) );
  AOI222_X1 U43 ( .A1(C[20]), .A2(n66), .B1(B[20]), .B2(n64), .C1(A[20]), .C2(
        n62), .ZN(n33) );
  AOI222_X1 U44 ( .A1(n67), .A2(C[24]), .B1(B[24]), .B2(n64), .C1(A[24]), .C2(
        n29), .ZN(n27) );
  INV_X1 U45 ( .A(n53), .ZN(Y[0]) );
  AOI222_X1 U46 ( .A1(C[0]), .A2(n65), .B1(B[0]), .B2(n63), .C1(A[0]), .C2(n61), .ZN(n53) );
  INV_X1 U47 ( .A(n52), .ZN(Y[1]) );
  AOI222_X1 U48 ( .A1(C[1]), .A2(n65), .B1(B[1]), .B2(n63), .C1(A[1]), .C2(n61), .ZN(n52) );
  INV_X1 U49 ( .A(n51), .ZN(Y[2]) );
  AOI222_X1 U50 ( .A1(C[2]), .A2(n65), .B1(B[2]), .B2(n63), .C1(A[2]), .C2(n61), .ZN(n51) );
  INV_X1 U51 ( .A(n50), .ZN(Y[3]) );
  AOI222_X1 U52 ( .A1(C[3]), .A2(n65), .B1(B[3]), .B2(n63), .C1(A[3]), .C2(n61), .ZN(n50) );
  INV_X1 U53 ( .A(n49), .ZN(Y[4]) );
  AOI222_X1 U54 ( .A1(C[4]), .A2(n65), .B1(B[4]), .B2(n63), .C1(A[4]), .C2(n61), .ZN(n49) );
  INV_X1 U55 ( .A(n48), .ZN(Y[5]) );
  AOI222_X1 U56 ( .A1(C[5]), .A2(n65), .B1(B[5]), .B2(n63), .C1(A[5]), .C2(n61), .ZN(n48) );
  INV_X1 U57 ( .A(n47), .ZN(Y[6]) );
  AOI222_X1 U58 ( .A1(C[6]), .A2(n65), .B1(B[6]), .B2(n63), .C1(A[6]), .C2(n61), .ZN(n47) );
  INV_X1 U59 ( .A(n46), .ZN(Y[7]) );
  AOI222_X1 U60 ( .A1(C[7]), .A2(n65), .B1(B[7]), .B2(n63), .C1(A[7]), .C2(n61), .ZN(n46) );
endmodule


module adder_NBIT25_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] DIFF;
  input CI;
  output CO;
  wire   \carry[24] , \carry[23] , \carry[22] , \carry[21] , \carry[20] ,
         \carry[19] , \carry[18] , \carry[9] , \carry[8] , \carry[7] ,
         \carry[6] , \carry[5] , \carry[4] , \carry[3] , \carry[2] ,
         \carry[1] , \carry[17] , \carry[16] , \carry[15] , \carry[14] ,
         \carry[13] , \carry[12] , \carry[11] , \carry[10] , n28, n29, n30, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n31;

  FA_X1 U2_18 ( .A(n23), .B(A[18]), .CI(\carry[18] ), .CO(\carry[19] ), .S(
        DIFF[18]) );
  FA_X1 U2_19 ( .A(n24), .B(A[19]), .CI(\carry[19] ), .CO(\carry[20] ), .S(
        DIFF[19]) );
  FA_X1 U2_20 ( .A(n25), .B(A[20]), .CI(\carry[20] ), .CO(\carry[21] ), .S(
        DIFF[20]) );
  FA_X1 U2_21 ( .A(n26), .B(A[21]), .CI(\carry[21] ), .CO(\carry[22] ), .S(
        DIFF[21]) );
  FA_X1 U2_22 ( .A(n27), .B(A[22]), .CI(\carry[22] ), .CO(\carry[23] ), .S(
        DIFF[22]) );
  FA_X1 U2_23 ( .A(n31), .B(A[23]), .CI(\carry[23] ), .CO(\carry[24] ), .S(
        DIFF[23]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n6), .CI(\carry[1] ), .CO(\carry[2] ), .S(DIFF[1])
         );
  FA_X1 U2_2 ( .A(A[2]), .B(n7), .CI(\carry[2] ), .CO(\carry[3] ), .S(DIFF[2])
         );
  FA_X1 U2_3 ( .A(A[3]), .B(n8), .CI(\carry[3] ), .CO(\carry[4] ), .S(DIFF[3])
         );
  FA_X1 U2_4 ( .A(A[4]), .B(n9), .CI(\carry[4] ), .CO(\carry[5] ), .S(DIFF[4])
         );
  FA_X1 U2_5 ( .A(A[5]), .B(n10), .CI(\carry[5] ), .CO(\carry[6] ), .S(DIFF[5]) );
  FA_X1 U2_6 ( .A(A[6]), .B(n11), .CI(\carry[6] ), .CO(\carry[7] ), .S(DIFF[6]) );
  FA_X1 U2_7 ( .A(A[7]), .B(n12), .CI(\carry[7] ), .CO(\carry[8] ), .S(DIFF[7]) );
  FA_X1 U2_8 ( .A(A[8]), .B(n13), .CI(\carry[8] ), .CO(\carry[9] ), .S(DIFF[8]) );
  FA_X1 U2_9 ( .A(A[9]), .B(n14), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        DIFF[9]) );
  FA_X1 U2_10 ( .A(A[10]), .B(n15), .CI(\carry[10] ), .CO(\carry[11] ), .S(
        DIFF[10]) );
  FA_X1 U2_11 ( .A(A[11]), .B(n16), .CI(\carry[11] ), .CO(\carry[12] ), .S(
        DIFF[11]) );
  FA_X1 U2_12 ( .A(n17), .B(A[12]), .CI(\carry[12] ), .CO(\carry[13] ), .S(
        DIFF[12]) );
  FA_X1 U2_13 ( .A(n18), .B(\carry[13] ), .CI(A[13]), .CO(\carry[14] ), .S(
        DIFF[13]) );
  FA_X1 U2_14 ( .A(n19), .B(A[14]), .CI(\carry[14] ), .CO(\carry[15] ), .S(
        DIFF[14]) );
  FA_X1 U2_15 ( .A(A[15]), .B(n20), .CI(\carry[15] ), .CO(\carry[16] ), .S(
        DIFF[15]) );
  FA_X1 U2_17 ( .A(A[17]), .B(n22), .CI(\carry[17] ), .CO(\carry[18] ), .S(
        DIFF[17]) );
  FA_X1 U2_16 ( .A(n21), .B(A[16]), .CI(\carry[16] ), .CO(\carry[17] ), .S(
        DIFF[16]) );
  XOR2_X1 U30 ( .A(A[25]), .B(n29), .Z(n28) );
  INV_X1 U1 ( .A(B[25]), .ZN(n4) );
  XNOR2_X1 U2 ( .A(A[24]), .B(n4), .ZN(n30) );
  XNOR2_X1 U3 ( .A(n30), .B(\carry[24] ), .ZN(DIFF[24]) );
  INV_X1 U4 ( .A(A[0]), .ZN(n5) );
  XNOR2_X1 U5 ( .A(n28), .B(DIFF[24]), .ZN(DIFF[25]) );
  INV_X1 U6 ( .A(B[23]), .ZN(n31) );
  AOI22_X1 U7 ( .A1(\carry[24] ), .A2(n30), .B1(A[24]), .B2(B[25]), .ZN(n29)
         );
  INV_X1 U8 ( .A(B[22]), .ZN(n27) );
  INV_X1 U9 ( .A(B[21]), .ZN(n26) );
  INV_X1 U10 ( .A(B[20]), .ZN(n25) );
  INV_X1 U11 ( .A(B[19]), .ZN(n24) );
  INV_X1 U12 ( .A(B[18]), .ZN(n23) );
  INV_X1 U13 ( .A(B[17]), .ZN(n22) );
  INV_X1 U14 ( .A(B[16]), .ZN(n21) );
  INV_X1 U15 ( .A(B[15]), .ZN(n20) );
  INV_X1 U16 ( .A(B[14]), .ZN(n19) );
  INV_X1 U17 ( .A(B[13]), .ZN(n18) );
  INV_X1 U18 ( .A(B[12]), .ZN(n17) );
  INV_X1 U19 ( .A(B[11]), .ZN(n16) );
  INV_X1 U20 ( .A(B[10]), .ZN(n15) );
  INV_X1 U21 ( .A(B[9]), .ZN(n14) );
  INV_X1 U22 ( .A(B[8]), .ZN(n13) );
  INV_X1 U23 ( .A(B[7]), .ZN(n12) );
  OAI21_X1 U24 ( .B1(B[0]), .B2(n5), .A(\carry[1] ), .ZN(DIFF[0]) );
  INV_X1 U25 ( .A(B[2]), .ZN(n7) );
  INV_X1 U26 ( .A(B[3]), .ZN(n8) );
  INV_X1 U27 ( .A(B[4]), .ZN(n9) );
  INV_X1 U28 ( .A(B[5]), .ZN(n10) );
  INV_X1 U29 ( .A(B[6]), .ZN(n11) );
  INV_X1 U31 ( .A(B[1]), .ZN(n6) );
  NAND2_X1 U32 ( .A1(B[0]), .A2(n5), .ZN(\carry[1] ) );
endmodule


module adder_NBIT25_DW01_add_0 ( A, B, CI, SUM, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI;
  output CO;
  wire   n9, n11, n12, n13, n10, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24;
  wire   [25:1] carry;

  FA_X1 U1_21 ( .A(B[21]), .B(A[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(B[12]), .B(A[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n9), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U4 ( .A(n13), .B(A[25]), .Z(SUM[25]) );
  XOR2_X1 U6 ( .A(n12), .B(carry[22]), .Z(SUM[22]) );
  XOR2_X1 U8 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  INV_X1 U1 ( .A(B[25]), .ZN(n22) );
  INV_X1 U2 ( .A(B[22]), .ZN(n23) );
  NAND3_X1 U3 ( .A1(n15), .A2(n16), .A3(n17), .ZN(n10) );
  XOR2_X1 U5 ( .A(A[23]), .B(B[23]), .Z(n14) );
  XOR2_X1 U7 ( .A(n24), .B(n14), .Z(SUM[23]) );
  NAND2_X1 U9 ( .A1(n24), .A2(A[23]), .ZN(n15) );
  NAND2_X1 U10 ( .A1(n24), .A2(B[23]), .ZN(n16) );
  NAND2_X1 U11 ( .A1(A[23]), .A2(B[23]), .ZN(n17) );
  NAND3_X1 U12 ( .A1(n15), .A2(n16), .A3(n17), .ZN(carry[24]) );
  XOR2_X1 U13 ( .A(A[24]), .B(B[24]), .Z(n18) );
  XOR2_X1 U14 ( .A(n10), .B(n18), .Z(SUM[24]) );
  NAND2_X1 U15 ( .A1(carry[24]), .A2(A[24]), .ZN(n19) );
  NAND2_X1 U16 ( .A1(n10), .A2(B[24]), .ZN(n20) );
  NAND2_X1 U17 ( .A1(A[24]), .A2(B[24]), .ZN(n21) );
  NAND3_X1 U18 ( .A1(n20), .A2(n19), .A3(n21), .ZN(carry[25]) );
  XNOR2_X1 U19 ( .A(carry[25]), .B(n22), .ZN(n13) );
  XNOR2_X1 U20 ( .A(A[22]), .B(n23), .ZN(n12) );
  AND2_X1 U21 ( .A1(A[0]), .A2(B[0]), .ZN(n9) );
  INV_X1 U22 ( .A(n11), .ZN(n24) );
  AOI22_X1 U23 ( .A1(B[22]), .A2(A[22]), .B1(n12), .B2(carry[22]), .ZN(n11) );
endmodule


module adder_NBIT25 ( A, B, SUB_SUMn, S );
  input [24:0] A;
  input [24:0] B;
  output [25:0] S;
  input SUB_SUMn;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29;

  adder_NBIT25_DW01_sub_0 sub_20 ( .A({n20, A}), .B({B[24], B}), .CI(1'b0), 
        .DIFF({N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, 
        N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29}) );
  adder_NBIT25_DW01_add_0 add_20 ( .A({n20, A}), .B({B[24], B}), .CI(1'b0), 
        .SUM({N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  CLKBUF_X1 U1 ( .A(A[24]), .Z(n20) );
  AOI22_X1 U2 ( .A1(N25), .A2(n21), .B1(n29), .B2(N52), .ZN(n32) );
  INV_X1 U5 ( .A(n33), .ZN(S[22]) );
  AOI22_X1 U6 ( .A1(N24), .A2(n21), .B1(N51), .B2(n25), .ZN(n33) );
  INV_X1 U7 ( .A(n34), .ZN(S[21]) );
  AOI22_X1 U8 ( .A1(N23), .A2(n21), .B1(N50), .B2(n24), .ZN(n34) );
  INV_X1 U9 ( .A(n57), .ZN(S[10]) );
  AOI22_X1 U10 ( .A1(N12), .A2(n21), .B1(N39), .B2(n29), .ZN(n57) );
  INV_X1 U11 ( .A(n56), .ZN(S[11]) );
  AOI22_X1 U12 ( .A1(N13), .A2(n22), .B1(N40), .B2(n28), .ZN(n56) );
  INV_X1 U13 ( .A(n35), .ZN(S[20]) );
  AOI22_X1 U14 ( .A1(N22), .A2(n21), .B1(N49), .B2(n26), .ZN(n35) );
  INV_X1 U15 ( .A(n37), .ZN(S[17]) );
  AOI22_X1 U16 ( .A1(N19), .A2(n21), .B1(N46), .B2(n25), .ZN(n37) );
  INV_X1 U17 ( .A(n36), .ZN(S[18]) );
  AOI22_X1 U18 ( .A1(N20), .A2(n21), .B1(N47), .B2(n24), .ZN(n36) );
  INV_X1 U19 ( .A(n38), .ZN(S[16]) );
  AOI22_X1 U20 ( .A1(N18), .A2(n21), .B1(N45), .B2(n26), .ZN(n38) );
  INV_X1 U21 ( .A(n39), .ZN(S[15]) );
  AOI22_X1 U22 ( .A1(N17), .A2(n21), .B1(N44), .B2(n25), .ZN(n39) );
  INV_X1 U23 ( .A(n40), .ZN(S[14]) );
  AOI22_X1 U24 ( .A1(N16), .A2(n21), .B1(N43), .B2(n26), .ZN(n40) );
  INV_X1 U25 ( .A(n53), .ZN(S[19]) );
  AOI22_X1 U26 ( .A1(N21), .A2(n22), .B1(N48), .B2(n28), .ZN(n53) );
  INV_X1 U27 ( .A(n54), .ZN(S[13]) );
  AOI22_X1 U28 ( .A1(N15), .A2(n22), .B1(N42), .B2(n28), .ZN(n54) );
  INV_X1 U29 ( .A(n55), .ZN(S[12]) );
  AOI22_X1 U30 ( .A1(N14), .A2(n22), .B1(N41), .B2(n28), .ZN(n55) );
  INV_X1 U31 ( .A(n29), .ZN(n21) );
  INV_X1 U32 ( .A(n42), .ZN(S[8]) );
  AOI22_X1 U33 ( .A1(N10), .A2(n21), .B1(N37), .B2(n26), .ZN(n42) );
  INV_X1 U34 ( .A(n41), .ZN(S[9]) );
  AOI22_X1 U35 ( .A1(N11), .A2(n21), .B1(N38), .B2(n25), .ZN(n41) );
  INV_X1 U36 ( .A(n43), .ZN(S[7]) );
  AOI22_X1 U37 ( .A1(N36), .A2(n23), .B1(N9), .B2(n22), .ZN(n43) );
  INV_X1 U38 ( .A(n29), .ZN(n22) );
  INV_X1 U39 ( .A(n49), .ZN(S[1]) );
  AOI22_X1 U40 ( .A1(N3), .A2(n22), .B1(N30), .B2(n27), .ZN(n49) );
  INV_X1 U41 ( .A(n47), .ZN(S[3]) );
  AOI22_X1 U42 ( .A1(N32), .A2(n24), .B1(N5), .B2(n22), .ZN(n47) );
  INV_X1 U43 ( .A(n46), .ZN(S[4]) );
  AOI22_X1 U44 ( .A1(N33), .A2(n23), .B1(N6), .B2(n22), .ZN(n46) );
  INV_X1 U45 ( .A(n45), .ZN(S[5]) );
  AOI22_X1 U46 ( .A1(N34), .A2(n24), .B1(N7), .B2(n22), .ZN(n45) );
  INV_X1 U47 ( .A(n50), .ZN(S[0]) );
  AOI22_X1 U48 ( .A1(N2), .A2(n22), .B1(N29), .B2(n27), .ZN(n50) );
  INV_X1 U49 ( .A(n48), .ZN(S[2]) );
  AOI22_X1 U50 ( .A1(N31), .A2(n23), .B1(N4), .B2(n22), .ZN(n48) );
  INV_X1 U51 ( .A(n44), .ZN(S[6]) );
  AOI22_X1 U52 ( .A1(N35), .A2(n23), .B1(N8), .B2(n22), .ZN(n44) );
  BUF_X1 U53 ( .A(SUB_SUMn), .Z(n29) );
  BUF_X1 U54 ( .A(SUB_SUMn), .Z(n24) );
  BUF_X1 U55 ( .A(SUB_SUMn), .Z(n28) );
  BUF_X1 U56 ( .A(SUB_SUMn), .Z(n26) );
  BUF_X1 U57 ( .A(SUB_SUMn), .Z(n25) );
  BUF_X1 U58 ( .A(SUB_SUMn), .Z(n27) );
  BUF_X1 U59 ( .A(SUB_SUMn), .Z(n23) );
  INV_X1 U60 ( .A(n52), .ZN(S[24]) );
  AOI22_X1 U61 ( .A1(N26), .A2(n22), .B1(N53), .B2(n27), .ZN(n52) );
  INV_X1 U62 ( .A(n32), .ZN(S[23]) );
  INV_X1 U63 ( .A(n51), .ZN(S[25]) );
  AOI22_X1 U64 ( .A1(N27), .A2(n22), .B1(N54), .B2(n27), .ZN(n51) );
endmodule


module encoder_3 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n2;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X1 U1 ( .A1(vp[0]), .A2(n2), .ZN(vp[1]) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n2) );
endmodule


module mux_NBIT27 ( A, B, C, S, Y );
  input [26:0] A;
  input [26:0] B;
  input [26:0] C;
  input [1:0] S;
  output [26:0] Y;
  wire   n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n67, n68, n69, n70, n71, n72, n73, n74, n75, n103;

  BUF_X1 U1 ( .A(n30), .Z(n70) );
  BUF_X1 U2 ( .A(n30), .Z(n71) );
  BUF_X1 U3 ( .A(n30), .Z(n72) );
  BUF_X1 U4 ( .A(n31), .Z(n67) );
  BUF_X1 U5 ( .A(n31), .Z(n68) );
  BUF_X1 U6 ( .A(n31), .Z(n69) );
  BUF_X1 U7 ( .A(S[1]), .Z(n73) );
  BUF_X1 U8 ( .A(S[1]), .Z(n74) );
  NOR2_X1 U9 ( .A1(n103), .A2(n73), .ZN(n30) );
  INV_X1 U10 ( .A(S[0]), .ZN(n103) );
  BUF_X1 U11 ( .A(S[1]), .Z(n75) );
  NOR2_X1 U12 ( .A1(S[0]), .A2(n73), .ZN(n31) );
  INV_X1 U13 ( .A(n46), .ZN(Y[11]) );
  AOI222_X1 U14 ( .A1(C[11]), .A2(n74), .B1(B[11]), .B2(n70), .C1(A[11]), .C2(
        n67), .ZN(n46) );
  INV_X1 U15 ( .A(n45), .ZN(Y[12]) );
  AOI222_X1 U16 ( .A1(C[12]), .A2(n74), .B1(B[12]), .B2(n71), .C1(A[12]), .C2(
        n68), .ZN(n45) );
  INV_X1 U17 ( .A(n44), .ZN(Y[13]) );
  AOI222_X1 U18 ( .A1(C[13]), .A2(n74), .B1(B[13]), .B2(n71), .C1(A[13]), .C2(
        n68), .ZN(n44) );
  INV_X1 U19 ( .A(n43), .ZN(Y[14]) );
  AOI222_X1 U20 ( .A1(C[14]), .A2(n74), .B1(B[14]), .B2(n71), .C1(A[14]), .C2(
        n68), .ZN(n43) );
  INV_X1 U21 ( .A(n47), .ZN(Y[10]) );
  AOI222_X1 U22 ( .A1(C[10]), .A2(n74), .B1(B[10]), .B2(n70), .C1(A[10]), .C2(
        n67), .ZN(n47) );
  INV_X1 U23 ( .A(n42), .ZN(Y[15]) );
  AOI222_X1 U24 ( .A1(C[15]), .A2(n74), .B1(B[15]), .B2(n71), .C1(A[15]), .C2(
        n68), .ZN(n42) );
  INV_X1 U25 ( .A(n41), .ZN(Y[16]) );
  AOI222_X1 U26 ( .A1(C[16]), .A2(n74), .B1(B[16]), .B2(n71), .C1(A[16]), .C2(
        n68), .ZN(n41) );
  INV_X1 U27 ( .A(n40), .ZN(Y[17]) );
  AOI222_X1 U28 ( .A1(C[17]), .A2(n74), .B1(B[17]), .B2(n71), .C1(A[17]), .C2(
        n68), .ZN(n40) );
  INV_X1 U29 ( .A(n39), .ZN(Y[18]) );
  AOI222_X1 U30 ( .A1(C[18]), .A2(n74), .B1(B[18]), .B2(n71), .C1(A[18]), .C2(
        n68), .ZN(n39) );
  INV_X1 U31 ( .A(n38), .ZN(Y[19]) );
  AOI222_X1 U32 ( .A1(C[19]), .A2(n74), .B1(B[19]), .B2(n71), .C1(A[19]), .C2(
        n68), .ZN(n38) );
  INV_X1 U33 ( .A(n37), .ZN(Y[20]) );
  AOI222_X1 U34 ( .A1(C[20]), .A2(n74), .B1(B[20]), .B2(n71), .C1(A[20]), .C2(
        n68), .ZN(n37) );
  INV_X1 U35 ( .A(n36), .ZN(Y[21]) );
  AOI222_X1 U36 ( .A1(C[21]), .A2(n74), .B1(B[21]), .B2(n71), .C1(A[21]), .C2(
        n68), .ZN(n36) );
  INV_X1 U37 ( .A(n35), .ZN(Y[22]) );
  AOI222_X1 U38 ( .A1(C[22]), .A2(n75), .B1(B[22]), .B2(n71), .C1(A[22]), .C2(
        n68), .ZN(n35) );
  INV_X1 U39 ( .A(n34), .ZN(Y[23]) );
  AOI222_X1 U40 ( .A1(C[23]), .A2(n75), .B1(B[23]), .B2(n71), .C1(A[23]), .C2(
        n68), .ZN(n34) );
  INV_X1 U41 ( .A(n33), .ZN(Y[24]) );
  AOI222_X1 U42 ( .A1(C[24]), .A2(n75), .B1(B[24]), .B2(n72), .C1(A[24]), .C2(
        n69), .ZN(n33) );
  INV_X1 U43 ( .A(n32), .ZN(Y[25]) );
  AOI222_X1 U44 ( .A1(C[25]), .A2(n75), .B1(B[25]), .B2(n72), .C1(A[25]), .C2(
        n69), .ZN(n32) );
  INV_X1 U45 ( .A(n29), .ZN(Y[26]) );
  AOI222_X1 U46 ( .A1(n75), .A2(C[26]), .B1(B[26]), .B2(n72), .C1(A[26]), .C2(
        n69), .ZN(n29) );
  INV_X1 U47 ( .A(n57), .ZN(Y[0]) );
  AOI222_X1 U48 ( .A1(C[0]), .A2(n73), .B1(B[0]), .B2(n70), .C1(A[0]), .C2(n67), .ZN(n57) );
  INV_X1 U49 ( .A(n56), .ZN(Y[1]) );
  AOI222_X1 U50 ( .A1(C[1]), .A2(n73), .B1(B[1]), .B2(n70), .C1(A[1]), .C2(n67), .ZN(n56) );
  INV_X1 U51 ( .A(n55), .ZN(Y[2]) );
  AOI222_X1 U52 ( .A1(C[2]), .A2(n73), .B1(B[2]), .B2(n70), .C1(A[2]), .C2(n67), .ZN(n55) );
  INV_X1 U53 ( .A(n54), .ZN(Y[3]) );
  AOI222_X1 U54 ( .A1(C[3]), .A2(n73), .B1(B[3]), .B2(n70), .C1(A[3]), .C2(n67), .ZN(n54) );
  INV_X1 U55 ( .A(n53), .ZN(Y[4]) );
  AOI222_X1 U56 ( .A1(C[4]), .A2(n73), .B1(B[4]), .B2(n70), .C1(A[4]), .C2(n67), .ZN(n53) );
  INV_X1 U57 ( .A(n52), .ZN(Y[5]) );
  AOI222_X1 U58 ( .A1(C[5]), .A2(n73), .B1(B[5]), .B2(n70), .C1(A[5]), .C2(n67), .ZN(n52) );
  INV_X1 U59 ( .A(n51), .ZN(Y[6]) );
  AOI222_X1 U60 ( .A1(C[6]), .A2(n73), .B1(B[6]), .B2(n70), .C1(A[6]), .C2(n67), .ZN(n51) );
  INV_X1 U61 ( .A(n50), .ZN(Y[7]) );
  AOI222_X1 U62 ( .A1(C[7]), .A2(n73), .B1(B[7]), .B2(n70), .C1(A[7]), .C2(n67), .ZN(n50) );
  INV_X1 U63 ( .A(n49), .ZN(Y[8]) );
  AOI222_X1 U64 ( .A1(C[8]), .A2(n73), .B1(B[8]), .B2(n70), .C1(A[8]), .C2(n67), .ZN(n49) );
  INV_X1 U65 ( .A(n48), .ZN(Y[9]) );
  AOI222_X1 U66 ( .A1(C[9]), .A2(n73), .B1(B[9]), .B2(n70), .C1(A[9]), .C2(n67), .ZN(n48) );
endmodule


module adder_NBIT27_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] DIFF;
  input CI;
  output CO;
  wire   \carry[24] , \carry[23] , \carry[22] , \carry[21] , \carry[20] ,
         \carry[19] , \carry[18] , \carry[9] , \carry[8] , \carry[7] ,
         \carry[6] , \carry[5] , \carry[4] , \carry[3] , \carry[2] ,
         \carry[1] , \carry[17] , \carry[16] , \carry[15] , \carry[14] ,
         \carry[13] , \carry[12] , \carry[11] , \carry[10] , n4, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38;
  wire   [28:0] carry;

  FA_X1 U2_26 ( .A(A[26]), .B(n38), .CI(carry[26]), .CO(carry[27]), .S(
        DIFF[26]) );
  FA_X1 U2_25 ( .A(n37), .B(A[25]), .CI(carry[25]), .CO(carry[26]), .S(
        DIFF[25]) );
  FA_X1 U2_18 ( .A(A[18]), .B(n30), .CI(\carry[18] ), .CO(\carry[19] ), .S(
        DIFF[18]) );
  FA_X1 U2_19 ( .A(A[19]), .B(n31), .CI(\carry[19] ), .CO(\carry[20] ), .S(
        DIFF[19]) );
  FA_X1 U2_20 ( .A(A[20]), .B(n32), .CI(\carry[20] ), .CO(\carry[21] ), .S(
        DIFF[20]) );
  FA_X1 U2_21 ( .A(A[21]), .B(n33), .CI(\carry[21] ), .CO(\carry[22] ), .S(
        DIFF[21]) );
  FA_X1 U2_22 ( .A(A[22]), .B(n34), .CI(\carry[22] ), .CO(\carry[23] ), .S(
        DIFF[22]) );
  FA_X1 U2_23 ( .A(n35), .B(\carry[23] ), .CI(A[23]), .CO(\carry[24] ), .S(
        DIFF[23]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n13), .CI(\carry[1] ), .CO(\carry[2] ), .S(DIFF[1]) );
  FA_X1 U2_2 ( .A(A[2]), .B(n14), .CI(\carry[2] ), .CO(\carry[3] ), .S(DIFF[2]) );
  FA_X1 U2_3 ( .A(A[3]), .B(n15), .CI(\carry[3] ), .CO(\carry[4] ), .S(DIFF[3]) );
  FA_X1 U2_4 ( .A(A[4]), .B(n16), .CI(\carry[4] ), .CO(\carry[5] ), .S(DIFF[4]) );
  FA_X1 U2_5 ( .A(A[5]), .B(n17), .CI(\carry[5] ), .CO(\carry[6] ), .S(DIFF[5]) );
  FA_X1 U2_6 ( .A(A[6]), .B(n18), .CI(\carry[6] ), .CO(\carry[7] ), .S(DIFF[6]) );
  FA_X1 U2_7 ( .A(A[7]), .B(n19), .CI(\carry[7] ), .CO(\carry[8] ), .S(DIFF[7]) );
  FA_X1 U2_8 ( .A(A[8]), .B(n20), .CI(\carry[8] ), .CO(\carry[9] ), .S(DIFF[8]) );
  FA_X1 U2_9 ( .A(A[9]), .B(n21), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        DIFF[9]) );
  FA_X1 U2_10 ( .A(A[10]), .B(n22), .CI(\carry[10] ), .CO(\carry[11] ), .S(
        DIFF[10]) );
  FA_X1 U2_11 ( .A(A[11]), .B(n23), .CI(\carry[11] ), .CO(\carry[12] ), .S(
        DIFF[11]) );
  FA_X1 U2_12 ( .A(n24), .B(A[12]), .CI(\carry[12] ), .CO(\carry[13] ), .S(
        DIFF[12]) );
  FA_X1 U2_13 ( .A(n25), .B(\carry[13] ), .CI(A[13]), .CO(\carry[14] ), .S(
        DIFF[13]) );
  FA_X1 U2_14 ( .A(n26), .B(A[14]), .CI(\carry[14] ), .CO(\carry[15] ), .S(
        DIFF[14]) );
  FA_X1 U2_15 ( .A(n27), .B(A[15]), .CI(\carry[15] ), .CO(\carry[16] ), .S(
        DIFF[15]) );
  FA_X1 U2_17 ( .A(A[17]), .B(n29), .CI(\carry[17] ), .CO(\carry[18] ), .S(
        DIFF[17]) );
  FA_X1 U2_16 ( .A(A[16]), .B(n28), .CI(\carry[16] ), .CO(\carry[17] ), .S(
        DIFF[16]) );
  XOR2_X1 U13 ( .A(A[27]), .B(n38), .Z(n4) );
  XOR2_X1 U14 ( .A(carry[27]), .B(n4), .Z(DIFF[27]) );
  XOR2_X1 U1 ( .A(A[24]), .B(n36), .Z(n7) );
  XOR2_X1 U2 ( .A(\carry[24] ), .B(n7), .Z(DIFF[24]) );
  NAND2_X1 U3 ( .A1(\carry[24] ), .A2(A[24]), .ZN(n8) );
  NAND2_X1 U4 ( .A1(\carry[24] ), .A2(n36), .ZN(n9) );
  NAND2_X1 U5 ( .A1(A[24]), .A2(n36), .ZN(n10) );
  NAND3_X1 U6 ( .A1(n8), .A2(n9), .A3(n10), .ZN(carry[25]) );
  INV_X1 U7 ( .A(B[23]), .ZN(n35) );
  INV_X1 U8 ( .A(B[24]), .ZN(n36) );
  INV_X1 U9 ( .A(B[22]), .ZN(n34) );
  INV_X1 U10 ( .A(B[21]), .ZN(n33) );
  INV_X1 U11 ( .A(B[20]), .ZN(n32) );
  INV_X1 U12 ( .A(B[19]), .ZN(n31) );
  INV_X1 U15 ( .A(B[18]), .ZN(n30) );
  INV_X1 U16 ( .A(B[17]), .ZN(n29) );
  INV_X1 U17 ( .A(B[16]), .ZN(n28) );
  INV_X1 U18 ( .A(B[15]), .ZN(n27) );
  INV_X1 U19 ( .A(B[14]), .ZN(n26) );
  INV_X1 U20 ( .A(B[13]), .ZN(n25) );
  INV_X1 U21 ( .A(B[12]), .ZN(n24) );
  INV_X1 U22 ( .A(B[11]), .ZN(n23) );
  INV_X1 U23 ( .A(B[25]), .ZN(n37) );
  INV_X1 U24 ( .A(B[10]), .ZN(n22) );
  INV_X1 U25 ( .A(B[7]), .ZN(n19) );
  INV_X1 U26 ( .A(B[8]), .ZN(n20) );
  INV_X1 U27 ( .A(B[9]), .ZN(n21) );
  INV_X1 U28 ( .A(B[2]), .ZN(n14) );
  INV_X1 U29 ( .A(B[3]), .ZN(n15) );
  INV_X1 U30 ( .A(B[4]), .ZN(n16) );
  INV_X1 U31 ( .A(B[5]), .ZN(n17) );
  INV_X1 U32 ( .A(B[6]), .ZN(n18) );
  INV_X1 U33 ( .A(B[1]), .ZN(n13) );
  NAND2_X1 U34 ( .A1(B[0]), .A2(n11), .ZN(\carry[1] ) );
  INV_X1 U35 ( .A(A[0]), .ZN(n11) );
  XNOR2_X1 U36 ( .A(n12), .B(A[0]), .ZN(DIFF[0]) );
  INV_X1 U37 ( .A(B[27]), .ZN(n38) );
  INV_X1 U38 ( .A(B[0]), .ZN(n12) );
endmodule


module adder_NBIT27_DW01_add_0 ( A, B, CI, SUM, CO );
  input [27:0] A;
  input [27:0] B;
  output [27:0] SUM;
  input CI;
  output CO;
  wire   n2, n3;
  wire   [27:1] carry;

  FA_X1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FA_X1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA_X1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA_X1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA_X1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA_X1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n3), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  XOR2_X1 U2 ( .A(A[27]), .B(B[27]), .Z(n2) );
  XOR2_X1 U3 ( .A(carry[27]), .B(n2), .Z(SUM[27]) );
  AND2_X1 U4 ( .A1(B[0]), .A2(A[0]), .ZN(n3) );
endmodule


module adder_NBIT27 ( A, B, SUB_SUMn, S );
  input [26:0] A;
  input [26:0] B;
  output [27:0] S;
  input SUB_SUMn;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n26,
         n27, n28, n29, n30, n31, n32, n33, n62, n63, n64, n65, n66;

  adder_NBIT27_DW01_sub_0 sub_20 ( .A({A[26], A}), .B({B[26], B}), .CI(1'b0), 
        .DIFF({N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, 
        N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, 
        N31}) );
  adder_NBIT27_DW01_add_0 add_20 ( .A({A[26], A}), .B({B[26], B}), .CI(1'b0), 
        .SUM({N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2}) );
  INV_X1 U1 ( .A(n52), .ZN(S[27]) );
  AOI22_X1 U2 ( .A1(N29), .A2(n30), .B1(N58), .B2(n63), .ZN(n52) );
  AOI22_X1 U5 ( .A1(N25), .A2(n29), .B1(N54), .B2(n32), .ZN(n35) );
  INV_X1 U6 ( .A(n54), .ZN(S[24]) );
  AOI22_X1 U7 ( .A1(N26), .A2(n30), .B1(N55), .B2(n63), .ZN(n54) );
  INV_X1 U8 ( .A(n55), .ZN(S[22]) );
  AOI22_X1 U9 ( .A1(N24), .A2(n30), .B1(N53), .B2(n64), .ZN(n55) );
  INV_X1 U10 ( .A(n56), .ZN(S[21]) );
  AOI22_X1 U11 ( .A1(N23), .A2(n30), .B1(N52), .B2(n64), .ZN(n56) );
  INV_X1 U12 ( .A(n57), .ZN(S[20]) );
  AOI22_X1 U13 ( .A1(N22), .A2(n30), .B1(N51), .B2(n64), .ZN(n57) );
  INV_X1 U14 ( .A(n36), .ZN(S[19]) );
  AOI22_X1 U15 ( .A1(N21), .A2(n29), .B1(N50), .B2(n33), .ZN(n36) );
  INV_X1 U16 ( .A(n38), .ZN(S[17]) );
  AOI22_X1 U17 ( .A1(N19), .A2(n29), .B1(N48), .B2(n62), .ZN(n38) );
  INV_X1 U18 ( .A(n37), .ZN(S[18]) );
  AOI22_X1 U19 ( .A1(N20), .A2(n29), .B1(N49), .B2(n32), .ZN(n37) );
  INV_X1 U20 ( .A(n39), .ZN(S[16]) );
  AOI22_X1 U21 ( .A1(N18), .A2(n29), .B1(N47), .B2(n33), .ZN(n39) );
  INV_X1 U22 ( .A(n58), .ZN(S[15]) );
  AOI22_X1 U23 ( .A1(N17), .A2(n30), .B1(N46), .B2(n64), .ZN(n58) );
  INV_X1 U24 ( .A(n59), .ZN(S[14]) );
  AOI22_X1 U25 ( .A1(N16), .A2(n30), .B1(N45), .B2(n65), .ZN(n59) );
  INV_X1 U26 ( .A(n60), .ZN(S[13]) );
  AOI22_X1 U27 ( .A1(N15), .A2(n30), .B1(N44), .B2(n65), .ZN(n60) );
  INV_X1 U28 ( .A(n61), .ZN(S[12]) );
  AOI22_X1 U29 ( .A1(N14), .A2(n29), .B1(N43), .B2(n65), .ZN(n61) );
  INV_X1 U30 ( .A(n34), .ZN(S[26]) );
  AOI22_X1 U31 ( .A1(N28), .A2(n29), .B1(n65), .B2(N57), .ZN(n34) );
  INV_X1 U32 ( .A(n44), .ZN(S[7]) );
  AOI22_X1 U33 ( .A1(N38), .A2(n31), .B1(N9), .B2(n30), .ZN(n44) );
  INV_X1 U34 ( .A(n43), .ZN(S[8]) );
  AOI22_X1 U35 ( .A1(N10), .A2(n29), .B1(N39), .B2(n62), .ZN(n43) );
  INV_X1 U36 ( .A(n42), .ZN(S[9]) );
  AOI22_X1 U37 ( .A1(N11), .A2(n29), .B1(N40), .B2(n33), .ZN(n42) );
  INV_X1 U38 ( .A(n41), .ZN(S[10]) );
  AOI22_X1 U39 ( .A1(N12), .A2(n29), .B1(N41), .B2(n33), .ZN(n41) );
  INV_X1 U40 ( .A(n40), .ZN(S[11]) );
  AOI22_X1 U41 ( .A1(N13), .A2(n29), .B1(N42), .B2(n62), .ZN(n40) );
  INV_X1 U42 ( .A(n66), .ZN(n29) );
  INV_X1 U43 ( .A(n66), .ZN(n30) );
  INV_X1 U44 ( .A(n48), .ZN(S[3]) );
  AOI22_X1 U45 ( .A1(N34), .A2(n32), .B1(N5), .B2(n30), .ZN(n48) );
  INV_X1 U46 ( .A(n46), .ZN(S[5]) );
  AOI22_X1 U47 ( .A1(N36), .A2(n32), .B1(N7), .B2(n30), .ZN(n46) );
  INV_X1 U48 ( .A(n50), .ZN(S[1]) );
  AOI22_X1 U49 ( .A1(N3), .A2(n29), .B1(N32), .B2(n62), .ZN(n50) );
  INV_X1 U50 ( .A(n47), .ZN(S[4]) );
  AOI22_X1 U51 ( .A1(N35), .A2(n31), .B1(N6), .B2(n30), .ZN(n47) );
  INV_X1 U52 ( .A(n45), .ZN(S[6]) );
  AOI22_X1 U53 ( .A1(N37), .A2(n31), .B1(N8), .B2(n30), .ZN(n45) );
  INV_X1 U54 ( .A(n49), .ZN(S[2]) );
  AOI22_X1 U55 ( .A1(N33), .A2(n31), .B1(N4), .B2(n30), .ZN(n49) );
  BUF_X1 U56 ( .A(n26), .Z(n32) );
  BUF_X1 U57 ( .A(n27), .Z(n62) );
  BUF_X1 U58 ( .A(n26), .Z(n33) );
  BUF_X1 U59 ( .A(n27), .Z(n64) );
  BUF_X1 U60 ( .A(n28), .Z(n66) );
  BUF_X1 U61 ( .A(n28), .Z(n65) );
  INV_X1 U62 ( .A(n51), .ZN(S[0]) );
  AOI22_X1 U63 ( .A1(N2), .A2(n30), .B1(N31), .B2(n63), .ZN(n51) );
  BUF_X1 U64 ( .A(n27), .Z(n63) );
  BUF_X1 U65 ( .A(n26), .Z(n31) );
  BUF_X1 U66 ( .A(SUB_SUMn), .Z(n26) );
  BUF_X1 U67 ( .A(SUB_SUMn), .Z(n27) );
  BUF_X1 U68 ( .A(SUB_SUMn), .Z(n28) );
  AOI22_X1 U69 ( .A1(N27), .A2(n30), .B1(N56), .B2(n63), .ZN(n53) );
  INV_X1 U70 ( .A(n35), .ZN(S[23]) );
  INV_X1 U71 ( .A(n53), .ZN(S[25]) );
endmodule


module encoder_2 ( b, vp );
  input [2:0] b;
  output [2:0] vp;
  wire   \b[2] , n2;
  assign vp[2] = \b[2] ;
  assign \b[2]  = b[2];

  XOR2_X1 U3 ( .A(b[0]), .B(b[1]), .Z(vp[0]) );
  NOR2_X1 U1 ( .A1(vp[0]), .A2(n2), .ZN(vp[1]) );
  XNOR2_X1 U2 ( .A(b[0]), .B(\b[2] ), .ZN(n2) );
endmodule


module mux_NBIT29 ( A, B, C, S, Y );
  input [28:0] A;
  input [28:0] B;
  input [28:0] C;
  input [1:0] S;
  output [28:0] Y;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n71, n72, n73, n74, n75, n76, n77, n78, n79, n109;

  BUF_X1 U1 ( .A(n32), .Z(n75) );
  BUF_X1 U2 ( .A(n32), .Z(n76) );
  BUF_X1 U3 ( .A(n32), .Z(n74) );
  BUF_X1 U4 ( .A(n33), .Z(n71) );
  BUF_X1 U5 ( .A(n33), .Z(n72) );
  BUF_X1 U6 ( .A(n33), .Z(n73) );
  BUF_X1 U7 ( .A(S[1]), .Z(n77) );
  BUF_X1 U8 ( .A(S[1]), .Z(n78) );
  NOR2_X1 U9 ( .A1(n109), .A2(n77), .ZN(n32) );
  INV_X1 U10 ( .A(S[0]), .ZN(n109) );
  BUF_X1 U11 ( .A(S[1]), .Z(n79) );
  NOR2_X1 U12 ( .A1(S[0]), .A2(n77), .ZN(n33) );
  INV_X1 U13 ( .A(n48), .ZN(Y[13]) );
  AOI222_X1 U14 ( .A1(C[13]), .A2(n78), .B1(B[13]), .B2(n75), .C1(A[13]), .C2(
        n72), .ZN(n48) );
  INV_X1 U15 ( .A(n47), .ZN(Y[14]) );
  AOI222_X1 U16 ( .A1(C[14]), .A2(n78), .B1(B[14]), .B2(n75), .C1(A[14]), .C2(
        n72), .ZN(n47) );
  INV_X1 U17 ( .A(n46), .ZN(Y[15]) );
  AOI222_X1 U18 ( .A1(C[15]), .A2(n78), .B1(B[15]), .B2(n75), .C1(A[15]), .C2(
        n72), .ZN(n46) );
  INV_X1 U19 ( .A(n45), .ZN(Y[16]) );
  AOI222_X1 U20 ( .A1(C[16]), .A2(n78), .B1(B[16]), .B2(n75), .C1(A[16]), .C2(
        n72), .ZN(n45) );
  INV_X1 U21 ( .A(n44), .ZN(Y[17]) );
  AOI222_X1 U22 ( .A1(C[17]), .A2(n78), .B1(B[17]), .B2(n75), .C1(A[17]), .C2(
        n72), .ZN(n44) );
  INV_X1 U23 ( .A(n43), .ZN(Y[18]) );
  AOI222_X1 U24 ( .A1(C[18]), .A2(n78), .B1(B[18]), .B2(n75), .C1(A[18]), .C2(
        n72), .ZN(n43) );
  INV_X1 U25 ( .A(n42), .ZN(Y[19]) );
  AOI222_X1 U26 ( .A1(C[19]), .A2(n78), .B1(B[19]), .B2(n75), .C1(A[19]), .C2(
        n72), .ZN(n42) );
  INV_X1 U27 ( .A(n41), .ZN(Y[20]) );
  AOI222_X1 U28 ( .A1(C[20]), .A2(n78), .B1(B[20]), .B2(n75), .C1(A[20]), .C2(
        n72), .ZN(n41) );
  INV_X1 U29 ( .A(n40), .ZN(Y[21]) );
  AOI222_X1 U30 ( .A1(C[21]), .A2(n78), .B1(B[21]), .B2(n75), .C1(A[21]), .C2(
        n72), .ZN(n40) );
  INV_X1 U31 ( .A(n39), .ZN(Y[22]) );
  AOI222_X1 U32 ( .A1(C[22]), .A2(n79), .B1(B[22]), .B2(n75), .C1(A[22]), .C2(
        n72), .ZN(n39) );
  INV_X1 U33 ( .A(n49), .ZN(Y[12]) );
  AOI222_X1 U34 ( .A1(C[12]), .A2(n78), .B1(B[12]), .B2(n75), .C1(A[12]), .C2(
        n72), .ZN(n49) );
  INV_X1 U35 ( .A(n31), .ZN(Y[28]) );
  AOI222_X1 U36 ( .A1(n79), .A2(C[28]), .B1(B[28]), .B2(n76), .C1(A[28]), .C2(
        n73), .ZN(n31) );
  INV_X1 U37 ( .A(n34), .ZN(Y[27]) );
  AOI222_X1 U38 ( .A1(C[27]), .A2(n79), .B1(B[27]), .B2(n76), .C1(A[27]), .C2(
        n73), .ZN(n34) );
  INV_X1 U39 ( .A(n38), .ZN(Y[23]) );
  AOI222_X1 U40 ( .A1(C[23]), .A2(n79), .B1(B[23]), .B2(n75), .C1(A[23]), .C2(
        n72), .ZN(n38) );
  INV_X1 U41 ( .A(n37), .ZN(Y[24]) );
  AOI222_X1 U42 ( .A1(C[24]), .A2(n79), .B1(B[24]), .B2(n76), .C1(A[24]), .C2(
        n73), .ZN(n37) );
  INV_X1 U43 ( .A(n36), .ZN(Y[25]) );
  AOI222_X1 U44 ( .A1(C[25]), .A2(n79), .B1(B[25]), .B2(n76), .C1(A[25]), .C2(
        n73), .ZN(n36) );
  INV_X1 U45 ( .A(n35), .ZN(Y[26]) );
  AOI222_X1 U46 ( .A1(C[26]), .A2(n79), .B1(B[26]), .B2(n76), .C1(A[26]), .C2(
        n73), .ZN(n35) );
  INV_X1 U47 ( .A(n61), .ZN(Y[0]) );
  AOI222_X1 U48 ( .A1(C[0]), .A2(n77), .B1(B[0]), .B2(n74), .C1(A[0]), .C2(n71), .ZN(n61) );
  INV_X1 U49 ( .A(n60), .ZN(Y[1]) );
  AOI222_X1 U50 ( .A1(C[1]), .A2(n77), .B1(B[1]), .B2(n74), .C1(A[1]), .C2(n71), .ZN(n60) );
  INV_X1 U51 ( .A(n59), .ZN(Y[2]) );
  AOI222_X1 U52 ( .A1(C[2]), .A2(n77), .B1(B[2]), .B2(n74), .C1(A[2]), .C2(n71), .ZN(n59) );
  INV_X1 U53 ( .A(n58), .ZN(Y[3]) );
  AOI222_X1 U54 ( .A1(C[3]), .A2(n77), .B1(B[3]), .B2(n74), .C1(A[3]), .C2(n71), .ZN(n58) );
  INV_X1 U55 ( .A(n57), .ZN(Y[4]) );
  AOI222_X1 U56 ( .A1(C[4]), .A2(n77), .B1(B[4]), .B2(n74), .C1(A[4]), .C2(n71), .ZN(n57) );
  INV_X1 U57 ( .A(n56), .ZN(Y[5]) );
  AOI222_X1 U58 ( .A1(C[5]), .A2(n77), .B1(B[5]), .B2(n74), .C1(A[5]), .C2(n71), .ZN(n56) );
  INV_X1 U59 ( .A(n55), .ZN(Y[6]) );
  AOI222_X1 U60 ( .A1(C[6]), .A2(n77), .B1(B[6]), .B2(n74), .C1(A[6]), .C2(n71), .ZN(n55) );
  INV_X1 U61 ( .A(n54), .ZN(Y[7]) );
  AOI222_X1 U62 ( .A1(C[7]), .A2(n77), .B1(B[7]), .B2(n74), .C1(A[7]), .C2(n71), .ZN(n54) );
  INV_X1 U63 ( .A(n53), .ZN(Y[8]) );
  AOI222_X1 U64 ( .A1(C[8]), .A2(n77), .B1(B[8]), .B2(n74), .C1(A[8]), .C2(n71), .ZN(n53) );
  INV_X1 U65 ( .A(n52), .ZN(Y[9]) );
  AOI222_X1 U66 ( .A1(C[9]), .A2(n77), .B1(B[9]), .B2(n74), .C1(A[9]), .C2(n71), .ZN(n52) );
  INV_X1 U67 ( .A(n51), .ZN(Y[10]) );
  AOI222_X1 U68 ( .A1(C[10]), .A2(n78), .B1(B[10]), .B2(n74), .C1(A[10]), .C2(
        n71), .ZN(n51) );
  INV_X1 U69 ( .A(n50), .ZN(Y[11]) );
  AOI222_X1 U70 ( .A1(C[11]), .A2(n78), .B1(B[11]), .B2(n74), .C1(A[11]), .C2(
        n71), .ZN(n50) );
endmodule


module adder_NBIT29_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] DIFF;
  input CI;
  output CO;
  wire   \carry[29] , net7604, net7603, \carry[1] , \carry[9] , \carry[8] ,
         \carry[7] , \carry[6] , \carry[5] , \carry[4] , \carry[3] ,
         \carry[2] , \carry[28] , \carry[27] , \carry[26] , \carry[25] ,
         \carry[24] , \carry[23] , \carry[22] , \carry[21] , \carry[20] ,
         \carry[19] , \carry[18] , \carry[17] , \carry[16] , \carry[15] ,
         \carry[14] , \carry[13] , \carry[12] , \carry[11] , \carry[10] , n1,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33;

  FA_X1 U2_1 ( .A(A[1]), .B(n6), .CI(\carry[1] ), .CO(\carry[2] ), .S(DIFF[1])
         );
  FA_X1 U2_2 ( .A(A[2]), .B(n7), .CI(\carry[2] ), .CO(\carry[3] ), .S(DIFF[2])
         );
  FA_X1 U2_3 ( .A(A[3]), .B(n8), .CI(\carry[3] ), .CO(\carry[4] ), .S(DIFF[3])
         );
  FA_X1 U2_4 ( .A(A[4]), .B(n9), .CI(\carry[4] ), .CO(\carry[5] ), .S(DIFF[4])
         );
  FA_X1 U2_5 ( .A(A[5]), .B(n10), .CI(\carry[5] ), .CO(\carry[6] ), .S(DIFF[5]) );
  FA_X1 U2_6 ( .A(A[6]), .B(n11), .CI(\carry[6] ), .CO(\carry[7] ), .S(DIFF[6]) );
  FA_X1 U2_7 ( .A(A[7]), .B(n12), .CI(\carry[7] ), .CO(\carry[8] ), .S(DIFF[7]) );
  FA_X1 U2_8 ( .A(A[8]), .B(n13), .CI(\carry[8] ), .CO(\carry[9] ), .S(DIFF[8]) );
  FA_X1 U2_9 ( .A(A[9]), .B(n14), .CI(\carry[9] ), .CO(\carry[10] ), .S(
        DIFF[9]) );
  FA_X1 U2_10 ( .A(A[10]), .B(n15), .CI(\carry[10] ), .CO(\carry[11] ), .S(
        DIFF[10]) );
  FA_X1 U2_11 ( .A(A[11]), .B(n16), .CI(\carry[11] ), .CO(\carry[12] ), .S(
        DIFF[11]) );
  FA_X1 U2_12 ( .A(A[12]), .B(n17), .CI(\carry[12] ), .CO(\carry[13] ), .S(
        DIFF[12]) );
  FA_X1 U2_13 ( .A(A[13]), .B(n18), .CI(\carry[13] ), .CO(\carry[14] ), .S(
        DIFF[13]) );
  FA_X1 U2_14 ( .A(A[14]), .B(n19), .CI(\carry[14] ), .CO(\carry[15] ), .S(
        DIFF[14]) );
  FA_X1 U2_15 ( .A(A[15]), .B(n20), .CI(\carry[15] ), .CO(\carry[16] ), .S(
        DIFF[15]) );
  FA_X1 U2_16 ( .A(A[16]), .B(n21), .CI(\carry[16] ), .CO(\carry[17] ), .S(
        DIFF[16]) );
  FA_X1 U2_17 ( .A(A[17]), .B(n22), .CI(\carry[17] ), .CO(\carry[18] ), .S(
        DIFF[17]) );
  FA_X1 U2_18 ( .A(A[18]), .B(n23), .CI(\carry[18] ), .CO(\carry[19] ), .S(
        DIFF[18]) );
  FA_X1 U2_19 ( .A(A[19]), .B(n24), .CI(\carry[19] ), .CO(\carry[20] ), .S(
        DIFF[19]) );
  FA_X1 U2_20 ( .A(A[20]), .B(n25), .CI(\carry[20] ), .CO(\carry[21] ), .S(
        DIFF[20]) );
  FA_X1 U2_21 ( .A(A[21]), .B(n26), .CI(\carry[21] ), .CO(\carry[22] ), .S(
        DIFF[21]) );
  FA_X1 U2_22 ( .A(A[22]), .B(n27), .CI(\carry[22] ), .CO(\carry[23] ), .S(
        DIFF[22]) );
  FA_X1 U2_23 ( .A(n28), .B(\carry[23] ), .CI(A[23]), .CO(\carry[24] ), .S(
        DIFF[23]) );
  FA_X1 U2_24 ( .A(A[24]), .B(n29), .CI(\carry[24] ), .CO(\carry[25] ), .S(
        DIFF[24]) );
  FA_X1 U2_25 ( .A(A[25]), .B(n30), .CI(\carry[25] ), .CO(\carry[26] ), .S(
        DIFF[25]) );
  FA_X1 U2_26 ( .A(n31), .B(A[26]), .CI(\carry[26] ), .CO(\carry[27] ), .S(
        DIFF[26]) );
  FA_X1 U2_27 ( .A(n32), .B(A[27]), .CI(\carry[27] ), .CO(\carry[28] ), .S(
        DIFF[27]) );
  NAND3_X1 U19 ( .A1(net7603), .A2(net7604), .A3(n3), .ZN(\carry[29] ) );
  XNOR2_X1 U1 ( .A(\carry[29] ), .B(n1), .ZN(DIFF[29]) );
  XNOR2_X1 U2 ( .A(A[29]), .B(n33), .ZN(n1) );
  XNOR2_X1 U3 ( .A(\carry[28] ), .B(n1), .ZN(DIFF[28]) );
  NAND2_X1 U4 ( .A1(A[28]), .A2(n33), .ZN(n3) );
  NAND2_X1 U5 ( .A1(\carry[28] ), .A2(A[28]), .ZN(net7603) );
  NAND2_X1 U6 ( .A1(\carry[28] ), .A2(n33), .ZN(net7604) );
  INV_X1 U7 ( .A(B[27]), .ZN(n32) );
  INV_X1 U8 ( .A(B[26]), .ZN(n31) );
  INV_X1 U9 ( .A(B[24]), .ZN(n29) );
  INV_X1 U10 ( .A(B[22]), .ZN(n27) );
  INV_X1 U11 ( .A(B[21]), .ZN(n26) );
  INV_X1 U12 ( .A(B[20]), .ZN(n25) );
  INV_X1 U13 ( .A(B[19]), .ZN(n24) );
  INV_X1 U14 ( .A(B[18]), .ZN(n23) );
  INV_X1 U15 ( .A(B[17]), .ZN(n22) );
  INV_X1 U16 ( .A(B[16]), .ZN(n21) );
  INV_X1 U17 ( .A(B[15]), .ZN(n20) );
  INV_X1 U18 ( .A(B[14]), .ZN(n19) );
  INV_X1 U20 ( .A(B[23]), .ZN(n28) );
  INV_X1 U21 ( .A(B[13]), .ZN(n18) );
  INV_X1 U22 ( .A(B[25]), .ZN(n30) );
  INV_X1 U23 ( .A(B[12]), .ZN(n17) );
  INV_X1 U24 ( .A(B[7]), .ZN(n12) );
  INV_X1 U25 ( .A(B[8]), .ZN(n13) );
  INV_X1 U26 ( .A(B[9]), .ZN(n14) );
  INV_X1 U27 ( .A(B[10]), .ZN(n15) );
  INV_X1 U28 ( .A(B[11]), .ZN(n16) );
  INV_X1 U29 ( .A(B[2]), .ZN(n7) );
  INV_X1 U30 ( .A(B[3]), .ZN(n8) );
  INV_X1 U31 ( .A(B[4]), .ZN(n9) );
  INV_X1 U32 ( .A(B[5]), .ZN(n10) );
  INV_X1 U33 ( .A(B[6]), .ZN(n11) );
  INV_X1 U34 ( .A(B[1]), .ZN(n6) );
  NAND2_X1 U35 ( .A1(B[0]), .A2(n4), .ZN(\carry[1] ) );
  INV_X1 U36 ( .A(A[0]), .ZN(n4) );
  XNOR2_X1 U37 ( .A(n5), .B(A[0]), .ZN(DIFF[0]) );
  INV_X1 U38 ( .A(B[29]), .ZN(n33) );
  INV_X1 U39 ( .A(B[0]), .ZN(n5) );
endmodule


module adder_NBIT29_DW01_add_0 ( A, B, CI, SUM, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7;
  wire   [29:1] carry;

  FA_X1 U1_27 ( .A(B[27]), .B(A[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FA_X1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FA_X1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA_X1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA_X1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA_X1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA_X1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n7), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(n1), .B(n3), .Z(SUM[29]) );
  XOR2_X1 U3 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  XNOR2_X1 U2 ( .A(carry[28]), .B(n3), .ZN(SUM[28]) );
  XNOR2_X1 U4 ( .A(A[28]), .B(B[28]), .ZN(n3) );
  AND3_X1 U5 ( .A1(n4), .A2(n5), .A3(n6), .ZN(n1) );
  NAND2_X1 U6 ( .A1(A[28]), .A2(B[28]), .ZN(n6) );
  NAND2_X1 U7 ( .A1(carry[28]), .A2(A[28]), .ZN(n4) );
  NAND2_X1 U8 ( .A1(carry[28]), .A2(B[28]), .ZN(n5) );
  AND2_X1 U9 ( .A1(B[0]), .A2(A[0]), .ZN(n7) );
endmodule


module adder_NBIT29 ( A, B, SUB_SUMn, S );
  input [28:0] A;
  input [28:0] B;
  output [29:0] S;
  input SUB_SUMn;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59,
         N60, N61, N62, net6189, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n35, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77;
  assign net6189 = SUB_SUMn;

  adder_NBIT29_DW01_sub_0 sub_20 ( .A({A[28], A}), .B({B[28], B}), .CI(1'b0), 
        .DIFF({N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, 
        N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33}) );
  adder_NBIT29_DW01_add_0 add_20 ( .A({A[28], A}), .B({B[28], B}), .CI(1'b0), 
        .SUM({N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, 
        N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, 
        N3, N2}) );
  INV_X1 U1 ( .A(n36), .ZN(S[29]) );
  AOI22_X1 U2 ( .A1(N31), .A2(n69), .B1(n77), .B2(N62), .ZN(n36) );
  INV_X1 U5 ( .A(n61), .ZN(S[18]) );
  AOI22_X1 U6 ( .A1(N20), .A2(n69), .B1(N51), .B2(n76), .ZN(n61) );
  INV_X1 U7 ( .A(n53), .ZN(S[28]) );
  AOI22_X1 U8 ( .A1(N30), .A2(n68), .B1(N61), .B2(n74), .ZN(n53) );
  INV_X1 U9 ( .A(n38), .ZN(S[26]) );
  AOI22_X1 U10 ( .A1(N28), .A2(n68), .B1(N59), .B2(n71), .ZN(n38) );
  INV_X1 U11 ( .A(n55), .ZN(S[24]) );
  AOI22_X1 U12 ( .A1(N26), .A2(n69), .B1(N57), .B2(n74), .ZN(n55) );
  INV_X1 U13 ( .A(n37), .ZN(S[27]) );
  AOI22_X1 U14 ( .A1(N29), .A2(n68), .B1(N60), .B2(n72), .ZN(n37) );
  INV_X1 U15 ( .A(n65), .ZN(S[14]) );
  AOI22_X1 U16 ( .A1(N16), .A2(n68), .B1(N47), .B2(n77), .ZN(n65) );
  INV_X1 U17 ( .A(n57), .ZN(S[22]) );
  AOI22_X1 U18 ( .A1(N24), .A2(n69), .B1(N55), .B2(n75), .ZN(n57) );
  INV_X1 U19 ( .A(n58), .ZN(S[21]) );
  AOI22_X1 U20 ( .A1(N23), .A2(n69), .B1(N54), .B2(n75), .ZN(n58) );
  INV_X1 U21 ( .A(n59), .ZN(S[20]) );
  AOI22_X1 U22 ( .A1(N22), .A2(n69), .B1(N53), .B2(n75), .ZN(n59) );
  INV_X1 U23 ( .A(n60), .ZN(S[19]) );
  AOI22_X1 U24 ( .A1(N21), .A2(n69), .B1(N52), .B2(n75), .ZN(n60) );
  INV_X1 U25 ( .A(n62), .ZN(S[17]) );
  AOI22_X1 U26 ( .A1(N19), .A2(n69), .B1(N50), .B2(n76), .ZN(n62) );
  INV_X1 U27 ( .A(n64), .ZN(S[15]) );
  AOI22_X1 U28 ( .A1(N17), .A2(n69), .B1(N48), .B2(n76), .ZN(n64) );
  INV_X1 U29 ( .A(n63), .ZN(S[16]) );
  AOI22_X1 U30 ( .A1(N18), .A2(n69), .B1(N49), .B2(n76), .ZN(n63) );
  INV_X1 U31 ( .A(n44), .ZN(S[8]) );
  AOI22_X1 U32 ( .A1(N10), .A2(n68), .B1(N41), .B2(n73), .ZN(n44) );
  INV_X1 U33 ( .A(n43), .ZN(S[9]) );
  AOI22_X1 U34 ( .A1(N11), .A2(n68), .B1(N42), .B2(n72), .ZN(n43) );
  INV_X1 U35 ( .A(n42), .ZN(S[10]) );
  AOI22_X1 U36 ( .A1(N12), .A2(n68), .B1(N43), .B2(n72), .ZN(n42) );
  INV_X1 U37 ( .A(n41), .ZN(S[11]) );
  AOI22_X1 U38 ( .A1(N13), .A2(n68), .B1(N44), .B2(n72), .ZN(n41) );
  INV_X1 U39 ( .A(n40), .ZN(S[12]) );
  AOI22_X1 U40 ( .A1(N14), .A2(n68), .B1(N45), .B2(n71), .ZN(n40) );
  INV_X1 U41 ( .A(n39), .ZN(S[13]) );
  AOI22_X1 U42 ( .A1(N15), .A2(n68), .B1(N46), .B2(n73), .ZN(n39) );
  INV_X1 U43 ( .A(n45), .ZN(S[7]) );
  AOI22_X1 U44 ( .A1(N40), .A2(n70), .B1(N9), .B2(n69), .ZN(n45) );
  INV_X1 U45 ( .A(n77), .ZN(n68) );
  INV_X1 U46 ( .A(n77), .ZN(n69) );
  INV_X1 U47 ( .A(n51), .ZN(S[1]) );
  AOI22_X1 U48 ( .A1(N3), .A2(n68), .B1(N34), .B2(n73), .ZN(n51) );
  INV_X1 U49 ( .A(n50), .ZN(S[2]) );
  AOI22_X1 U50 ( .A1(N35), .A2(n70), .B1(N4), .B2(n69), .ZN(n50) );
  INV_X1 U51 ( .A(n49), .ZN(S[3]) );
  AOI22_X1 U52 ( .A1(N36), .A2(n71), .B1(N5), .B2(n69), .ZN(n49) );
  INV_X1 U53 ( .A(n48), .ZN(S[4]) );
  AOI22_X1 U54 ( .A1(N37), .A2(n70), .B1(N6), .B2(n69), .ZN(n48) );
  INV_X1 U55 ( .A(n47), .ZN(S[5]) );
  AOI22_X1 U56 ( .A1(N38), .A2(n71), .B1(N7), .B2(n69), .ZN(n47) );
  INV_X1 U57 ( .A(n46), .ZN(S[6]) );
  AOI22_X1 U58 ( .A1(N39), .A2(n70), .B1(N8), .B2(n69), .ZN(n46) );
  BUF_X1 U59 ( .A(n67), .Z(n77) );
  BUF_X1 U60 ( .A(n67), .Z(n76) );
  INV_X1 U61 ( .A(n52), .ZN(S[0]) );
  AOI22_X1 U62 ( .A1(N2), .A2(n68), .B1(N33), .B2(n73), .ZN(n52) );
  BUF_X1 U63 ( .A(n66), .Z(n75) );
  BUF_X1 U64 ( .A(n66), .Z(n74) );
  BUF_X1 U65 ( .A(n35), .Z(n70) );
  BUF_X1 U66 ( .A(n35), .Z(n71) );
  BUF_X1 U67 ( .A(n66), .Z(n73) );
  BUF_X1 U68 ( .A(n35), .Z(n72) );
  BUF_X1 U69 ( .A(net6189), .Z(n67) );
  BUF_X1 U70 ( .A(net6189), .Z(n66) );
  BUF_X1 U71 ( .A(net6189), .Z(n35) );
  INV_X1 U72 ( .A(n56), .ZN(S[23]) );
  AOI22_X1 U73 ( .A1(N25), .A2(n69), .B1(N56), .B2(n74), .ZN(n56) );
  AOI22_X1 U74 ( .A1(N27), .A2(n69), .B1(N58), .B2(n74), .ZN(n54) );
  INV_X1 U75 ( .A(n54), .ZN(S[25]) );
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
         n61, n62, n63, n64, n65, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n115;

  INV_X1 U1 ( .A(n36), .ZN(Y[29]) );
  BUF_X1 U2 ( .A(n34), .Z(n79) );
  BUF_X1 U3 ( .A(n34), .Z(n80) );
  BUF_X1 U4 ( .A(n34), .Z(n78) );
  BUF_X1 U5 ( .A(n35), .Z(n75) );
  BUF_X1 U6 ( .A(n35), .Z(n76) );
  BUF_X1 U7 ( .A(n35), .Z(n77) );
  BUF_X1 U8 ( .A(S[1]), .Z(n81) );
  BUF_X1 U9 ( .A(S[1]), .Z(n82) );
  NOR2_X1 U10 ( .A1(n115), .A2(n81), .ZN(n34) );
  INV_X1 U11 ( .A(S[0]), .ZN(n115) );
  BUF_X1 U12 ( .A(S[1]), .Z(n83) );
  NOR2_X1 U13 ( .A1(S[0]), .A2(n81), .ZN(n35) );
  INV_X1 U14 ( .A(n50), .ZN(Y[15]) );
  AOI222_X1 U15 ( .A1(C[15]), .A2(n82), .B1(B[15]), .B2(n79), .C1(A[15]), .C2(
        n76), .ZN(n50) );
  INV_X1 U16 ( .A(n49), .ZN(Y[16]) );
  AOI222_X1 U17 ( .A1(C[16]), .A2(n82), .B1(B[16]), .B2(n79), .C1(A[16]), .C2(
        n76), .ZN(n49) );
  INV_X1 U18 ( .A(n48), .ZN(Y[17]) );
  AOI222_X1 U19 ( .A1(C[17]), .A2(n82), .B1(B[17]), .B2(n79), .C1(A[17]), .C2(
        n76), .ZN(n48) );
  INV_X1 U20 ( .A(n47), .ZN(Y[18]) );
  AOI222_X1 U21 ( .A1(C[18]), .A2(n82), .B1(B[18]), .B2(n79), .C1(A[18]), .C2(
        n76), .ZN(n47) );
  INV_X1 U22 ( .A(n46), .ZN(Y[19]) );
  AOI222_X1 U23 ( .A1(C[19]), .A2(n82), .B1(B[19]), .B2(n79), .C1(A[19]), .C2(
        n76), .ZN(n46) );
  INV_X1 U24 ( .A(n51), .ZN(Y[14]) );
  AOI222_X1 U25 ( .A1(C[14]), .A2(n82), .B1(B[14]), .B2(n79), .C1(A[14]), .C2(
        n76), .ZN(n51) );
  INV_X1 U26 ( .A(n38), .ZN(Y[27]) );
  AOI222_X1 U27 ( .A1(C[27]), .A2(n83), .B1(B[27]), .B2(n80), .C1(A[27]), .C2(
        n77), .ZN(n38) );
  INV_X1 U28 ( .A(n41), .ZN(Y[24]) );
  AOI222_X1 U29 ( .A1(C[24]), .A2(n83), .B1(B[24]), .B2(n80), .C1(A[24]), .C2(
        n77), .ZN(n41) );
  INV_X1 U30 ( .A(n39), .ZN(Y[26]) );
  AOI222_X1 U31 ( .A1(C[26]), .A2(n83), .B1(B[26]), .B2(n80), .C1(A[26]), .C2(
        n77), .ZN(n39) );
  INV_X1 U32 ( .A(n40), .ZN(Y[25]) );
  AOI222_X1 U33 ( .A1(C[25]), .A2(n83), .B1(B[25]), .B2(n80), .C1(A[25]), .C2(
        n77), .ZN(n40) );
  INV_X1 U34 ( .A(n45), .ZN(Y[20]) );
  AOI222_X1 U35 ( .A1(C[20]), .A2(n82), .B1(B[20]), .B2(n79), .C1(A[20]), .C2(
        n76), .ZN(n45) );
  INV_X1 U36 ( .A(n44), .ZN(Y[21]) );
  AOI222_X1 U37 ( .A1(C[21]), .A2(n82), .B1(B[21]), .B2(n79), .C1(A[21]), .C2(
        n76), .ZN(n44) );
  INV_X1 U38 ( .A(n43), .ZN(Y[22]) );
  AOI222_X1 U39 ( .A1(C[22]), .A2(n83), .B1(B[22]), .B2(n79), .C1(A[22]), .C2(
        n76), .ZN(n43) );
  INV_X1 U40 ( .A(n42), .ZN(Y[23]) );
  AOI222_X1 U41 ( .A1(C[23]), .A2(n83), .B1(B[23]), .B2(n79), .C1(A[23]), .C2(
        n76), .ZN(n42) );
  INV_X1 U42 ( .A(n33), .ZN(Y[30]) );
  AOI222_X1 U43 ( .A1(n83), .A2(C[30]), .B1(B[30]), .B2(n80), .C1(A[30]), .C2(
        n77), .ZN(n33) );
  AOI222_X1 U44 ( .A1(C[29]), .A2(n83), .B1(B[29]), .B2(n80), .C1(A[29]), .C2(
        n77), .ZN(n36) );
  INV_X1 U45 ( .A(n37), .ZN(Y[28]) );
  AOI222_X1 U46 ( .A1(C[28]), .A2(n83), .B1(B[28]), .B2(n80), .C1(A[28]), .C2(
        n77), .ZN(n37) );
  INV_X1 U47 ( .A(n65), .ZN(Y[0]) );
  AOI222_X1 U48 ( .A1(C[0]), .A2(n81), .B1(B[0]), .B2(n78), .C1(A[0]), .C2(n75), .ZN(n65) );
  INV_X1 U49 ( .A(n64), .ZN(Y[1]) );
  AOI222_X1 U50 ( .A1(C[1]), .A2(n81), .B1(B[1]), .B2(n78), .C1(A[1]), .C2(n75), .ZN(n64) );
  INV_X1 U51 ( .A(n63), .ZN(Y[2]) );
  AOI222_X1 U52 ( .A1(C[2]), .A2(n81), .B1(B[2]), .B2(n78), .C1(A[2]), .C2(n75), .ZN(n63) );
  INV_X1 U53 ( .A(n62), .ZN(Y[3]) );
  AOI222_X1 U54 ( .A1(C[3]), .A2(n81), .B1(B[3]), .B2(n78), .C1(A[3]), .C2(n75), .ZN(n62) );
  INV_X1 U55 ( .A(n61), .ZN(Y[4]) );
  AOI222_X1 U56 ( .A1(C[4]), .A2(n81), .B1(B[4]), .B2(n78), .C1(A[4]), .C2(n75), .ZN(n61) );
  INV_X1 U57 ( .A(n60), .ZN(Y[5]) );
  AOI222_X1 U58 ( .A1(C[5]), .A2(n81), .B1(B[5]), .B2(n78), .C1(A[5]), .C2(n75), .ZN(n60) );
  INV_X1 U59 ( .A(n59), .ZN(Y[6]) );
  AOI222_X1 U60 ( .A1(C[6]), .A2(n81), .B1(B[6]), .B2(n78), .C1(A[6]), .C2(n75), .ZN(n59) );
  INV_X1 U61 ( .A(n58), .ZN(Y[7]) );
  AOI222_X1 U62 ( .A1(C[7]), .A2(n81), .B1(B[7]), .B2(n78), .C1(A[7]), .C2(n75), .ZN(n58) );
  INV_X1 U63 ( .A(n57), .ZN(Y[8]) );
  AOI222_X1 U64 ( .A1(C[8]), .A2(n81), .B1(B[8]), .B2(n78), .C1(A[8]), .C2(n75), .ZN(n57) );
  INV_X1 U65 ( .A(n56), .ZN(Y[9]) );
  AOI222_X1 U66 ( .A1(C[9]), .A2(n81), .B1(B[9]), .B2(n78), .C1(A[9]), .C2(n75), .ZN(n56) );
  INV_X1 U67 ( .A(n55), .ZN(Y[10]) );
  AOI222_X1 U68 ( .A1(C[10]), .A2(n82), .B1(B[10]), .B2(n78), .C1(A[10]), .C2(
        n75), .ZN(n55) );
  INV_X1 U69 ( .A(n54), .ZN(Y[11]) );
  AOI222_X1 U70 ( .A1(C[11]), .A2(n82), .B1(B[11]), .B2(n78), .C1(A[11]), .C2(
        n75), .ZN(n54) );
  INV_X1 U71 ( .A(n53), .ZN(Y[12]) );
  AOI222_X1 U72 ( .A1(C[12]), .A2(n82), .B1(B[12]), .B2(n79), .C1(A[12]), .C2(
        n76), .ZN(n53) );
  INV_X1 U73 ( .A(n52), .ZN(Y[13]) );
  AOI222_X1 U74 ( .A1(C[13]), .A2(n82), .B1(B[13]), .B2(n79), .C1(A[13]), .C2(
        n76), .ZN(n52) );
endmodule


module adder_NBIT31_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   net7712, n2, n3, n4, n8, n9, n10, n14, n15, n16, n19, n20, n21, n24,
         n25, n26, n27, n28, n29, n30, n31, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98;
  wire   [32:0] carry;

  FA_X1 U2_27 ( .A(A[27]), .B(n95), .CI(carry[27]), .CO(net7712), .S(DIFF[27])
         );
  FA_X1 U2_25 ( .A(A[25]), .B(n93), .CI(carry[25]), .CO(carry[26]), .S(
        DIFF[25]) );
  FA_X1 U2_24 ( .A(carry[24]), .B(n92), .CI(A[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  FA_X1 U2_23 ( .A(A[23]), .B(n91), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  FA_X1 U2_22 ( .A(A[22]), .B(n90), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FA_X1 U2_21 ( .A(A[21]), .B(n89), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FA_X1 U2_20 ( .A(A[20]), .B(n88), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FA_X1 U2_19 ( .A(A[19]), .B(n87), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FA_X1 U2_18 ( .A(A[18]), .B(n86), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FA_X1 U2_17 ( .A(A[17]), .B(n85), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FA_X1 U2_16 ( .A(A[16]), .B(n84), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FA_X1 U2_15 ( .A(A[15]), .B(n83), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FA_X1 U2_14 ( .A(A[14]), .B(n82), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FA_X1 U2_13 ( .A(A[13]), .B(n81), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FA_X1 U2_12 ( .A(A[12]), .B(n80), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FA_X1 U2_11 ( .A(A[11]), .B(n79), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FA_X1 U2_10 ( .A(A[10]), .B(n78), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FA_X1 U2_9 ( .A(A[9]), .B(n77), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FA_X1 U2_8 ( .A(A[8]), .B(n76), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA_X1 U2_7 ( .A(A[7]), .B(n75), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA_X1 U2_6 ( .A(A[6]), .B(n74), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA_X1 U2_5 ( .A(A[5]), .B(n73), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA_X1 U2_4 ( .A(A[4]), .B(n72), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA_X1 U2_3 ( .A(A[3]), .B(n71), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA_X1 U2_2 ( .A(A[2]), .B(n70), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n69), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR2_X1 U11 ( .A(B[29]), .B(A[29]), .Z(n3) );
  XOR2_X1 U13 ( .A(A[28]), .B(B[28]), .Z(n4) );
  XOR2_X1 U33 ( .A(A[26]), .B(n94), .Z(n28) );
  XOR2_X1 U34 ( .A(carry[26]), .B(n28), .Z(DIFF[26]) );
  NAND3_X1 U38 ( .A1(n29), .A2(n30), .A3(n31), .ZN(carry[27]) );
  NOR2_X1 U1 ( .A1(n61), .A2(n62), .ZN(n21) );
  AND2_X1 U2 ( .A1(net7712), .A2(A[28]), .ZN(n61) );
  NOR2_X1 U3 ( .A1(n63), .A2(B[28]), .ZN(n62) );
  INV_X1 U4 ( .A(A[29]), .ZN(n64) );
  OAI21_X1 U5 ( .B1(n14), .B2(n19), .A(n25), .ZN(n20) );
  NAND2_X1 U6 ( .A1(A[30]), .A2(n98), .ZN(n25) );
  NOR2_X1 U7 ( .A1(A[30]), .A2(n98), .ZN(n19) );
  AOI21_X1 U8 ( .B1(n2), .B2(n15), .A(n65), .ZN(n14) );
  NAND2_X1 U9 ( .A1(n24), .A2(n21), .ZN(n2) );
  INV_X1 U10 ( .A(n27), .ZN(n66) );
  NAND2_X1 U12 ( .A1(A[26]), .A2(carry[26]), .ZN(n29) );
  INV_X1 U14 ( .A(n10), .ZN(n65) );
  NAND2_X1 U15 ( .A1(A[26]), .A2(n94), .ZN(n31) );
  XNOR2_X1 U16 ( .A(n20), .B(n66), .ZN(DIFF[31]) );
  XNOR2_X1 U17 ( .A(n8), .B(n27), .ZN(DIFF[30]) );
  XNOR2_X1 U18 ( .A(n4), .B(net7712), .ZN(DIFF[28]) );
  INV_X1 U19 ( .A(B[27]), .ZN(n95) );
  NAND2_X1 U20 ( .A1(carry[26]), .A2(n94), .ZN(n30) );
  XNOR2_X1 U21 ( .A(A[30]), .B(B[31]), .ZN(n27) );
  INV_X1 U22 ( .A(B[25]), .ZN(n93) );
  INV_X1 U23 ( .A(B[23]), .ZN(n91) );
  NAND2_X1 U24 ( .A1(A[29]), .A2(n97), .ZN(n10) );
  INV_X1 U25 ( .A(B[29]), .ZN(n97) );
  NAND2_X1 U26 ( .A1(net7712), .A2(n96), .ZN(n24) );
  INV_X1 U27 ( .A(B[28]), .ZN(n96) );
  INV_X1 U28 ( .A(B[24]), .ZN(n92) );
  INV_X1 U29 ( .A(B[22]), .ZN(n90) );
  INV_X1 U30 ( .A(B[21]), .ZN(n89) );
  INV_X1 U31 ( .A(B[20]), .ZN(n88) );
  INV_X1 U32 ( .A(B[18]), .ZN(n86) );
  INV_X1 U35 ( .A(B[19]), .ZN(n87) );
  INV_X1 U36 ( .A(B[17]), .ZN(n85) );
  INV_X1 U37 ( .A(B[15]), .ZN(n83) );
  INV_X1 U39 ( .A(B[16]), .ZN(n84) );
  INV_X1 U40 ( .A(B[14]), .ZN(n82) );
  INV_X1 U41 ( .A(A[28]), .ZN(n63) );
  NAND2_X1 U42 ( .A1(n64), .A2(B[29]), .ZN(n15) );
  AND2_X1 U43 ( .A1(n9), .A2(n10), .ZN(n8) );
  NAND2_X1 U44 ( .A1(n16), .A2(n26), .ZN(n9) );
  NAND2_X1 U45 ( .A1(n21), .A2(n24), .ZN(n16) );
  NAND2_X1 U46 ( .A1(B[29]), .A2(n64), .ZN(n26) );
  XNOR2_X1 U47 ( .A(n2), .B(n3), .ZN(DIFF[29]) );
  INV_X1 U48 ( .A(B[7]), .ZN(n75) );
  INV_X1 U49 ( .A(B[8]), .ZN(n76) );
  INV_X1 U50 ( .A(B[9]), .ZN(n77) );
  INV_X1 U51 ( .A(B[10]), .ZN(n78) );
  INV_X1 U52 ( .A(B[11]), .ZN(n79) );
  INV_X1 U53 ( .A(B[12]), .ZN(n80) );
  INV_X1 U54 ( .A(B[13]), .ZN(n81) );
  INV_X1 U55 ( .A(B[2]), .ZN(n70) );
  INV_X1 U56 ( .A(B[3]), .ZN(n71) );
  INV_X1 U57 ( .A(B[4]), .ZN(n72) );
  INV_X1 U58 ( .A(B[5]), .ZN(n73) );
  INV_X1 U59 ( .A(B[6]), .ZN(n74) );
  INV_X1 U60 ( .A(B[1]), .ZN(n69) );
  NAND2_X1 U61 ( .A1(B[0]), .A2(n67), .ZN(carry[1]) );
  INV_X1 U62 ( .A(A[0]), .ZN(n67) );
  XNOR2_X1 U63 ( .A(n68), .B(A[0]), .ZN(DIFF[0]) );
  INV_X1 U64 ( .A(B[26]), .ZN(n94) );
  INV_X1 U65 ( .A(B[31]), .ZN(n98) );
  INV_X1 U66 ( .A(B[0]), .ZN(n68) );
endmodule


module adder_NBIT31_DW01_add_0 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   \carry[30] , \carry[29] , n23, n30, n31, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n24, n25, n26, n27, n28, n29,
         n32, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61;
  wire   [31:1] carry;

  FA_X1 U1_23 ( .A(B[23]), .B(A[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA_X1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA_X1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n23), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U22 ( .A(A[30]), .B(B[30]), .Z(n34) );
  XOR2_X1 U23 ( .A(n58), .B(n35), .Z(SUM[28]) );
  XOR2_X1 U24 ( .A(B[28]), .B(A[28]), .Z(n35) );
  XOR2_X1 U25 ( .A(n59), .B(n37), .Z(SUM[27]) );
  XOR2_X1 U26 ( .A(B[27]), .B(A[27]), .Z(n37) );
  XOR2_X1 U27 ( .A(n50), .B(n40), .Z(SUM[26]) );
  XOR2_X1 U28 ( .A(B[26]), .B(A[26]), .Z(n40) );
  XOR2_X1 U29 ( .A(n32), .B(n44), .Z(SUM[25]) );
  XOR2_X1 U30 ( .A(B[25]), .B(n47), .Z(n44) );
  XOR2_X1 U31 ( .A(A[24]), .B(n46), .Z(SUM[24]) );
  XOR2_X1 U32 ( .A(n26), .B(B[24]), .Z(n46) );
  XOR2_X1 U33 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  CLKBUF_X1 U1 ( .A(\carry[29] ), .Z(n24) );
  INV_X1 U2 ( .A(n61), .ZN(n27) );
  CLKBUF_X1 U3 ( .A(n53), .Z(n25) );
  CLKBUF_X1 U4 ( .A(carry[24]), .Z(n26) );
  NAND2_X1 U5 ( .A1(A[24]), .A2(n27), .ZN(n28) );
  NAND2_X1 U6 ( .A1(n45), .A2(n28), .ZN(n42) );
  XNOR2_X1 U7 ( .A(n29), .B(n34), .ZN(SUM[30]) );
  AND3_X1 U8 ( .A1(n25), .A2(n52), .A3(n54), .ZN(n29) );
  CLKBUF_X1 U9 ( .A(n42), .Z(n32) );
  CLKBUF_X1 U10 ( .A(A[25]), .Z(n47) );
  INV_X1 U11 ( .A(n49), .ZN(n48) );
  INV_X1 U12 ( .A(n38), .ZN(n49) );
  CLKBUF_X1 U13 ( .A(n60), .Z(n50) );
  XOR2_X1 U14 ( .A(A[29]), .B(B[29]), .Z(n51) );
  XOR2_X1 U15 ( .A(n24), .B(n51), .Z(SUM[29]) );
  NAND2_X1 U16 ( .A1(\carry[29] ), .A2(A[29]), .ZN(n52) );
  NAND2_X1 U17 ( .A1(\carry[29] ), .A2(B[29]), .ZN(n53) );
  NAND2_X1 U18 ( .A1(A[29]), .A2(B[29]), .ZN(n54) );
  NAND3_X1 U19 ( .A1(n52), .A2(n53), .A3(n54), .ZN(\carry[30] ) );
  XNOR2_X1 U20 ( .A(n33), .B(n55), .ZN(SUM[31]) );
  XOR2_X1 U21 ( .A(B[31]), .B(A[31]), .Z(n55) );
  INV_X1 U34 ( .A(n58), .ZN(n56) );
  INV_X1 U35 ( .A(B[24]), .ZN(n61) );
  OAI21_X1 U36 ( .B1(A[24]), .B2(B[24]), .A(carry[24]), .ZN(n45) );
  INV_X1 U37 ( .A(A[28]), .ZN(n57) );
  AND2_X1 U38 ( .A1(A[0]), .A2(B[0]), .ZN(n23) );
  AOI22_X1 U39 ( .A1(\carry[30] ), .A2(n34), .B1(A[30]), .B2(B[30]), .ZN(n33)
         );
  OR2_X1 U40 ( .A1(n49), .A2(A[27]), .ZN(n36) );
  AOI22_X1 U41 ( .A1(n59), .A2(A[27]), .B1(n36), .B2(B[27]), .ZN(n30) );
  INV_X1 U42 ( .A(n48), .ZN(n59) );
  OR2_X1 U43 ( .A1(A[25]), .A2(n42), .ZN(n43) );
  AOI22_X1 U44 ( .A1(n32), .A2(n47), .B1(n43), .B2(B[25]), .ZN(n41) );
  OAI21_X1 U45 ( .B1(n58), .B2(A[28]), .A(B[28]), .ZN(n31) );
  AOI22_X1 U46 ( .A1(n50), .A2(A[26]), .B1(n39), .B2(B[26]), .ZN(n38) );
  OR2_X1 U47 ( .A1(n60), .A2(A[26]), .ZN(n39) );
  OAI21_X1 U48 ( .B1(n56), .B2(n57), .A(n31), .ZN(\carry[29] ) );
  INV_X1 U49 ( .A(n30), .ZN(n58) );
  INV_X1 U50 ( .A(n41), .ZN(n60) );
endmodule


module adder_NBIT31 ( A, B, SUB_SUMn, S );
  input [30:0] A;
  input [30:0] B;
  output [31:0] S;
  input SUB_SUMn;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59,
         N60, N61, N62, N63, N64, N65, N66, net6161, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86;
  assign net6161 = SUB_SUMn;

  adder_NBIT31_DW01_sub_0 sub_20 ( .A({A[30], A[30:26], n70, n72, n71, A[22:0]}), .B({B[30], B}), .CI(1'b0), .DIFF({N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, 
        N44, N43, N42, N41, N40, N39, N38, N37, N36, N35}) );
  adder_NBIT31_DW01_add_0 add_20 ( .A({A[30], A}), .B({B[30], B}), .CI(1'b0), 
        .SUM({N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, 
        N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, 
        N5, N4, N3, N2}) );
  CLKBUF_X1 U1 ( .A(A[25]), .Z(n70) );
  CLKBUF_X1 U2 ( .A(A[23]), .Z(n71) );
  CLKBUF_X1 U5 ( .A(A[24]), .Z(n72) );
  INV_X1 U6 ( .A(n43), .ZN(S[26]) );
  AOI22_X1 U7 ( .A1(N28), .A2(n76), .B1(N61), .B2(n79), .ZN(n43) );
  INV_X1 U8 ( .A(n39), .ZN(S[30]) );
  AOI22_X1 U9 ( .A1(N32), .A2(n76), .B1(N65), .B2(n80), .ZN(n39) );
  INV_X1 U10 ( .A(n41), .ZN(S[28]) );
  AOI22_X1 U11 ( .A1(N30), .A2(n76), .B1(N63), .B2(n80), .ZN(n41) );
  INV_X1 U12 ( .A(n53), .ZN(S[16]) );
  AOI22_X1 U13 ( .A1(N18), .A2(n77), .B1(N51), .B2(n83), .ZN(n53) );
  INV_X1 U14 ( .A(n52), .ZN(S[17]) );
  AOI22_X1 U15 ( .A1(N19), .A2(n77), .B1(N52), .B2(n82), .ZN(n52) );
  INV_X1 U16 ( .A(n51), .ZN(S[18]) );
  AOI22_X1 U17 ( .A1(N20), .A2(n77), .B1(N53), .B2(n82), .ZN(n51) );
  INV_X1 U18 ( .A(n50), .ZN(S[19]) );
  AOI22_X1 U19 ( .A1(N21), .A2(n77), .B1(N54), .B2(n82), .ZN(n50) );
  INV_X1 U20 ( .A(n49), .ZN(S[20]) );
  AOI22_X1 U21 ( .A1(N22), .A2(n76), .B1(N55), .B2(n81), .ZN(n49) );
  INV_X1 U22 ( .A(n48), .ZN(S[21]) );
  AOI22_X1 U23 ( .A1(N23), .A2(n76), .B1(N56), .B2(n81), .ZN(n48) );
  INV_X1 U24 ( .A(n47), .ZN(S[22]) );
  AOI22_X1 U25 ( .A1(N24), .A2(n76), .B1(N57), .B2(n81), .ZN(n47) );
  INV_X1 U26 ( .A(n46), .ZN(S[23]) );
  AOI22_X1 U27 ( .A1(N25), .A2(n76), .B1(N58), .B2(n82), .ZN(n46) );
  INV_X1 U28 ( .A(n61), .ZN(S[8]) );
  AOI22_X1 U29 ( .A1(N10), .A2(n76), .B1(N43), .B2(n85), .ZN(n61) );
  INV_X1 U30 ( .A(n62), .ZN(S[7]) );
  AOI22_X1 U31 ( .A1(N42), .A2(n78), .B1(N9), .B2(n76), .ZN(n62) );
  INV_X1 U32 ( .A(n60), .ZN(S[9]) );
  AOI22_X1 U33 ( .A1(N11), .A2(n77), .B1(N44), .B2(n84), .ZN(n60) );
  INV_X1 U34 ( .A(n59), .ZN(S[10]) );
  AOI22_X1 U35 ( .A1(N12), .A2(n77), .B1(N45), .B2(n84), .ZN(n59) );
  INV_X1 U36 ( .A(n58), .ZN(S[11]) );
  AOI22_X1 U37 ( .A1(N13), .A2(n77), .B1(N46), .B2(n84), .ZN(n58) );
  INV_X1 U38 ( .A(n57), .ZN(S[12]) );
  AOI22_X1 U39 ( .A1(N14), .A2(n77), .B1(N47), .B2(n84), .ZN(n57) );
  INV_X1 U40 ( .A(n56), .ZN(S[13]) );
  AOI22_X1 U41 ( .A1(N15), .A2(n77), .B1(N48), .B2(n83), .ZN(n56) );
  INV_X1 U42 ( .A(n55), .ZN(S[14]) );
  AOI22_X1 U43 ( .A1(N16), .A2(n77), .B1(N49), .B2(n83), .ZN(n55) );
  INV_X1 U44 ( .A(n54), .ZN(S[15]) );
  AOI22_X1 U45 ( .A1(N17), .A2(n77), .B1(N50), .B2(n83), .ZN(n54) );
  INV_X1 U46 ( .A(n68), .ZN(S[1]) );
  AOI22_X1 U47 ( .A1(N3), .A2(n77), .B1(N36), .B2(n85), .ZN(n68) );
  INV_X1 U48 ( .A(n67), .ZN(S[2]) );
  AOI22_X1 U49 ( .A1(N37), .A2(n78), .B1(N4), .B2(n77), .ZN(n67) );
  INV_X1 U50 ( .A(n66), .ZN(S[3]) );
  AOI22_X1 U51 ( .A1(N38), .A2(n78), .B1(N5), .B2(n76), .ZN(n66) );
  INV_X1 U52 ( .A(n65), .ZN(S[4]) );
  AOI22_X1 U53 ( .A1(N39), .A2(n79), .B1(N6), .B2(n77), .ZN(n65) );
  INV_X1 U54 ( .A(n64), .ZN(S[5]) );
  AOI22_X1 U55 ( .A1(N40), .A2(n79), .B1(N7), .B2(n76), .ZN(n64) );
  INV_X1 U56 ( .A(n63), .ZN(S[6]) );
  AOI22_X1 U57 ( .A1(N41), .A2(n78), .B1(N8), .B2(n77), .ZN(n63) );
  INV_X1 U58 ( .A(n86), .ZN(n76) );
  INV_X1 U59 ( .A(n86), .ZN(n77) );
  INV_X1 U60 ( .A(n40), .ZN(S[29]) );
  AOI22_X1 U61 ( .A1(N31), .A2(n76), .B1(N64), .B2(n79), .ZN(n40) );
  INV_X1 U62 ( .A(n45), .ZN(S[24]) );
  AOI22_X1 U63 ( .A1(N26), .A2(n76), .B1(N59), .B2(n81), .ZN(n45) );
  INV_X1 U64 ( .A(n42), .ZN(S[27]) );
  AOI22_X1 U65 ( .A1(N29), .A2(n76), .B1(N62), .B2(n80), .ZN(n42) );
  INV_X1 U66 ( .A(n44), .ZN(S[25]) );
  AOI22_X1 U67 ( .A1(N27), .A2(n76), .B1(N60), .B2(n80), .ZN(n44) );
  INV_X1 U68 ( .A(n69), .ZN(S[0]) );
  AOI22_X1 U69 ( .A1(N2), .A2(n76), .B1(N35), .B2(n85), .ZN(n69) );
  BUF_X1 U70 ( .A(n73), .Z(n78) );
  BUF_X1 U71 ( .A(n73), .Z(n79) );
  BUF_X1 U72 ( .A(n75), .Z(n84) );
  BUF_X1 U73 ( .A(n74), .Z(n83) );
  BUF_X1 U74 ( .A(n74), .Z(n82) );
  BUF_X1 U75 ( .A(n74), .Z(n81) );
  BUF_X1 U76 ( .A(n73), .Z(n80) );
  BUF_X1 U77 ( .A(n75), .Z(n86) );
  BUF_X1 U78 ( .A(n75), .Z(n85) );
  BUF_X1 U79 ( .A(net6161), .Z(n75) );
  BUF_X1 U80 ( .A(net6161), .Z(n74) );
  BUF_X1 U81 ( .A(net6161), .Z(n73) );
  INV_X1 U82 ( .A(n38), .ZN(S[31]) );
  AOI22_X1 U83 ( .A1(N33), .A2(n77), .B1(n85), .B2(N66), .ZN(n38) );
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
         n1, n2, n3, n4, n5, n6;
  wire   [0:7] sum_subn;

  encoder_0 ENCi_0 ( .b({B[1:0], 1'b0}), .vp({sum_subn[0], \sel[0][1] , 
        \sel[0][0] }) );
  mux_NBIT17 MUXi_0 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n6, n6, A[14:0]}), .C({n5, A[14:0], 1'b0}), .S({\sel[0][1] , \sel[0][0] }), .Y({
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
  encoder_7 ENCi_1 ( .b(B[3:1]), .vp({sum_subn[1], \sel[1][1] , \sel[1][0] })
         );
  mux_NBIT19 MUXi_1 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n6, 
        n6, A[14:0], 1'b0, 1'b0}), .C({n5, A[14:0], 1'b0, 1'b0, 1'b0}), .S({
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
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n5, n5, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0}), .C({n5, A[14:0], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .S({\sel[2][1] , \sel[2][0] }), .Y({
        \mux_out[2][20] , \mux_out[2][19] , \mux_out[2][18] , \mux_out[2][17] , 
        \mux_out[2][16] , \mux_out[2][15] , \mux_out[2][14] , \mux_out[2][13] , 
        \mux_out[2][12] , \mux_out[2][11] , \mux_out[2][10] , \mux_out[2][9] , 
        \mux_out[2][8] , \mux_out[2][7] , \mux_out[2][6] , \mux_out[2][5] , 
        \mux_out[2][4] , \mux_out[2][3] , \mux_out[2][2] , \mux_out[2][1] , 
        \mux_out[2][0] }) );
  adder_NBIT21 ADDERi_2 ( .A({n4, \sum[2][19] , \sum[2][18] , \sum[2][17] , 
        \sum[2][16] , \sum[2][15] , \sum[2][14] , \sum[2][13] , \sum[2][12] , 
        \sum[2][11] , \sum[2][10] , \sum[2][9] , \sum[2][8] , \sum[2][7] , 
        \sum[2][6] , \sum[2][5] , \sum[2][4] , \sum[2][3] , \sum[2][2] , 
        \sum[2][1] , \sum[2][0] }), .B({\mux_out[2][20] , \mux_out[2][19] , 
        \mux_out[2][18] , \mux_out[2][17] , \mux_out[2][16] , \mux_out[2][15] , 
        \mux_out[2][14] , \mux_out[2][13] , \mux_out[2][12] , \mux_out[2][11] , 
        \mux_out[2][10] , \mux_out[2][9] , \mux_out[2][8] , \mux_out[2][7] , 
        \mux_out[2][6] , \mux_out[2][5] , \mux_out[2][4] , \mux_out[2][3] , 
        \mux_out[2][2] , \mux_out[2][1] , \mux_out[2][0] }), .SUB_SUMn(
        sum_subn[2]), .S({\sum[3][21] , \sum[3][20] , \sum[3][19] , 
        \sum[3][18] , \sum[3][17] , \sum[3][16] , \sum[3][15] , \sum[3][14] , 
        \sum[3][13] , \sum[3][12] , \sum[3][11] , \sum[3][10] , \sum[3][9] , 
        \sum[3][8] , \sum[3][7] , \sum[3][6] , \sum[3][5] , \sum[3][4] , 
        \sum[3][3] , \sum[3][2] , \sum[3][1] , \sum[3][0] }) );
  encoder_5 ENCi_3 ( .b(B[7:5]), .vp({sum_subn[3], \sel[3][1] , \sel[3][0] })
         );
  mux_NBIT23 MUXi_3 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .B({n5, n5, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .C({n5, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .S({\sel[3][1] , 
        \sel[3][0] }), .Y({\mux_out[3][22] , \mux_out[3][21] , 
        \mux_out[3][20] , \mux_out[3][19] , \mux_out[3][18] , \mux_out[3][17] , 
        \mux_out[3][16] , \mux_out[3][15] , \mux_out[3][14] , \mux_out[3][13] , 
        \mux_out[3][12] , \mux_out[3][11] , \mux_out[3][10] , \mux_out[3][9] , 
        \mux_out[3][8] , \mux_out[3][7] , \mux_out[3][6] , \mux_out[3][5] , 
        \mux_out[3][4] , \mux_out[3][3] , \mux_out[3][2] , \mux_out[3][1] , 
        \mux_out[3][0] }) );
  adder_NBIT23 ADDERi_3 ( .A({n1, \sum[3][21] , \sum[3][20] , \sum[3][19] , 
        \sum[3][18] , \sum[3][17] , \sum[3][16] , \sum[3][15] , \sum[3][14] , 
        \sum[3][13] , \sum[3][12] , \sum[3][11] , \sum[3][10] , \sum[3][9] , 
        \sum[3][8] , \sum[3][7] , \sum[3][6] , \sum[3][5] , \sum[3][4] , 
        \sum[3][3] , \sum[3][2] , \sum[3][1] , \sum[3][0] }), .B({
        \mux_out[3][22] , \mux_out[3][21] , \mux_out[3][20] , \mux_out[3][19] , 
        \mux_out[3][18] , \mux_out[3][17] , \mux_out[3][16] , \mux_out[3][15] , 
        \mux_out[3][14] , \mux_out[3][13] , \mux_out[3][12] , \mux_out[3][11] , 
        \mux_out[3][10] , \mux_out[3][9] , \mux_out[3][8] , \mux_out[3][7] , 
        \mux_out[3][6] , \mux_out[3][5] , \mux_out[3][4] , \mux_out[3][3] , 
        \mux_out[3][2] , \mux_out[3][1] , \mux_out[3][0] }), .SUB_SUMn(
        sum_subn[3]), .S({\sum[4][23] , \sum[4][22] , \sum[4][21] , 
        \sum[4][20] , \sum[4][19] , \sum[4][18] , \sum[4][17] , \sum[4][16] , 
        \sum[4][15] , \sum[4][14] , \sum[4][13] , \sum[4][12] , \sum[4][11] , 
        \sum[4][10] , \sum[4][9] , \sum[4][8] , \sum[4][7] , \sum[4][6] , 
        \sum[4][5] , \sum[4][4] , \sum[4][3] , \sum[4][2] , \sum[4][1] , 
        \sum[4][0] }) );
  encoder_4 ENCi_4 ( .b(B[9:7]), .vp({sum_subn[4], \sel[4][1] , \sel[4][0] })
         );
  mux_NBIT25 MUXi_4 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .B({n6, n6, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .C({n5, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .S({\sel[4][1] , \sel[4][0] }), .Y({
        \mux_out[4][24] , \mux_out[4][23] , \mux_out[4][22] , \mux_out[4][21] , 
        \mux_out[4][20] , \mux_out[4][19] , \mux_out[4][18] , \mux_out[4][17] , 
        \mux_out[4][16] , \mux_out[4][15] , \mux_out[4][14] , \mux_out[4][13] , 
        \mux_out[4][12] , \mux_out[4][11] , \mux_out[4][10] , \mux_out[4][9] , 
        \mux_out[4][8] , \mux_out[4][7] , \mux_out[4][6] , \mux_out[4][5] , 
        \mux_out[4][4] , \mux_out[4][3] , \mux_out[4][2] , \mux_out[4][1] , 
        \mux_out[4][0] }) );
  adder_NBIT25 ADDERi_4 ( .A({n3, \sum[4][23] , \sum[4][22] , \sum[4][21] , 
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
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n6, n6, A[14:0], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .C({n5, A[14:0], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .S({\sel[5][1] , \sel[5][0] }), .Y({\mux_out[5][26] , \mux_out[5][25] , 
        \mux_out[5][24] , \mux_out[5][23] , \mux_out[5][22] , \mux_out[5][21] , 
        \mux_out[5][20] , \mux_out[5][19] , \mux_out[5][18] , \mux_out[5][17] , 
        \mux_out[5][16] , \mux_out[5][15] , \mux_out[5][14] , \mux_out[5][13] , 
        \mux_out[5][12] , \mux_out[5][11] , \mux_out[5][10] , \mux_out[5][9] , 
        \mux_out[5][8] , \mux_out[5][7] , \mux_out[5][6] , \mux_out[5][5] , 
        \mux_out[5][4] , \mux_out[5][3] , \mux_out[5][2] , \mux_out[5][1] , 
        \mux_out[5][0] }) );
  adder_NBIT27 ADDERi_5 ( .A({n2, \sum[5][25] , \sum[5][24] , \sum[5][23] , 
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
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n6, n6, A[14:0], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .C({n5, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .S({\sel[6][1] , \sel[6][0] }), .Y({
        \mux_out[6][28] , \mux_out[6][27] , \mux_out[6][26] , \mux_out[6][25] , 
        \mux_out[6][24] , \mux_out[6][23] , \mux_out[6][22] , \mux_out[6][21] , 
        \mux_out[6][20] , \mux_out[6][19] , \mux_out[6][18] , \mux_out[6][17] , 
        \mux_out[6][16] , \mux_out[6][15] , \mux_out[6][14] , \mux_out[6][13] , 
        \mux_out[6][12] , \mux_out[6][11] , \mux_out[6][10] , \mux_out[6][9] , 
        \mux_out[6][8] , \mux_out[6][7] , \mux_out[6][6] , \mux_out[6][5] , 
        \mux_out[6][4] , \mux_out[6][3] , \mux_out[6][2] , \mux_out[6][1] , 
        \mux_out[6][0] }) );
  adder_NBIT29 ADDERi_6 ( .A({\sum[6][27] , \sum[6][27] , \sum[6][26] , 
        \sum[6][25] , \sum[6][24] , \sum[6][23] , \sum[6][22] , \sum[6][21] , 
        \sum[6][20] , \sum[6][19] , \sum[6][18] , \sum[6][17] , \sum[6][16] , 
        \sum[6][15] , \sum[6][14] , \sum[6][13] , \sum[6][12] , \sum[6][11] , 
        \sum[6][10] , \sum[6][9] , \sum[6][8] , \sum[6][7] , \sum[6][6] , 
        \sum[6][5] , \sum[6][4] , \sum[6][3] , \sum[6][2] , \sum[6][1] , 
        \sum[6][0] }), .B({\mux_out[6][28] , \mux_out[6][27] , 
        \mux_out[6][26] , \mux_out[6][25] , \mux_out[6][24] , \mux_out[6][23] , 
        \mux_out[6][22] , \mux_out[6][21] , \mux_out[6][20] , \mux_out[6][19] , 
        \mux_out[6][18] , \mux_out[6][17] , \mux_out[6][16] , \mux_out[6][15] , 
        \mux_out[6][14] , \mux_out[6][13] , \mux_out[6][12] , \mux_out[6][11] , 
        \mux_out[6][10] , \mux_out[6][9] , \mux_out[6][8] , \mux_out[6][7] , 
        \mux_out[6][6] , \mux_out[6][5] , \mux_out[6][4] , \mux_out[6][3] , 
        \mux_out[6][2] , \mux_out[6][1] , \mux_out[6][0] }), .SUB_SUMn(
        sum_subn[6]), .S({\sum[7][29] , \sum[7][28] , \sum[7][27] , 
        \sum[7][26] , \sum[7][25] , \sum[7][24] , \sum[7][23] , \sum[7][22] , 
        \sum[7][21] , \sum[7][20] , \sum[7][19] , \sum[7][18] , \sum[7][17] , 
        \sum[7][16] , \sum[7][15] , \sum[7][14] , \sum[7][13] , \sum[7][12] , 
        \sum[7][11] , \sum[7][10] , \sum[7][9] , \sum[7][8] , \sum[7][7] , 
        \sum[7][6] , \sum[7][5] , \sum[7][4] , \sum[7][3] , \sum[7][2] , 
        \sum[7][1] , \sum[7][0] }) );
  encoder_1 ENCi_7 ( .b(B[15:13]), .vp({sum_subn[7], \sel[7][1] , \sel[7][0] }) );
  mux_NBIT31 MUXi_7 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n6, 
        n6, A[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .C({n5, A[14:0], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .S({\sel[7][1] , \sel[7][0] }), .Y({\mux_out[7][30] , \mux_out[7][29] , 
        \mux_out[7][28] , \mux_out[7][27] , \mux_out[7][26] , \mux_out[7][25] , 
        \mux_out[7][24] , \mux_out[7][23] , \mux_out[7][22] , \mux_out[7][21] , 
        \mux_out[7][20] , \mux_out[7][19] , \mux_out[7][18] , \mux_out[7][17] , 
        \mux_out[7][16] , \mux_out[7][15] , \mux_out[7][14] , \mux_out[7][13] , 
        \mux_out[7][12] , \mux_out[7][11] , \mux_out[7][10] , \mux_out[7][9] , 
        \mux_out[7][8] , \mux_out[7][7] , \mux_out[7][6] , \mux_out[7][5] , 
        \mux_out[7][4] , \mux_out[7][3] , \mux_out[7][2] , \mux_out[7][1] , 
        \mux_out[7][0] }) );
  adder_NBIT31 ADDERi_7 ( .A({\sum[7][29] , \sum[7][29] , \sum[7][28] , 
        \sum[7][27] , \sum[7][26] , \sum[7][25] , \sum[7][24] , \sum[7][23] , 
        \sum[7][22] , \sum[7][21] , \sum[7][20] , \sum[7][19] , \sum[7][18] , 
        \sum[7][17] , \sum[7][16] , \sum[7][15] , \sum[7][14] , \sum[7][13] , 
        \sum[7][12] , \sum[7][11] , \sum[7][10] , \sum[7][9] , \sum[7][8] , 
        \sum[7][7] , \sum[7][6] , \sum[7][5] , \sum[7][4] , \sum[7][3] , 
        \sum[7][2] , \sum[7][1] , \sum[7][0] }), .B({\mux_out[7][30] , 
        \mux_out[7][29] , \mux_out[7][28] , \mux_out[7][27] , \mux_out[7][26] , 
        \mux_out[7][25] , \mux_out[7][24] , \mux_out[7][23] , \mux_out[7][22] , 
        \mux_out[7][21] , \mux_out[7][20] , \mux_out[7][19] , \mux_out[7][18] , 
        \mux_out[7][17] , \mux_out[7][16] , \mux_out[7][15] , \mux_out[7][14] , 
        \mux_out[7][13] , \mux_out[7][12] , \mux_out[7][11] , \mux_out[7][10] , 
        \mux_out[7][9] , \mux_out[7][8] , \mux_out[7][7] , \mux_out[7][6] , 
        \mux_out[7][5] , \mux_out[7][4] , \mux_out[7][3] , \mux_out[7][2] , 
        \mux_out[7][1] , \mux_out[7][0] }), .SUB_SUMn(sum_subn[7]), .S(Y) );
  BUF_X2 U2 ( .A(\sum[3][21] ), .Z(n1) );
  BUF_X1 U3 ( .A(\sum[2][19] ), .Z(n4) );
  BUF_X1 U4 ( .A(\sum[4][23] ), .Z(n3) );
  CLKBUF_X1 U5 ( .A(\sum[5][25] ), .Z(n2) );
  BUF_X1 U6 ( .A(A[15]), .Z(n5) );
  BUF_X1 U7 ( .A(A[15]), .Z(n6) );
endmodule

