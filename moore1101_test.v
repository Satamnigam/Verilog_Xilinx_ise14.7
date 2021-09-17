`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:37:33 07/02/2019
// Design Name:   moore1101
// Module Name:   C:/Users/satyam/Desktop/my codes/mooreoverlapping_type1101/moore1101_test.v
// Project Name:  mooreoverlapping_type1101
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: moore1101
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module moore1101_test;

	// Inputs
	reg clk;
	reg x;

	// Outputs
	wire y;
	wire [2:0] outstate;

	// Instantiate the Unit Under Test (UUT)
	moore1101 uut (
		.clk(clk), 
		.x(x), 
		.y(y), 
		.outstate(outstate)
	);
initial clk=0;
always #50 clk=~clk;
	initial begin
	@(posedge clk) x=1;
	@(posedge clk) x=0;
	@(posedge clk) x=1;
	@(posedge clk) x=0;
	@(posedge clk) x=1;
	@(posedge clk) x=0;
	@(posedge clk) x=1;
	@(posedge clk) x=0;
		end
      
endmodule

