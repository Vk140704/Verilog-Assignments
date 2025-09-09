module nor_switch_tb;
reg a,b;
wire f;

nor_switch uut(.a(a),.b(b),.f(f));
initial begin
$dumpfile("nor_switch_tb.vcd");
$dumpvars;
$display("  TIME  | A B | OUT |");
$display("-----------------------");
$monitor("  %4t  | %b %b | %b |",$time,a,b,f);

a<=0; b<=0; #10;
a<=0; b<=1; #10;
a<=1; b<=0; #10;
a<=1; b<=1; #10;
$finish;
end
endmodule

  
