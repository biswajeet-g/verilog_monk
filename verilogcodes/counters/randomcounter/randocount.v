module randocount(
    input clk,rst,en,load,dir,
    input [N-1:0]in_data,
    output reg [N-1:0]q
);
parameter N = 3;
always @(posedge clk or posedge rst)
begin
    if(rst)
        q<={N{1'b0}}; 
    else if(load)
        q<=in_data;
    else if(en)
    begin
        if(dir)
            q<=q-1'b1;
        else
            q<=q+1'b1;
    end
end 
endmodule