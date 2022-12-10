`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
 
 Created by: Muhammad Aitesam
 
 Create Date:    21:05:08 12/09/2022 
 Design Name: 	  16-Bit Register File for RISC Processor
 Module Name:    Register File
 Project Name:   16-Bit Single Cycle RISC core Processor Design
 

 Revision: 0.1V
 Additional Comments: 
	This module may be a dependency of other Modules


*/
//////////////////////////////////////////////////////////////////////////////////
module Register_File(
    input clk,
    input rst,
    input [3:0] Rs,
    input [3:0] Rt,
    input [3:0] Rd,
    input [15:0] RW,
    input wr,
    output reg [15:0] Rout1,	//Had to declare this as a reg, the alternative assignment technique leaves output unconnected
    output reg [15:0] Rout2   //Had to declare this as a reg, the alternative assignment technique leaves output unconnected
    );
	 
	 
	 /*
		Declaration of OutX wires
		Taking output from Each 
		16-bit register out to the MUX
	 */
	 wire Out1, Out2, Out3, Out4, Out5, Out6, Out7, Out8, Out9, Out10, Out11, Out12, Out13, Out14, Out15,  Out16; 
	 
	 /* 
		eclaration of weX signal reg
		weX = resX & wr
	 */		
	 wire we1 , we2,	we3 ,	we4 ,we5 ,we6 ,we7 ,we8 ,we9 ,we10 ,we11 ,we12 ,we13 ,we14 ,we15 ,we16;
	 
	 
	 reg res1, res2 , res3 , res4 ,res5 ,  res6 ,res7 ,res8 ,res9 , res10 ,  res11 ,res12 ,res13 ,res14 , res15 ,res16 ;
	 
	 /*
			Decoder for Write address Selection
	 */
	 
	 // See Design Reference: xst.pdf//Chapter 2//Page 114
	 always @(Rd)
		 begin
			 case(Rd)
				 4'b0000 : res1  =  1;
				 4'b0001 : res2  =  1;
				 4'b0010 : res3  =  1;
				 4'b0011 : res4  =  1;
				 4'b0100 : res5  =  1;
				 4'b0101 : res6  =  1;
				 4'b0110 : res7  =  1;
				 4'b0111 : res8  =  1;
				 4'b1000 : res9  =  1;
				 4'b1001 : res10 =  1;
				 4'b1010 : res11 =  1;
				 4'b1011 : res12 =  1;
				 4'b1100 : res13 =  1;
				 4'b1101 : res14 =  1;
				 4'b1110 : res15 =  1;
				 4'b1111 : res16 =  1;
		 endcase
	 end
	 
	 /* 
		AND operation of Selected Decoder Output Wire 
		and Write Enable Signal for Register Write Operation
	 */
	 assign we1  = res1   & wr;
	 assign we2  = res2   & wr;
	 assign we3  = res3   & wr;
	 assign we4  = res4   & wr;
	 assign we5  = res5   & wr;
	 assign we6  = res6   & wr;
	 assign we7  = res7   & wr;
	 assign we8  = res8   & wr;
	 assign we9  = res9   & wr;
	 assign we10 = res10  & wr;
	 assign we11 = res11  & wr;
	 assign we12 = res12  & wr;
	 assign we13 = res13  & wr;
	 assign we14 = res14  & wr;
	 assign we15 = res15  & wr;
	 assign we16 = res16  & wr;
	 /*  
		 16x, 16-Bit Registers
		 Each drops its output to a wire which 
		 later could be assigned by MUX 
	 */                                                                                                                                                                                                                           
	 
	 R_16B R16b1  (clk,	rst, 	we1 	 ,	RW, Out1 );
	 R_16B R16b2  (clk,	rst,	we2 	 ,	RW, Out2 );
	 R_16B R16b3  (clk,	rst,	we3 	 ,	RW, Out3 );
	 R_16B R16b4  (clk,	rst,	we4 	 ,	RW, Out4 );
	 R_16B R16b5  (clk,	rst,	we5 	 ,	RW, Out5 );
	 R_16B R16b6  (clk,	rst,	we6 	 ,	RW, Out6 );
	 R_16B R16b7  (clk,	rst,	we7 	 ,	RW, Out7 );
	 R_16B R16b8  (clk,	rst,	we8 	 ,	RW, Out8 );
	 R_16B R16b9  (clk,	rst,	we9 	 ,	RW, Out9 );
	 R_16B R16b10 (clk,	rst,	we10	 ,	RW, Out10 );
	 R_16B R16b11 (clk,	rst,	we11	 ,	RW, Out11 );
	 R_16B R16b12 (clk,	rst,	we12	 ,	RW, Out12 );
	 R_16B R16b13 (clk,	rst,	we13	 ,	RW, Out13 );
	 R_16B R16b14 (clk,	rst,	we14	 ,	RW, Out14 );
	 R_16B R16b15 (clk,	rst,	we15	 ,	RW, Out15 );
	 R_16B R16b16 (clk,	rst,	we16	 ,	RW, Out16 );
	 
	 
	 
	 //  Multiplexer for R1 Selection
	 
	 
	 
	 
	 always @ (Rs) begin
		case(Rs)
			4'b0000	:	Rout1[0] = Out1;
			4'b0001	:	Rout1[1] = Out2;
			4'b0010	:	Rout1[2] = Out3;
			4'b0011	:	Rout1[3] = Out4;
			4'b0100	:	Rout1[4] = Out5;
			4'b0101	:	Rout1[5] = Out6;
			4'b0110	:	Rout1[6] = Out7;
			4'b0111	:	Rout1[7] = Out8;
			4'b1000	:	Rout1[8] = Out9;
			4'b1001	:	Rout1[9] = Out10;
			4'b1010	:	Rout1[10] = Out11;
			4'b1011	:	Rout1[11] = Out12;
			4'b1100	:	Rout1[12] = Out13;
			4'b1101	:	Rout1[13] = Out14;
			4'b1110	:	Rout1[14] = Out15;
			4'b1111	:	Rout1[15] = Out16;
		endcase
	 end
	 
	 //  Multiplexer for R2 Selection
	 
	 always @ (Rt) begin
		case(Rt)
		4'b0000	 :	Rout2[0]   = Out1;
		4'b0001	 :	Rout2[1]   = Out2;
		4'b0010	 :	Rout2[2]   = Out3;
		4'b0011	 :	Rout2[3]   = Out4;
		4'b0100	 :	Rout2[4]   = Out5;
		4'b0101	 :	Rout2[5]   = Out6;
		4'b0110	 :	Rout2[6]   = Out7;
		4'b0111	 :	Rout2[7]   = Out8;
		4'b1000	 :	Rout2[8]   = Out9;
		4'b1001	 :	Rout2[9]   = Out10;
		4'b1010	 :	Rout2[10]  = Out11;
		4'b1011	 :	Rout2[11]  = Out12;
		4'b1100	 :	Rout2[12]  = Out13;
		4'b1101	 :	Rout2[13]  = Out14;
		4'b1110	 :	Rout2[14]  = Out15;
		4'b1111	 :	Rout2[15]  = Out16;
		endcase
	 end
	 //assign Rout1 = RL1;
	 //assign Rout2 = RA2;
	 
	 
endmodule
