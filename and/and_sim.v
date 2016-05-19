`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:35:21 05/19/2016
// Design Name:   AND
// Module Name:   C:/Users/teramoto_2/Documents/works/FPGA/project/and/and_sim.v
// Project Name:  and
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AND
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module and_sim;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	AND uut (
		.A(A), 
		.B(B), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		A <= 1;
		
		#100
		
		A <= 0;
		B <= 1;
		
		#100
		
		A <= 1;
		// Add stimulus here

	end
      
endmodule

