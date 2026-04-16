`timescale 1ns/1ps
module downcounttb;

reg clk, reset;
wire [2:0] count;

downcounter uut(
    .clk(clk),
    .reset(reset),
    .count(count)
);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    reset=1; 
    #10 reset=0;

    #100

    reset=1; 
    #10 reset=0;
    #50
    $finish;
end

initial begin
    $dumpfile("downcounter.vcd");
    $dumpvars(0,downcounttb);

end

endmodule