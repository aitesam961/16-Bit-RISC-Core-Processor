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
    output [15:0] Rout1,
    output [15:0] Rout2
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
	 
	 reg RL1,RA2;
	 
	 
	 reg res1, res2 , res3 , res4 ,res5 ,  res6 ,res7 ,res8 ,res9 , res10 ,  res11 ,res12 ,res13 ,res14 , res15 ,res16 , res17;
	 

	 /*
			Decoder for Write address Selection
	 */
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
			4'b0000	:	RL1 = Out1;
			4'b0001	:	RL1 = Out2;
			4'b0010	:	RL1 = Out3;
			4'b0011	:	RL1 = Out4;
			4'b0100	:	RL1 = Out5;
			4'b0101	:	RL1 = Out6;
			4'b0110	:	RL1 = Out7;
			4'b0111	:	RL1 = Out8;
			4'b1000	:	RL1 = Out9;
			4'b1001	:	RL1 = Out10;
			4'b1010	:	RL1 = Out11;
			4'b1011	:	RL1 = Out12;
			4'b1100	:	RL1 = Out13;
			4'b1101	:	RL1 = Out14;
			4'b1110	:	RL1 = Out15;
			4'b1111	:	RL1 = Out16;
		endcase
	 end
	 
	 //  Multiplexer for R2 Selection
	 
	 always @ (Rt) begin
		case(Rt)
		4'b0000	 :	RA2  = Out1;
		4'b0001	 :	RA2  = Out2;
		4'b0010	 :	RA2  = Out3;
		4'b0011	 :	RA2  = Out4;
		4'b0100	 :	RA2  = Out5;
		4'b0101	 :	RA2  = Out6;
		4'b0110	 :	RA2  = Out7;
		4'b0111	 :	RA2  = Out8;
		4'b1000	 :	RA2  = Out9;
		4'b1001	 :	RA2  = Out10;
		4'b1010	 :	RA2  = Out11;
		4'b1011	 :	RA2  = Out12;
		4'b1100	 :	RA2  = Out13;
		4'b1101	 :	RA2  = Out14;
		4'b1110	 :	RA2  = Out15;
		4'b1111	 :	RA2  = Out16;
		endcase
	 end
	 assign Rout1 = RL1;
	 assign Rout2 = RA2;
	 
	 
endmodule
