`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:04 06/24/2019 
// Design Name: 
// Module Name:    srlatch 
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

module srlatchnor(
input s,r,
output q,qb
);
nor n1(q,qb,r);
nor n2(qb,q,s);
endmodule
