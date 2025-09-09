/*6. Implement a 4-bit two’s complement adder using the expression:
assign t = y ^ {4{c_in}}; assign {c_out, sum} = x + t + c_in;*/


module twocomp_4bit(x,y,cin,sum,cout);
input [3:0]x,y;
input cin;
output [3:0]sum;
output cout;
wire t;
assign t=y^{4{cin}};
assign {cout,sum}=x+y+cin;
endmodule
