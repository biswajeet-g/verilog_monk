module and_gate(
    input a,
    input b,
    output reg c
);

always @(*) //Sensitivity list
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