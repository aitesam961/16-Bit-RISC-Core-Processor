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
module cpu_core(
    input clk,
    input rst,
 
//	 Instruction Memory
	 output [5:0] pc_out,
	 input [15:0] instr_out,
	 
	 
//  Data memory
	 input [15:0] mem_Data_in,
	 output mem_wr,
	 output mem_rd,
	 output [15:0] reg_Data_2,
	 output [5:0] data_mem_address
	 
	 
    );
	 
	 

//=====================================STAGE-1 (IF)==========================================
	 
	 // Program Counter
	 wire [5:0] pc_target;
	 Program_Counter pc(clk,	rst,		pc_target,		pc_out);
	
	 // Program Counter Adder
	 wire  [5:0] pc_next;
	 assign pc_next = pc_out + 1;

//	 
//	 // Instruction memory
//	 wire [15:0] instr_out;
//	 Instruction_memory im1 (clk,		pc_out[5:0],		instr_out);
//	 
//	 


//=====================================STAGE-2 (ID)==========================================


	 // Instruction Decode 
	 wire [3:0] opcode,		reg_Rs,		reg_Rt,		reg_Rd;
	 wire [15:0] imm_offset;
	 wire [5:0] j_offset;
	 wire [7:0] li_offset;
	 
	 
	 assign opcode 		=		instr_out	[15:12];
	 assign reg_Rd 		=		instr_out	[11:8];
	 assign reg_Rs 		=		instr_out	[7:4];
	 assign reg_Rt 		=		instr_out	[3:0];
	 assign imm_offset 	=		instr_out	[3:0]; 
	 assign li_offset		=		instr_out	[7:0];
	 assign j_offset 		=		instr_out	[5:0];

	  
	 


	  
	 // Register File
	 reg [3:0] reg_Rd_mxd;
	 wire reg_dest;
	 wire [15:0] reg_write_Data, reg_Data_1, reg_Write_D, reg_Write_s1, reg_Write_s2;
	 always @(reg_dest or reg_Rd or reg_Rt) begin
		case(reg_dest)
			1'b0 : reg_Rd_mxd  = reg_Rd;
			1'b1 : reg_Rd_mxd  = reg_Rt;
		endcase
	 end
	 Register_File_main reg_file (clk,		rst,		reg_Rs,		reg_Rt,		reg_Rd_mxd,		reg_wr,		reg_Write_D,		reg_Data_1,		reg_Data_2);
	 
	
	
	 // Control Unit
	 wire [2:0] alu_op;
	 wire alu_src, op_jump, op_jal, op_jr, op_cmp, op_mov, op_li, m2r;
	 Control_Unit cu(opcode,		alu_op,		reg_wr,		reg_dest,		alu_src,		op_jump,		op_jal,		op_jr,	op_cmp,	op_mov,	op_li, 	mem_rd,		mem_wr,		m2r);
	 
	
	
//=====================================STAGE-3 (Ex)==========================================
	 
	 // Arithmatic Logic Unit
	 wire z_flag, agb, bga;
	 reg [15:0] imm_offset_se;
	 // Immediate Offset Sign Extender
	 
	 always @ (imm_offset) begin
		if(imm_offset[3] == 0) begin
			imm_offset_se <= {12'b000000000000,imm_offset};		// Stuff 0 is MSB is zero
			end
			else begin 
				imm_offset_se <= {12'b111111111111,imm_offset};	// Stuff 1 is MSB is one
			end
	end
	 wire [15:0] alu_Out;
	 assign data_mem_address = alu_Out[5:0];
	 wire [15:0] alu_src_2;
	 MUX2x1 mxalusrc (reg_Data_2,	imm_offset_se,	alu_src,	alu_src_2);
	 ALU_Main alu ( reg_Data_1,	alu_src_2,		alu_op,	z_flag,	alu_Out,		agb,	bga);
	 
//=====================================STAGE-4 (Memory)=======================================
	 
//	 
//	 
//	 // Data Memory
//	 wire [15:0] mem_Data_out;
//	 Data_Memory_main dm(clk,	rst,	mem_wr,	mem_rd,	reg_Data_2, 	alu_Out,		mem_Data_out);
//	 
	 
 	 
	 
	 
//======================(Purpose Built Combinational Logic)====================================
	 /*
	 // Jump Instruction Combinational Block
	 always @ (j_offset) begin
		if(j_offset[11] == 0) begin
			j_target <= {4'b0000,j_offset};		// Stuff 0 is MSB is zero
			end
			else begin 
				j_target <= {4'b1111,j_offset};	// Stuff 1 is MSB is one
			end
	end
	*/
	// Jump Target Multiplexer
	wire [5:0] jr_target, mxj_return;
	assign jr_target = reg_Data_1[5:0]; // JR Rs
	wire j_control;
	assign j_control = op_jump | op_jal;
	wire [5:0] j_target;
	assign j_target = j_offset[5:0];
	
	// Jump & JAL  
	MUX2x1_Br mx_j_pc (pc_next, j_target, j_control, mxj_return);
	 
	// Jump Register 
	MUX2x1_Br mx_jr (mxj_return,	jr_target,	op_jr,	pc_target);
	
	
	
	
	
	// Memory to Register Multiplexing
	MUX2x1 mxm2r (alu_Out,	mem_Data_in,	m2r,	reg_write_Data);
	
	// Compare Instruction Combinational Block
	
	reg [15:0] cmp_DS;
	always @(op_cmp or z_flag or agb or bga)begin
		if(z_flag)begin
			cmp_DS <= 16'hffff;
		end
		else if(agb)begin
			cmp_DS <= 16'h00ff;
		end
		else if(bga) begin
			cmp_DS <= 16'hff00;
		end
		else 
			cmp_DS <= 16'h0000;
	end
	MUX2x1 mxcmp (reg_write_Data,	cmp_DS,	op_cmp,	reg_Write_s1);
	
	
	// Load Immediate Instruction Logic Block
	
	reg  [15:0] li_offset_se;
	always @ (li_offset) begin
		if(li_offset[7] == 0) begin
			li_offset_se <= {4'b0000,li_offset};		// Stuff 0 is MSB is zero
			end
			else begin 
				li_offset_se <= {4'b1111,li_offset};	// Stuff 1 is MSB is one
			end
	end
	
	MUX2x1 mxli (reg_Write_s1,	li_offset_se,	op_li,	reg_Write_s2);
	
	

	// Move Instruction Logic Block	
	MUX2x1 mxmov (reg_Write_s2,	reg_Data_1,	op_mov,	reg_Write_D);

endmodule
