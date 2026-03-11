module jk_ff(
        input J,K,CLK,
        output reg Q,
        output reg Qbar
);
initial begin
        Q = 1'b0;
        Qbar = ~Q;
end
always @(posedge CLK) begin
        case ({J,K})
                2'b00:begin
                  Q <= Q;
                  Qbar <= Qbar;
                end 

                2'b01:begin
                  Q <= 1'b0;
                  Qbar <= 1'b1;
                end

                2'b10:begin
                  Q <= 1'b1;
                  Qbar <= 1'b0;
                end

                2'b11:begin
                  Q <= ~Q;
                  Qbar <= ~Qbar;
                end 
        endcase

end



endmodule