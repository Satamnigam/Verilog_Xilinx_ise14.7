`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:11:10 06/23/2019
// Design Name:   dec3to8
// Module Name:   F:/my codes/decoder_3to8/decode3_8.v
// Project Name:  decoder_3to8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dec3to8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decode3_8;

	// Inputs
	reg [2:0] i;
	reg en;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	dec3to8 uut (
		.i(i), 
		.q(q), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		i = 3'b101;
		
		
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

