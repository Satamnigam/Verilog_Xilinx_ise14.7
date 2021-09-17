`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:53:40 06/25/2019
// Design Name:   jk
// Module Name:   C:/Users/satyam/Desktop/my codes/jkflipflop/jk_test.v
// Project Name:  jkflipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jk
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jk_test;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	jk uut (
		.j(j), 
		.k(k), 
		.q(q), 
		.qb(qb), 
		.clk(clk)
	);
initial clk=0;
always #30 clk=~clk;
	initial begin
		// Initialize Inputs
		
        
      // Initialize Inputs
		j = 1;
		k = 0;

		// Wait 100 ns for global reset to finish
		#100;
     
        
      // Initialize Inputs
		j = 0;
		k = 1;

		// Wait 100 ns for global reset to finish
		#100;
     
        
      // Initialize Inputs
		j = 0;
		k = 0;

		// Wait 100 ns for global reset to finish
		#100;
     
        
      // Initialize Inputs
		j = 1;
		k = 1;

		// Wait 100 ns for global reset to finish
		#100;
      
	end
      
endmodule

