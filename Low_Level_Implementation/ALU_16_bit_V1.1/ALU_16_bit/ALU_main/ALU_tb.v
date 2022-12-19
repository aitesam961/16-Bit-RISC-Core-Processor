`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:17:49 12/16/2022
// Design Name:   ALU_Main
// Module Name:   C:/Users/PC/Desktop/ALU_16_bit/ALU_main/ALU_tb.v
// Project Name:  ALU_main
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [15:0] d_in_1;
	reg [15:0] d_in_2;
	reg [2:0] alu_op;

	// Outputs
	wire z_flag;
	wire [31:0] d_out;
	wire a_grt_b;
	wire b_grt_a;

	// Instantiate the Unit Under Test (UUT)
	ALU_Main uut (
		.d_in_1(d_in_1), 
		.d_in_2(d_in_2), 
		.alu_op(alu_op), 
		.z_flag(z_flag), 
		.d_out(d_out), 
		.a_grt_b(a_grt_b), 
		.b_grt_a(b_grt_a)
	);

	initial begin
		// Check Addition
		d_in_1 = 1;
		d_in_2 = 10;
		alu_op = 000;
		#50;
		// Check substraction using addition
		d_in_1 = 30;
		d_in_2 = -20;
		alu_op = 000;
		#50;
		// Check multiplication Easy
		d_in_1 = 40;
		d_in_2 = 50;
		alu_op = 001;
		#50;
		// Check multiplication , Benchmark
		d_in_1 = 45000;
		d_in_2 = 60000;
		alu_op = 001;
		#50;
		
		// Check Bitwise AND operation
		d_in_1 = 453;
		d_in_2 = 567;
		alu_op = 010;
		#50;
		
		// Check Bitwise AND operation
		d_in_1 = 16'hffff;
		d_in_2 = 16'hffff;
		alu_op = 010;
		#50;
		
		// Check Bitwise OR operation
		d_in_1 = 453;
		d_in_2 = 567;
		alu_op = 011;
		#50;
		
		// Check Bitwise OR operation
		d_in_1 = 16'h0000;
		d_in_2 = 16'h0000;
		alu_op = 011;
		#50;
		
		
		// Check Division (only operand 1)
		d_in_1 = 39;
		d_in_2 = 0;
		alu_op = 100;
		#50;
		
		// Check A > B
		d_in_1 = 40;
		d_in_2 = 20;
		alu_op = 101;
		#50;
		
		// Check A > B
		d_in_1 = 40;
		d_in_2 = 40;
		alu_op = 101;
		#50;
		
		// Check A < B
		d_in_1 = 20;
		d_in_2 = 40;
		alu_op = 110;
		#50;
		
		// Check A == B
		d_in_1 = 40;
		d_in_2 = 40;
		alu_op = 101;
		#50;
		// Check SHIFT LEFT LOGICAL
		d_in_1 = 9000;
		d_in_2 = 2;
		alu_op = 111;
		#50;
		
		
		
        
		// Add stimulus here

	end
      
endmodule

