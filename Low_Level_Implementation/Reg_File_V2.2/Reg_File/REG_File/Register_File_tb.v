`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:43:32 12/10/2022
// Design Name:   Register_File
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/16b_RISC_SCP/Register_File/Register_File_tb.v
// Project Name:  Register_File
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_File
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_File_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] Rs;
	reg [3:0] Rt;
	reg [3:0] Rd;
	reg [15:0] RW;
	reg wr;

	// Outputs
	wire [15:0] Rout1;
	wire [15:0] Rout2;

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.clk(clk), 
		.rst(rst), 
		.Rs(Rs), 
		.Rt(Rt), 
		.Rd(Rd), 
		.RW(RW), 
		.wr(wr), 
		.Rout1(Rout1), 
		.Rout2(Rout2)
	);
	initial begin
	clk = 0;
	forever #25 clk = ~clk;
	end
	
	initial begin
		wr = 0;
		Rs = 0;
		Rt = 0;
		Rd = 0;
		RW = 0;
		rst = 1;
		#70;
		
		rst = 0;
		#30;
		
		wr = 1;
		Rs = 0000;
		Rt = 0001;
		Rd = 0010;
		RW = 16'h03e8;
		#50;
		
		wr = 1;
		Rs = 0010;
		Rt = 0011;
		Rd = 0100;
		RW = 16'h05dc;
		#50;
		
		wr = 0;
		Rs = 0100;
		Rt = 0010;
		Rd = 0010;
		RW = 16'h07d0;
		#50;
		
		wr = 1;
		Rs = 0000;
		Rt = 0100;
		Rd = 0101;
		RW = 16'h09c4;
		#50;
		
		wr = 0;
		Rs = 0101;
		Rt = 0000;
		Rd = 0010;
		RW = 16'h07d0;
		#50;
		
		wr = 0;
		Rs = 0010;
		Rt = 0100;
		Rd = 0101;
		RW = 16'h09c4;
		#50;
		
		wr = 1;
		Rs = 0101;
		Rt = 0100;
		Rd = 0110;
		RW = 16'h09c4;
		#50;
		
		wr = 0;
		Rs = 0110;
		Rt = 0101;
		Rd = 0100;
		RW = 16'h0bb8;
		#50;
		
		wr = 1;
		Rs = 0010;
		Rt = 0100;
		Rd = 0110;
		RW = 16'h0bb8;
		#50;
		
		wr = 1;
		Rs = 0110;
		Rt = 0010;
		Rd = 0110;
		RW = 16'h09c4;
		#50;
		
		wr = 0;
		Rs = 0000;
		Rt = 0100;
		Rd = 1000;
		RW = 16'h0bb8;
		#50;
		
		wr = 1;
		Rs = 0110;
		Rt = 0010;
		Rd = 1000;
		RW = 16'h0dac;
		#50;
		
		wr = 0;
		Rs = 1000;
		Rt = 0110;
		Rd = 1000;
		RW = 16'h0dac;
		#50;
		
	end
      
endmodule

