//12. Write a testbench for a blocking-assigned flip-flop—verify its output.
`timescale 1ns/1ps

module tb_dff_blocking; 
  reg  d, clk;
  wire q;
  dff_blocking uut(.d(d),.clk(clk),.q(q));
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // toggle every 5 time units
  end
  initial begin
    d = 0;
    #5 d = 1;     
    #10 d = 0;    
    #20 $finish;  
  end
  initial begin
    $monitor("%0t clk=%b d=%b q=%b", $time, clk, d, q);
  end

endmodule
