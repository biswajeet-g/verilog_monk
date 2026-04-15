// Behavioral Modeling
/*module dlatch(
    input d, clk, reset,
    output reg q
);

always @(d, clk, reset)
begin
    if (reset)
    q<=0;
    else
    if (clk)
    q<=d;
end
endmodule*/

//Dataflow Modeling
module dlatch(
    input d, clk, reset,
    output q
);

wire s, r, qbar;
assign s= d & clk;
assign r= (~d) & clk;

assign q= reset ? 0 : ~(r|qbar);
assign qbar= ~(s|q);

endmodule