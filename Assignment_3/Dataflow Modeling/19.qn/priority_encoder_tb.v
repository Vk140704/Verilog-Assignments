module tb_encoder;
reg E3,E2,E1,E0;
wire [1:0]Y;
encoder uut(.E0(E0), .E1(E1), .E2(E2), .E3(E3), .Y(Y));
initial begin
$dumpfile("encoder_wave.vcd");
$dumpvars(0, tb_encoder);
$monitor(" %b %b %b %b | %b   ", E3,E2,E1,E0,Y);
E3=0;E2=0;E1=0;E0=1;#10;
E3=0;E2=0;E1=1;E0=0;#10;
E3=0;E2=1;E1=0;E0=0;#10;
E3=1;E2=0;E1=0;E0=0;#10;
E3=0;E2=0;E1=0;E0=1;#10;
E3=0;E2=0;E1=1;E0=1;#10;
E3=0;E2=1;E1=1;E0=1;#10;
E3=1;E2=1;E1=1;E0=1;#10;
$finish;
end
endmodule
