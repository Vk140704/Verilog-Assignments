module mux4to1(
  input i0, i1, i2, i3, sel1, sel0,
  output y
);
  assign y = sel1 ? (sel0 ? i3 : i2) : (sel0 ? i1 : i0);
endmodule

module mux2to1(
  input i0, i1, sel2,
  output y
);
  assign y = sel2 ? i1 : i0;
endmodule

module mux8to1(
  input [7:0] a,
  input sel1, sel2, sel0,
  output y
);
  wire w1, w2;
  mux4to1 mx1(.i0(a[0]), .i1(a[1]), .i2(a[2]), .i3(a[3]),
              .sel1(sel1), .sel0(sel0), .y(w1));
  mux4to1 mx2(.i0(a[4]), .i1(a[5]), .i2(a[6]), .i3(a[7]),
              .sel1(sel1), .sel0(sel0), .y(w2));
  mux2to1 mx3(.i0(w1), .i1(w2), .sel2(sel2), .y(y));
endmodule
