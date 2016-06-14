`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:00:06 05/31/2016
// Design Name:   b4_strg
// Module Name:   C:/Users/teramoto_2/Documents/works/FPGA/project/b4_strg/b4_strg_sim.v
// Project Name:  b4_strg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: b4_strg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module b4_strg_sim;

	// Inputs
	reg [3:0] a;
	reg clk;
	reg load;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	b4_strg uut (
		.a(a), 
		.clk(clk), 
		.load(load), 
		.q(q)
	);

	initial clk <= 0;
	always #(10)
	clk <= ~clk;
	
	initial load <=0;
	always #(100)
	load <= ~load;
	
	initial a [3:0] = 4'b0001;
      
endmodule

