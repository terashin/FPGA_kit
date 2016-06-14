`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:52:30 05/24/2016 
// Design Name: 
// Module Name:    b5_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module b5_counter(CLK, Q);
	input CLK;
	output [2:0] Q;
	
	reg [2:0] Q = 3'b000;
	
	always @(negedge CLK)
	begin
		if(Q == 3'b100)
			Q <= 3'b000;
		else
			Q <= Q + 3'b001;
	end

endmodule
