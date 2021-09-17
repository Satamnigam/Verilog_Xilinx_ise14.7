`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:16 06/29/2019
// Design Name:   johnsoncounter
// Module Name:   C:/Users/satyam/Desktop/my codes/jhonsoncounter/john_test.v
// Project Name:  jhonsoncounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: johnsoncounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module john_test;

	// Inputs
	reg clk;
	reg clr;

	// Outputs
	wire [3:0] q;
	wire [3:0] qb;

	// Instantiate the Unit Under Test (UUT)
	johnsoncounter uut (
		.clk(clk), 
		.clr(clr), 
		.q(q), 
		.qb(qb)
	);
initial clk=0;
always #50 clk=~clk;
	initial begin
		// Initialize Inputs
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

