`timescale 1ps/1ps

module adder4bit_tb;

reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;

adder4bit uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    A=4'b0000; B=4'b0000; Cin=0; #10
    A=4'b0011; B=4'b0101; Cin=0; #10
    A=4'b1111; B=4'b0001; Cin=0; #10
    A=4'b1010; B=4'b0101; Cin=0; #10
    A=4'b1111; B=4'b1111; Cin=0; #10
    A=4'b0110; B=4'b0011; Cin=0; #10
    $finish;
end

initial begin
    $dumpfile("adder4bit.vcd");
    $dumpvars(0,adder4bit_tb);
end

endmodule