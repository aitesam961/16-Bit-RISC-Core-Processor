`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:04 12/23/2022 
// Design Name: 
// Module Name:    Instruction_memory 
//
//////////////////////////////////////////////////////////////////////////////////
module Instruction_memory(
    
	 input clk,
	 input [5:0] pc_in,
    output reg [15:0] data_out
    );
	 reg [15:0] instr_mem[63:0];
	 initial begin
		$readmemb("instruction_memory.txt", instr_mem);
	 end
	 
	 always @(posedge clk) begin 
		data_out <= instr_mem[pc_in];
	 end 
endmodule
