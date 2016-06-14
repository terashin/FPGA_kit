`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:36:12 05/01/2015
// Design Name:   ADcon
// Module Name:   C:/Users/Kishine/Documents/kenkyu/workspace/ADcon/ADtest.v
// Project Name:  ADcon
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ADcon
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ADtest;

	// Inputs
	reg CLK;
	reg SDOUT;

	// Outputs
	wire right;
	wire SCK;
	wire SDIN;
	wire CSLD;
	wire [9:0] num;

	// Instantiate the Unit Under Test (UUT)
	ADcon uut (
		.CLK(CLK), 
		.SDOUT(SDOUT), 
		.right(right), 
		.SCK(SCK), 
		.SDIN(SDIN), 
		.CSLD(CSLD), 
		.num(num)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		SDOUT = 0;
	end
	

		parameter STEP = 7.5;
		always #( STEP/2 )
			CLK <= ~CLK;

	
	
      
endmodule

