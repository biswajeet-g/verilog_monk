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
/*module or_gate(
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
endmodule*/
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
