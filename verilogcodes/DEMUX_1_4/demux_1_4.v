//Behavioral Modeling
module demux_1_4(
    input d,
    input [1:0]s,
    output reg yout,
    output reg [3:0]y
);

always @(d or s)
begin
    if(d==0)begin
        y[0]=0; y[1]=0; y[2]=0; y[3]=0;
    end
    else if (d==1 && s[1]==1'b0 && s[0]==1'b0) begin
       y[0]=1; y[1]=0; y[2]=0; y[3]=0;
    end
    else if (d==1 && s[1]==1'b0 && s[0]==1'b1) begin
        y[0]=0; y[1]=1; y[2]=0; y[3]=0;
    end
    else if (d==1 && s[1]==1'b1 && s[0]==1'b0) begin
        y[0]=0; y[1]=0; y[2]=1; y[3]=0;
    end
    else if (d==1 && s[1]==1'b1 && s[0]==1'b1) begin
        y[0]=0; y[1]=0; y[2]=0; y[3]=1;
    end
end

endmodule

//Gate-Level Modeling
module demux_1_4(
    output [3:0]y,
    input [1:0]s,
    input d
);

wire sbar1,sbar0;
not n1(sbar1,s[1]);
not n2(sbar0,s[0]);
and a1(y[0],sbar1,sbar0,d);
and a2(y[1],sbar1,s[0],d);
and a3(y[2],s[1],sbar0,d);
and a4(y[3],s[1],s[0],d);

endmodule

//Dataflow Modeling
module demux_1_4(
    input [1:0]s,
    input d,
    output [3:0]y
);

assign y[0]=((~s[1])&(~s[0])&d);
assign y[1]=((~s[1])&(s[0])&d);
assign y[2]=((s[1])&(~s[0])&d);
assign y[3]=((s[1])&(s[0])&d);
endmodule
