`timescale 1ns/1ps 
module mux_4tb;
reg [3:0]i;
reg [1:0]s;
wire y;
mux_4_1 uut(
    .i(i),
    .s(s),
    .y(y)
);
initial begin
    i=4'b1010;
    s[1]=0; s[0]=0; #10
    s[1]=0; s[0]=1; #10
    s[1]=1; s[0]=0; #10
    s[1]=1; s[0]=1; #10
    $finish;
end

initial begin
    $dumpfile("mux_4_1.vcd");
    $dumpvars();
end
endmodule
