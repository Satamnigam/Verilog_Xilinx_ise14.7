`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:32 06/27/2019
// Design Name:   ttod
// Module Name:   C:/Users/satyam/Desktop/my codes/ttodflipflop/test_ttod.v
// Project Name:  ttodflipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ttod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ttod;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	ttod uut (
		.d(d), 
		.q(q), 
		.qb(qb), 
		.clk(clk)
	);
	end
      
endmodule

