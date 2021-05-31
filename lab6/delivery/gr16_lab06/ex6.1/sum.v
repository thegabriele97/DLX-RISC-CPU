
module FA_127 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_126 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_125 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_124 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_123 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_122 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_121 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_120 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_119 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_118 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_117 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_116 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_115 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_114 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_113 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_112 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_111 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_110 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_109 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_108 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_107 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_106 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_105 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_104 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_103 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_102 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_101 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_100 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_99 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_98 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_97 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_96 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_95 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_94 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_93 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_92 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_91 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_90 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_89 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_88 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_87 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_86 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_85 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_84 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_83 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_82 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_81 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_80 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_79 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_78 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_77 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_76 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_75 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_74 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_73 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_72 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_71 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_70 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_69 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_68 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_67 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_66 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_65 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_64 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_63 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_62 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_61 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_60 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_59 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_58 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_57 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_56 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_55 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_54 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_53 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_50 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_49 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_48 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_32 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_31 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_30 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_29 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n1), .Z(S) );
  XOR2_X1 U1 ( .A(A), .B(B), .Z(n1) );
  NAND2_X1 U2 ( .A1(A), .A2(B), .ZN(n3) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(A), .A2(B), .ZN(n3) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n4) );
  INV_X1 U3 ( .A(n4), .ZN(n1) );
  NAND2_X1 U4 ( .A1(Ci), .A2(n1), .ZN(n2) );
  NAND2_X1 U5 ( .A1(n3), .A2(n2), .ZN(Co) );
  XNOR2_X1 U6 ( .A(Ci), .B(n4), .ZN(S) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n1, n2, n3;

  OAI21_X1 U1 ( .B1(n3), .B2(n2), .A(n1), .ZN(Co) );
  XNOR2_X1 U2 ( .A(A), .B(B), .ZN(n3) );
  INV_X1 U3 ( .A(Ci), .ZN(n2) );
  NAND2_X1 U4 ( .A1(A), .A2(B), .ZN(n1) );
  XNOR2_X1 U5 ( .A(Ci), .B(n3), .ZN(S) );
endmodule


module RCA ( A, B, Ci, S, Co );
  input [127:0] A;
  input [127:0] B;
  output [127:0] S;
  input Ci;
  output Co;

  wire   [127:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_127 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_126 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_125 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(CTMP[4]) );
  FA_124 FAI_5 ( .A(A[4]), .B(B[4]), .Ci(CTMP[4]), .S(S[4]), .Co(CTMP[5]) );
  FA_123 FAI_6 ( .A(A[5]), .B(B[5]), .Ci(CTMP[5]), .S(S[5]), .Co(CTMP[6]) );
  FA_122 FAI_7 ( .A(A[6]), .B(B[6]), .Ci(CTMP[6]), .S(S[6]), .Co(CTMP[7]) );
  FA_121 FAI_8 ( .A(A[7]), .B(B[7]), .Ci(CTMP[7]), .S(S[7]), .Co(CTMP[8]) );
  FA_120 FAI_9 ( .A(A[8]), .B(B[8]), .Ci(CTMP[8]), .S(S[8]), .Co(CTMP[9]) );
  FA_119 FAI_10 ( .A(A[9]), .B(B[9]), .Ci(CTMP[9]), .S(S[9]), .Co(CTMP[10]) );
  FA_118 FAI_11 ( .A(A[10]), .B(B[10]), .Ci(CTMP[10]), .S(S[10]), .Co(CTMP[11]) );
  FA_117 FAI_12 ( .A(A[11]), .B(B[11]), .Ci(CTMP[11]), .S(S[11]), .Co(CTMP[12]) );
  FA_116 FAI_13 ( .A(A[12]), .B(B[12]), .Ci(CTMP[12]), .S(S[12]), .Co(CTMP[13]) );
  FA_115 FAI_14 ( .A(A[13]), .B(B[13]), .Ci(CTMP[13]), .S(S[13]), .Co(CTMP[14]) );
  FA_114 FAI_15 ( .A(A[14]), .B(B[14]), .Ci(CTMP[14]), .S(S[14]), .Co(CTMP[15]) );
  FA_113 FAI_16 ( .A(A[15]), .B(B[15]), .Ci(CTMP[15]), .S(S[15]), .Co(CTMP[16]) );
  FA_112 FAI_17 ( .A(A[16]), .B(B[16]), .Ci(CTMP[16]), .S(S[16]), .Co(CTMP[17]) );
  FA_111 FAI_18 ( .A(A[17]), .B(B[17]), .Ci(CTMP[17]), .S(S[17]), .Co(CTMP[18]) );
  FA_110 FAI_19 ( .A(A[18]), .B(B[18]), .Ci(CTMP[18]), .S(S[18]), .Co(CTMP[19]) );
  FA_109 FAI_20 ( .A(A[19]), .B(B[19]), .Ci(CTMP[19]), .S(S[19]), .Co(CTMP[20]) );
  FA_108 FAI_21 ( .A(A[20]), .B(B[20]), .Ci(CTMP[20]), .S(S[20]), .Co(CTMP[21]) );
  FA_107 FAI_22 ( .A(A[21]), .B(B[21]), .Ci(CTMP[21]), .S(S[21]), .Co(CTMP[22]) );
  FA_106 FAI_23 ( .A(A[22]), .B(B[22]), .Ci(CTMP[22]), .S(S[22]), .Co(CTMP[23]) );
  FA_105 FAI_24 ( .A(A[23]), .B(B[23]), .Ci(CTMP[23]), .S(S[23]), .Co(CTMP[24]) );
  FA_104 FAI_25 ( .A(A[24]), .B(B[24]), .Ci(CTMP[24]), .S(S[24]), .Co(CTMP[25]) );
  FA_103 FAI_26 ( .A(A[25]), .B(B[25]), .Ci(CTMP[25]), .S(S[25]), .Co(CTMP[26]) );
  FA_102 FAI_27 ( .A(A[26]), .B(B[26]), .Ci(CTMP[26]), .S(S[26]), .Co(CTMP[27]) );
  FA_101 FAI_28 ( .A(A[27]), .B(B[27]), .Ci(CTMP[27]), .S(S[27]), .Co(CTMP[28]) );
  FA_100 FAI_29 ( .A(A[28]), .B(B[28]), .Ci(CTMP[28]), .S(S[28]), .Co(CTMP[29]) );
  FA_99 FAI_30 ( .A(A[29]), .B(B[29]), .Ci(CTMP[29]), .S(S[29]), .Co(CTMP[30])
         );
  FA_98 FAI_31 ( .A(A[30]), .B(B[30]), .Ci(CTMP[30]), .S(S[30]), .Co(CTMP[31])
         );
  FA_97 FAI_32 ( .A(A[31]), .B(B[31]), .Ci(CTMP[31]), .S(S[31]), .Co(CTMP[32])
         );
  FA_96 FAI_33 ( .A(A[32]), .B(B[32]), .Ci(CTMP[32]), .S(S[32]), .Co(CTMP[33])
         );
  FA_95 FAI_34 ( .A(A[33]), .B(B[33]), .Ci(CTMP[33]), .S(S[33]), .Co(CTMP[34])
         );
  FA_94 FAI_35 ( .A(A[34]), .B(B[34]), .Ci(CTMP[34]), .S(S[34]), .Co(CTMP[35])
         );
  FA_93 FAI_36 ( .A(A[35]), .B(B[35]), .Ci(CTMP[35]), .S(S[35]), .Co(CTMP[36])
         );
  FA_92 FAI_37 ( .A(A[36]), .B(B[36]), .Ci(CTMP[36]), .S(S[36]), .Co(CTMP[37])
         );
  FA_91 FAI_38 ( .A(A[37]), .B(B[37]), .Ci(CTMP[37]), .S(S[37]), .Co(CTMP[38])
         );
  FA_90 FAI_39 ( .A(A[38]), .B(B[38]), .Ci(CTMP[38]), .S(S[38]), .Co(CTMP[39])
         );
  FA_89 FAI_40 ( .A(A[39]), .B(B[39]), .Ci(CTMP[39]), .S(S[39]), .Co(CTMP[40])
         );
  FA_88 FAI_41 ( .A(A[40]), .B(B[40]), .Ci(CTMP[40]), .S(S[40]), .Co(CTMP[41])
         );
  FA_87 FAI_42 ( .A(A[41]), .B(B[41]), .Ci(CTMP[41]), .S(S[41]), .Co(CTMP[42])
         );
  FA_86 FAI_43 ( .A(A[42]), .B(B[42]), .Ci(CTMP[42]), .S(S[42]), .Co(CTMP[43])
         );
  FA_85 FAI_44 ( .A(A[43]), .B(B[43]), .Ci(CTMP[43]), .S(S[43]), .Co(CTMP[44])
         );
  FA_84 FAI_45 ( .A(A[44]), .B(B[44]), .Ci(CTMP[44]), .S(S[44]), .Co(CTMP[45])
         );
  FA_83 FAI_46 ( .A(A[45]), .B(B[45]), .Ci(CTMP[45]), .S(S[45]), .Co(CTMP[46])
         );
  FA_82 FAI_47 ( .A(A[46]), .B(B[46]), .Ci(CTMP[46]), .S(S[46]), .Co(CTMP[47])
         );
  FA_81 FAI_48 ( .A(A[47]), .B(B[47]), .Ci(CTMP[47]), .S(S[47]), .Co(CTMP[48])
         );
  FA_80 FAI_49 ( .A(A[48]), .B(B[48]), .Ci(CTMP[48]), .S(S[48]), .Co(CTMP[49])
         );
  FA_79 FAI_50 ( .A(A[49]), .B(B[49]), .Ci(CTMP[49]), .S(S[49]), .Co(CTMP[50])
         );
  FA_78 FAI_51 ( .A(A[50]), .B(B[50]), .Ci(CTMP[50]), .S(S[50]), .Co(CTMP[51])
         );
  FA_77 FAI_52 ( .A(A[51]), .B(B[51]), .Ci(CTMP[51]), .S(S[51]), .Co(CTMP[52])
         );
  FA_76 FAI_53 ( .A(A[52]), .B(B[52]), .Ci(CTMP[52]), .S(S[52]), .Co(CTMP[53])
         );
  FA_75 FAI_54 ( .A(A[53]), .B(B[53]), .Ci(CTMP[53]), .S(S[53]), .Co(CTMP[54])
         );
  FA_74 FAI_55 ( .A(A[54]), .B(B[54]), .Ci(CTMP[54]), .S(S[54]), .Co(CTMP[55])
         );
  FA_73 FAI_56 ( .A(A[55]), .B(B[55]), .Ci(CTMP[55]), .S(S[55]), .Co(CTMP[56])
         );
  FA_72 FAI_57 ( .A(A[56]), .B(B[56]), .Ci(CTMP[56]), .S(S[56]), .Co(CTMP[57])
         );
  FA_71 FAI_58 ( .A(A[57]), .B(B[57]), .Ci(CTMP[57]), .S(S[57]), .Co(CTMP[58])
         );
  FA_70 FAI_59 ( .A(A[58]), .B(B[58]), .Ci(CTMP[58]), .S(S[58]), .Co(CTMP[59])
         );
  FA_69 FAI_60 ( .A(A[59]), .B(B[59]), .Ci(CTMP[59]), .S(S[59]), .Co(CTMP[60])
         );
  FA_68 FAI_61 ( .A(A[60]), .B(B[60]), .Ci(CTMP[60]), .S(S[60]), .Co(CTMP[61])
         );
  FA_67 FAI_62 ( .A(A[61]), .B(B[61]), .Ci(CTMP[61]), .S(S[61]), .Co(CTMP[62])
         );
  FA_66 FAI_63 ( .A(A[62]), .B(B[62]), .Ci(CTMP[62]), .S(S[62]), .Co(CTMP[63])
         );
  FA_65 FAI_64 ( .A(A[63]), .B(B[63]), .Ci(CTMP[63]), .S(S[63]), .Co(CTMP[64])
         );
  FA_64 FAI_65 ( .A(A[64]), .B(B[64]), .Ci(CTMP[64]), .S(S[64]), .Co(CTMP[65])
         );
  FA_63 FAI_66 ( .A(A[65]), .B(B[65]), .Ci(CTMP[65]), .S(S[65]), .Co(CTMP[66])
         );
  FA_62 FAI_67 ( .A(A[66]), .B(B[66]), .Ci(CTMP[66]), .S(S[66]), .Co(CTMP[67])
         );
  FA_61 FAI_68 ( .A(A[67]), .B(B[67]), .Ci(CTMP[67]), .S(S[67]), .Co(CTMP[68])
         );
  FA_60 FAI_69 ( .A(A[68]), .B(B[68]), .Ci(CTMP[68]), .S(S[68]), .Co(CTMP[69])
         );
  FA_59 FAI_70 ( .A(A[69]), .B(B[69]), .Ci(CTMP[69]), .S(S[69]), .Co(CTMP[70])
         );
  FA_58 FAI_71 ( .A(A[70]), .B(B[70]), .Ci(CTMP[70]), .S(S[70]), .Co(CTMP[71])
         );
  FA_57 FAI_72 ( .A(A[71]), .B(B[71]), .Ci(CTMP[71]), .S(S[71]), .Co(CTMP[72])
         );
  FA_56 FAI_73 ( .A(A[72]), .B(B[72]), .Ci(CTMP[72]), .S(S[72]), .Co(CTMP[73])
         );
  FA_55 FAI_74 ( .A(A[73]), .B(B[73]), .Ci(CTMP[73]), .S(S[73]), .Co(CTMP[74])
         );
  FA_54 FAI_75 ( .A(A[74]), .B(B[74]), .Ci(CTMP[74]), .S(S[74]), .Co(CTMP[75])
         );
  FA_53 FAI_76 ( .A(A[75]), .B(B[75]), .Ci(CTMP[75]), .S(S[75]), .Co(CTMP[76])
         );
  FA_52 FAI_77 ( .A(A[76]), .B(B[76]), .Ci(CTMP[76]), .S(S[76]), .Co(CTMP[77])
         );
  FA_51 FAI_78 ( .A(A[77]), .B(B[77]), .Ci(CTMP[77]), .S(S[77]), .Co(CTMP[78])
         );
  FA_50 FAI_79 ( .A(A[78]), .B(B[78]), .Ci(CTMP[78]), .S(S[78]), .Co(CTMP[79])
         );
  FA_49 FAI_80 ( .A(A[79]), .B(B[79]), .Ci(CTMP[79]), .S(S[79]), .Co(CTMP[80])
         );
  FA_48 FAI_81 ( .A(A[80]), .B(B[80]), .Ci(CTMP[80]), .S(S[80]), .Co(CTMP[81])
         );
  FA_47 FAI_82 ( .A(A[81]), .B(B[81]), .Ci(CTMP[81]), .S(S[81]), .Co(CTMP[82])
         );
  FA_46 FAI_83 ( .A(A[82]), .B(B[82]), .Ci(CTMP[82]), .S(S[82]), .Co(CTMP[83])
         );
  FA_45 FAI_84 ( .A(A[83]), .B(B[83]), .Ci(CTMP[83]), .S(S[83]), .Co(CTMP[84])
         );
  FA_44 FAI_85 ( .A(A[84]), .B(B[84]), .Ci(CTMP[84]), .S(S[84]), .Co(CTMP[85])
         );
  FA_43 FAI_86 ( .A(A[85]), .B(B[85]), .Ci(CTMP[85]), .S(S[85]), .Co(CTMP[86])
         );
  FA_42 FAI_87 ( .A(A[86]), .B(B[86]), .Ci(CTMP[86]), .S(S[86]), .Co(CTMP[87])
         );
  FA_41 FAI_88 ( .A(A[87]), .B(B[87]), .Ci(CTMP[87]), .S(S[87]), .Co(CTMP[88])
         );
  FA_40 FAI_89 ( .A(A[88]), .B(B[88]), .Ci(CTMP[88]), .S(S[88]), .Co(CTMP[89])
         );
  FA_39 FAI_90 ( .A(A[89]), .B(B[89]), .Ci(CTMP[89]), .S(S[89]), .Co(CTMP[90])
         );
  FA_38 FAI_91 ( .A(A[90]), .B(B[90]), .Ci(CTMP[90]), .S(S[90]), .Co(CTMP[91])
         );
  FA_37 FAI_92 ( .A(A[91]), .B(B[91]), .Ci(CTMP[91]), .S(S[91]), .Co(CTMP[92])
         );
  FA_36 FAI_93 ( .A(A[92]), .B(B[92]), .Ci(CTMP[92]), .S(S[92]), .Co(CTMP[93])
         );
  FA_35 FAI_94 ( .A(A[93]), .B(B[93]), .Ci(CTMP[93]), .S(S[93]), .Co(CTMP[94])
         );
  FA_34 FAI_95 ( .A(A[94]), .B(B[94]), .Ci(CTMP[94]), .S(S[94]), .Co(CTMP[95])
         );
  FA_33 FAI_96 ( .A(A[95]), .B(B[95]), .Ci(CTMP[95]), .S(S[95]), .Co(CTMP[96])
         );
  FA_32 FAI_97 ( .A(A[96]), .B(B[96]), .Ci(CTMP[96]), .S(S[96]), .Co(CTMP[97])
         );
  FA_31 FAI_98 ( .A(A[97]), .B(B[97]), .Ci(CTMP[97]), .S(S[97]), .Co(CTMP[98])
         );
  FA_30 FAI_99 ( .A(A[98]), .B(B[98]), .Ci(CTMP[98]), .S(S[98]), .Co(CTMP[99])
         );
  FA_29 FAI_100 ( .A(A[99]), .B(B[99]), .Ci(CTMP[99]), .S(S[99]), .Co(
        CTMP[100]) );
  FA_28 FAI_101 ( .A(A[100]), .B(B[100]), .Ci(CTMP[100]), .S(S[100]), .Co(
        CTMP[101]) );
  FA_27 FAI_102 ( .A(A[101]), .B(B[101]), .Ci(CTMP[101]), .S(S[101]), .Co(
        CTMP[102]) );
  FA_26 FAI_103 ( .A(A[102]), .B(B[102]), .Ci(CTMP[102]), .S(S[102]), .Co(
        CTMP[103]) );
  FA_25 FAI_104 ( .A(A[103]), .B(B[103]), .Ci(CTMP[103]), .S(S[103]), .Co(
        CTMP[104]) );
  FA_24 FAI_105 ( .A(A[104]), .B(B[104]), .Ci(CTMP[104]), .S(S[104]), .Co(
        CTMP[105]) );
  FA_23 FAI_106 ( .A(A[105]), .B(B[105]), .Ci(CTMP[105]), .S(S[105]), .Co(
        CTMP[106]) );
  FA_22 FAI_107 ( .A(A[106]), .B(B[106]), .Ci(CTMP[106]), .S(S[106]), .Co(
        CTMP[107]) );
  FA_21 FAI_108 ( .A(A[107]), .B(B[107]), .Ci(CTMP[107]), .S(S[107]), .Co(
        CTMP[108]) );
  FA_20 FAI_109 ( .A(A[108]), .B(B[108]), .Ci(CTMP[108]), .S(S[108]), .Co(
        CTMP[109]) );
  FA_19 FAI_110 ( .A(A[109]), .B(B[109]), .Ci(CTMP[109]), .S(S[109]), .Co(
        CTMP[110]) );
  FA_18 FAI_111 ( .A(A[110]), .B(B[110]), .Ci(CTMP[110]), .S(S[110]), .Co(
        CTMP[111]) );
  FA_17 FAI_112 ( .A(A[111]), .B(B[111]), .Ci(CTMP[111]), .S(S[111]), .Co(
        CTMP[112]) );
  FA_16 FAI_113 ( .A(A[112]), .B(B[112]), .Ci(CTMP[112]), .S(S[112]), .Co(
        CTMP[113]) );
  FA_15 FAI_114 ( .A(A[113]), .B(B[113]), .Ci(CTMP[113]), .S(S[113]), .Co(
        CTMP[114]) );
  FA_14 FAI_115 ( .A(A[114]), .B(B[114]), .Ci(CTMP[114]), .S(S[114]), .Co(
        CTMP[115]) );
  FA_13 FAI_116 ( .A(A[115]), .B(B[115]), .Ci(CTMP[115]), .S(S[115]), .Co(
        CTMP[116]) );
  FA_12 FAI_117 ( .A(A[116]), .B(B[116]), .Ci(CTMP[116]), .S(S[116]), .Co(
        CTMP[117]) );
  FA_11 FAI_118 ( .A(A[117]), .B(B[117]), .Ci(CTMP[117]), .S(S[117]), .Co(
        CTMP[118]) );
  FA_10 FAI_119 ( .A(A[118]), .B(B[118]), .Ci(CTMP[118]), .S(S[118]), .Co(
        CTMP[119]) );
  FA_9 FAI_120 ( .A(A[119]), .B(B[119]), .Ci(CTMP[119]), .S(S[119]), .Co(
        CTMP[120]) );
  FA_8 FAI_121 ( .A(A[120]), .B(B[120]), .Ci(CTMP[120]), .S(S[120]), .Co(
        CTMP[121]) );
  FA_7 FAI_122 ( .A(A[121]), .B(B[121]), .Ci(CTMP[121]), .S(S[121]), .Co(
        CTMP[122]) );
  FA_6 FAI_123 ( .A(A[122]), .B(B[122]), .Ci(CTMP[122]), .S(S[122]), .Co(
        CTMP[123]) );
  FA_5 FAI_124 ( .A(A[123]), .B(B[123]), .Ci(CTMP[123]), .S(S[123]), .Co(
        CTMP[124]) );
  FA_4 FAI_125 ( .A(A[124]), .B(B[124]), .Ci(CTMP[124]), .S(S[124]), .Co(
        CTMP[125]) );
  FA_3 FAI_126 ( .A(A[125]), .B(B[125]), .Ci(CTMP[125]), .S(S[125]), .Co(
        CTMP[126]) );
  FA_2 FAI_127 ( .A(A[126]), .B(B[126]), .Ci(CTMP[126]), .S(S[126]), .Co(
        CTMP[127]) );
  FA_1 FAI_128 ( .A(A[127]), .B(B[127]), .Ci(CTMP[127]), .S(S[127]), .Co(Co)
         );
endmodule


module SUM ( A, B, Ci, CLK, RST, S, Co );
  input [127:0] A;
  input [127:0] B;
  output [127:0] S;
  input Ci, CLK, RST;
  output Co;
  wire   CITMP, COTMP, n386, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422;
  wire   [127:0] ATMP;
  wire   [127:0] BTMP;
  wire   [127:0] STMP;

  RCA maprca ( .A(ATMP), .B(BTMP), .Ci(CITMP), .S(STMP), .Co(COTMP) );
  DFFR_X1 \ATMP_reg[127]  ( .D(A[127]), .CK(CLK), .RN(n422), .Q(ATMP[127]) );
  DFFR_X1 \ATMP_reg[126]  ( .D(A[126]), .CK(CLK), .RN(n422), .Q(ATMP[126]) );
  DFFR_X1 \ATMP_reg[125]  ( .D(A[125]), .CK(CLK), .RN(n422), .Q(ATMP[125]) );
  DFFR_X1 \ATMP_reg[124]  ( .D(A[124]), .CK(CLK), .RN(n422), .Q(ATMP[124]) );
  DFFR_X1 \ATMP_reg[123]  ( .D(A[123]), .CK(CLK), .RN(n422), .Q(ATMP[123]) );
  DFFR_X1 \ATMP_reg[122]  ( .D(A[122]), .CK(CLK), .RN(n422), .Q(ATMP[122]) );
  DFFR_X1 \ATMP_reg[121]  ( .D(A[121]), .CK(CLK), .RN(n422), .Q(ATMP[121]) );
  DFFR_X1 \ATMP_reg[120]  ( .D(A[120]), .CK(CLK), .RN(n422), .Q(ATMP[120]) );
  DFFR_X1 \ATMP_reg[119]  ( .D(A[119]), .CK(CLK), .RN(n422), .Q(ATMP[119]) );
  DFFR_X1 \ATMP_reg[118]  ( .D(A[118]), .CK(CLK), .RN(n421), .Q(ATMP[118]) );
  DFFR_X1 \ATMP_reg[117]  ( .D(A[117]), .CK(CLK), .RN(n421), .Q(ATMP[117]) );
  DFFR_X1 \ATMP_reg[116]  ( .D(A[116]), .CK(CLK), .RN(n421), .Q(ATMP[116]) );
  DFFR_X1 \ATMP_reg[115]  ( .D(A[115]), .CK(CLK), .RN(n421), .Q(ATMP[115]) );
  DFFR_X1 \ATMP_reg[114]  ( .D(A[114]), .CK(CLK), .RN(n421), .Q(ATMP[114]) );
  DFFR_X1 \ATMP_reg[113]  ( .D(A[113]), .CK(CLK), .RN(n421), .Q(ATMP[113]) );
  DFFR_X1 \ATMP_reg[112]  ( .D(A[112]), .CK(CLK), .RN(n421), .Q(ATMP[112]) );
  DFFR_X1 \ATMP_reg[111]  ( .D(A[111]), .CK(CLK), .RN(n421), .Q(ATMP[111]) );
  DFFR_X1 \ATMP_reg[110]  ( .D(A[110]), .CK(CLK), .RN(n421), .Q(ATMP[110]) );
  DFFR_X1 \ATMP_reg[109]  ( .D(A[109]), .CK(CLK), .RN(n421), .Q(ATMP[109]) );
  DFFR_X1 \ATMP_reg[108]  ( .D(A[108]), .CK(CLK), .RN(n421), .Q(ATMP[108]) );
  DFFR_X1 \ATMP_reg[107]  ( .D(A[107]), .CK(CLK), .RN(n421), .Q(ATMP[107]) );
  DFFR_X1 \ATMP_reg[106]  ( .D(A[106]), .CK(CLK), .RN(n421), .Q(ATMP[106]) );
  DFFR_X1 \ATMP_reg[105]  ( .D(A[105]), .CK(CLK), .RN(n420), .Q(ATMP[105]) );
  DFFR_X1 \ATMP_reg[104]  ( .D(A[104]), .CK(CLK), .RN(n420), .Q(ATMP[104]) );
  DFFR_X1 \ATMP_reg[103]  ( .D(A[103]), .CK(CLK), .RN(n420), .Q(ATMP[103]) );
  DFFR_X1 \ATMP_reg[102]  ( .D(A[102]), .CK(CLK), .RN(n420), .Q(ATMP[102]) );
  DFFR_X1 \ATMP_reg[101]  ( .D(A[101]), .CK(CLK), .RN(n420), .Q(ATMP[101]) );
  DFFR_X1 \ATMP_reg[100]  ( .D(A[100]), .CK(CLK), .RN(n420), .Q(ATMP[100]) );
  DFFR_X1 \ATMP_reg[99]  ( .D(A[99]), .CK(CLK), .RN(n420), .Q(ATMP[99]) );
  DFFR_X1 \ATMP_reg[98]  ( .D(A[98]), .CK(CLK), .RN(n420), .Q(ATMP[98]) );
  DFFR_X1 \ATMP_reg[97]  ( .D(A[97]), .CK(CLK), .RN(n420), .Q(ATMP[97]) );
  DFFR_X1 \ATMP_reg[96]  ( .D(A[96]), .CK(CLK), .RN(n420), .Q(ATMP[96]) );
  DFFR_X1 \ATMP_reg[95]  ( .D(A[95]), .CK(CLK), .RN(n420), .Q(ATMP[95]) );
  DFFR_X1 \ATMP_reg[94]  ( .D(A[94]), .CK(CLK), .RN(n420), .Q(ATMP[94]) );
  DFFR_X1 \ATMP_reg[93]  ( .D(A[93]), .CK(CLK), .RN(n420), .Q(ATMP[93]) );
  DFFR_X1 \ATMP_reg[92]  ( .D(A[92]), .CK(CLK), .RN(n419), .Q(ATMP[92]) );
  DFFR_X1 \ATMP_reg[91]  ( .D(A[91]), .CK(CLK), .RN(n419), .Q(ATMP[91]) );
  DFFR_X1 \ATMP_reg[90]  ( .D(A[90]), .CK(CLK), .RN(n419), .Q(ATMP[90]) );
  DFFR_X1 \ATMP_reg[89]  ( .D(A[89]), .CK(CLK), .RN(n419), .Q(ATMP[89]) );
  DFFR_X1 \ATMP_reg[88]  ( .D(A[88]), .CK(CLK), .RN(n419), .Q(ATMP[88]) );
  DFFR_X1 \ATMP_reg[87]  ( .D(A[87]), .CK(CLK), .RN(n419), .Q(ATMP[87]) );
  DFFR_X1 \ATMP_reg[86]  ( .D(A[86]), .CK(CLK), .RN(n419), .Q(ATMP[86]) );
  DFFR_X1 \ATMP_reg[85]  ( .D(A[85]), .CK(CLK), .RN(n419), .Q(ATMP[85]) );
  DFFR_X1 \ATMP_reg[84]  ( .D(A[84]), .CK(CLK), .RN(n419), .Q(ATMP[84]) );
  DFFR_X1 \ATMP_reg[83]  ( .D(A[83]), .CK(CLK), .RN(n419), .Q(ATMP[83]) );
  DFFR_X1 \ATMP_reg[82]  ( .D(A[82]), .CK(CLK), .RN(n419), .Q(ATMP[82]) );
  DFFR_X1 \ATMP_reg[81]  ( .D(A[81]), .CK(CLK), .RN(n419), .Q(ATMP[81]) );
  DFFR_X1 \ATMP_reg[80]  ( .D(A[80]), .CK(CLK), .RN(n419), .Q(ATMP[80]) );
  DFFR_X1 \ATMP_reg[79]  ( .D(A[79]), .CK(CLK), .RN(n418), .Q(ATMP[79]) );
  DFFR_X1 \ATMP_reg[78]  ( .D(A[78]), .CK(CLK), .RN(n418), .Q(ATMP[78]) );
  DFFR_X1 \ATMP_reg[77]  ( .D(A[77]), .CK(CLK), .RN(n418), .Q(ATMP[77]) );
  DFFR_X1 \ATMP_reg[76]  ( .D(A[76]), .CK(CLK), .RN(n418), .Q(ATMP[76]) );
  DFFR_X1 \ATMP_reg[75]  ( .D(A[75]), .CK(CLK), .RN(n418), .Q(ATMP[75]) );
  DFFR_X1 \ATMP_reg[74]  ( .D(A[74]), .CK(CLK), .RN(n418), .Q(ATMP[74]) );
  DFFR_X1 \ATMP_reg[73]  ( .D(A[73]), .CK(CLK), .RN(n418), .Q(ATMP[73]) );
  DFFR_X1 \ATMP_reg[72]  ( .D(A[72]), .CK(CLK), .RN(n418), .Q(ATMP[72]) );
  DFFR_X1 \ATMP_reg[71]  ( .D(A[71]), .CK(CLK), .RN(n418), .Q(ATMP[71]) );
  DFFR_X1 \ATMP_reg[70]  ( .D(A[70]), .CK(CLK), .RN(n418), .Q(ATMP[70]) );
  DFFR_X1 \ATMP_reg[69]  ( .D(A[69]), .CK(CLK), .RN(n418), .Q(ATMP[69]) );
  DFFR_X1 \ATMP_reg[68]  ( .D(A[68]), .CK(CLK), .RN(n418), .Q(ATMP[68]) );
  DFFR_X1 \ATMP_reg[67]  ( .D(A[67]), .CK(CLK), .RN(n418), .Q(ATMP[67]) );
  DFFR_X1 \ATMP_reg[66]  ( .D(A[66]), .CK(CLK), .RN(n417), .Q(ATMP[66]) );
  DFFR_X1 \ATMP_reg[65]  ( .D(A[65]), .CK(CLK), .RN(n417), .Q(ATMP[65]) );
  DFFR_X1 \ATMP_reg[64]  ( .D(A[64]), .CK(CLK), .RN(n417), .Q(ATMP[64]) );
  DFFR_X1 \ATMP_reg[63]  ( .D(A[63]), .CK(CLK), .RN(n417), .Q(ATMP[63]) );
  DFFR_X1 \ATMP_reg[62]  ( .D(A[62]), .CK(CLK), .RN(n417), .Q(ATMP[62]) );
  DFFR_X1 \ATMP_reg[61]  ( .D(A[61]), .CK(CLK), .RN(n417), .Q(ATMP[61]) );
  DFFR_X1 \ATMP_reg[60]  ( .D(A[60]), .CK(CLK), .RN(n417), .Q(ATMP[60]) );
  DFFR_X1 \ATMP_reg[59]  ( .D(A[59]), .CK(CLK), .RN(n417), .Q(ATMP[59]) );
  DFFR_X1 \ATMP_reg[58]  ( .D(A[58]), .CK(CLK), .RN(n417), .Q(ATMP[58]) );
  DFFR_X1 \ATMP_reg[57]  ( .D(A[57]), .CK(CLK), .RN(n417), .Q(ATMP[57]) );
  DFFR_X1 \ATMP_reg[56]  ( .D(A[56]), .CK(CLK), .RN(n417), .Q(ATMP[56]) );
  DFFR_X1 \ATMP_reg[55]  ( .D(A[55]), .CK(CLK), .RN(n417), .Q(ATMP[55]) );
  DFFR_X1 \ATMP_reg[54]  ( .D(A[54]), .CK(CLK), .RN(n417), .Q(ATMP[54]) );
  DFFR_X1 \ATMP_reg[53]  ( .D(A[53]), .CK(CLK), .RN(n416), .Q(ATMP[53]) );
  DFFR_X1 \ATMP_reg[52]  ( .D(A[52]), .CK(CLK), .RN(n416), .Q(ATMP[52]) );
  DFFR_X1 \ATMP_reg[51]  ( .D(A[51]), .CK(CLK), .RN(n416), .Q(ATMP[51]) );
  DFFR_X1 \ATMP_reg[50]  ( .D(A[50]), .CK(CLK), .RN(n416), .Q(ATMP[50]) );
  DFFR_X1 \ATMP_reg[49]  ( .D(A[49]), .CK(CLK), .RN(n416), .Q(ATMP[49]) );
  DFFR_X1 \ATMP_reg[48]  ( .D(A[48]), .CK(CLK), .RN(n416), .Q(ATMP[48]) );
  DFFR_X1 \ATMP_reg[47]  ( .D(A[47]), .CK(CLK), .RN(n416), .Q(ATMP[47]) );
  DFFR_X1 \ATMP_reg[46]  ( .D(A[46]), .CK(CLK), .RN(n416), .Q(ATMP[46]) );
  DFFR_X1 \ATMP_reg[45]  ( .D(A[45]), .CK(CLK), .RN(n416), .Q(ATMP[45]) );
  DFFR_X1 \ATMP_reg[44]  ( .D(A[44]), .CK(CLK), .RN(n416), .Q(ATMP[44]) );
  DFFR_X1 \ATMP_reg[43]  ( .D(A[43]), .CK(CLK), .RN(n416), .Q(ATMP[43]) );
  DFFR_X1 \ATMP_reg[42]  ( .D(A[42]), .CK(CLK), .RN(n416), .Q(ATMP[42]) );
  DFFR_X1 \ATMP_reg[41]  ( .D(A[41]), .CK(CLK), .RN(n416), .Q(ATMP[41]) );
  DFFR_X1 \ATMP_reg[40]  ( .D(A[40]), .CK(CLK), .RN(n415), .Q(ATMP[40]) );
  DFFR_X1 \ATMP_reg[39]  ( .D(A[39]), .CK(CLK), .RN(n415), .Q(ATMP[39]) );
  DFFR_X1 \ATMP_reg[38]  ( .D(A[38]), .CK(CLK), .RN(n415), .Q(ATMP[38]) );
  DFFR_X1 \ATMP_reg[37]  ( .D(A[37]), .CK(CLK), .RN(n415), .Q(ATMP[37]) );
  DFFR_X1 \ATMP_reg[36]  ( .D(A[36]), .CK(CLK), .RN(n415), .Q(ATMP[36]) );
  DFFR_X1 \ATMP_reg[35]  ( .D(A[35]), .CK(CLK), .RN(n415), .Q(ATMP[35]) );
  DFFR_X1 \ATMP_reg[34]  ( .D(A[34]), .CK(CLK), .RN(n415), .Q(ATMP[34]) );
  DFFR_X1 \ATMP_reg[33]  ( .D(A[33]), .CK(CLK), .RN(n415), .Q(ATMP[33]) );
  DFFR_X1 \ATMP_reg[32]  ( .D(A[32]), .CK(CLK), .RN(n415), .Q(ATMP[32]) );
  DFFR_X1 \ATMP_reg[31]  ( .D(A[31]), .CK(CLK), .RN(n415), .Q(ATMP[31]) );
  DFFR_X1 \ATMP_reg[30]  ( .D(A[30]), .CK(CLK), .RN(n415), .Q(ATMP[30]) );
  DFFR_X1 \ATMP_reg[29]  ( .D(A[29]), .CK(CLK), .RN(n415), .Q(ATMP[29]) );
  DFFR_X1 \ATMP_reg[28]  ( .D(A[28]), .CK(CLK), .RN(n415), .Q(ATMP[28]) );
  DFFR_X1 \ATMP_reg[27]  ( .D(A[27]), .CK(CLK), .RN(n414), .Q(ATMP[27]) );
  DFFR_X1 \ATMP_reg[26]  ( .D(A[26]), .CK(CLK), .RN(n414), .Q(ATMP[26]) );
  DFFR_X1 \ATMP_reg[25]  ( .D(A[25]), .CK(CLK), .RN(n414), .Q(ATMP[25]) );
  DFFR_X1 \ATMP_reg[24]  ( .D(A[24]), .CK(CLK), .RN(n414), .Q(ATMP[24]) );
  DFFR_X1 \ATMP_reg[23]  ( .D(A[23]), .CK(CLK), .RN(n414), .Q(ATMP[23]) );
  DFFR_X1 \ATMP_reg[22]  ( .D(A[22]), .CK(CLK), .RN(n414), .Q(ATMP[22]) );
  DFFR_X1 \ATMP_reg[21]  ( .D(A[21]), .CK(CLK), .RN(n414), .Q(ATMP[21]) );
  DFFR_X1 \ATMP_reg[20]  ( .D(A[20]), .CK(CLK), .RN(n414), .Q(ATMP[20]) );
  DFFR_X1 \ATMP_reg[19]  ( .D(A[19]), .CK(CLK), .RN(n414), .Q(ATMP[19]) );
  DFFR_X1 \ATMP_reg[18]  ( .D(A[18]), .CK(CLK), .RN(n414), .Q(ATMP[18]) );
  DFFR_X1 \ATMP_reg[17]  ( .D(A[17]), .CK(CLK), .RN(n414), .Q(ATMP[17]) );
  DFFR_X1 \ATMP_reg[16]  ( .D(A[16]), .CK(CLK), .RN(n414), .Q(ATMP[16]) );
  DFFR_X1 \ATMP_reg[15]  ( .D(A[15]), .CK(CLK), .RN(n414), .Q(ATMP[15]) );
  DFFR_X1 \ATMP_reg[14]  ( .D(A[14]), .CK(CLK), .RN(n413), .Q(ATMP[14]) );
  DFFR_X1 \ATMP_reg[13]  ( .D(A[13]), .CK(CLK), .RN(n413), .Q(ATMP[13]) );
  DFFR_X1 \ATMP_reg[12]  ( .D(A[12]), .CK(CLK), .RN(n413), .Q(ATMP[12]) );
  DFFR_X1 \ATMP_reg[11]  ( .D(A[11]), .CK(CLK), .RN(n413), .Q(ATMP[11]) );
  DFFR_X1 \ATMP_reg[10]  ( .D(A[10]), .CK(CLK), .RN(n413), .Q(ATMP[10]) );
  DFFR_X1 \ATMP_reg[9]  ( .D(A[9]), .CK(CLK), .RN(n413), .Q(ATMP[9]) );
  DFFR_X1 \ATMP_reg[8]  ( .D(A[8]), .CK(CLK), .RN(n413), .Q(ATMP[8]) );
  DFFR_X1 \ATMP_reg[7]  ( .D(A[7]), .CK(CLK), .RN(n413), .Q(ATMP[7]) );
  DFFR_X1 \ATMP_reg[6]  ( .D(A[6]), .CK(CLK), .RN(n413), .Q(ATMP[6]) );
  DFFR_X1 \ATMP_reg[5]  ( .D(A[5]), .CK(CLK), .RN(n413), .Q(ATMP[5]) );
  DFFR_X1 \ATMP_reg[4]  ( .D(A[4]), .CK(CLK), .RN(n413), .Q(ATMP[4]) );
  DFFR_X1 \ATMP_reg[3]  ( .D(A[3]), .CK(CLK), .RN(n413), .Q(ATMP[3]) );
  DFFR_X1 \ATMP_reg[2]  ( .D(A[2]), .CK(CLK), .RN(n413), .Q(ATMP[2]) );
  DFFR_X1 \ATMP_reg[1]  ( .D(A[1]), .CK(CLK), .RN(n412), .Q(ATMP[1]) );
  DFFR_X1 \ATMP_reg[0]  ( .D(A[0]), .CK(CLK), .RN(n412), .Q(ATMP[0]) );
  DFFR_X1 \BTMP_reg[127]  ( .D(B[127]), .CK(CLK), .RN(n412), .Q(BTMP[127]) );
  DFFR_X1 \BTMP_reg[126]  ( .D(B[126]), .CK(CLK), .RN(n412), .Q(BTMP[126]) );
  DFFR_X1 \BTMP_reg[125]  ( .D(B[125]), .CK(CLK), .RN(n412), .Q(BTMP[125]) );
  DFFR_X1 \BTMP_reg[124]  ( .D(B[124]), .CK(CLK), .RN(n412), .Q(BTMP[124]) );
  DFFR_X1 \BTMP_reg[123]  ( .D(B[123]), .CK(CLK), .RN(n412), .Q(BTMP[123]) );
  DFFR_X1 \BTMP_reg[122]  ( .D(B[122]), .CK(CLK), .RN(n412), .Q(BTMP[122]) );
  DFFR_X1 \BTMP_reg[121]  ( .D(B[121]), .CK(CLK), .RN(n412), .Q(BTMP[121]) );
  DFFR_X1 \BTMP_reg[120]  ( .D(B[120]), .CK(CLK), .RN(n412), .Q(BTMP[120]) );
  DFFR_X1 \BTMP_reg[119]  ( .D(B[119]), .CK(CLK), .RN(n412), .Q(BTMP[119]) );
  DFFR_X1 \BTMP_reg[118]  ( .D(B[118]), .CK(CLK), .RN(n412), .Q(BTMP[118]) );
  DFFR_X1 \BTMP_reg[117]  ( .D(B[117]), .CK(CLK), .RN(n412), .Q(BTMP[117]) );
  DFFR_X1 \BTMP_reg[116]  ( .D(B[116]), .CK(CLK), .RN(n411), .Q(BTMP[116]) );
  DFFR_X1 \BTMP_reg[115]  ( .D(B[115]), .CK(CLK), .RN(n411), .Q(BTMP[115]) );
  DFFR_X1 \BTMP_reg[114]  ( .D(B[114]), .CK(CLK), .RN(n411), .Q(BTMP[114]) );
  DFFR_X1 \BTMP_reg[113]  ( .D(B[113]), .CK(CLK), .RN(n411), .Q(BTMP[113]) );
  DFFR_X1 \BTMP_reg[112]  ( .D(B[112]), .CK(CLK), .RN(n411), .Q(BTMP[112]) );
  DFFR_X1 \BTMP_reg[111]  ( .D(B[111]), .CK(CLK), .RN(n411), .Q(BTMP[111]) );
  DFFR_X1 \BTMP_reg[110]  ( .D(B[110]), .CK(CLK), .RN(n411), .Q(BTMP[110]) );
  DFFR_X1 \BTMP_reg[109]  ( .D(B[109]), .CK(CLK), .RN(n411), .Q(BTMP[109]) );
  DFFR_X1 \BTMP_reg[108]  ( .D(B[108]), .CK(CLK), .RN(n411), .Q(BTMP[108]) );
  DFFR_X1 \BTMP_reg[107]  ( .D(B[107]), .CK(CLK), .RN(n411), .Q(BTMP[107]) );
  DFFR_X1 \BTMP_reg[106]  ( .D(B[106]), .CK(CLK), .RN(n411), .Q(BTMP[106]) );
  DFFR_X1 \BTMP_reg[105]  ( .D(B[105]), .CK(CLK), .RN(n411), .Q(BTMP[105]) );
  DFFR_X1 \BTMP_reg[104]  ( .D(B[104]), .CK(CLK), .RN(n411), .Q(BTMP[104]) );
  DFFR_X1 \BTMP_reg[103]  ( .D(B[103]), .CK(CLK), .RN(n410), .Q(BTMP[103]) );
  DFFR_X1 \BTMP_reg[102]  ( .D(B[102]), .CK(CLK), .RN(n410), .Q(BTMP[102]) );
  DFFR_X1 \BTMP_reg[101]  ( .D(B[101]), .CK(CLK), .RN(n410), .Q(BTMP[101]) );
  DFFR_X1 \BTMP_reg[100]  ( .D(B[100]), .CK(CLK), .RN(n410), .Q(BTMP[100]) );
  DFFR_X1 \BTMP_reg[99]  ( .D(B[99]), .CK(CLK), .RN(n410), .Q(BTMP[99]) );
  DFFR_X1 \BTMP_reg[98]  ( .D(B[98]), .CK(CLK), .RN(n410), .Q(BTMP[98]) );
  DFFR_X1 \BTMP_reg[97]  ( .D(B[97]), .CK(CLK), .RN(n410), .Q(BTMP[97]) );
  DFFR_X1 \BTMP_reg[96]  ( .D(B[96]), .CK(CLK), .RN(n410), .Q(BTMP[96]) );
  DFFR_X1 \BTMP_reg[95]  ( .D(B[95]), .CK(CLK), .RN(n410), .Q(BTMP[95]) );
  DFFR_X1 \BTMP_reg[94]  ( .D(B[94]), .CK(CLK), .RN(n410), .Q(BTMP[94]) );
  DFFR_X1 \BTMP_reg[93]  ( .D(B[93]), .CK(CLK), .RN(n410), .Q(BTMP[93]) );
  DFFR_X1 \BTMP_reg[92]  ( .D(B[92]), .CK(CLK), .RN(n410), .Q(BTMP[92]) );
  DFFR_X1 \BTMP_reg[91]  ( .D(B[91]), .CK(CLK), .RN(n410), .Q(BTMP[91]) );
  DFFR_X1 \BTMP_reg[90]  ( .D(B[90]), .CK(CLK), .RN(n409), .Q(BTMP[90]) );
  DFFR_X1 \BTMP_reg[89]  ( .D(B[89]), .CK(CLK), .RN(n409), .Q(BTMP[89]) );
  DFFR_X1 \BTMP_reg[88]  ( .D(B[88]), .CK(CLK), .RN(n409), .Q(BTMP[88]) );
  DFFR_X1 \BTMP_reg[87]  ( .D(B[87]), .CK(CLK), .RN(n409), .Q(BTMP[87]) );
  DFFR_X1 \BTMP_reg[86]  ( .D(B[86]), .CK(CLK), .RN(n409), .Q(BTMP[86]) );
  DFFR_X1 \BTMP_reg[85]  ( .D(B[85]), .CK(CLK), .RN(n409), .Q(BTMP[85]) );
  DFFR_X1 \BTMP_reg[84]  ( .D(B[84]), .CK(CLK), .RN(n409), .Q(BTMP[84]) );
  DFFR_X1 \BTMP_reg[83]  ( .D(B[83]), .CK(CLK), .RN(n409), .Q(BTMP[83]) );
  DFFR_X1 \BTMP_reg[82]  ( .D(B[82]), .CK(CLK), .RN(n409), .Q(BTMP[82]) );
  DFFR_X1 \BTMP_reg[81]  ( .D(B[81]), .CK(CLK), .RN(n409), .Q(BTMP[81]) );
  DFFR_X1 \BTMP_reg[80]  ( .D(B[80]), .CK(CLK), .RN(n409), .Q(BTMP[80]) );
  DFFR_X1 \BTMP_reg[79]  ( .D(B[79]), .CK(CLK), .RN(n409), .Q(BTMP[79]) );
  DFFR_X1 \BTMP_reg[78]  ( .D(B[78]), .CK(CLK), .RN(n409), .Q(BTMP[78]) );
  DFFR_X1 \BTMP_reg[77]  ( .D(B[77]), .CK(CLK), .RN(n408), .Q(BTMP[77]) );
  DFFR_X1 \BTMP_reg[76]  ( .D(B[76]), .CK(CLK), .RN(n408), .Q(BTMP[76]) );
  DFFR_X1 \BTMP_reg[75]  ( .D(B[75]), .CK(CLK), .RN(n408), .Q(BTMP[75]) );
  DFFR_X1 \BTMP_reg[74]  ( .D(B[74]), .CK(CLK), .RN(n408), .Q(BTMP[74]) );
  DFFR_X1 \BTMP_reg[73]  ( .D(B[73]), .CK(CLK), .RN(n408), .Q(BTMP[73]) );
  DFFR_X1 \BTMP_reg[72]  ( .D(B[72]), .CK(CLK), .RN(n408), .Q(BTMP[72]) );
  DFFR_X1 \BTMP_reg[71]  ( .D(B[71]), .CK(CLK), .RN(n408), .Q(BTMP[71]) );
  DFFR_X1 \BTMP_reg[70]  ( .D(B[70]), .CK(CLK), .RN(n408), .Q(BTMP[70]) );
  DFFR_X1 \BTMP_reg[69]  ( .D(B[69]), .CK(CLK), .RN(n408), .Q(BTMP[69]) );
  DFFR_X1 \BTMP_reg[68]  ( .D(B[68]), .CK(CLK), .RN(n408), .Q(BTMP[68]) );
  DFFR_X1 \BTMP_reg[67]  ( .D(B[67]), .CK(CLK), .RN(n408), .Q(BTMP[67]) );
  DFFR_X1 \BTMP_reg[66]  ( .D(B[66]), .CK(CLK), .RN(n408), .Q(BTMP[66]) );
  DFFR_X1 \BTMP_reg[65]  ( .D(B[65]), .CK(CLK), .RN(n408), .Q(BTMP[65]) );
  DFFR_X1 \BTMP_reg[64]  ( .D(B[64]), .CK(CLK), .RN(n407), .Q(BTMP[64]) );
  DFFR_X1 \BTMP_reg[63]  ( .D(B[63]), .CK(CLK), .RN(n407), .Q(BTMP[63]) );
  DFFR_X1 \BTMP_reg[62]  ( .D(B[62]), .CK(CLK), .RN(n407), .Q(BTMP[62]) );
  DFFR_X1 \BTMP_reg[61]  ( .D(B[61]), .CK(CLK), .RN(n407), .Q(BTMP[61]) );
  DFFR_X1 \BTMP_reg[60]  ( .D(B[60]), .CK(CLK), .RN(n407), .Q(BTMP[60]) );
  DFFR_X1 \BTMP_reg[59]  ( .D(B[59]), .CK(CLK), .RN(n407), .Q(BTMP[59]) );
  DFFR_X1 \BTMP_reg[58]  ( .D(B[58]), .CK(CLK), .RN(n407), .Q(BTMP[58]) );
  DFFR_X1 \BTMP_reg[57]  ( .D(B[57]), .CK(CLK), .RN(n407), .Q(BTMP[57]) );
  DFFR_X1 \BTMP_reg[56]  ( .D(B[56]), .CK(CLK), .RN(n407), .Q(BTMP[56]) );
  DFFR_X1 \BTMP_reg[55]  ( .D(B[55]), .CK(CLK), .RN(n407), .Q(BTMP[55]) );
  DFFR_X1 \BTMP_reg[54]  ( .D(B[54]), .CK(CLK), .RN(n407), .Q(BTMP[54]) );
  DFFR_X1 \BTMP_reg[53]  ( .D(B[53]), .CK(CLK), .RN(n407), .Q(BTMP[53]) );
  DFFR_X1 \BTMP_reg[52]  ( .D(B[52]), .CK(CLK), .RN(n407), .Q(BTMP[52]) );
  DFFR_X1 \BTMP_reg[51]  ( .D(B[51]), .CK(CLK), .RN(n406), .Q(BTMP[51]) );
  DFFR_X1 \BTMP_reg[50]  ( .D(B[50]), .CK(CLK), .RN(n406), .Q(BTMP[50]) );
  DFFR_X1 \BTMP_reg[49]  ( .D(B[49]), .CK(CLK), .RN(n406), .Q(BTMP[49]) );
  DFFR_X1 \BTMP_reg[48]  ( .D(B[48]), .CK(CLK), .RN(n406), .Q(BTMP[48]) );
  DFFR_X1 \BTMP_reg[47]  ( .D(B[47]), .CK(CLK), .RN(n406), .Q(BTMP[47]) );
  DFFR_X1 \BTMP_reg[46]  ( .D(B[46]), .CK(CLK), .RN(n406), .Q(BTMP[46]) );
  DFFR_X1 \BTMP_reg[45]  ( .D(B[45]), .CK(CLK), .RN(n406), .Q(BTMP[45]) );
  DFFR_X1 \BTMP_reg[44]  ( .D(B[44]), .CK(CLK), .RN(n406), .Q(BTMP[44]) );
  DFFR_X1 \BTMP_reg[43]  ( .D(B[43]), .CK(CLK), .RN(n406), .Q(BTMP[43]) );
  DFFR_X1 \BTMP_reg[42]  ( .D(B[42]), .CK(CLK), .RN(n406), .Q(BTMP[42]) );
  DFFR_X1 \BTMP_reg[41]  ( .D(B[41]), .CK(CLK), .RN(n406), .Q(BTMP[41]) );
  DFFR_X1 \BTMP_reg[40]  ( .D(B[40]), .CK(CLK), .RN(n406), .Q(BTMP[40]) );
  DFFR_X1 \BTMP_reg[39]  ( .D(B[39]), .CK(CLK), .RN(n406), .Q(BTMP[39]) );
  DFFR_X1 \BTMP_reg[38]  ( .D(B[38]), .CK(CLK), .RN(n405), .Q(BTMP[38]) );
  DFFR_X1 \BTMP_reg[37]  ( .D(B[37]), .CK(CLK), .RN(n405), .Q(BTMP[37]) );
  DFFR_X1 \BTMP_reg[36]  ( .D(B[36]), .CK(CLK), .RN(n405), .Q(BTMP[36]) );
  DFFR_X1 \BTMP_reg[35]  ( .D(B[35]), .CK(CLK), .RN(n405), .Q(BTMP[35]) );
  DFFR_X1 \BTMP_reg[34]  ( .D(B[34]), .CK(CLK), .RN(n405), .Q(BTMP[34]) );
  DFFR_X1 \BTMP_reg[33]  ( .D(B[33]), .CK(CLK), .RN(n405), .Q(BTMP[33]) );
  DFFR_X1 \BTMP_reg[32]  ( .D(B[32]), .CK(CLK), .RN(n405), .Q(BTMP[32]) );
  DFFR_X1 \BTMP_reg[31]  ( .D(B[31]), .CK(CLK), .RN(n405), .Q(BTMP[31]) );
  DFFR_X1 \BTMP_reg[30]  ( .D(B[30]), .CK(CLK), .RN(n405), .Q(BTMP[30]) );
  DFFR_X1 \BTMP_reg[29]  ( .D(B[29]), .CK(CLK), .RN(n405), .Q(BTMP[29]) );
  DFFR_X1 \BTMP_reg[28]  ( .D(B[28]), .CK(CLK), .RN(n405), .Q(BTMP[28]) );
  DFFR_X1 \BTMP_reg[27]  ( .D(B[27]), .CK(CLK), .RN(n405), .Q(BTMP[27]) );
  DFFR_X1 \BTMP_reg[26]  ( .D(B[26]), .CK(CLK), .RN(n405), .Q(BTMP[26]) );
  DFFR_X1 \BTMP_reg[25]  ( .D(B[25]), .CK(CLK), .RN(n404), .Q(BTMP[25]) );
  DFFR_X1 \BTMP_reg[24]  ( .D(B[24]), .CK(CLK), .RN(n404), .Q(BTMP[24]) );
  DFFR_X1 \BTMP_reg[23]  ( .D(B[23]), .CK(CLK), .RN(n404), .Q(BTMP[23]) );
  DFFR_X1 \BTMP_reg[22]  ( .D(B[22]), .CK(CLK), .RN(n404), .Q(BTMP[22]) );
  DFFR_X1 \BTMP_reg[21]  ( .D(B[21]), .CK(CLK), .RN(n404), .Q(BTMP[21]) );
  DFFR_X1 \BTMP_reg[20]  ( .D(B[20]), .CK(CLK), .RN(n404), .Q(BTMP[20]) );
  DFFR_X1 \BTMP_reg[19]  ( .D(B[19]), .CK(CLK), .RN(n404), .Q(BTMP[19]) );
  DFFR_X1 \BTMP_reg[18]  ( .D(B[18]), .CK(CLK), .RN(n404), .Q(BTMP[18]) );
  DFFR_X1 \BTMP_reg[17]  ( .D(B[17]), .CK(CLK), .RN(n404), .Q(BTMP[17]) );
  DFFR_X1 \BTMP_reg[16]  ( .D(B[16]), .CK(CLK), .RN(n404), .Q(BTMP[16]) );
  DFFR_X1 \BTMP_reg[15]  ( .D(B[15]), .CK(CLK), .RN(n404), .Q(BTMP[15]) );
  DFFR_X1 \BTMP_reg[14]  ( .D(B[14]), .CK(CLK), .RN(n404), .Q(BTMP[14]) );
  DFFR_X1 \BTMP_reg[13]  ( .D(B[13]), .CK(CLK), .RN(n404), .Q(BTMP[13]) );
  DFFR_X1 \BTMP_reg[12]  ( .D(B[12]), .CK(CLK), .RN(n403), .Q(BTMP[12]) );
  DFFR_X1 \BTMP_reg[11]  ( .D(B[11]), .CK(CLK), .RN(n403), .Q(BTMP[11]) );
  DFFR_X1 \BTMP_reg[10]  ( .D(B[10]), .CK(CLK), .RN(n403), .Q(BTMP[10]) );
  DFFR_X1 \BTMP_reg[9]  ( .D(B[9]), .CK(CLK), .RN(n403), .Q(BTMP[9]) );
  DFFR_X1 \BTMP_reg[8]  ( .D(B[8]), .CK(CLK), .RN(n403), .Q(BTMP[8]) );
  DFFR_X1 \BTMP_reg[7]  ( .D(B[7]), .CK(CLK), .RN(n403), .Q(BTMP[7]) );
  DFFR_X1 \BTMP_reg[6]  ( .D(B[6]), .CK(CLK), .RN(n403), .Q(BTMP[6]) );
  DFFR_X1 \BTMP_reg[5]  ( .D(B[5]), .CK(CLK), .RN(n403), .Q(BTMP[5]) );
  DFFR_X1 \BTMP_reg[4]  ( .D(B[4]), .CK(CLK), .RN(n403), .Q(BTMP[4]) );
  DFFR_X1 \BTMP_reg[3]  ( .D(B[3]), .CK(CLK), .RN(n403), .Q(BTMP[3]) );
  DFFR_X1 \BTMP_reg[2]  ( .D(B[2]), .CK(CLK), .RN(n403), .Q(BTMP[2]) );
  DFFR_X1 \BTMP_reg[1]  ( .D(B[1]), .CK(CLK), .RN(n403), .Q(BTMP[1]) );
  DFFR_X1 \BTMP_reg[0]  ( .D(B[0]), .CK(CLK), .RN(n403), .Q(BTMP[0]) );
  DFFR_X1 CITMP_reg ( .D(Ci), .CK(CLK), .RN(n402), .Q(CITMP) );
  DFFR_X1 Co_reg ( .D(COTMP), .CK(CLK), .RN(n402), .Q(Co) );
  DFFR_X1 \S_reg[0]  ( .D(STMP[0]), .CK(CLK), .RN(n402), .Q(S[0]) );
  DFFR_X1 \S_reg[1]  ( .D(STMP[1]), .CK(CLK), .RN(n402), .Q(S[1]) );
  DFFR_X1 \S_reg[2]  ( .D(STMP[2]), .CK(CLK), .RN(n402), .Q(S[2]) );
  DFFR_X1 \S_reg[3]  ( .D(STMP[3]), .CK(CLK), .RN(n402), .Q(S[3]) );
  DFFR_X1 \S_reg[4]  ( .D(STMP[4]), .CK(CLK), .RN(n402), .Q(S[4]) );
  DFFR_X1 \S_reg[5]  ( .D(STMP[5]), .CK(CLK), .RN(n402), .Q(S[5]) );
  DFFR_X1 \S_reg[6]  ( .D(STMP[6]), .CK(CLK), .RN(n402), .Q(S[6]) );
  DFFR_X1 \S_reg[7]  ( .D(STMP[7]), .CK(CLK), .RN(n402), .Q(S[7]) );
  DFFR_X1 \S_reg[8]  ( .D(STMP[8]), .CK(CLK), .RN(n402), .Q(S[8]) );
  DFFR_X1 \S_reg[9]  ( .D(STMP[9]), .CK(CLK), .RN(n402), .Q(S[9]) );
  DFFR_X1 \S_reg[10]  ( .D(STMP[10]), .CK(CLK), .RN(n402), .Q(S[10]) );
  DFFR_X1 \S_reg[11]  ( .D(STMP[11]), .CK(CLK), .RN(n401), .Q(S[11]) );
  DFFR_X1 \S_reg[12]  ( .D(STMP[12]), .CK(CLK), .RN(n401), .Q(S[12]) );
  DFFR_X1 \S_reg[13]  ( .D(STMP[13]), .CK(CLK), .RN(n401), .Q(S[13]) );
  DFFR_X1 \S_reg[14]  ( .D(STMP[14]), .CK(CLK), .RN(n401), .Q(S[14]) );
  DFFR_X1 \S_reg[15]  ( .D(STMP[15]), .CK(CLK), .RN(n401), .Q(S[15]) );
  DFFR_X1 \S_reg[16]  ( .D(STMP[16]), .CK(CLK), .RN(n401), .Q(S[16]) );
  DFFR_X1 \S_reg[17]  ( .D(STMP[17]), .CK(CLK), .RN(n401), .Q(S[17]) );
  DFFR_X1 \S_reg[18]  ( .D(STMP[18]), .CK(CLK), .RN(n401), .Q(S[18]) );
  DFFR_X1 \S_reg[19]  ( .D(STMP[19]), .CK(CLK), .RN(n401), .Q(S[19]) );
  DFFR_X1 \S_reg[20]  ( .D(STMP[20]), .CK(CLK), .RN(n401), .Q(S[20]) );
  DFFR_X1 \S_reg[21]  ( .D(STMP[21]), .CK(CLK), .RN(n401), .Q(S[21]) );
  DFFR_X1 \S_reg[22]  ( .D(STMP[22]), .CK(CLK), .RN(n401), .Q(S[22]) );
  DFFR_X1 \S_reg[23]  ( .D(STMP[23]), .CK(CLK), .RN(n401), .Q(S[23]) );
  DFFR_X1 \S_reg[24]  ( .D(STMP[24]), .CK(CLK), .RN(n400), .Q(S[24]) );
  DFFR_X1 \S_reg[25]  ( .D(STMP[25]), .CK(CLK), .RN(n400), .Q(S[25]) );
  DFFR_X1 \S_reg[26]  ( .D(STMP[26]), .CK(CLK), .RN(n400), .Q(S[26]) );
  DFFR_X1 \S_reg[27]  ( .D(STMP[27]), .CK(CLK), .RN(n400), .Q(S[27]) );
  DFFR_X1 \S_reg[28]  ( .D(STMP[28]), .CK(CLK), .RN(n400), .Q(S[28]) );
  DFFR_X1 \S_reg[29]  ( .D(STMP[29]), .CK(CLK), .RN(n400), .Q(S[29]) );
  DFFR_X1 \S_reg[30]  ( .D(STMP[30]), .CK(CLK), .RN(n400), .Q(S[30]) );
  DFFR_X1 \S_reg[31]  ( .D(STMP[31]), .CK(CLK), .RN(n400), .Q(S[31]) );
  DFFR_X1 \S_reg[32]  ( .D(STMP[32]), .CK(CLK), .RN(n400), .Q(S[32]) );
  DFFR_X1 \S_reg[33]  ( .D(STMP[33]), .CK(CLK), .RN(n400), .Q(S[33]) );
  DFFR_X1 \S_reg[34]  ( .D(STMP[34]), .CK(CLK), .RN(n400), .Q(S[34]) );
  DFFR_X1 \S_reg[35]  ( .D(STMP[35]), .CK(CLK), .RN(n400), .Q(S[35]) );
  DFFR_X1 \S_reg[36]  ( .D(STMP[36]), .CK(CLK), .RN(n400), .Q(S[36]) );
  DFFR_X1 \S_reg[37]  ( .D(STMP[37]), .CK(CLK), .RN(n399), .Q(S[37]) );
  DFFR_X1 \S_reg[38]  ( .D(STMP[38]), .CK(CLK), .RN(n399), .Q(S[38]) );
  DFFR_X1 \S_reg[39]  ( .D(STMP[39]), .CK(CLK), .RN(n399), .Q(S[39]) );
  DFFR_X1 \S_reg[40]  ( .D(STMP[40]), .CK(CLK), .RN(n399), .Q(S[40]) );
  DFFR_X1 \S_reg[41]  ( .D(STMP[41]), .CK(CLK), .RN(n399), .Q(S[41]) );
  DFFR_X1 \S_reg[42]  ( .D(STMP[42]), .CK(CLK), .RN(n399), .Q(S[42]) );
  DFFR_X1 \S_reg[43]  ( .D(STMP[43]), .CK(CLK), .RN(n399), .Q(S[43]) );
  DFFR_X1 \S_reg[44]  ( .D(STMP[44]), .CK(CLK), .RN(n399), .Q(S[44]) );
  DFFR_X1 \S_reg[45]  ( .D(STMP[45]), .CK(CLK), .RN(n399), .Q(S[45]) );
  DFFR_X1 \S_reg[46]  ( .D(STMP[46]), .CK(CLK), .RN(n399), .Q(S[46]) );
  DFFR_X1 \S_reg[47]  ( .D(STMP[47]), .CK(CLK), .RN(n399), .Q(S[47]) );
  DFFR_X1 \S_reg[48]  ( .D(STMP[48]), .CK(CLK), .RN(n399), .Q(S[48]) );
  DFFR_X1 \S_reg[49]  ( .D(STMP[49]), .CK(CLK), .RN(n399), .Q(S[49]) );
  DFFR_X1 \S_reg[50]  ( .D(STMP[50]), .CK(CLK), .RN(n398), .Q(S[50]) );
  DFFR_X1 \S_reg[51]  ( .D(STMP[51]), .CK(CLK), .RN(n398), .Q(S[51]) );
  DFFR_X1 \S_reg[52]  ( .D(STMP[52]), .CK(CLK), .RN(n398), .Q(S[52]) );
  DFFR_X1 \S_reg[53]  ( .D(STMP[53]), .CK(CLK), .RN(n398), .Q(S[53]) );
  DFFR_X1 \S_reg[54]  ( .D(STMP[54]), .CK(CLK), .RN(n398), .Q(S[54]) );
  DFFR_X1 \S_reg[55]  ( .D(STMP[55]), .CK(CLK), .RN(n398), .Q(S[55]) );
  DFFR_X1 \S_reg[56]  ( .D(STMP[56]), .CK(CLK), .RN(n398), .Q(S[56]) );
  DFFR_X1 \S_reg[57]  ( .D(STMP[57]), .CK(CLK), .RN(n398), .Q(S[57]) );
  DFFR_X1 \S_reg[58]  ( .D(STMP[58]), .CK(CLK), .RN(n398), .Q(S[58]) );
  DFFR_X1 \S_reg[59]  ( .D(STMP[59]), .CK(CLK), .RN(n398), .Q(S[59]) );
  DFFR_X1 \S_reg[60]  ( .D(STMP[60]), .CK(CLK), .RN(n398), .Q(S[60]) );
  DFFR_X1 \S_reg[61]  ( .D(STMP[61]), .CK(CLK), .RN(n398), .Q(S[61]) );
  DFFR_X1 \S_reg[62]  ( .D(STMP[62]), .CK(CLK), .RN(n398), .Q(S[62]) );
  DFFR_X1 \S_reg[63]  ( .D(STMP[63]), .CK(CLK), .RN(n397), .Q(S[63]) );
  DFFR_X1 \S_reg[64]  ( .D(STMP[64]), .CK(CLK), .RN(n397), .Q(S[64]) );
  DFFR_X1 \S_reg[65]  ( .D(STMP[65]), .CK(CLK), .RN(n397), .Q(S[65]) );
  DFFR_X1 \S_reg[66]  ( .D(STMP[66]), .CK(CLK), .RN(n397), .Q(S[66]) );
  DFFR_X1 \S_reg[67]  ( .D(STMP[67]), .CK(CLK), .RN(n397), .Q(S[67]) );
  DFFR_X1 \S_reg[68]  ( .D(STMP[68]), .CK(CLK), .RN(n397), .Q(S[68]) );
  DFFR_X1 \S_reg[69]  ( .D(STMP[69]), .CK(CLK), .RN(n397), .Q(S[69]) );
  DFFR_X1 \S_reg[70]  ( .D(STMP[70]), .CK(CLK), .RN(n397), .Q(S[70]) );
  DFFR_X1 \S_reg[71]  ( .D(STMP[71]), .CK(CLK), .RN(n397), .Q(S[71]) );
  DFFR_X1 \S_reg[72]  ( .D(STMP[72]), .CK(CLK), .RN(n397), .Q(S[72]) );
  DFFR_X1 \S_reg[73]  ( .D(STMP[73]), .CK(CLK), .RN(n397), .Q(S[73]) );
  DFFR_X1 \S_reg[74]  ( .D(STMP[74]), .CK(CLK), .RN(n397), .Q(S[74]) );
  DFFR_X1 \S_reg[75]  ( .D(STMP[75]), .CK(CLK), .RN(n397), .Q(S[75]) );
  DFFR_X1 \S_reg[76]  ( .D(STMP[76]), .CK(CLK), .RN(n396), .Q(S[76]) );
  DFFR_X1 \S_reg[77]  ( .D(STMP[77]), .CK(CLK), .RN(n396), .Q(S[77]) );
  DFFR_X1 \S_reg[78]  ( .D(STMP[78]), .CK(CLK), .RN(n396), .Q(S[78]) );
  DFFR_X1 \S_reg[79]  ( .D(STMP[79]), .CK(CLK), .RN(n396), .Q(S[79]) );
  DFFR_X1 \S_reg[80]  ( .D(STMP[80]), .CK(CLK), .RN(n396), .Q(S[80]) );
  DFFR_X1 \S_reg[81]  ( .D(STMP[81]), .CK(CLK), .RN(n396), .Q(S[81]) );
  DFFR_X1 \S_reg[82]  ( .D(STMP[82]), .CK(CLK), .RN(n396), .Q(S[82]) );
  DFFR_X1 \S_reg[83]  ( .D(STMP[83]), .CK(CLK), .RN(n396), .Q(S[83]) );
  DFFR_X1 \S_reg[84]  ( .D(STMP[84]), .CK(CLK), .RN(n396), .Q(S[84]) );
  DFFR_X1 \S_reg[85]  ( .D(STMP[85]), .CK(CLK), .RN(n396), .Q(S[85]) );
  DFFR_X1 \S_reg[86]  ( .D(STMP[86]), .CK(CLK), .RN(n396), .Q(S[86]) );
  DFFR_X1 \S_reg[87]  ( .D(STMP[87]), .CK(CLK), .RN(n396), .Q(S[87]) );
  DFFR_X1 \S_reg[88]  ( .D(STMP[88]), .CK(CLK), .RN(n396), .Q(S[88]) );
  DFFR_X1 \S_reg[89]  ( .D(STMP[89]), .CK(CLK), .RN(n395), .Q(S[89]) );
  DFFR_X1 \S_reg[90]  ( .D(STMP[90]), .CK(CLK), .RN(n395), .Q(S[90]) );
  DFFR_X1 \S_reg[91]  ( .D(STMP[91]), .CK(CLK), .RN(n395), .Q(S[91]) );
  DFFR_X1 \S_reg[92]  ( .D(STMP[92]), .CK(CLK), .RN(n395), .Q(S[92]) );
  DFFR_X1 \S_reg[93]  ( .D(STMP[93]), .CK(CLK), .RN(n395), .Q(S[93]) );
  DFFR_X1 \S_reg[94]  ( .D(STMP[94]), .CK(CLK), .RN(n395), .Q(S[94]) );
  DFFR_X1 \S_reg[95]  ( .D(STMP[95]), .CK(CLK), .RN(n395), .Q(S[95]) );
  DFFR_X1 \S_reg[96]  ( .D(STMP[96]), .CK(CLK), .RN(n395), .Q(S[96]) );
  DFFR_X1 \S_reg[97]  ( .D(STMP[97]), .CK(CLK), .RN(n395), .Q(S[97]) );
  DFFR_X1 \S_reg[98]  ( .D(STMP[98]), .CK(CLK), .RN(n395), .Q(S[98]) );
  DFFR_X1 \S_reg[99]  ( .D(STMP[99]), .CK(CLK), .RN(n395), .Q(S[99]) );
  DFFR_X1 \S_reg[100]  ( .D(STMP[100]), .CK(CLK), .RN(n395), .Q(S[100]) );
  DFFR_X1 \S_reg[101]  ( .D(STMP[101]), .CK(CLK), .RN(n395), .Q(S[101]) );
  DFFR_X1 \S_reg[102]  ( .D(STMP[102]), .CK(CLK), .RN(n394), .Q(S[102]) );
  DFFR_X1 \S_reg[103]  ( .D(STMP[103]), .CK(CLK), .RN(n394), .Q(S[103]) );
  DFFR_X1 \S_reg[104]  ( .D(STMP[104]), .CK(CLK), .RN(n394), .Q(S[104]) );
  DFFR_X1 \S_reg[105]  ( .D(STMP[105]), .CK(CLK), .RN(n394), .Q(S[105]) );
  DFFR_X1 \S_reg[106]  ( .D(STMP[106]), .CK(CLK), .RN(n394), .Q(S[106]) );
  DFFR_X1 \S_reg[107]  ( .D(STMP[107]), .CK(CLK), .RN(n394), .Q(S[107]) );
  DFFR_X1 \S_reg[108]  ( .D(STMP[108]), .CK(CLK), .RN(n394), .Q(S[108]) );
  DFFR_X1 \S_reg[109]  ( .D(STMP[109]), .CK(CLK), .RN(n394), .Q(S[109]) );
  DFFR_X1 \S_reg[110]  ( .D(STMP[110]), .CK(CLK), .RN(n394), .Q(S[110]) );
  DFFR_X1 \S_reg[111]  ( .D(STMP[111]), .CK(CLK), .RN(n394), .Q(S[111]) );
  DFFR_X1 \S_reg[112]  ( .D(STMP[112]), .CK(CLK), .RN(n394), .Q(S[112]) );
  DFFR_X1 \S_reg[113]  ( .D(STMP[113]), .CK(CLK), .RN(n394), .Q(S[113]) );
  DFFR_X1 \S_reg[114]  ( .D(STMP[114]), .CK(CLK), .RN(n394), .Q(S[114]) );
  DFFR_X1 \S_reg[115]  ( .D(STMP[115]), .CK(CLK), .RN(n393), .Q(S[115]) );
  DFFR_X1 \S_reg[116]  ( .D(STMP[116]), .CK(CLK), .RN(n393), .Q(S[116]) );
  DFFR_X1 \S_reg[117]  ( .D(STMP[117]), .CK(CLK), .RN(n393), .Q(S[117]) );
  DFFR_X1 \S_reg[118]  ( .D(STMP[118]), .CK(CLK), .RN(n393), .Q(S[118]) );
  DFFR_X1 \S_reg[119]  ( .D(STMP[119]), .CK(CLK), .RN(n393), .Q(S[119]) );
  DFFR_X1 \S_reg[120]  ( .D(STMP[120]), .CK(CLK), .RN(n393), .Q(S[120]) );
  DFFR_X1 \S_reg[121]  ( .D(STMP[121]), .CK(CLK), .RN(n393), .Q(S[121]) );
  DFFR_X1 \S_reg[122]  ( .D(STMP[122]), .CK(CLK), .RN(n393), .Q(S[122]) );
  DFFR_X1 \S_reg[123]  ( .D(STMP[123]), .CK(CLK), .RN(n393), .Q(S[123]) );
  DFFR_X1 \S_reg[124]  ( .D(STMP[124]), .CK(CLK), .RN(n393), .Q(S[124]) );
  DFFR_X1 \S_reg[125]  ( .D(STMP[125]), .CK(CLK), .RN(n393), .Q(S[125]) );
  DFFR_X1 \S_reg[126]  ( .D(STMP[126]), .CK(CLK), .RN(n393), .Q(S[126]) );
  DFFR_X1 \S_reg[127]  ( .D(STMP[127]), .CK(CLK), .RN(n393), .Q(S[127]) );
  INV_X1 U3 ( .A(RST), .ZN(n386) );
  BUF_X1 U4 ( .A(n386), .Z(n388) );
  BUF_X1 U5 ( .A(n386), .Z(n389) );
  BUF_X1 U6 ( .A(n386), .Z(n390) );
  BUF_X1 U7 ( .A(n386), .Z(n391) );
  BUF_X1 U8 ( .A(n386), .Z(n392) );
  CLKBUF_X1 U9 ( .A(n388), .Z(n393) );
  CLKBUF_X1 U10 ( .A(n388), .Z(n394) );
  CLKBUF_X1 U11 ( .A(n388), .Z(n395) );
  CLKBUF_X1 U12 ( .A(n388), .Z(n396) );
  CLKBUF_X1 U13 ( .A(n388), .Z(n397) );
  CLKBUF_X1 U14 ( .A(n388), .Z(n398) );
  CLKBUF_X1 U15 ( .A(n388), .Z(n399) );
  CLKBUF_X1 U16 ( .A(n389), .Z(n400) );
  CLKBUF_X1 U17 ( .A(n389), .Z(n401) );
  CLKBUF_X1 U18 ( .A(n389), .Z(n402) );
  CLKBUF_X1 U19 ( .A(n389), .Z(n403) );
  CLKBUF_X1 U20 ( .A(n389), .Z(n404) );
  CLKBUF_X1 U21 ( .A(n389), .Z(n405) );
  CLKBUF_X1 U22 ( .A(n389), .Z(n406) );
  CLKBUF_X1 U23 ( .A(n390), .Z(n407) );
  CLKBUF_X1 U24 ( .A(n390), .Z(n408) );
  CLKBUF_X1 U25 ( .A(n390), .Z(n409) );
  CLKBUF_X1 U26 ( .A(n390), .Z(n410) );
  CLKBUF_X1 U27 ( .A(n390), .Z(n411) );
  CLKBUF_X1 U28 ( .A(n390), .Z(n412) );
  CLKBUF_X1 U29 ( .A(n390), .Z(n413) );
  CLKBUF_X1 U30 ( .A(n391), .Z(n414) );
  CLKBUF_X1 U31 ( .A(n391), .Z(n415) );
  CLKBUF_X1 U32 ( .A(n391), .Z(n416) );
  CLKBUF_X1 U33 ( .A(n391), .Z(n417) );
  CLKBUF_X1 U34 ( .A(n391), .Z(n418) );
  CLKBUF_X1 U35 ( .A(n391), .Z(n419) );
  CLKBUF_X1 U36 ( .A(n391), .Z(n420) );
  CLKBUF_X1 U37 ( .A(n392), .Z(n421) );
  CLKBUF_X1 U38 ( .A(n392), .Z(n422) );
endmodule

