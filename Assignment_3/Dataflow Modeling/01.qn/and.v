/*1. Write a Verilog module using a continuous assignment to implement out = a & b.*/

module and_gate(A,B,out);
input A,B;
output out;
assign out=A&B;
endmodule
