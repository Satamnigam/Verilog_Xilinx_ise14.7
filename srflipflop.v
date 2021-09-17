`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:14 06/24/2019 
// Design Name: 
// Module Name:    clock 
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
module clock(
    input s,
    input r,
    output reg q,
    output reg qb,
    input clk
    );
	 initial  begin q=0;qb=0;end
	 always @(posedge clk)
	 begin
	 casex ({s,r})
	 0: begin q=q; qb=qb; end
	 1: begin q=0; qb=1; end
	 2: begin q=1; qb=0;end
	 endcase
	 end
endmodule
