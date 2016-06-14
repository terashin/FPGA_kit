`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:07 05/29/2015 
// Design Name: 
// Module Name:    DA_AD 
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
module DA_AD(CLK,SCK1,SCK2,SCK3,Light,SDIN1,SDIN2,SDIN3,CSLD1,CSLD2,CSLD3,SDOUT,count11);	
	input CLK;
	input SDOUT;
	output SCK1;
	output SCK2;
	output SCK3;
	output Light;
	output SDIN1;
	output SDIN2;
	output SDIN3;
	output CSLD1;
	output CSLD2;
	output CSLD3;
	output count11;

	reg SCK1 = 1'b0;
	reg SCK2 = 1'b0;
	reg SCK3 = 1'b1;		
	reg CSLD1 = 1'b1;
	reg CSLD2 = 1'b1;
	reg CSLD3 = 1'b1;
	reg Light = 1'b1;

	
	reg [3:0] div1 = 4'b0000;
	reg [8:0] div2 = 9'b0_0000_0000;
	reg [8:0] div3 = 9'b0_0000_0000;
	
	reg [16:0] Din1 = 17'b0_1111_0010_0000_0000;	
	reg [16:0] Din2 = 17'b0_1111_0010_0000_0000;
	reg [16:0] Din3 = 17'b0_0000_0000_0000_0000;			
	reg [16:0] Dout = 17'b0_0000_0000_0000_0000;		
	
	assign SDIN1 = Din1[16];
	assign SDIN2 = Din2[16];
	assign SDIN3 = Din3[16];

	reg [9:0] IN1 = 10'b11_1111_1111;
	reg [9:0] IN2 = 10'b11_1111_1111;
	
	reg 	[15:0] 	count1 	=	16'b0000_0000_0000_0000;
	reg 	[15:0] 	count2 	=	16'b0000_0000_0000_0000;
	reg	[15:0] 	count11 	=	16'b0000_0000_0000_0000;
	
	reg  	hako 	= 	1'b0;	


//------------div----------
	always @ (posedge CLK)
		begin
			div1 	<= div1 	+	1'b1;	 
			Light <= 1'b1;
		end
		
	always @ (posedge CLK)	
		begin
			if (div2 == 9'b1_0000_1111)
				begin
					div2 <= 9'b0_0000_0000;
					div3 <= div3 + 1'b1;
				end
			else
				div2 <= div2 + 1'b1;
		end				
//------------div----------
//------------SCK----------
	always @ (posedge CLK)
		begin
			if(div1 == 4'b0111)
				begin
					SCK1 <= 1'b1;
					SCK2 <= 1'b1;
					SCK3 <= 1'b0;
				end
			else if (div1 == 4'b1111)
				begin
					SCK1 <= 1'b0;
					SCK2 <= 1'b0;
					SCK3 <= 1'b1;
				end
		end
//------------SCK----------
//-----------Din----------
	always @ (posedge CLK)
		begin
			if(div1 == 4'b1111)
				begin
					Din1 <= (Din1 << 1);
					Din1[0] <= Din1[16];
					Din2 <= (Din2 << 1);
					Din2[0] <= Din2[16];
					Din3 <= (Din3 << 1);
					Din3[0] <= Din3[16];
					Dout 	<= (Dout << 1);				
					Dout[0] 	<= Dout[16];
				end
			else	if (div2 == 9'b1_0000_1110)
				begin
					Din1[10:1] <= IN1;
					Din2[10:1] <= IN2;
				end
			else if (div2 == 9'b0_0000_1110)	
				Dout 	<= 	Dout;					
			else
				begin
					Din1 <= Din1;
					Din2 <= Din2;
					Din3 <= Din3;
					Dout[0] <= SDOUT;
				end	
		end
//-----------Din---------
//-----------Duty------------------
	always @ (posedge CLK)
		begin
			if(div3 == 9'b0_0000_0000)
				begin
					IN1 <= 10'b00_0000_0000;
					IN2 <= 10'b00_0000_0000;
				end
			else if(div3 == 9'b1_0000_0000)
				begin
					IN1 <= 10'b11_1111_1111;
					IN2 <= IN2;
				end
			else if(div3 == 9'b1_1000_0000)
				begin
					IN1 <= IN1;
					IN2 <= 10'b11_1111_1111;
				end
		end
//-----------Duty------------------
//------------csld------------- 
	always @ (posedge CLK)
		begin
			if(div2 == 9'b0_0000_1110)
					CSLD3 <= 1'b0;
			else if(div2 == 9'b0_0000_1111)
				begin
					CSLD1 <= 1'b0;
					CSLD2 <= 1'b0;
				end
			else	if (div2 == 9'b1_0000_1110)
				begin
					CSLD1 <= 1'b1;
					CSLD2 <= 1'b1;
					CSLD3 <= 1'b1;
					hako  <=	Dout[9];	
				end
			
		end
//-------------------
//------------count------------- 
	always @ (posedge CLK)
		begin
			if(hako == 1'b1)
				begin
					count1 	<= 	count1 	+ 	1'b1;	 
					count2 	<= 	16'b0000_0000_0000_0000;
				end
			else if (count2 == 16'b0000_0000_0000_0010)
				count1 	<= 	16'b0000_0000_0000_0000;
			else	if (hako == 1'b0)
				count2 	<= 	count2 	+ 	1'b1;
		end
	always @ (posedge CLK)
			if (count2 == 16'b0000_0000_0000_0001)
					count11 	<= 	count1;
//------------count------------- 

endmodule

