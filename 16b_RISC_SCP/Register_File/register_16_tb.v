`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:53 12/10/2022
// Design Name:   register_file16
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/16b_RISC_SCP/Register_File/register_16_tb.v
// Project Name:  Register_File
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_file16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_16_tb;

	// Inputs
	reg clk;
	reg rst;
	reg we;
	reg [3:0] A1;
	reg [3:0] A2;
	reg [3:0] A3;
	reg [15:0] wd;

	// Outputs
	wire [15:0] rd1;
	wire [15:0] rd2;

	// Instantiate the Unit Under Test (UUT)
	register_file16 uut (
		.clk(clk), 
		.rst(rst), 
		.we(we), 
		.A1(A1), 
		.A2(A2), 
		.A3(A3), 
		.wd(wd), 
		.rd1(rd1), 
		.rd2(rd2)
	);
	initial begin
		clk = 0;
		forever #50 clk = ~clk;
	end
		
	initial begin
		rst = 1;
		we = 0;
		A1 = 0;
		A2 = 0;
		A3 = 0;
		wd = 0;
		#50;
		
		rst = 0;
		we = 1;
		A1 = 0;
		A2 = 1;
		A3 = 4;
		wd = 45;
		#50;
		
		rst = 0;
		we = 0;
		A1 = 4;
		A2 = 1;
		A3 = 0;
		wd = 0;
		#50;
		
		rst = 0;
		we = 1;
		A1 = 0;
		A2 = 3;
		A3 = 5;
		wd = 67;
		#50;
		
		rst = 0;
		we = 0;
		A1 = 4;
		A2 = 5;
		A3 = 0;
		wd = 0;
		#50;
        
		// Add stimulus here

	end
      
endmodule

