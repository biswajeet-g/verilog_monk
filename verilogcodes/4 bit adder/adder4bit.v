module full_adder(
    input A,B,Cin,
    output Sum,Cout
);

assign Sum=A^B^Cin;
assign Cout=(A&B) | (Cin&(A^B));
endmodule
module adder4bit (
    input [3:0]A,
    input [3:0]B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
wire c1,c2,c3;

full_adder f1 (
    .A(A[0]),
    .B(B[0]),
    .Cin(Cin),
    .Sum(Sum[0]),
    .Cout(c1)
);

full_adder f2(
    .A(A[1]),
    .B(B[1]),
    .Cin(Cin),
    .Sum(Sum[1]),
    .Cout(c2)
);

full_adder f3(
    .A(A[2]),
    .B(B[2]),
    .Cin(Cin),
    .Sum(Sum[2]),
    .Cout(c3)
);

full_adder f4(
    .A(A[3]),
    .B(B[3]),
    .Cin(Cin),
    .Sum(Sum[3]),
    .Cout(Cout)
);

endmodule