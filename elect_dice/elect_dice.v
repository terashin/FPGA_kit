`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:51:14 05/25/2016 
// Design Name: 
// Module Name:    elect_dice 
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
module elect_dice(CLK,RESET,Q,DICE,pin);
	// Define Variable
	input CLK,RESET;
	output [2:0] Q;
	output [6:0] DICE;
	output pin;
	
	assign pin = 1'b1;
	
	reg [2:0] Q = 3'b000;
	reg [6:0] DICE = 7'b0000000;
	
	// Define function(DECODER)
	function [6:0] DEC;
		input [2:0] Q;
		begin
			case(Q)
				3'b000:DEC = 7'b0000110;
				3'b001:DEC = 7'b1011011;
				3'b010:DEC = 7'b1001111;
				3'b011:DEC = 7'b1100110;
				3'b100:DEC = 7'b1101101;
				3'b101:DEC = 7'b1111101;
				default:DEC = 7'b0000000;
			endcase
		end
	endfunction
	
	// main process
	
	always @(posedge CLK)
	begin
		if(~RESET)
			assign DICE = DEC(Q);
		else if(Q == 3'b101)
			begin
				if(RESET)
				assign DICE = 7'b0000000;
				Q <= 3'b000;
			end
		else
			begin
				if(~RESET)
				assign DICE = 7'b0000000;
				Q <= Q + 3'b001;
			end
	end


endmodule
