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
	This module might be a dependency of other Modules


*/
//////////////////////////////////////////////////////////////////////////////////
module Register_File(
    input clk,
    input rst,
    input [3:0] Rs,
    input [3:0] Rt,
    input [3:0] Rd,
    input [15:0] RW,
    input  wr,
    output reg [15:0] Rout1,
    output reg [15:0] Rout2   
    );
	 
	 
	 /*
		Declaration of OutX wires
		Taking output from Each 
		16-bit register out to the MUX
	 */
	 wire [15:0] Out1, Out2, Out3, Out4, Out5, Out6, Out7, Out8, Out9, Out10, Out11, Out12, Out13, Out14, Out15,  Out16; 
	 /* 
		eclaration of weX signal reg
		weX = resX & wr
	 */		
	 wire we1 , we2,	we3 ,	we4 ,we5 ,we6 ,we7 ,we8 ,we9 ,we10 ,we11 ,we12 ,we13 ,we14 ,we15 ,we16;
	 reg [15:0] RA, RB;
	 
	 reg [15:0] res;
	
	 /*
			Decoder for Write address Selection
	 */
	 
	 // See Design Reference: xst.pdf//Chapter 2//Page 114
	 always @(Rd)begin
			 case(Rd)
				 4'b0000 : begin res <= 16'b0000000000000001; end
				 4'b0001 : begin res <= 16'b0000000000000010; end
				 4'b0010 : begin res <= 16'b0000000000000100; end
				 4'b0011 : begin res <= 16'b0000000000001000; end
				 4'b0100 : begin res <= 16'b0000000000010000; end
				 4'b0101 : begin res <= 16'b0000000000100000; end
				 4'b0110 : begin res <= 16'b0000000001000000; end
				 4'b0111 : begin res <= 16'b0000000010000000; end
				 4'b1000 : begin res <= 16'b0000000100000000; end
				 4'b1001 : begin res <= 16'b0000001000000000; end
				 4'b1010 : begin res <= 16'b0000010000000000; end
				 4'b1011 : begin res <= 16'b0000100000000000; end
				 4'b1100 : begin res <= 16'b0001000000000000; end
				 4'b1101 : begin res <= 16'b0010000000000000; end
				 4'b1110 : begin res <= 16'b0100000000000000; end
				 4'b1111 : begin res <= 16'b1000000000000000; end
				 default : begin res	<= 16'b0000000000000000; end
		 endcase
	 end
	 
	 /* 
		AND operation of Selected Decoder Output Wire 
		and Write Enable Signal for Register Write Operation
	 */
	 assign we1  = res[0]  & wr;
	 assign we2  = res[1]  & wr;
	 assign we3  = res[2]  & wr;
	 assign we4  = res[3]  & wr;
	 assign we5  = res[4]  & wr;
	 assign we6  = res[5]  & wr;
	 assign we7  = res[6]  & wr;
	 assign we8  = res[7]  & wr;
	 assign we9  = res[8]  & wr;
	 assign we10 = res[9]  & wr;
	 assign we11 = res[10] & wr;
	 assign we12 = res[11] & wr;
	 assign we13 = res[12] & wr;
	 assign we14 = res[13] & wr;
	 assign we15 = res[14] & wr;
	 assign we16 = res[15] & wr;
	 /*
		 16x, 16-Bit Registers
		 Each drops its output to a wire which 
		 later could be assigned by MUX 
	 */                                                                                                                                                                                                                           
	 
	 R_16B Rs1  (clk,	rst, 	we1 	 ,	RW		,		 Out1 );
	 R_16B Rs2  (clk,	rst,	we2 	 ,	RW		,		 Out2 );
	 R_16B Rs3  (clk,	rst,	we3 	 ,	RW		,		 Out3 );
	 R_16B Rs4  (clk,	rst,	we4 	 ,	RW		,		 Out4 );
	 R_16B Rs5  (clk,	rst,	we5 	 ,	RW		,		 Out5 );
	 R_16B Rs6  (clk,	rst,	we6 	 ,	RW		,		 Out6 );
	 R_16B Rs7  (clk,	rst,	we7 	 ,	RW		,		 Out7 );
	 R_16B Rs8  (clk,	rst,	we8 	 ,	RW		,		 Out8 );
	 R_16B Rs9  (clk,	rst,	we9 	 ,	RW		,		 Out9 );
	 R_16B Rs10 (clk,	rst,	we10	 ,	RW		,		 Out10 );
	 R_16B Rs11 (clk,	rst,	we11	 ,	RW		,		 Out11 );
	 R_16B Rs12 (clk,	rst,	we12	 ,	RW		,		 Out12 );
	 R_16B Rs13 (clk,	rst,	we13	 ,	RW		,		 Out13 );
	 R_16B Rs14 (clk,	rst,	we14	 ,	RW		,		 Out14 );
	 R_16B Rs15 (clk,	rst,	we15	 ,	RW		,		 Out15 );
	 R_16B Rs16 (clk,	rst,	we16	 ,	RW		, 	  	 Out16 );
	 
	 
	
	 //  Multiplexer for R1 Selection
	 
	 
	 
	 
	 always @ (Rs or Out1  or
	                 Out2  or
	                 Out3  or
	                 Out4  or
	                 Out5  or
	                 Out6  or
	                 Out7  or
	                 Out8  or
	                 Out9   or
	                 Out10  or
	                 Out11  or
	                 Out12  or
	                 Out13  or
	                 Out14  or
	                 Out15  or
	                 Out16  ) begin
		case(Rs)
			4'b0000	:  begin		RA	 	= Out1;		end
			4'b0001	:	begin		RA 	= Out2;     end
			4'b0010	:	begin		RA		= Out3;     end
			4'b0011	:	begin		RA		= Out4;     end
			4'b0100	:	begin		RA		= Out5;     end
			4'b0101	:	begin		RA		= Out6;     end
			4'b0110	:	begin		RA		= Out7;     end
			4'b0111	:	begin		RA		= Out8;     end
			4'b1000	:	begin		RA		= Out9;     end
			4'b1001	:	begin		RA		= Out10;    end
			4'b1010	:	begin		RA	 	= Out11;    end
			4'b1011	:	begin		RA 	= Out12;    end
			4'b1100	:	begin		RA 	= Out13;    end
			4'b1101	:	begin		RA 	= Out14;    end
			4'b1110	:	begin		RA 	= Out15;    end
			4'b1111	:	begin		RA		= Out16;    end
			default  :  begin    RA		= 0;			end
		endcase
	 end
	 
	 //  Multiplexer for R2 Selection
	 
	 always @ (Rt or Out1  or
	                 Out2  or
	                 Out3  or
	                 Out4  or
	                 Out5  or
	                 Out6  or
	                 Out7  or
	                 Out8  or
	                 Out9   or
	                 Out10  or
	                 Out11  or
	                 Out12  or
	                 Out13  or
	                 Out14  or
	                 Out15  or
	                 Out16  ) begin
			case(Rt)
				4'b0000	 :  begin	  RB	 = Out1;		end
				4'b0001	 :	 begin	  RB   = Out2;		end
				4'b0010	 :  begin	  RB	 = Out3;		end
				4'b0011	 :  begin	  RB	 = Out4;    end
				4'b0100	 :	 begin	  RB	 = Out5;		end
				4'b0101	 :	 begin	  RB	 = Out6;   	end
				4'b0110	 :  begin	  RB	 = Out7;   	end
				4'b0111	 :	 begin	  RB	 = Out8;   	end
				4'b1000	 :	 begin	  RB	 = Out9;		end
				4'b1001	 :  begin	  RB	 = Out10;  	end
				4'b1010	 :	 begin	  RB	 = Out11;  	end
				4'b1011	 :	 begin	  RB   = Out12;  	end
				4'b1100	 :	 begin	  RB   = Out13;	end
				4'b1101	 :  begin	  RB   = Out14;  	end
				4'b1110	 :  begin	  RB   = Out15;  	end
				4'b1111	 :	 begin	  RB	 = Out16;  	end
				default   :  begin     RB		= 0;		end
			endcase
	 end
	 
	 always @(posedge clk) begin
		 Rout1 <= RA;
		 Rout2 <= RB;
	 end
	 
	 
	 
	 
endmodule
