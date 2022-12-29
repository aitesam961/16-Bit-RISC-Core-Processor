`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:12:37 12/19/2022 
// Design Name: 
// Module Name:    Control_Unit 
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
   module Control_Unit(
    input [3:0] opcode,
    output reg [2:0] alu_op,
    output reg reg_wr,
    output reg reg_dst,
    output reg alu_src,
    output reg jump,
	 output reg jal,
	 output reg jr,
    output reg cmp,
	 output reg mov,
	 output reg li,
    output reg mem_rd,
    output reg mem_wr,
    output reg mem_to_reg
    );
	 
	 always @(opcode)begin
		case(opcode)
			4'b0000 :	begin// Reset State
				alu_op		<= 3'b111;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
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
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
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
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
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
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
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
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;				
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
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
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
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;				
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
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
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
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b1 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
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
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b1 ;
				li 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1010 :   begin //Jump Instruction
				alu_op		<= 3'b111;
				reg_wr 		<= 1'b0 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b1 ;	
				jal	 		<= 1'b0 ;	
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1011 :   begin //Jump Register
				alu_op		<= 3'b111;
				reg_wr 		<= 1'b0 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;	
				jr		 		<= 1'b1 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1100 :	begin //Load Word (memory)
				alu_op		<= 3'b000;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b1 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;	
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
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
				jal	 		<= 1'b0 ;
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b1 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1110 :   begin //Load Immediate
				alu_op		<= 3'b111;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b1 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b1 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			4'b1111 :	begin //SUB operation
				alu_op		<= 3'b110;
				reg_wr 		<= 1'b1 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b1 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end
				
			default :   begin// Default State (sys_reset)
				alu_op		<= 3'b111;	
				reg_wr 		<= 1'b0 ;	
				reg_dst 		<= 1'b0 ;	
				alu_src 		<= 1'b0 ;	
				jump	 		<= 1'b0 ;	
				jal	 		<= 1'b0 ;
				jr		 		<= 1'b0 ;
				cmp	 		<= 1'b0 ;	
				mov 			<= 1'b0 ;
				li 			<= 1'b0 ;
				mem_rd 		<= 1'b0 ;	
				mem_wr 		<= 1'b0 ;	
				mem_to_reg 	<= 1'b0 ;	
				end        
				
		endcase
	 end


endmodule
