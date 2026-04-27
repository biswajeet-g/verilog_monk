# Verilog Experiments

## Experiment 1:
### To design Logic Gates using Verilog HDL

#### AND Gates
##### RTL Code
```
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
```

##### TestBench
```
`timescale 1ns/1ps
module and_gate_tb;
reg A,B; //for storing of data 
wire C; //for transport of data
and_gate uut(
    .a(A),
    .c(C),
    .b(B)
);
//and1 u1(.a(t_a),.c(t_c),.b(t_b));
initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10;
end
initial begin
    $dumpfile("and_gate_tb.vcd");
    $dumpvars();
end

endmodule
```

##### Waveform Result 
<img width="793" height="121" alt="andgate" src="https://github.com/user-attachments/assets/f3664660-79b5-42f4-bf04-1cc5adcefe46" />

#### OR Gates
##### RTL Code
```
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
```
##### TestBench
```
`timescale 1ns/1ps
module or_gate_tb;
reg A,B; //for storing of data 
wire C; //for transport of data
or_gate uut(
    .a(A),
    .c(C),
    .b(B)
);
initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10;
    $finish;
end
initial begin
    $dumpfile("or_gate_vcd.vcd");
    $dumpvars();
end

endmodule
```

##### Waveform Result
<img width="789" height="127" alt="orgate" src="https://github.com/user-attachments/assets/d37d2dde-9b10-4c6a-8c12-6734a08a83ec" />

#### NAND Gate
##### RTL Code
```
//Behavioural Modeling
module nand_gate(
    input a,
    input b,
    output reg c
);

always @(a,b) //Sensitivity list
begin
    if(a==1 && b==1)
        c<=0;
    else 
        c<=1;
end

endmodule

//Gate Level Modeling
/*module nand_gate(
    input a,
    input b,
    output c
);
wire c_1;
and(c_1,a,b);
not(c,c_1);

endmodule
//Data Flow Modeling
module nand_gate(
    input a,
    input b,
    output c
);

assign c=~(a&b);
endmodule*/
```
##### TestBench
```
`timescale 1ns/1ps
module nand_gate_tb;
reg A,B; //for storing of data 
wire C; //for transport of data
nand_gate uut(
    .a(A),
    .c(C),
    .b(B)
);
initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10;
    $finish;
end
initial begin
    $dumpfile("nand_gate.vcd");
    $dumpvars();
end

endmodule
```
##### Waveform Result
<img width="808" height="129" alt="nandgate" src="https://github.com/user-attachments/assets/5d16bfd6-7f3f-4c12-b15a-a7b0ada618d2" />

#### NOR Gate
##### RTL Code
```
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
/*module nor_gate(
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
endmodule*/
```
##### TestBench
```
`timescale 1ns/1ps
module nor_gate_tb;
reg A,B; //for storing of data 
wire C; //for transport of data
nor_gate uut(
    .a(A),
    .c(C),
    .b(B)
);
initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10;
    $finish;
end
initial begin
    $dumpfile("nor_gate.vcd");
    $dumpvars();
end

endmodule
```

##### Waveform Result
<img width="796" height="124" alt="norgate" src="https://github.com/user-attachments/assets/d9107774-4ec2-4e2e-9720-c7f3ab421dfc" />

#### XNOR Gate
##### RTL Code
```
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
/*module xnor_gate1(
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
endmodule*/
```
##### TestBench
```
`timescale 1ns/1ps
module xnor_gate1_tb;
reg A,B; //for storing of data 
wire C; //for transport of data

xnor_gate1 uut(
    .a(A),
    .c(C),
    .b(B)
);


initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10;
    $finish;
end

initial begin
    $dumpfile("xnor_gate.vcd");
    $dumpvars(0,xnor_gate1_tb);
end
endmodule
```

##### Waveform Result
<img width="792" height="132" alt="xnorgate" src="https://github.com/user-attachments/assets/8079faa3-9458-4d62-a026-6cd09ac0eefc" />

#### XOR gate

##### RTL Code
```
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
/*module xor_gate(
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
endmodule*/
```

##### TestBench
```
`timescale 1ns/1ps
module xor_gate_tb;
reg A,B; //for storing of data 
wire C; //for transport of data
xor_gate uut(
    .a(A),
    .c(C),
    .b(B)
);

initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10;
    $finish;
end

initial begin
    $dumpfile("xor_gate.vcd");
    $dumpvars();
end

endmodule
```
##### Waveform Result
<img width="798" height="151" alt="xorgate" src="https://github.com/user-attachments/assets/2d4fead0-d3f6-456c-a142-69128041ca65" />

## Experiment 2
### To Design Half Adder and Half Subtractor using Verilog HDL

#### Half Adder
##### RTL Code
```
//Behavioural Modeling
module half_adder(
    input a,
    input b,
    output reg sum, //procedural assignment
    output reg carry
);

always @(a,b)
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
/*module half_adder(
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
endmodule*/
```
##### TestBench
```
`timescale 1ns/1ps
module half_adder_tb;
reg A,B; //for storing of data 
wire C;
wire S; //for transport of data
half_adder uut(
    .a(A),
    .carry(C),
    .b(B),
    .sum(S)
);
initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10;
    $finish;
end
initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars();
end

endmodule
```
##### Waveform Result
<img width="809" height="153" alt="halfadder" src="https://github.com/user-attachments/assets/c70e8010-0d19-4cdc-84d7-a54b9bbe9758" />

#### Half Subtractor
##### RTL Code
```
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

endmodule

//Gate Level Modeling
module half_sub 
(
    input a,b,
    output diff,borrow
);
wire a_reg;
xor(diff,a,b);
not(a_reg,a);
and(borrow,a_reg,b);
endmodule*/
```
##### TestBench
```
`timescale 1ns/1ps
module half_sub_tb;

reg A,B;
wire Bo;
wire D;

half_sub uut(
    .a(A),
    .b(B),
    .borrow(Bo),
    .diff(D)
);

initial begin
    A=0; B=0; #10
    A=0; B=1; #10
    A=1; B=0; #10
    A=1; B=1; #10
    $finish;
end
initial begin
    $dumpfile("half_sub.vcd");
    $dumpvars();
end

endmodule
```

##### Waveform Result
<img width="1131" height="142" alt="halfsub" src="https://github.com/user-attachments/assets/662f1339-4243-4400-9d5b-7508a21b1293" />

## Experiment 3
### To design Full Adder and Full Subtractor using Verilog HDL

#### Full Adder
##### RTL Code
```
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
```
##### TestBench
```
`timescale 1ns/1ps
module full_adder_tb;
reg A,B,Cin;
wire Sum;
wire Carry;
full_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    A=0; B=0; Cin=0; #10
    A=0; B=0; Cin=1; #10
    A=0; B=1; Cin=0; #10
    A=0; B=1; Cin=1; #10
    A=1; B=0; Cin=0; #10
    A=1; B=0; Cin=1; #10
    A=1; B=1; Cin=0; #10
    A=1; B=1; Cin=1; #10
    $finish;
end

initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars();
end
endmodule
```
##### Waveform Result
<img width="1137" height="172" alt="fulladder" src="https://github.com/user-attachments/assets/1ac6ea81-ed4a-4ea6-9ea7-de1fa368a8f0" />

#### Full Subtractor
##### RTL Code
```
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
module full_subtractor(
    input a,b,bin,
    output diff,bout
);

assign diff=a^b^bin;
assign bout=(~a)&b|(~a)&bin|b&bin;

endmodule
```
##### TestBench
```
`timescale 1ns/1ps
module full_subtractor_tb;
reg a,b,bin;
wire diff;
wire bout;
full_subtractor uut(
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
);
initial begin
    a=0; b=0; bin=0; #10
    a=0; b=0; bin=1; #10
    a=0; b=1; bin=0; #10
    a=0; b=1; bin=1; #10
    a=1; b=0; bin=0; #10
    a=1; b=0; bin=1; #10
    a=1; b=1; bin=0; #10
    a=1; b=1; bin=0; #10
    $finish;
end
initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars();
end
endmodule
```
##### Waveform Result
<img width="1134" height="157" alt="fullsub" src="https://github.com/user-attachments/assets/255c43e0-ac9c-41b7-9a23-d91e69cf714f" />
