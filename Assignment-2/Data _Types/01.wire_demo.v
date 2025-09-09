/*1. Wire and Reg Demonstration
Write a Verilog module where:
• net1 and net2 are wires.
• net1 is assigned a constant value and net2 = net1.
• Display their values using $display.*/
answer:

module wire_demo;
wire net1,net2;
assign net1=1'b1;
assign net2=net1;
initial begin
$display("time=%0t : net1=%b net2=%b", $time, net1, net2); #5 
$display("time=%0t : net1=%b net2=%b", $time, net1, net2);
$finish;
end
endmodule
