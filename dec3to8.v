`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:17 06/22/2019 
// Design Name: 
// Module Name:    dec3to8 
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
module dec3to8(
    input [0:2]i,
    output [7:0]q,
    input en
    );
assign q[0]= ~i[0]&~i[1]&~i[2];
assign q[1]= ~i[0]&~i[1]&i[2];
assign q[2]= ~i[0]&i[1]&~i[2];
assign q[3]= ~i[0]&i[1]&i[2];
assign q[4]= i[0]&~i[1]&~i[2];
assign q[5]= i[0]&~i[1]&i[2];
assign q[6]= i[0]&i[1]&~i[2];
assign q[7]= i[0]&i[1]&i[2];


endmodule
