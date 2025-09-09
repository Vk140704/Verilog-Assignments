/*2. Demonstrate implicit net declaration by creating a module where undeclared out is
assigned using assign out = a | b;.*/
module or_gate(a,b,out);
input a,b;
output out;
assign out=a|b;
endmodule
