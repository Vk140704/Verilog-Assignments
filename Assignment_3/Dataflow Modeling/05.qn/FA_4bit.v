/*5. Create a 4-bit full adder using only assign statement:assign {c_out, sum} = a + b + c_in;*/

module FA_4bit(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
assign{cout,sum}=a+b+cin;
endmodule
