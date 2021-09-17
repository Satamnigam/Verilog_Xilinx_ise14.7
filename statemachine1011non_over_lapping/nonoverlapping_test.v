`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:37:19 07/01/2019
// Design Name:   statemachine
// Module Name:   C:/Users/satyam/Desktop/my codes/statemachine1011non_over_lapping/nonoverlapping_test.v
// Project Name:  statemachine1011non_over_lapping
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: statemachine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module nonoverlapping_test;

	// Inputs
	reg clk;
	reg x;

	// Outputs
	wire y;
	wire [1:0] outstate;

	// Instantiate the Unit Under Test (UUT)
	statemachine uut (
		.clk(clk), 
		.x(x), 
		.y(y), 
		.outstate(outstate)
	);
initial clk=0;
always #30 clk=~clk;
	initial begin
		x = 1;	#100;
		x = 0;	#100;
		x = 1;	#100;
		x = 1;	#100;
		x = 0;	#100;
		x = 1;	#100;
		x = 1;	#100;
		x = 0;	#100;
		x = 1;	#100;
		x = 1;	#100;
		x = 0;	#100;
	
	end
      
endmodule

