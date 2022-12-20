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


endmodule
