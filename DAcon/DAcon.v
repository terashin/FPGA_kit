`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:55 04/27/2015
// Design Name:   ADcon
// Module Name:   C:/Users/Kishine/Documents/kenkyu/workspace/DAcon/DAcon.v
// Project Name:  DAcon
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

module DAcon;

	// Inputs
	reg CLK;

	// Outputs
	wire SCK;
	wire Dout;
	wire CSLD;

	// Instantiate the Unit Under Test (UUT)
	ADcon uut (
		.CLK(CLK), 
		.SCK(SCK), 
		.Dout(Dout), 
		.CSLD(CSLD)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		#10;
			CLK = 1'b1;
		#10;
			CLK = 1'b0;
		
		// Add stimulus here

	end
      
endmodule

