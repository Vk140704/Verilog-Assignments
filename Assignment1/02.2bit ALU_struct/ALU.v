  module alu(input [1:0] a, input [1:0] b, input [1:0] op, output reg [3:0] result);
    always @(*)
      case (op)
        2'b00: result = a + b;
        2'b01: result = a - b;
        2'b10: result = a & b;
        2'b11: result = a | b;
      endcase
  endmodule
  
        module multiplier(input [1:0] a, input [1:0] b, output [3:0] product);
    assign product = a * b;
  endmodule
  
  module divider(input [1:0] a, input [1:0] b, output [3:0] quotient, output [1:0] remainder);
    always @(*)begin
      if (b == 0) begin
      quotient = 4'b0000; 
      remainder = a;        
    end else begin
    assign quotient = a / b;
    assign remainder = a % b;
  endmodule
