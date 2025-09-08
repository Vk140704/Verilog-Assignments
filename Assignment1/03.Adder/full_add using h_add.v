module(input a,b,outputsum,carry);
xor(sum,a,b);
and(carry,a,b);
endmodule

module f_add(input a,b,cin,output sum,carry);
wire s1,c1,c2;
h_add h1(.a(a),.b(b),.sum(s1),.carry(c1));
h_add h2(.a(s1),.b(cin),.sum(sum),.carry(c2));

assign carry=c1|c2;
endmodule
