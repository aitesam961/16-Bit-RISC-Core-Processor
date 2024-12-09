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
		opcode = 4'b0000;
		#50;
       
		opcode = 4'b0001;
		#50;
		
		opcode = 4'b0010;
		#50;
		
		opcode = 4'b0011;
		#50;
		
		opcode = 4'b0100;
		#50;
		
		opcode = 4'b0101;
		#50;
		
		opcode = 4'b0110;
		#50;
		
		opcode = 4'b0111;
		#50;
		
		opcode = 4'b1000;
		#50;
		
		opcode = 4'b1001;
		#50;
		
		opcode = 4'b1010;
		#50;
		
		opcode = 4'b1011;
		#50;
		
		opcode = 4'b1100;
		#50;
		
		opcode = 4'b1101;
		#50;
		
		opcode = 4'b1110;
		#50;
		
		opcode = 4'b1111;
		#50;
		
		opcode = 4'b0000;
		#50;
		// Add stimulus here

	end
      
endmodule

