# Verilog Codes

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
module nor_gate(
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
endmodule
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

## Experiment 4
### To Design a 4:1 MUX
##### RTL Code
```
//Behavioral Modeling
/*module mux_4_1(
    input [3:0]i,
    input [1:0]s,
    output reg y
);

always @(i or s)
begin
    if(s[1]==1'b0 && s[0]==1'b0)
    y=i[0];
    else if (s[1]==1'b0 && s[0]==1'b1)
    y=i[1];
    else if (s[1]==1'b1 && s[0]==1'b0)
    y=i[2];
    else if (s[1]==1'b1 && s[0]==1'b1)
    y=i[3];
end

endmodule*/

//DataFlow Modeling
/*module mux_4_1(
    input [3:0]i,
    input [1:0]s,
    output y
);

wire [3:0]w;
assign w[0]=((~s[1])&(~s[0])&i[0]);
assign w[1]=((~s[1])&(s[0])&i[1]);
assign w[2]=((s[1])&(~s[0])&i[2]);
assign w[3]=((s[1])&(s[0])&i[3]);
assign y=w[0]|w[1]|w[2]|w[3];

endmodule*/

//Gate-level modeling
/*module mux_4_1(
    output y,
    input [3:0]i,
    input [1:0]s
);
wire sbar1,sbar0;
wire w1,w2,w3,w4;
not n1(s_1,s[1]);
not n2(s_0,s[0]);
and a1(w1,i[0],s[0],s_1);
and a2(w2,i[1],s[0],s_1);
and a3(w3,i[2],s_0,s[1]);
and a4(w4,i[3],s[1],s[0]);
or o1(y,w2,w3,w4,w1);

endmodule*/

//DataFlow Modeling
module mux_4_1(
    output y,
    input [3:0]i,
    input [1:0]s
);

wire w1,w2,w3,w4;
assign w1=(~s[1])&(~s[0])&i[0];
assign w2=(~s[1])&(s[0])&i[1];
assign w3=(s[1])&(~s[0])&i[2];
assign w1=(s[1])&(s[0])&i[3];
assign y=w1|w2|w3|w4;

endmodule
```

##### Testbench
```
`timescale 1ns/1ps
module mux_4tb;
reg [3:0]i;
reg [1:0]s;
wire y;
mux_4_1 uut(
    .i(i),
    .s(s),
    .y(y)
);
initial begin
    i=4'b1010;
    s[1]=0; s[0]=0; #10
    s[1]=0; s[0]=1; #10
    s[1]=1; s[0]=0; #10
    s[1]=1; s[0]=1; #10
    $finish;
end

initial begin
    $dumpfile("mux_4_1.vcd");
    $dumpvars();
end
endmodule
```

##### Waveform Result
<img width="1139" height="258" alt="mux41" src="https://github.com/user-attachments/assets/8b3637e0-a7d4-4c9f-a61d-9f2c61f2b115" />


## Experiment 5
### To Design a 1:4 DEMUX
##### RTL Code
```
//Behavioral Modeling
module demux_1_4(
    input d,
    input [1:0]s,
    output reg yout,
    output reg [3:0]y
);

always @(d or s)
begin
    if(d==0)begin
        y[0]=0; y[1]=0; y[2]=0; y[3]=0;
    end
    else if (d==1 && s[1]==1'b0 && s[0]==1'b0) begin
       y[0]=1; y[1]=0; y[2]=0; y[3]=0;
    end
    else if (d==1 && s[1]==1'b0 && s[0]==1'b1) begin
        y[0]=0; y[1]=1; y[2]=0; y[3]=0;
    end
    else if (d==1 && s[1]==1'b1 && s[0]==1'b0) begin
        y[0]=0; y[1]=0; y[2]=1; y[3]=0;
    end
    else if (d==1 && s[1]==1'b1 && s[0]==1'b1) begin
        y[0]=0; y[1]=0; y[2]=0; y[3]=1;
    end
end

endmodule

//Gate-Level Modeling
module demux_1_4(
    output [3:0]y,
    input [1:0]s,
    input d
);

wire sbar1,sbar0;
not n1(sbar1,s[1]);
not n2(sbar0,s[0]);
and a1(y[0],sbar1,sbar0,d);
and a2(y[1],sbar1,s[0],d);
and a3(y[2],s[1],sbar0,d);
and a4(y[3],s[1],s[0],d);

endmodule

//Dataflow Modeling
module demux_1_4(
    input [1:0]s,
    input d,
    output [3:0]y
);

assign y[0]=((~s[1])&(~s[0])&d);
assign y[1]=((~s[1])&(s[0])&d);
assign y[2]=((s[1])&(~s[0])&d);
assign y[3]=((s[1])&(s[0])&d);
endmodule
```

##### Testbench 
```
`timescale 1ns/1ps
module demux4tb;
reg d;
reg [1:0]s;
wire [3:0]y;
demux_1_4 uut(
    .d(d),
    .s(s),
    .y(y)
);

initial begin
    d=4'b1111;
    s[1]=0; s[0]=0; #10
    s[1]=0; s[0]=1; #10
    s[1]=1; s[0]=0; #10
    s[1]=1; s[0]=1; #10
    $finish;
end

initial begin
    $dumpfile("demux_1_4.vcd");
    $dumpvars();
end
endmodule
```

##### Waveform Result
<img width="1137" height="256" alt="demux14" src="https://github.com/user-attachments/assets/a49eb01d-b114-495e-b309-7dcd8c2ddced" />


## Experiment 6
### To Design, testbench and simulate Counters using Flipflop
#### Up Counter
##### RtL Code
```
// Behavioral Modeling
// 3-Bit UP Counter

module upcounter(
    input clk,
    input reset,
    output reg [2:0] count
);

always @ (posedge clk or posedge reset)
begin
    if (reset)
        count <= 3'b000;
    else
        count <= count +1; 
end
endmodule
```
##### TestBench
```
`timescale 1ns/1ps
module upcounttb;

reg clk, reset;
wire [2:0] count;

upcounter uut(
    .clk(clk),
    .reset(reset),
    .count(count)
);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    reset=1; 
    #10 reset=0;

    #100

    reset=1; 
    #10 reset=0;
    #50
    $finish;
end

initial begin
    $dumpfile("upcounter.vcd");
    $dumpvars(0,upcounttb);

end

endmodule
```
##### Waveform Result
<img width="1141" height="196" alt="upcounter" src="https://github.com/user-attachments/assets/45e01b6d-b5b0-461d-b85b-8104a431d471" />

#### Down Counter
##### RTL Code
```
//Behavioral Modeling
// 3-bit Down Counter

module downcounter(
    input clk,
    input reset, 
    output reg [2:0] count
);

always @ (posedge clk or posedge reset)
begin
    if (reset)
        count<=3'b111;
    else
        count<=count -1;

end
endmodule
```
##### Testbench
```
`timescale 1ns/1ps
module downcounttb;

reg clk, reset;
wire [2:0] count;

downcounter uut(
    .clk(clk),
    .reset(reset),
    .count(count)
);

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    reset=1; 
    #10 reset=0;

    #100

    reset=1; 
    #10 reset=0;
    #50
    $finish;
end

initial begin
    $dumpfile("downcounter.vcd");
    $dumpvars(0,downcounttb);

end

endmodule
```
##### Waveform Result
<img width="1145" height="192" alt="downcounter" src="https://github.com/user-attachments/assets/71779520-b7a4-48ae-adfe-a6e8ce70f2cf" />


#### UpDown Counter 
##### RTL Code
```
//Behavioral Modeling
// 3-bit UP-Down Counter

module updowncount(
    input clk,
    input reset,
    input ud,
    output reg [2:0] count

);

always @ (posedge clk or posedge reset)
begin
    if (reset)
    count <= 3'b000;
    else if (ud)
        count<=count+1;
    else
        count<=count-1;
end
endmodule
```

##### Waveform Result 
<img width="1141" height="225" alt="updowncounter" src="https://github.com/user-attachments/assets/beb67638-a2c8-4c05-af4e-0f9a9244c12b" />

