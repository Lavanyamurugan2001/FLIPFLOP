module JKFF ( input J,input K, input clk, input rst, output reg Q);
always @(posedge clk or posedge rst) //asynch reset
begin
if(rst == 1) 
begin 
Q <= 0;
end
else begin
case({J, K})
2'b00: Q <= Q; //no change
2'b01: Q <= 1'b0; //Clear
2'b10: Q <= 1'b1; //Set
2'b11: Q <= ~Q; //Complement
endcase
end
end
endmodule
