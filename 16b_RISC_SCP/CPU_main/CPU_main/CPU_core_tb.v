`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:01:41 12/27/2022
// Design Name:   cpu_main
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/16b_RISC_SCP/CPU_main/CPU_main/CPU_core_tb.v
// Project Name:  CPU_main
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu_main
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

	// Instantiate the Unit Under Test (UUT)
	cpu_main uut (
		.clk(clk), 
		.rst(rst)
	);
	initial begin
		clk = 0;
		forever #25 clk = ~clk;
	end
	initial begin
		rst = 1;
		#100;
		rst = 0;
		#100;
        
		// Add stimulus here

	end
      
endmodule

