`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:05:20 12/19/2022
// Design Name:   Control_Unit
// Module Name:   C:/Users/PC/Desktop/COA/Control_Unit/Control_Unit_tb.v
// Project Name:  Control_Unit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control_Unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Control_Unit_tb;

	// Inputs
	reg [3:0] opcode;

	// Outputs
	wire [2:0] alu_op;
	wire reg_wr;
	wire reg_dst;
	wire alu_src;
	wire jump;
	wire cmp;
	wire mem_rd;
	wire mem_wr;
	wire mem_to_reg;

	// Instantiate the Unit Under Test (UUT)
	Control_Unit uut (
		.opcode(opcode), 
		.alu_op(alu_op), 
		.reg_wr(reg_wr), 
		.reg_dst(reg_dst), 
		.alu_src(alu_src), 
		.jump(jump), 
		.cmp(cmp), 
		.mem_rd(mem_rd), 
		.mem_wr(mem_wr), 
		.mem_to_reg(mem_to_reg)
	);

	initial begin
		// Initialize Inputs
		opcode = 0000;
		#50;
       
		opcode = 0001;
		#50;
		
		opcode = 0010;
		#50;
		
		opcode = 0011;
		#50;
		
		opcode = 0100;
		#50;
		
		opcode = 0101;
		#50;
		
		opcode = 0110;
		#50;
		
		opcode = 0111;
		#50;
		
		opcode = 1000;
		#50;
		
		opcode = 1001;
		#50;
		
		opcode = 1010;
		#50;
		
		opcode = 1011;
		#50;
		
		opcode = 1100;
		#50;
		
		opcode = 1101;
		#50;
		
		opcode = 1110;
		#50;
		
		opcode = 1111;
		#50;
		
		opcode = 0000;
		#50;
		// Add stimulus here

	end
      
endmodule

