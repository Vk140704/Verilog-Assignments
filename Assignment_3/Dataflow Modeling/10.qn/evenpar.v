/*10.Implement a 9-bit even parity generator using ^x and ~:
assign ep = ^x; assign op = ~ep;*/
module evenpar(x,ep,op);
input [8:0]x;
output ep,op;
assign ep=^x;
assign op=~ep;
endmodule;
