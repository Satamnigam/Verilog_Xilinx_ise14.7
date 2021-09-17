`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:37:16 10/12/2019 
// Design Name: 
// Module Name:    carryfree 
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
module carryfree(
(bool*bool) ?tin , ?x,?y,bool ?lin ,
(bool*bool) !tout ,!s,bool !lout);
{
bool w1,w2,w3 ,w4,w,u1,u0;
// define the critical input cases:
w1 = !x.0 & !x.1 & y.1; // x==0 & y==+1
w2 = !x.0 & !x.1 & y.0; // x ==0 & y==-1
w3 = !y.0 & !y.1 & x.1; // y==0 & x==+1
w4 = !y.0 & !y.1 & x.0; // y ==0 & x==-1
w = w1 | w2 | w3 | w4;
u1 = !lin & w; // tin!=-1 & critical input
u0 = lin & w; // tin!=+1 & critical input
// determine lout := x=-1 | y=-1
lout = x.0 | y.0;
// tout .0 holds iff x=y=-1 | tin !=+1 & x+y=-1
tout.0 = x.0 & y.0 | lin & (w2 | w4);
// tout.1 holds iff x=y=+1 | tin!=-1 & x+y=+1
tout.1 = x.1 & y.1 | !lin & (w1 | w3);
// determine sum digit
s.0 = tin.0 & !u0 | u1 & !tin.1;
s.1 = tin.1 & !u1 | u0 & !tin.0;
}

endmodule
