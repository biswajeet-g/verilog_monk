//Behavioural Modeling
module nand_gate(
    input a,
    input b,
    output reg c
);

always @(a,b) //Sensitivity list
begin
    if(a==1 && b==1)
        c<=0;
    else 
        c<=1;
end

endmodule

//Gate Level Modeling
module nand_gate(
    input a,
    input b,
    output c
);
wire c_1;
and(c_1,a,b);
not(c,c_1);

endmodule
//Data Flow Modeling
module nand_gate(
    input a,
    input b,
    output c
);

assign c=~(a&b);
endmodule