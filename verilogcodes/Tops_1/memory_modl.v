/* MEMORY MODELING IN VERILOG 

memory - collection of flipflops

Parameter :
- word size/ word length (N)
- M/m depth 
- Data lines/ Data size (n)
- Address lines (k)

- Word Size : no. of bits of data that can be stored 

e.g. 1kb * 16M/m
1024 * 16 -> 1024 words/location
2^10 * 2^4

~ no. of locations = no. of addresses = 1024 -> M/m Depth

here, k=10;

16 -> word size 

**Addressing mechanism -> no. of locations = 2^k

- k to 2^k decoding scheme to be used 
- keeping k constant, 2^k can be increased by banking and segmentation.

pin can be increased from k to k+1, which is the chip select/chip enable pin

- chip select : when CE =0 , output is active
if CE=1, output is inactive, high impedance state 

realisation of 2^k -> 1<<k [left shift]

** Memories 
- Register
- Register Files
- RAM
- ROM
- FIFO

1. Register - Collection of flipflops 
- n- parallel flipflops
*/
//Replication Operator
//D flip flop writes data at every clock edge -> problem is it writes only if user wants 


/* Approach 1 - Load signal
- Parallel load + M/m + reset
*/


module nbit_reg(clk, reset, D, Q);
parameter N=4;
    input clk;
    input reset;
    input load;
    input [N-1:0] D;
    output reg [N-1:0] Q;



always @(posedge clk or negedge reset)
    begin
        if(!reset)
            Q<={N{1'b0}}; //! -> true or false , ~ -> no. of bits

        else if(load)
            Q<=D;

        else
            Q<=Q;
    end


endmodule

/* Approach 2 : Chip Select
- on hardware, for realisation - uses Multiplexer -> output will be connect to DFF -> write only when CE=1 else M/m
*/

/*if(!reset)
Q<={N{1'b0}};

else if(load && CE)
Q<=D;

else
Q<=Q;*/
