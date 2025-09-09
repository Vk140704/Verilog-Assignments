 module nor_switch(input a,b, output f);
supply0 gnd;
supply1 vdd;
wire w1;

 pmos p1(w1,vdd,a); 
 pmos p2(f,w1,b);
 nmos n1(f,gnd,a);
 nmos n2(f,gnd,b);
endmodule
