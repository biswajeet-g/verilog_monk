`timescale 1ns/1ps
module dflipfloptb;

reg d, clk; //reset;
wire q;

dflipflop uut(
    .d(d),
    .clk(clk),
    //.reset(reset),
    .q(q)
);

initial begin
    clk=1; d=0; #10
    d=1; #10
    d=0; #10

    clk=0; d=1; #10
    d=0; #10

    clk=1; d=1; #10
    $finish;

end

initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(0,dflipfloptb);
end
endmodule