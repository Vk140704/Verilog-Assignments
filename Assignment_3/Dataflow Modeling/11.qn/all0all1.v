/*11.Write a module to detect all-zero and all-one using:
assign zero = ~(|x); assign one = &x;*/

module all0all1(x,zero,one);
input [7:0]x;
output zero,one;
assign zero=~(|x);
assign one=&x;
endmodule
