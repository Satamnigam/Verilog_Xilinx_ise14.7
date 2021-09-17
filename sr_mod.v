`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:48:00 06/24/2019
// Design Name:   srlatch
// Module Name:   F:/my codes/decoder_3to8/sr_mod.v
// Project Name:  decoder_3to8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: srlatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sr_mod;

	// Inputs
	reg s;
	reg r;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	srlatch uut (
		.s(s), 
		.r(r), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		s = 1;
		r = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
s = 0;
		r = 1;

		// Wait 100 ns for global reset to finish
		#100;s = 1;
		r = 1;

		// Wait 100 ns for global reset to finish
		#100;
	end
      
endmodule

