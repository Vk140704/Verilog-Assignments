module f_add_tb;
  reg a, b, cin;
  wire sum, carry;
  
  f_add uut(a, b, cin, sum, carry);
 
  initial begin
  $dumpfile("f_add.vcd");
  $dumpvars();
  $monitor($time," a=%b  b=%b	cin=%b	sum=%b	carry=%b",a,b,cin,sum,carry);

    a = 0; b = 0; cin = 0;
    #10 a = 0; b = 0; cin = 1;
    #10 a = 0; b = 1; cin = 0;
    #10 a = 0; b = 1; cin = 1;
    #10 a = 1; b = 0; cin = 0;
    #10 a = 1; b = 0; cin = 1;
    #10 a = 1; b = 1; cin = 0;
    #10 a = 1; b = 1; cin = 1;
    #11 $finish;

 end
 endmodule 
