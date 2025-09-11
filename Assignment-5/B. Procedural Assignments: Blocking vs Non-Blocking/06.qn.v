//14. Create a pipelined register using non-blocking assignments.

module pipeline_reg (
    input clk,
    input [7:0] din,
    output reg [7:0] q1, q2
);
  always @(posedge clk) begin
    q1 <= din;
    q2 <= q1; 
  end

endmodule

//testbench code

module tb_pipeline_reg;
  reg clk;
  reg [7:0] din;
  wire [7:0] q1, q2;
  pipeline_reg uut(clk, din, q1, q2);
  initial begin
    $monitor($time, " clk=%b din=%d q1=%d q2=%d", clk, din, q1, q2);
    clk = 0; din = 0;
    #5 din = 10;
    #10 din = 20;
    #10 din = 30;
    #20 $finish;
  end

  always #5 clk = ~clk;
endmodule
