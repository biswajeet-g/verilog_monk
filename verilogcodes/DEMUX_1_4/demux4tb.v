`timescale 1ns/1ps
module demux4tb;
reg d;
reg [1:0]s;
wire [3:0]y;
demux_1_4 uut(
    .d(d),
    .s(s),
    .y(y)
);

initial begin
    d=4'b1111;
    s[1]=0; s[0]=0; #10
    s[1]=0; s[0]=1; #10
    s[1]=1; s[0]=0; #10
    s[1]=1; s[0]=1; #10
    $finish;
end

initial begin
    $dumpfile("demux_1_4.vcd");
    $dumpvars();
end
endmodule