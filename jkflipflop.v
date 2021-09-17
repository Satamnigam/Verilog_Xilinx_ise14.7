`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:57 06/25/2019 
// Design Name: 
// Module Name:    jk 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module jk(
    input j,
    input k,
    output reg q,
    output reg qb,
    input clk
    );
	 initial begin q=0 ; qb=1; end
always @(posedge clk)
begin 
case({j,k})
2'b00 :begin q=q ; qb=~q ; end
2'b01 :begin q=0 ; qb=1  ; end
2'b10 : begin q=1 ; qb=0  ; end
2'b11 : begin q=~q ; qb=~q  ; end
endcase
end 
endmodule
