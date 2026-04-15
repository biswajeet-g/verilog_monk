//Behavioural Modeling
module xor_gate(
    input a,
    input b,
    output reg c
);

always @(a,b) //Sensitivity list
begin
    if(a==0 && b==0)
        c<=0;
    else if(a==0 && b==1)
        c<=1;
    else if(a==1 && b==0)
        c<=1;
    else 
        c<=0;
end

endmodule

//Gate Level Modeling
module xor_gate(
    input a,
    input b,
    output c
);
xor(c,a,b);

endmodule

//Data Flow Modeling
module xor_gate(
    input a,
    input b,
    output c
);

assign c=(a^b);
endmodule