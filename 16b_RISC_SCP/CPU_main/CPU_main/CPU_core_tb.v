`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:26:06 12/27/2022
// Design Name:   cpu_core
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/16b_RISC_SCP/CPU_main/CPU_main/CPU_core_tb.v
// Project Name:  CPU_main
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu_core
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_core_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0] instr_out;
	reg [15:0] mem_Data_in;

	// Outputs
	wire [15:0] pc_out;
	wire mem_wr;
	wire mem_rd;
	wire [15:0] reg_Data_2;
	wire [15:0] alu_Out;

	// Instantiate the Unit Under Test (UUT)
	cpu_core uut (
		.clk(clk), 
		.rst(rst), 
		.instr_out(instr_out), 
		.pc_out(pc_out), 
		.mem_Data_in(mem_Data_in), 
		.mem_wr(mem_wr), 
		.mem_rd(mem_rd), 
		.reg_Data_2(reg_Data_2), 
		.alu_Out(alu_Out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		instr_out = 0;
		mem_Data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

