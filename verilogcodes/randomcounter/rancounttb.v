`timescale 1ns/1ps
module rancounttb;
parameter N=3;
reg clk,rst,en,load,dir;
reg [N-1:0]in_data;
wire [2:0]q;
randocount #(.N(N)) uut(
    
    .clk(clk),
    .rst(rst),
    .load(load),
    .in_data(in_data),
    .q(q),
    .en(en),
    .dir(dir)
);
always #5 clk =~clk;
initial begin
    clk=1'b1;
    en=1'b0;
    rst=1'b1;
    load=1'b0;
    dir=1'b0;
    #50;
    rst=1'b0;
    #100;
    en=1'b1;
    dir=1'b0;
    #100;
    load =1'b1;
    in_data=3'b101;
    #10;
    load=1'b0;
    en=1'b1;
    dir=1'b1;
    #100;
    en=1'b1;
    dir=1'b0;
    #100;
    $finish;
end
initial begin
    $dumpfile("randocount.vcd");
    $dumpvars(0,rancounttb.v);
end
endmodule