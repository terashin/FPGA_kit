`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:43:23 05/31/2016 
// Design Name: 
// Module Name:    b4_strg 
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
module b4_strg(a,clk,load,q);

// define variable
input [3:0] a;
input clk,load;
output q;

reg q = 0;
reg [3:0] r = 4'b0000;

// main process
always @(posedge clk) begin
  if(load==0) // 1bit shift
    begin      
	 	assign q = r[3];
		assign r = (r << 1);
    end
	 else if(load==1) // data load
		begin
			assign r = a;
			assign q = r[3]; 
		end
end
endmodule
