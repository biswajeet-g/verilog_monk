`timescale 1ns/1ps

module memory_modl_tb;
reg clk,reset, load;
reg D;
wire Q;

memory_modl dut(
    .clk(clk),
    .reset(reset),
    .load(load),
    .D(D),
    .Q(Q)
)

initial begin
    /*clk=1; D=0; #10
    clk=1; D=1; #10
    $finish*/
    clk=1'b0;
    always #5 clk=~clk; //forever #5 clk=~clk
end

//input stimulus

//io monitor block

//simulation, start, stop, debug, resume, suspend