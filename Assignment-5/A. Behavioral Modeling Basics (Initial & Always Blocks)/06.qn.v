//6. Implement a module that uses initial for setup and always for functional updates.
module init_always;
  reg [15:0]a;

  initial begin
  $monitor("time=%t a=%b",$time,a);
    a = 16'h0000;
    #100 $finish;
  end

  always #10 a = a + 2;
endmodule
