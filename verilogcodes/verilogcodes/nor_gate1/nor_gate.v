//Behavioural Modeling
module nor_gate(
    input a,
    input b,
    output reg c
);

always @(a,b) //Sensitivity list
begin
    if(a==0 && b==0)
        c<=1;
    else 
        c<=0;
end

endmodule

//Gate Level Modeling
module nor_gate(
    input a,
    input b,
    output c
);
wire c_1;
or(c_1,a,b);
not(c,c_1);
endmodule

//Data Flow Modeling
module nor_gate(
    input a,
    input b,
    output c
);

assign c=~(a|b);
endmodule