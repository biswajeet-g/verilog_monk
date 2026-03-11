`timescale 1ns/1ps
module half_adder_tb;
reg A,B; //for storing of data 
wire C;
wire S; //for transport of data
half_adder uut(
    .a(A),
    .carry(C),
    .b(B),
    .sum(S)
);
initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10;
    $finish;
end
initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars();
end

endmodule