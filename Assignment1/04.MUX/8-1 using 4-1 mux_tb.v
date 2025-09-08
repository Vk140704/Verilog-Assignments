module mux8to1_tb;
  reg [7:0] a;
  reg sel2, sel1, sel0;
  wire y;

  mux8to1 dut (.a(a),.sel2(sel2),.sel1(sel1),.sel0(sel0),.y(y));

  initial begin
    $display("Time | sel2 sel1 sel0 | a[7:0]    -> y");
    $display("--------------------------------------");
    $monitor("%4dns |   %b    %b    %b | %b -> %b", $time, sel2, sel1, sel0, a, y);

    // Apply a known pattern
    a = 8'b1010_0110;

    // Test every select combination (0 to 7)
    {sel2, sel1, sel0} = 3'b000; #10;
    {sel2, sel1, sel0} = 3'b001; #10;
    {sel2, sel1, sel0} = 3'b010; #10;
    {sel2, sel1, sel0} = 3'b011; #10;
    {sel2, sel1, sel0} = 3'b100; #10;
    {sel2, sel1, sel0} = 3'b101; #10;
    {sel2, sel1, sel0} = 3'b110; #10;
    {sel2, sel1, sel0} = 3'b111; #10;

     $finish;
  end
endmodule
