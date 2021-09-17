`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:50 06/25/2019
// Design Name:   dataff
// Module Name:   C:/Users/satyam/Desktop/my codes/dataflipflop/dff_test.v
// Project Name:  dataflipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dataff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_test;

	// Inputs
	reg d;
	reg clk;
	reg pre;
	reg clr;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	dataff uut (
		.d(d), 
		.clk(clk), 
		.pre(pre), 
		.clr(clr), 
		.q(q), 
		.qb(qb)
	);
initial clk=0;
always #50 clk=~clk;
	initial begin
		// Initialize Inputs
		d = 0;
		pre = 1;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	// Initialize Inputs
		d = 0;
		pre = 0;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	// Initialize Inputs
		d = 0;
		pre = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	// Initialize Inputs
		d = 1;
		pre = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

