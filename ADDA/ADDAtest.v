`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:53:19 05/08/2015
// Design Name:   ADDA
// Module Name:   C:/Users/Kishine/Documents/kenkyu/workspace/ADDA/ADDAtest.v
// Project Name:  ADDA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ADDA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ADDAtest;

	// Inputs
	reg CLK;
	reg SDOUT;

	// Outputs
	wire SCK1;
	wire SCK2;
	wire SDIN1;
	wire SDIN2;
	wire CSLD1;
	wire CSLD2;

	// Instantiate the Unit Under Test (UUT)
	ADDA uut (
		.CLK(CLK), 
		.SDOUT(SDOUT), 
		.SCK1(SCK1), 
		.SCK2(SCK2), 
		.SDIN1(SDIN1), 
		.SDIN2(SDIN2), 
		.CSLD1(CSLD1), 
		.CSLD2(CSLD2)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		SDOUT = 0;
        
		// Add stimulus here

	end
	
		

		parameter STEP = 7.5;
		always #( STEP/2 )
			CLK <= ~CLK;

	
      
endmodule

