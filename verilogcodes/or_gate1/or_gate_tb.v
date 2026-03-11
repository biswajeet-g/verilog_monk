`timescale 1ns/1ps
module or_gate_tb;
reg A,B; //for storing of data 
wire C; //for transport of data
or_gate uut(
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
    $dumpfile("or_gate_vcd.vcd");
    $dumpvars();
end

endmodule