`timescale 1ns/1ps

module RAM_tb;
reg clk,reset, address;
reg datain, we, rest. cs, re,
wire data_out;

2d_array_RAM dut(
    .clk(clk),
    .reset(reset),
    .address(address),
    .datain(data_in),
    .we(we),
    .rest(rest),
    .cs(cs),
    .re(re),
    .data_out(data_out)
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