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
	reg [12:0] div2 = 13'b0000_0010_0000_0;			//7bit�i�߂�	(SCK)1/4����
	reg [15:0] Din = 16'b0000_0000_0000_0000;			

	reg [15:0] Dout = 16'b0000_0000_0000_0000;		//SDOUT��ǂݎ�郌�W�X�^
	reg [9:0] num = 10'b00_0100_0000;				//�f�R�[�_�̏o��
	
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
//------------SCK----------				negedge��SDIN�̒l��ǂݎ��
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
				Din <= (Din << 1);				//Din�̃V�t�g
				Din[0] <= Din[15];
				Dout <= (Dout << 1);				//Dout�̃V�t�g
				Dout[0] <= Dout[15];
				end
			else if (div2 == 13'b1_1111_1111_1111)	//����
				Dout <= Dout;								//����
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

