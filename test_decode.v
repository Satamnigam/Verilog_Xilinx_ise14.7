`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:26:28 06/22/2019
// Design Name:   decoder38
// Module Name:   F:/my codes/decoder_3to8/test_decode.v
// Project Name:  decoder_3to8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder38
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_decode;

	// Inputs
	reg [2:0] i;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	decoder38 uut (
		.i(i), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		i = 3'b010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

