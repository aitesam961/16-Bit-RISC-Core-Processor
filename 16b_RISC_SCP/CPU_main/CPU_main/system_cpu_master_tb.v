`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:20:22 12/27/2022
// Design Name:   system_cpu_master
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/16b_RISC_SCP/CPU_main/CPU_main/system_cpu_master_tb.v
// Project Name:  CPU_main
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: system_cpu_master
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module system_cpu_master_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] data_mem_to_cpu;

	// Instantiate the Unit Under Test (UUT)
	system_cpu_master uut (
		.clk(clk), 
		.rst(rst), 
		.data_mem_to_cpu(data_mem_to_cpu)
	);
	
	initial begin
		clk = 0;
		forever #25 clk = ~clk;
	end

	initial begin

		rst = 1;
		#70;
		rst = 0;
      #70; 
		// Add stimulus here

	end
      
endmodule

