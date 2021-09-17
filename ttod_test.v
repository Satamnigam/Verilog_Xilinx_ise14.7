`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:45 06/27/2019
// Design Name:   ttod
// Module Name:   C:/Users/satyam/Desktop/my codes/ttodflipflop/ttod_test.v
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

module ttod_test;

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
initial clk=0;
always #50 clk=~clk;
	initial begin
		// Initialize Inputs
		d = 1;
				// Wait 100 ns for gl obal reset to finish
		#100;
        
		d = 0;
				// Wait 100 ns for gl obal reset to finish
		#100;
      d = 1;
				// Wait 100 ns for gl obal reset to finish
		#100;
      d = 0;
				// Wait 100 ns for gl obal reset to finish
		#100;
      // Add stimulus here

	end
      
endmodule

