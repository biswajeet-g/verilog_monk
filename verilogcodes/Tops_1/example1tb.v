`timescale 1ns/1ps

module example1tb;
reg A,B; //for storing of data 
wire C; //for transport of data

example1 uut(A,B,C);
//and1 u1(.a(t_a),.c(t_c),.b(t_b));

initial begin
    $display("time\tA B | C");
    $monitor("%0t\t %b %b | %b");

    A=0; B=0; #5;
    A=0; B=1; #5;
    A=1; B=0; #5;
    A=1; B=1; #5;

    $finish;
end

initial begin
    $dumpfile("and_gate.vcd");
    $dumpvars(0,and1_tb);
end

endmodule