`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:00:10 05/25/2016
// Design Name:   b5_counter
// Module Name:   C:/Users/teramoto_2/Documents/works/FPGA/project/b5_counter/b5_counter_sim.v
// Project Name:  b5_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: b5_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module b5_counter_sim;

	// Inputs
	reg CLK;

	// Outputs
	wire [2:0] Q;

	// Instantiate the Unit Under Test (UUT)
	b5_counter uut (
		.CLK(CLK), 
		.Q(Q)
	);

		// Initialize Inputs
		initial CLK <= 0;
		always #(10)
		CLK <= ~CLK;
      
endmodule

