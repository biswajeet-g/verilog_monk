module 2d_array_RAM(
    input [31:0] data_in,
    input [31:0] address,
    input we, clk, rest, cs, re,
    output [31:0] data_out
);

reg [31:0] mem [63:0];
always @(posedge clk)
begin
    if(cs)
    begin
        if(rst)
        mem[address]<=0;
        else if(we)
        mem[address]<=data_in;
        else
        data_out<=mem[address];
    end
endmodule