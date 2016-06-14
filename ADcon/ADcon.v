`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:40 05/01/2015 
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
module ADcon(CLK,SDOUT,right,SCK,SDIN,CSLD,num);
	input CLK;
	input SDOUT;
	output right;
	output SCK;
	output SDIN;
	output CSLD;
	output num;

	reg SCK = 1'b1;	
	reg CSLD = 1'b1;
	reg right;
	
	reg [7:0] div1 = 8'b0000_0000;
	reg [12:0] div2 = 13'b0000_0010_0000_0;			//7bit進める	(SCK)1/4周期
	reg [15:0] Din = 16'b0000_0000_0000_0000;			

	reg [15:0] Dout = 16'b0000_0000_0000_0000;		//SDOUTを読み取るレジスタ
	reg [9:0] num = 10'b00_0100_0000;				//デコーダの出力
	
	assign SDIN = Din[15];

//------------CLK2----------
	always @ (posedge CLK)
	begin
			div1 <= div1 + 1'b1;	 
			div2 <= div2 + 1'b1;
			right = 1'b1;
	end
//------------CLK2----------
	


////////////////////////////////
//------------SCK----------				negedgeでSDINの値を読み取る
	always @ (posedge CLK)
		begin
			if(div1 == 8'b0111_1111)
				SCK <= 1'b0;
			else if (div1 == 8'b1111_1111)
				SCK <= 1'b1;
		end


//-----------Din/Dout----------
	always @ (posedge CLK)
		begin
			if(div1 == 8'b1111_1111)
				begin
				Din <= (Din << 1);				//Dinのシフト
				Din[0] <= Din[15];
				Dout <= (Dout << 1);				//Doutのシフト
				Dout[0] <= Dout[15];
				end
			else if (div2 == 13'b1_1111_1111_1111)	//つけた
				Dout <= Dout;								//つけた
			else
				begin
				Din <= Din;	
				Dout[0] <= SDOUT;
				end			
		end

//------------csld------------- 
	always @ (posedge CLK)
	begin
		if(div2 == 13'b0_1111_1111_1111)
			CSLD <= 1'b0;
		else	if (div2 == 13'b1_1111_1111_1111)
			begin
			CSLD <= 1'b1;
			num[9:0] <= Dout[9:0];		
			end
	end
		
endmodule

