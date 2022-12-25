`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// 
// 
// Create by:    Muhammad Aitesam
// Design Name: 
// Module Name:    cpu_main 
// Project Name: 16-Bit RISC Processor Design
// Target Devices: CPLD/FPGA
// 
//
// Revision: V0.1
// 
// Additional Comments: 
//		Purpose Built
//
// 
//
// Dependencies: 
//			Register_File
//			ALU_main
//			Control_Unit_main
//			ALU Control

//////////////////////////////////////////////////////////////////////////////////
module cpu_main(
    input clk,
    input rst,
// Section: Prgram Counter
	 input [5:0] pc_target, 
	 output reg [5:0] pc_out,


// Section: Register File
    input [3:0] reg_file_Rs,
    input [3:0] reg_file_Rt,
    input [3:0] reg_file_Rd,
    input [15:0] reg_dataWrite,
    input  reg_wr,
    output reg [15:0] reg_file_Rout1,
    output reg [15:0] reg_file_Rout2,

// Section: Control Unit
	 input [3:0] opcode,
    output reg [2:0] alu_op,
    output reg reg_wr,
    output reg reg_dst,
    output reg alu_src,
    output reg jump,
	 output reg jal,
    output reg cmp,
	 output reg mov,
    output reg mem_rd,
    output reg mem_wr,
    output reg mem_to_reg

//  Ports for Instruction Memory
	 output  instr_ptr,
	 input	instr_fetch,
	 
//	 Ports for Data Memory
	 input	d_mem_rd_data,
	 output  d_mem_wr_data,
	 output  d_mem_addr,
	 output  d_mem_rd_ctrl,
	 output  d_mem_wr_ctrl

	
    );
	 
// Section: Program Counter	
	always @(posedge clk or posedge rst)
		if(rst)begin
			pc_out <= 0;
		end
		else begin
			pc_out <= pc_target;
	 end
	 
// Section: Instruction Memory Call


// Section: Control Unit
	always @(opcode)begin
		case(opcode)
			4'b0000 :	begin// Reset State
				alu_op		<= 3'b111;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;	
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b0001 :	begin	//ADD instruction
				alu_op		<= 3'b000;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b1 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;	
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b0010 :	begin	//ADDi Insruction
				alu_op		<= 3'b000;	
				reg_wr 		<= 1'b1 ;		
				reg_dst 		<= 1'b0 ;		
				alu_src 		<= 1'b1 ;		
				jump	 		<= 1'b0 ;		
				jal	 		<= 1'b0 ;		
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;		
				mem_wr 		<= 1'b0 ;		
				mem_to_reg 	<= 1'b0 ;	
				end
				                
			4'b0011 :	begin //Multiply Instruction
				alu_op		<= 3'b001;	
				reg_wr 		<= 1'b1 ;		
				reg_dst 		<= 1'b0 ;		
				alu_src 		<= 1'b0 ;		
				jump	 		<= 1'b0 ;		
				jal	 		<= 1'b0 ;		
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;				
				mem_rd 		<= 1'b0 ;		
				mem_wr 		<= 1'b0 ;		
				mem_to_reg 	<= 1'b0 ;	
				end
				                
			4'b0100 :   begin //Bitwise AND
				alu_op		<= 3'b010;	
				reg_wr 		<= 1'b1 ;		
				reg_dst 		<= 1'b0 ;		
				alu_src 		<= 1'b0 ;		
				jump	 		<= 1'b0 ;		
				jal	 		<= 1'b0 ;		
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;				
				mem_rd 		<= 1'b0 ;		
				mem_wr 		<= 1'b0 ;		
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b0101 :   begin //Btiwise OR
				alu_op		<= 3'b011;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;	
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b0110 :	begin //Divide Instruction
				alu_op		<= 3'b100;	
				reg_wr 		<= 1'b1 ;		
				reg_dst 		<= 1'b0 ;		
				alu_src 		<= 1'b0 ;		
				jump	 		<= 1'b0 ;		
				jal	 		<= 1'b0 ;		
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;				
				mem_rd 		<= 1'b0 ;		
				mem_wr 		<= 1'b0 ;		
				mem_to_reg 	<= 1'b0 ;		
				end
				
			4'b0111 :   begin //JAL (Jump-and-Link) Instruction
				alu_op		<= 3'b111;
				reg_wr 		<= 1'b0 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b1 ;	
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1000 :   begin //CMP (Compare) Instruction
				alu_op		<= 3'b111;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;	
				cmp	 		<= 1'b1 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1001 :	begin //MOV Instruction
				alu_op		<= 3'b111;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;	
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b1 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1010 :   begin //Jump Instruction
				alu_op		<= 3'b111;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b1 ;	
				jal	 		<= 1'b0 ;	
				cmp	 		<= 1'b0 ;
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1011 :   begin //Load Immediate
				alu_op		<= 3'b111;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b1 ;	
				alu_src 		<= 1'b1 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;	
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1100 :	begin //Load Word (memory)
				alu_op		<= 3'b000;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b1 ;	
				alu_src 		<= 1'b1 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b1 ;	
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b1 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b1 ;	
				end
				
			4'b1101 :   begin //Store Word (memory)
				alu_op		<= 3'b000;
				reg_wr 		<= 1'b0 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b1 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b1 ;	
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b1 ;	
				mem_wr 		<= 1'b1 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1110 :   begin //Set on LESS THAN
				alu_op		<= 3'b001;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;	
				cmp	 		<= 1'b1 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1111 :	begin //Set on GREATER THAN
				alu_op		<= 3'b001;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;	
				cmp	 		<= 1'b1 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			default :   begin// Default State (sys_reset)
				alu_op		<= 3'b000;	
				reg_wr 		<= 1'b0 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end        
				
		endcase
	 end

	 
// Section: Register File
	wire [15:0] Out1, Out2, Out3, Out4, Out5, Out6, Out7, Out8, Out9, Out10, Out11, Out12, Out13, Out14, Out15,  Out16; 		
	wire [15:0] we;
	reg [15:0] res;
	
	
	always @(reg_file_Rd)begin
			 case(reg_file_Rd)
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
	 
	 
	 assign we[0]  = res[0]  & reg_wr;
	 assign we[1]  = res[1]  & reg_wr;
	 assign we[2]  = res[2]  & reg_wr;
	 assign we[3]  = res[3]  & reg_wr;
	 assign we[4]  = res[4]  & reg_wr;
	 assign we[5]  = res[5]  & reg_wr;
	 assign we[6]  = res[6]  & reg_wr;
	 assign we[7]  = res[7]  & reg_wr;
	 assign we[8]  = res[8]  & reg_wr;
	 assign we[9]  = res[9]  & reg_wr;
	 assign we[10] = res[10] & reg_wr;
	 assign we[11] = res[11] & reg_wr;
	 assign we[12] = res[12] & reg_wr;
	 assign we[13] = res[13] & reg_wr;
	 assign we[14] = res[14] & reg_wr;
	 assign we[15] = res[15] & reg_wr;
	 
	 
	 R_16B Rs1  (clk,	rst, 	we[0] 	 ,	reg_dataWrite		,		 Out1 );
	 R_16B Rs2  (clk,	rst,	we[1] 	 ,	reg_dataWrite		,		 Out2 );
	 R_16B Rs3  (clk,	rst,	we[2] 	 ,	reg_dataWrite		,		 Out3 );
	 R_16B Rs4  (clk,	rst,	we[3] 	 ,	reg_dataWrite		,		 Out4 );
	 R_16B Rs5  (clk,	rst,	we[4] 	 ,	reg_dataWrite		,		 Out5 );
	 R_16B Rs6  (clk,	rst,	we[5] 	 ,	reg_dataWrite		,		 Out6 );
	 R_16B Rs7  (clk,	rst,	we[6] 	 ,	reg_dataWrite		,		 Out7 );
	 R_16B Rs8  (clk,	rst,	we[7] 	 ,	reg_dataWrite		,		 Out8 );
	 R_16B Rs9  (clk,	rst,	we[8] 	 ,	reg_dataWrite		,		 Out9 );
	 R_16B Rs10 (clk,	rst,	we[9] 	 ,	reg_dataWrite		,		 Out10 );
	 R_16B Rs11 (clk,	rst,	we[10]	 ,	reg_dataWrite		,		 Out11 );
	 R_16B Rs12 (clk,	rst,	we[11]	 ,	reg_dataWrite		,		 Out12 );
	 R_16B Rs13 (clk,	rst,	we[12]	 ,	reg_dataWrite		,		 Out13 );
	 R_16B Rs14 (clk,	rst,	we[13]	 ,	reg_dataWrite		,		 Out14 );
	 R_16B Rs15 (clk,	rst,	we[14]	 ,	reg_dataWrite		,		 Out15 );
	 R_16B Rs16 (clk,	rst,	we[15]	 ,	reg_dataWrite		, 	  	 Out16 );
	 
	 
	 always @ (reg_file_Rs or Out1  or
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
		case(reg_file_Rs)
			4'b0000	:  begin		reg_file_Rout1	 	= Out1;		end
			4'b0001	:	begin		reg_file_Rout1 	= Out2;     end
			4'b0010	:	begin		reg_file_Rout1		= Out3;     end
			4'b0011	:	begin		reg_file_Rout1		= Out4;     end
			4'b0100	:	begin		reg_file_Rout1		= Out5;     end
			4'b0101	:	begin		reg_file_Rout1		= Out6;     end
			4'b0110	:	begin		reg_file_Rout1		= Out7;     end
			4'b0111	:	begin		reg_file_Rout1		= Out8;     end
			4'b1000	:	begin		reg_file_Rout1		= Out9;     end
			4'b1001	:	begin		reg_file_Rout1		= Out10;    end
			4'b1010	:	begin		reg_file_Rout1	 	= Out11;    end
			4'b1011	:	begin		reg_file_Rout1 	= Out12;    end
			4'b1100	:	begin		reg_file_Rout1 	= Out13;    end
			4'b1101	:	begin		reg_file_Rout1 	= Out14;    end
			4'b1110	:	begin		reg_file_Rout1 	= Out15;    end
			4'b1111	:	begin		reg_file_Rout1		= Out16;    end
			default  :  begin    reg_file_Rout1		= 0;			end
		endcase         
	 end
	 
	 //  Multiplexer for R2 Selection
	 
	 always @ (reg_file_Rt or Out1  or
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
			case(reg_file_Rt)
				4'b0000	 :  begin	  reg_file_Rout2	 = Out1;		end
				4'b0001	 :	 begin	  reg_file_Rout2   = Out2;		end
				4'b0010	 :  begin	  reg_file_Rout2	 = Out3;		end
				4'b0011	 :  begin	  reg_file_Rout2	 = Out4;    end
				4'b0100	 :	 begin	  reg_file_Rout2	 = Out5;		end
				4'b0101	 :	 begin	  reg_file_Rout2	 = Out6;   	end
				4'b0110	 :  begin	  reg_file_Rout2	 = Out7;   	end
				4'b0111	 :	 begin	  reg_file_Rout2	 = Out8;   	end
				4'b1000	 :	 begin	  reg_file_Rout2	 = Out9;		end
				4'b1001	 :  begin	  reg_file_Rout2	 = Out10;  	end
				4'b1010	 :	 begin	  reg_file_Rout2	 = Out11;  	end
				4'b1011	 :	 begin	  reg_file_Rout2   = Out12;  	end
				4'b1100	 :	 begin	  reg_file_Rout2   = Out13;	end
				4'b1101	 :  begin	  reg_file_Rout2   = Out14;  	end
				4'b1110	 :  begin	  reg_file_Rout2   = Out15;  	end
				4'b1111	 :	 begin	  reg_file_Rout2	 = Out16;  	end
				default   :  begin     reg_file_Rout2		= 0;		end
			endcase
	 end

// Combinational Blocks for Specific instructions



endmodule
