`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:45:40 05/08/2015 
// Design Name: 
// Module Name:    ADDA 
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
module ADDA(CLK,SDOUT,SCK1,SCK2,SDIN1,SDIN2,CSLD1,CSLD2);
	input CLK;
	input SDOUT;
	output SCK1;
	output SCK2;
	output SDIN1;
	output SDIN2;
	output CSLD1;
	output CSLD2;

	reg SCK1 = 1'b1;
	reg SCK2 = 1'b0;
	reg CSLD1 = 1'b1;
	reg CSLD2 = 1'b1;
	
	reg [7:0] div1 = 8'b0000_0000;
	reg [12:0] div2 = 13'b0000_0010_0000_0;			//7bit進める	(SCK)1/4周期
	reg [12:0] div3 = 13'b0000_0000_0000_0;
	reg [15:0] Din1 = 16'b0000_0000_0000_0000;
	reg [15:0] Din2 = 16'b1111_0000_0000_0000;	

	reg [15:0] Dout1 = 16'b0000_0000_0000_0000;		//SDOUTを読み取るレジスタ
	
	assign SDIN1 = Din1[15];
	assign SDIN2 = Din2[15];
	
	
	
//------------CLK----------
	always @ (posedge CLK)
		begin
			div1 <= div1 + 1'b1;	 
			div2 <= div2 + 1'b1;
			div3 <= div3 + 1'b1;
		end
//------------CLK2----------
	


////////////////////////////////
//------------SCK1,2----------				negedgeでSDINの値を読み取る
	always @ (posedge CLK)
		begin
			if(div1 == 8'b0111_1111)
				begin
					SCK1 <= 1'b0;
					SCK2 <= 1'b1;
				end
			else if (div1 == 8'b1111_1111)
				begin
					SCK1 <= 1'b1;
					SCK2 <= 1'b0;
				end
		end


//-----------Din/Dout----------
	always @ (posedge CLK)
		begin
			if(div1 == 8'b1111_1111)
				begin
					Din1 <= (Din1 << 1);				//Din1のシフト
					Din1[0] <= Din1[15];
					Dout1 <= (Dout1 << 1);				//Dout1のシフト
					Dout1[0] <= Dout1[15];
					Din2 <= (Din2 << 1);				//Din2のシフト
					Din2[0] <= Din2[15];
				end
			else if (div2 == 13'b1_1111_1111_1111)	//つけた
				Din2[10:1] <= Dout1[9:0];
			else
				begin
					Din1 <= Din1;	
					Dout1[0] <= SDOUT;
					Din2 <= Din2;
				end			
		end

//------------csld------------- 
	always @ (posedge CLK)
	begin
		if(div2 == 13'b0_1111_1111_1111)
			CSLD1 <= 1'b0;
		else if (div2 == 13'b1_1111_1111_1111)
			CSLD1 <= 1'b1;	
		else if(div3 == 13'b0_1111_1111_1111)
			CSLD2 <= 1'b0;
		else if(div3 == 13'b1_1111_1111_1111)
			CSLD2 <= 1'b1;
	end
		
endmodule

