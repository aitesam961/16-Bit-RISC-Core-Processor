`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:56 12/09/2022 
// Design Name: 
// Module Name:    Reg_File_Main 
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
module Reg_File_Main(
    input clk,
    input rst,
    input [3:0] Rs,
    input [3:0] Rt,
    input [3:0] Rd,
	 input [15:0] R_Write,
    output [15:0] Routa,
    output [15:0] Routb,
    input Gwe
    );

	 reg Rsampa, Rsampb;
	 reg  we1, 
	      we2, 
	      we3, 
	      we4, 
	      we5, 
	      we6, 
	      we7, 
	      we8, 
	      we9, 
	      we10,
	      we11,
	      we12,
	      we13,
	      we14,
	      we15,
	      we16;
	
	 // Address Decoder for Destination Register
	 always @(Rd)
	 begin
		 case (Rd)
			 4'b0000 :  we1  <= Gwe;
			 4'b0001 :  we2  <= Gwe;
			 4'b0010 :  we3  <= Gwe;
			 4'b0011 :  we4  <= Gwe;
			 4'b0100 :  we5  <= Gwe;
			 4'b0101 :  we6  <= Gwe;
			 4'b0110 :  we7  <= Gwe;
			 4'b0111 :  we8  <= Gwe;
			 4'b1000 :  we9  <= Gwe;
			 4'b1001 :  we10 <= Gwe;
			 4'b1010 :  we11 <= Gwe;
			 4'b1011 :  we12 <= Gwe;
			 4'b1100 :  we13 <= Gwe;
			 4'b1001 :  we14 <= Gwe;
			 4'b1110 :  we15 <= Gwe;
			 4'b1111 :  we16 <= Gwe;
			 default :  we1   <= 0;
		 endcase
	 end 
	 
//	 // 16-Bit wide, 16x Array of 1-Bit registers																	           
//	 
//	 assign we1  = RD & Gwe;
//	 assign we2  = RD & Gwe;
//	 assign we3  = RD & Gwe;
//	 assign we4  = RD & Gwe;
//	 assign we5  = RD & Gwe;
//	 assign we6  = RD & Gwe;
//	 assign we7  = RD & Gwe;
//	 assign we8  = RD & Gwe;
//	 assign we9  = RD & Gwe;
//	 assign we10 = RD & Gwe;
//	 assign we11 = RD & Gwe;
//	 assign we12 = RD & Gwe;
//	 assign we13 = RD & Gwe;
//	 assign we14 = RD & Gwe;
//	 assign we15 = RD & Gwe;
//	 assign we16 = RD & Gwe;

	
	 wire 
		 out_reg1,
		 out_reg2,
		 out_reg3,
		 out_reg4,
		 out_reg5,
		 out_reg6,
		 out_reg7,
		 out_reg8,
		 out_reg9,
		 out_reg10,
		 out_reg11,
		 out_reg12,
		 out_reg13,
		 out_reg14,
		 out_reg15,
		 out_reg16;

	 Reg_File_16B rg1  (clk, rst,  we1  ,	R_Write, out_reg1);
	 Reg_File_16B rg2  (clk, rst,  we2  ,	R_Write, out_reg2);
	 Reg_File_16B rg3  (clk, rst,  we3  ,	R_Write, out_reg3);
	 Reg_File_16B rg4  (clk, rst,  we4  ,  R_Write, out_reg4);
	 Reg_File_16B rg5  (clk, rst,  we5  ,	R_Write, out_reg5);
	 Reg_File_16B rg6  (clk, rst,  we6  ,	R_Write, out_reg6);
	 Reg_File_16B rg7  (clk, rst,  we7  ,	R_Write, out_reg7);
	 Reg_File_16B rg8  (clk, rst,  we8  ,	R_Write, out_reg8);
	 Reg_File_16B rg9  (clk, rst,  we9  ,	R_Write, out_reg9);
	 Reg_File_16B rg10 (clk, rst,  we10 , 	R_Write, out_reg10);
	 Reg_File_16B rg11 (clk, rst,  we11 , 	R_Write, out_reg11);
	 Reg_File_16B rg12 (clk, rst,  we12 , 	R_Write, out_reg12);
	 Reg_File_16B rg13 (clk, rst,  we13 , 	R_Write, out_reg13);
	 Reg_File_16B rg14 (clk, rst,  we14 ,	R_Write, out_reg14);
	 Reg_File_16B rg15 (clk, rst,  we15 ,	R_Write, out_reg15);
	 Reg_File_16B rg16 (clk, rst,  we16 , 	R_Write, out_reg16);
		
	 
	 
	 
	 
	 // Multiplexers for Ra and Rb
	 always @(Rs)
		begin
			case(Rs)
				 4'b0000 : Rsampa <= out_reg1 ;
				 4'b0001 : Rsampa <= out_reg2 ;
				 4'b0010 : Rsampa <= out_reg3 ;
				 4'b0011 : Rsampa <= out_reg4 ;
				 4'b0100 : Rsampa <= out_reg5 ;
				 4'b0101 : Rsampa <= out_reg6 ;
				 4'b0110 : Rsampa <= out_reg7 ;
				 4'b0111 : Rsampa <= out_reg8 ;
				 4'b1000 : Rsampa <= out_reg9 ;
				 4'b1001 : Rsampa <= out_reg10 ;
				 4'b1010 : Rsampa <= out_reg11 ;
				 4'b1011 : Rsampa <= out_reg12 ;
				 4'b1100 : Rsampa <= out_reg13 ;
				 4'b1001 : Rsampa <= out_reg14 ;
				 4'b1110 : Rsampa <= out_reg15 ;
				 4'b1111 : Rsampa <= out_reg16 ;
				 default : Rsampa <= 16'h0000 ;
			endcase
		end
		
		
		
		
		always @(Rt)
		begin
			case(Rt)
				 4'b0000 : Rsampb  <= out_reg1 ;
				 4'b0001 : Rsampb <= out_reg2 ;
				 4'b0010 : Rsampb  <= out_reg3 ;
				 4'b0011 : Rsampb  <= out_reg4 ;
				 4'b0100 : Rsampb  <= out_reg5 ;
				 4'b0101 : Rsampb  <= out_reg6 ;
				 4'b0110 : Rsampb  <= out_reg7 ;
				 4'b0111 : Rsampb  <= out_reg8 ;
				 4'b1000 : Rsampb  <= out_reg9 ;
				 4'b1001 : Rsampb  <= out_reg10 ;
				 4'b1010 : Rsampb  <= out_reg11 ;
				 4'b1011 : Rsampb  <= out_reg12 ;
				 4'b1100 : Rsampb  <= out_reg13 ;
				 4'b1001 : Rsampb  <= out_reg14 ;
				 4'b1110 : Rsampb  <= out_reg15 ;
				 4'b1111 : Rsampb  <= out_reg16 ;
				 default : Rsampb  <= 16'h0000 ;
			endcase
		end
//		
		assign Routa = Rsampa;
		assign Routb = Rsampb;
	 
	 
endmodule
