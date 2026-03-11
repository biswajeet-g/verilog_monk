`timescale 1ns/1ps
module nor_gate_tb;
reg A,B; //for storing of data 
wire C; //for transport of data
nor_gate uut(
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
    $dumpfile("nor_gate.vcd");
    $dumpvars();
end

endmodule