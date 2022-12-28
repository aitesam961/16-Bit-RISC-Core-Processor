`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
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








 
 
 
 

 

 
 