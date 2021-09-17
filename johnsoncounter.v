`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:33 06/29/2019 
// Design Name: 
// Module Name:    johnsoncounter 
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
module johnsoncounter(
    input clk,
    input clr,
    output [3:0] q,
    output [3:0] qb
    );
	 wire w1;
	 not n1(w1,q[3]);
dff d3 (clk,q[2],q[3],qb[3]);
dff d2 (clk,q[1],q[2],qb[2]);
dff d1 (clk,q[0],q[1],qb[1]);
dff d0 (clk,w1,q[0],qb[0]);

endmodule
module dff(input clk,input d,output reg q,output reg qb);
initial begin q=0 ;qb=1 ;end
always @(posedge clk)
begin
casex({d})
1'b0: begin q=0;qb=1; end
1'b1: begin q=1;qb=0; end
endcase
end
endmodule
