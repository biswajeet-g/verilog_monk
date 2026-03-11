//Behavioural Modeling
module half_adder(
    input a,
    input b,
    output reg sum,
    output reg carry
);

always @(*)
begin
    if(a==0 && b==0)begin
        sum=0; carry=0; 
        end
    else if(a==0 && b==1)begin
        sum=1; carry=0; 
        end
    else if(a==1 && b==0)begin
        sum=1; carry=0; 
        end
    else if(a==1 && b==1)begin
        sum=0; carry=1;
    end
end

endmodule

//Data Flow Modeling
module half_adder(
    input a,
    input b,
    output sum,
    output carry
);

assign sum = a^b;
assign carry = a&b;

endmodule

//Gate Level Modeling
module half_adder 
(
    input a,b,
    output sum,carry
);

xor(sum,a,b);
and(carry,a,b);
endmodule
