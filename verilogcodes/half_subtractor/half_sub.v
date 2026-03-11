//Behavioural Modeling
module half_sub(
    input a,
    input b,
    output reg diff,
    output reg borrow
);
always @(a,b)
begin
    if(a==0 && b==0)begin
        diff=0; borrow=0;
    end
    else if(a==0 && b==1)begin
        diff=1; borrow=1;
    end
    else if(a==1 && b==0)begin
        diff=1; borrow=0;
    end
    else if(a==1 && b==1)begin
        diff=0; borrow=0;
    end
end

endmodule

//Data Flow Modeling
/*module half_sub(
    input a,
    input b,
    output diff,
    output borrow
);

assign diff = a^b;
assign borrow = (~a)&b;

endmodule*/

//Gate Level Modeling
/*module half_sub 
(
    input a,b,
    output diff,borrow
);
wire a_reg;
xor(diff,a,b);
not(a_reg,a);
and(borrow,a_reg,b);
endmodule