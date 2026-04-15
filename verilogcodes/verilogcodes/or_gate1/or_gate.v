//Behavioural Modeling
module or_gate(
    input a,
    input b,
    output reg c
);

always @(a,b) //Sensitivity list
begin
    if(a==0 && b==0)
        c<=0;
    else 
        c<=1;
end

endmodule

//Gate Level Modeling
module or_gate(
    input a,
    input b,
    output c
);

or(c,a,b);

endmodule

//Data Flow Modeling
module or_gate(
    input a,
    input b,
    output c
);

assign c=(a|b);
endmodule