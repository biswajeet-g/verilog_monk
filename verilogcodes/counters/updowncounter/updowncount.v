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