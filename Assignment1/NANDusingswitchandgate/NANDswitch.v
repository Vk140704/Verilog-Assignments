module nand_switch(
  input a,b,
  output f);
  
  supply1 vdd;
  supply0 gnd;
  wire w1;
  
  pmos p1(f,vdd,a);
  pmos p2(f,vdd,b);
  nmos n1(w,gnd,a);
  nmos n2(f,w,b);

endmodule  
