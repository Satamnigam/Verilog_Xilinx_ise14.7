`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:48:45 06/24/2019
// Design Name:   clock
// Module Name:   F:/my codes/decoder_3to8/srbehave_1.v
// Project Name:  decoder_3to8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module srbehave_1;

	// Inputs
	reg s;
	reg r;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	clock uut (
		.s(s), 
		.r(r), 
		.q(q), 
		.qb(qb), 
		.clk(clk)
	);
initial clk = 0;
      always #50 clk=~clk;
		

	initial begin
		
		// Initialize Inputs
		s = 1;
		r = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	// Initialize Inputs
		s = 0;
		r = 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	// Initialize Inputs
		s = 0;
		r = 0;
		// Wait 10 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

