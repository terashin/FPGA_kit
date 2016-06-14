`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:39:53 05/25/2016
// Design Name:   elect_dice
// Module Name:   C:/Users/teramoto_2/Documents/works/FPGA/project/elect_dice/elect_dice_sim.v
// Project Name:  elect_dice
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: elect_dice
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module elect_dice_sim;

	// Inputs
	reg CLK;
	reg RESET;

	// Outputs
	wire [2:0] Q;
	wire [6:0] DICE;

	// Instantiate the Unit Under Test (UUT)
	elect_dice uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.Q(Q), 
		.DICE(DICE)
	);

		// Initialize Inputs
		initial RESET <= 0;
		always #(150)
		RESET <= ~RESET;

      initial CLK <= 0;
		always #(10)
		CLK <= ~CLK;

endmodule

