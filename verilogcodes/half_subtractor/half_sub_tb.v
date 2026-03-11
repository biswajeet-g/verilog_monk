`timescale 1ns/1ps
module half_sub_tb;

reg A,B;
wire Bo;
wire D;

half_sub uut(
    .a(A),
    .b(B),
    .borrow(Bo),
    .diff(D)
);

initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10
    $finish;
end
initial begin
    $dumpfile("half_sub.vcd");
    $dumpvars();
end

endmodule