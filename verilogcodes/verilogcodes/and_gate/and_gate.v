//Behavioural Modeling
module and_gate(
    input a,
    input b,
    output reg c
);

always @(a,b) //Sensitivity list
begin
    if(a==0 && b==0)
        c<=0;
    else if(a==0 && b==1)
        c<=0;
    else if(a==1 && b==0)
        c<=0;
    else if(a==1 && b==1)
        c<=1;
end

endmodule
//Gate Level Modeling
module and_gate(
    input a,
    input b,
    output c
);
and(c,a,b);

endmodule

//Data Flow Modeling
module and_gate(
    input a,
    input b,
    output c
);

assign c=(a&b);
endmodule 