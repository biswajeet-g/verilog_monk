//Behavioral Modeling
module mux_4_1(
    input [3:0]i,
    input [1:0]s,
    output reg y
);

always @(i or s)
begin
    if(s[1]==1'b0 && s[0]==1'b0)
    y=i[0];
    else if (s[1]==1'b0 && s[0]==1'b1)
    y=i[1];
    else if (s[1]==1'b1 && s[0]==1'b0)
    y=i[2];
    else if (s[1]==1'b1 && s[0]==1'b1)
    y=i[3];
end

endmodule

//DataFlow Modeling
module mux_4_1(
    input [3:0]i,
    input [1:0]s,
    output y
);

wire [3:0]w;
assign w[0]=((~s[1])&(~s[0])&i[0]);
assign w[1]=((~s[1])&(s[0])&i[1]);
assign w[2]=((s[1])&(~s[0])&i[2]);
assign w[3]=((s[1])&(s[0])&i[3]);
assign y=w[0]|w[1]|w[2]|w[3];

endmodule

//Gate-level modeling
module mux_4_1(
    output y,
    input [3:0]i,
    input [1:0]s
);
wire sbar1,sbar0;
wire w1,w2,w3,w4;
not n1(s_1,s[1]);
not n2(s_0,s[0]);
and a1(w1,i[0],s[0],s_1);
and a2(w2,i[1],s[0],s_1);
and a3(w3,i[2],s_0,s[1]);
and a4(w4,i[3],s[1],s[0]);
or o1(y,w2,w3,w4,w1);

endmodule

//DataFlow Modeling
module mux_4_1(
    output y,
    input [3:0]i,
    input [1:0]s
);

wire w1,w2,w3,w4;
assign w1=(~s[1])&(~s[0])&i[0];
assign w2=(~s[1])&(s[0])&i[1];
assign w3=(s[1])&(~s[0])&i[2];
assign w1=(s[1])&(s[0])&i[3];
assign y=w1|w2|w3|w4;

endmodule
