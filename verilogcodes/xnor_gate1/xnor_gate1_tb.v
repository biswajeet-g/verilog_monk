`timescale 1ns/1ps
module xnor_gate1_tb;
reg A,B; //for storing of data 
wire C; //for transport of data

xnor_gate1 uut(
    .a(A),
    .c(C),
    .b(B)
);


initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10;
    $finish;
end

initial begin
    $dumpfile("xnor_gate.vcd");
    $dumpvars(0,xnor_gate1_tb);
end
endmodule