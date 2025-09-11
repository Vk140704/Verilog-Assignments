/* Simulate a 16-bit register being initialized and incremented inside an always block.*/
Answer
module reg_increment;
  reg [15:0] a;

  initial begin
  $monitor("time=%t   a=%b ",$time,a);
    a= 16'h0000;
  #100 $finish;
  end

  always #10 a= a + 1; // Increment every 10 time units
endmodule
