/*9. Write a module using replication operator:
assign y = {a, {4{b[0]}}, c[1]};*/
module replic(a,b,c,y);
input a;
input [1:0]b,c;
output [5:0]y;
assign y={a,{4{b[0]}},c[1]};
endmodule
