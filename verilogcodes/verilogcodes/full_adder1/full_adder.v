//Behavioral Modeling
/*module full_adder(
    input a,
    input b,
    input cin,
    output reg sum,
    output reg carry
);
always @(a,b,cin)
begin
    if(a==0 && b==0 && cin==0)begin
        sum=0; carry=0;
    end
    else if(a==0 && b==0 && cin==1)begin
        sum=1; carry=0;
    end
    else if(a==0 && b==1 && cin==0)begin
        sum=1; carry=0;
    end
    else if(a==0 && b==1 && cin==1)begin
        sum=0; carry=1;
    end
    else if(a==1 && b==0 && cin==0)begin
        sum=1; carry=0;
    end
    else if(a==1 && b==0 && cin==1)begin
        sum=0; carry=1;
    end
    else if(a==1 && b==1 && cin==0)begin
        sum=0; carry=1;
    end
    else if(a==1 && b==1 && cin==1)begin
        sum=1; carry=1;
    end

end
endmodule*/

//Gate-Level Modeling
/*module half_adderforfull(
    input a,
    input b,
    output sum,
    output carry
);

assign sum=a^b;
assign carry=a&b;
endmodule

module full_adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Carry
);
wire w1,w2,w3;
half_adderforfull f1(.a(A),.b(B),.sum(w1),.carry(w2));
half_adderforfull f2(.a(w1),.b(Cin),.sum(Sum),.carry(w3));
or f3(Carry,w3,w3);
endmodule*/

//Dataflow Modeling
module full_adder(
    input A,B,Cin,
    output Sum,Carry
);

assign Sum=A^B^Cin;
assign Carry=(A&B) | (Cin&(A^B));

endmodule