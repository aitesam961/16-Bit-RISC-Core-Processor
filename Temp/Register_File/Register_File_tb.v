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
	forever #50 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		rst = 1;
		Rs = 0;
		Rt = 0;
		Rd = 0;
		RW = 0;
		wr = 0;
		#110;
		rst = 0;
		#50;
		
		Rs = 4'b0000;
		Rt = 4'b0010;
		Rd = 4'b1111;
		RW = 16'h1450;
		wr = 1;
		#50;
		
		Rs = 4'b1000;
		Rt = 4'b1111;
		Rd = 4'b1111;
		RW = 16'h2000;
		wr = 0;
		#50;
		
		Rs = 4'b0011;
		Rt = 4'b1001;
		Rd = 4'b0011;
		RW = 16'h2150;
		wr = 1;
		#50;
		
		Rs = 4'b0011;
		Rt = 4'b0010;
		Rd = 4'b1001;
		RW = 16'h0512;
		wr = 1;
		#50;
		
		Rs = 4'b1111;
		Rt = 4'b0011;
		Rd = 4'b1001;
		RW = 16'h0512;
		wr = 0;
		#50;
		
		Rs = 4'b0000;
		Rt = 4'b0010;
		Rd = 4'b1001;
		RW = 16'h0512;
		wr = 1;
		#50;
		
		Rs = 4'b1010;
		Rt = 4'b0000;
		Rd = 4'b1010;
		RW = 16'h0512;
		wr = 1;
		#50;
        
		// Add stimulus here

	end
      
endmodule

