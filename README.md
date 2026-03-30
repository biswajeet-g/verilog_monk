# Verilog Codes
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
