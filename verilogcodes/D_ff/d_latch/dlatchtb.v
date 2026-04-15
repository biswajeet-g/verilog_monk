`timescale 1ns/1ps
module dlatchtb;

reg d, clk; //reset;
wire q;

dlatch uut(
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
    $dumpfile("dlatch.vcd");
    $dumpvars(0,dlatchtb);
end
endmodule