//37. Implement a 2:1 multiplexer using if statement.
module mux(input i0,i1,sel,output y);
  always@begin
    if(sel==0)
      y=0;
    else
      y=1;
  end 
  
      
