//37. Implement a 2:1 multiplexer using if statement.
module mux(input i0.i1,i2,i3,sel,output y);
  wire w1,w2;
  
  always@begin
    if(sel==0)
      w1=i0;
    else
      w1=i2;
  end 
  always @begin
    if (sel==0)
      w2=i3;
    else
      w2=i4;
  end
      
