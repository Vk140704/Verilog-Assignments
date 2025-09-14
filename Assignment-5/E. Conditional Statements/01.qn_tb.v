module mux_tb(input a,b,sel,output y);
  wire y;
  reg a,b,sel;
  initial begin
    mux m1(.a(a),.b(b),.sel(sel),.y(y));
  end
  always@(*) begin
    $dumpfile ("mux_tb.vcd");
    $dumpvars();
    $monitor("Time=%t  sel=%b  A=%b  B=%b  y=%b  ",$time,a,b,y);
   sel=0; a=0; b=0;#10;
   sel=0; a=0; b=1;#10;
   sel=0; a=1; b=0;#10;
   sel=0; a=1; b=1;#10;
   sel=1; a=0; b=0;#10;
   sel=1; a=0; b=1;#10;
   sel=1; a=1; b=0;#10;
   sel=1; a=1; b=1;#10;
  end 
  $finish
endmodule
