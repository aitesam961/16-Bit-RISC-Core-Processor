`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:55:57 12/25/2022
// Design Name:   Instruction_memory
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/Low_Level_Implementation/Instruction_memory/Instruction_memory_tb.v
// Project Name:  Instruction_memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_memory
// 
////////////////////////////////////////////////////////////////////////////////

module Instruction_memory_tb;

	// Inputs
	reg clk;
	reg [5:0] pc_in;

	// Outputs
	wire [15:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Instruction_memory uut (
		.clk(clk), 
		.pc_in(pc_in), 
		.data_out(data_out)
	);
	initial begin
		clk = 0;
		forever #25 clk = ~clk;
	end
	initial begin

		pc_in = 6'b000000;
		#50;
		
		pc_in = 6'b000001;
		#50;
      
		pc_in = 6'b000010;
		#50;
		
		pc_in = 6'b000011;
		#50;
		
		
		
		pc_in = 6'b000100;
		#50;
		
		pc_in = 6'b000101;
		#50;
      
		pc_in = 6'b000110;
		#50;
		
		pc_in = 6'b000111;
		#50;
		
		
		pc_in = 6'b001000;
		#50;
		
		pc_in = 6'b001001;
		#50;
      
		pc_in = 6'b001010;
		#50;
		
		pc_in = 6'b001011;
		#50;
		
		
		
		pc_in = 6'b001100;
		#50;
		
		pc_in = 6'b001101;
		#50;
      
		pc_in = 6'b001110;
		#50;
		
		pc_in = 6'b001111;
		#50;
		
		
		
		// Add stimulus here

	end
      
endmodule

