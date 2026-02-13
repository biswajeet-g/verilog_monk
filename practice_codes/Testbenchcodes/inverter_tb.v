`timescale 1ns/1ps
module inverter_tb;
reg A;
wire Y;
inverter_1 uut(.A(A),.Y(Y));
initial begin
    A=1'b0;
    #5;
    A=1'b1;
    #50;
    $finish;
end
initial begin
    $monitor("A= %b ,Y= %b",A,Y);
end
initial begin
    $dumpfile("inverter.vcd");
    $dumpvars(0,inverter_tb);
end

endmodule