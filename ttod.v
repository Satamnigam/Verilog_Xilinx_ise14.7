`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:48 06/27/2019 
// Design Name: 
// Module Name:    ttod 
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
module ttod(
    input d,
    output q,
    output qb,
    input clk
    );
	 t t1(d,q,qb,clk);
	 assign t=q^d;
endmodule
module t(input t,output reg q,output reg qb,input clk);
initial begin q=0;qb=1; end
always @(posedge clk)
begin
casex({t})
1'b0 : begin q=0;qb=1;end
1'b1 : begin q=1;qb=0;end 
endcase
end 
endmodule







