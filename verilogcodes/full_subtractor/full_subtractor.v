//Behavioral Modeling
/*module full_subtractor( 
    input a,b,bin,
    output reg diff,bout); 
    always @(*) begin
    if(a==0 && b==0 && bin==0) begin diff=0;bout=0; end
    else if(a==0 && b==0 && bin==1) begin diff=1;bout=1; end
else if(a==0 && b==1 && bin==0) begin diff=1;bout=1; end
else if(a==0 && b==1 && bin==1) begin diff=0;bout=1; end
else if(a==1 && b==0 && bin==0) begin diff=1;bout=0; end
else if(a==1 && b==0 && bin==1) begin diff=0;bout=0; end
else if(a==1 && b==1 && bin==0) begin diff=0;bout=0; end
else
begin diff=1;bout=1; end 
end
endmodule*/

//Gate-level Modeling
/*module full_subtractor(a, b, bin, diff, bout);

input a, b, bin;
output diff, bout;

wire x1, x2, x3, nA;

xor (x1, a, b);
xor (diff, x1, bin);

not (nA, a);
and (x2, nA, b);
and (x3, nA, bin);
and (x4, b, bin);
or  (bout, x2, x3, x4);

endmodule*/

//Dataflow Modeling
/*module full_subtractor(
    input a,b,bin,
    output diff,bout
);

assign diff=a^b^bin;
assign bout=(~a)&b|(~a)&bin|b&bin;

endmodule*/