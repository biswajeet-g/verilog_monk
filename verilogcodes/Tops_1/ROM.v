module ROM #parameter N=32, parameter D=64
(
    input [5:0] address,
    input cs, r_e,
    output reg[N-1:0] data_out
);
/*
reg[31:0] mem [63:0]

initial
negin
mem[add1]=din;
end
always*/

always @(address, r_e,cs)
begin
    if(cs && r_e )
    case(address)
    6'b0000_00: data_out=0;
    6'b0000_01: data_out=32'd2;
    6'b0000_10: data_out=32'd3;
    6'b0000_11: data_out=32'd4;
    6'b0001_00: data_out=0;
    6'b0001_01: data_out=32'd2;
    6'b0001_10: data_out=32'd3;
    6'b0001_11: data_out=32'd4;
    6'b0010_00: data_out=0;
    6'b0010_01: data_out=32'd2;
    6'b0010_10: data_out=32'd3;
    6'b0010_11: data_out=32'd4;
    6'b0011_00: data_out=0;
    6'b0011_01: data_out=32'd2;
    6'b0011_10: data_out=32'd3;
    6'b0011_11: data_out=32'd4;
    6'b0100_00: data_out=0;
    6'b0100_01: data_out=32'd2;
    6'b0100_10: data_out=32'd3;
    6'b0100_11: data_out=32'd4;
    6'b0101_00: data_out=0;
    6'b0101_01: data_out=32'd2;
    6'b0101_10: data_out=32'd3;
    6'b0101_11: data_out=32'd4;
    6'b0110_00: data_out=0;
    6'b0110_01: data_out=32'd2;
    6'b0110_10: data_out=32'd3;
    6'b0110_11: data_out=32'd4;
    6'b0111_00: data_out=0;
    6'b0111_01: data_out=32'd2;
    6'b0111_10: data_out=32'd3;
    6'b0111_11: data_out=32'd4;
    6'b1000_00: data_out=0;
    6'b1000_01: data_out=32'd2;
    6'b1000_10: data_out=32'd3;
    6'b1000_11: data_out=32'd4;
    6'b1001_00: data_out=0;
    6'b1001_01: data_out=32'd2;
    6'b1001_10: data_out=32'd3;
    6'b1001_11: data_out=32'd4;
    6'b1010_00: data_out=0;
    6'b1010_01: data_out=32'd2;
    6'b1010_10: data_out=32'd3;
    6'b1010_11: data_out=32'd4;
    6'b1011_00: data_out=0;
    6'b1011_01: data_out=32'd2;
    6'b1011_10: data_out=32'd3;
    6'b1011_11: data_out=32'd4;
    6'b1100_00: data_out=0;
    6'b1100_01: data_out=32'd2;
    6'b1100_10: data_out=32'd3;
    6'b1100_11: data_out=32'd4;
    6'b1111_00: data_out=0;
    6'b1111_01: data_out=32'd2;
    6'b1111_10: data_out=32'd3;
    6'b1111_11: data_out=32'd4;

    default : data_out=32'bxxxx;
    endcase
    else
    data_out=32'bz;

end
endmodule