`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:37:57 12/09/2022
// Design Name:   Reg_File_Main
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/New folder/RISC_16b_SCP/Reg_File_main_tb.v
// Project Name:  RISC_16b_SCP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Reg_File_Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Reg_File_main_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] Rs;
	reg [3:0] Rt;
	reg [3:0] Rd;
	reg [15:0] R_Write;
	reg Gwe;

	// Outputs
	wire [15:0] Ra;
	wire [15:0] Rb;

	// Instantiate the Unit Under Test (UUT)
	Reg_File_Main uut (
		.clk(clk), 
		.rst(rst), 
		.Rs(Rs), 
		.Rt(Rt), 
		.Rd(Rd), 
		.R_Write(R_Write), 
		.Ra(Ra), 
		.Rb(Rb), 
		.Gwe(Gwe)
	);
	
	
	initial begin
	clk = 0;
	forever #35 clk = ~clk;
	end

	initial begin

		rst = 1;
		Rs = 0;
		Rt = 0;
		Rd = 0;
		R_Write = 0;
		Gwe = 0;
		#50;
		rst = 0;
		#50;
		Rs = 4'b0000;
		Rt = 4'b0001;
		Rd = 4'b1111;
		R_Write = 16'b1010101010101010;
		Gwe = 1;
		#50;
		Rs = 4'b1111;
		Rt = 4'b0000;
		Rd = 4'b1111;
		R_Write = 16'b1010101010101010;
		Gwe = 0;
		#50;
		
		
		// Add stimulus here

	end
      
endmodule

