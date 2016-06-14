`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:52 04/27/2015 
// Design Name: 
// Module Name:    ADcon 
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
module ADcon(CLK,SCK,Dout,CSLD);
	input CLK;
	output SCK;
	output Dout;
	output CSLD;

	reg SCK = 0;	
	reg CSLD = 1'b1;
	
	reg [7:0] CLK2 = 8'b0000_0000;
	reg [12:0] aa = 13'b0000_0000_0000_0;
	reg [15:0] Din = 16'b1111_0010_0000_0000;	

	assign Dout = Din[15];


//------------CLK2----------
	always @ (posedge CLK)
	begin
			CLK2 <= CLK2 + 1'b1;	 
			aa <= aa + 1'b1;
	end
//------------CLK2----------



////////////////////////////////
//------------SCK----------
	always @ (posedge CLK)
		begin
			if(CLK2 == 8'b0111_1111)
				SCK <= 1'b1;
			else if (CLK2 == 8'b1111_1111)
				SCK <= 1'b0;
		end
//------------SCK----------


//-----------Din----------
	always @ (posedge CLK)
		begin
			if(CLK2 == 8'b1111_1111)
			begin
			Din <= (Din << 1);
			Din[0] <= Din[15];
			end
			else
			Din <= Din;
		end
//-----------Din---------

//------------csld------------- 
	always @ (posedge CLK)
	begin
		if(aa == 13'b0_1111_1111_1111)
			CSLD <= 1'b1;
		else	if (aa == 13'b1_1111_1111_1111)
			CSLD <= 1'b0;
	end
//-------------------


endmodule
