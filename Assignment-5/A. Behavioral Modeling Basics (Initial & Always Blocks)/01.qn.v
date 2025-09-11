/*Write a module that toggles a 1-bit signal using initial and always blocks*/
//Answer:
module togggle_bit(input wire clk ,
                   input wire reset,
                   output reg  out);
  initial begin 
    out =1'b0;
  end
  always @(posedge clk or posedge reset)begin
    if (reset)begin
      out<=1'b0;
    end
    else begin
      out <= ~out;
    end 
  end
endmodule
