`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:41 07/01/2019 
// Design Name: 
// Module Name:    non_ovelaping1011 
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

module statemachine(
    input clk,
    input x,
	 output reg y  ,
	 output [1:0]s
    );
	 reg [1:0] s;
initial {s,y} =3'b000;
always @(negedge clk)
begin
case({s,x})
3'b000: {s,y} = 3'b000;
3'b001: {s,y} = 3'b010;
3'b010: {s,y} = 3'b100;
3'b011: {s,y} = 3'b000;
3'b100: {s,y} = 3'b000;
3'b101: {s,y} = 3'b110;
3'b110: {s,y} = 3'b000;
3'b111: {s,y} = 3'b001;
endcase
end
endmodule
