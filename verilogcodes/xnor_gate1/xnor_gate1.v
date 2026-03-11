//Behavioural Modeling
module xnor_gate1(
    input a,
    input b,
    output reg c
);

always @(a,b) //Sensitivity list
begin
    if(a==0 && b==0)
        c<=1;
    else if(a==0 && b==1)
        c<=0;
    else if(a==1 && b==0)
        c<=0;
    else 
        c<=1;
end

endmodule

//Gate Level Modeling
module xnor_gate1(
    input a,
    input b,
    output c
);
xor(c,a,b);

endmodule

//Data Flow Modeling
module xnor_gate1(
    input a,
    input b,
    output c
);

assign c=(a^b);
endmodule