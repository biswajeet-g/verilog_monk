`timescale 1ns/1ps
module updowncounttb;

reg clk, ud, reset;
wire [2:0] count;

updowncount uut(
    .clk(clk),
    .reset(reset),
    .count(count),
    .ud(ud)
);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    reset=1; ud=1;
    #10 reset=0;

    ud=1;
    #50
    ud=0;
    #50

    reset=1; 
    #10 reset=0;

    ud=1;
    #50
    $finish;
end

initial begin
    $dumpfile("updowncount.vcd");
    $dumpvars(0,updowncounttb);

end

endmodule