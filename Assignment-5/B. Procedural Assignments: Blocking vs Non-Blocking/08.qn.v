//16. Write a code where incorrect usage of blocking assignment causes simulation mismatch.
module concurrent;
reg a,b,clk;
always @(posedge clk) begin
 a=b; b=a;
end
initial begin
 clk=0;
 forever #10 clk=~clk;
 end
initial begin

$monitor("|time=%t | clk=%b | a=%b | b=%b |",$time,clk,a,b);
#10 a=1;b=0;
#100$finish;
end
endmodule
