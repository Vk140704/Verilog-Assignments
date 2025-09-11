/*3. Use multiple always blocks in a module and simulate how they execute in parallel.*/
//Answer:
  module multi_always;
  reg a, b;

  initial begin
    $monitor("time=%t   a=%b    b=%b  ", $time, a,b);
    a = 0; b = 0;
   #100$finish;
  end

  always #5 a = ~a;
  always #7 b = ~b; 
endmodule
