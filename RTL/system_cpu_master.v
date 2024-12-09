`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Created By: Muhammad Aitesam
// Electrical & Computer Engineering Dept.
//	COMSATS University Islamabad, Wah Campus
// 
//
// Project: 16-Bit RISC Core Processor
//	Depnedencies:
// 	CPU Core
//		Flash Memory
//		Data Memory
//  
// Revision 0.1V
//  
//
//////////////////////////////////////////////////////////////////////////////////
module system_cpu_master(
    input clk,
    input rst,
	 output [15:0] data_mem_to_cpu
    );
	 wire [5:0] pc_cpu_to_mem, addr_cpu_to_mem;
	 wire [15:0] instr_mem_to_cpu, 	data_cpu_to_mem;
	 wire mem_wr_en, mem_rd_en;
	 
	 cpu_core core(clk,	rst,	pc_cpu_to_mem,	instr_mem_to_cpu,	data_mem_to_cpu,	mem_wr_en, mem_rd_en, data_cpu_to_mem,	addr_cpu_to_mem);
	 
	 Instruction_memory flash(clk,	pc_cpu_to_mem,	instr_mem_to_cpu);
	 
	 Data_Memory_main ram(clk,	rst,	mem_wr_en, mem_rd_en,	data_cpu_to_mem,	addr_cpu_to_mem,	data_mem_to_cpu);


endmodule








 
 
 
 

 

 
 