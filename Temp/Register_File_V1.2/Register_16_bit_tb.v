`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:35:06 12/14/2022
// Design Name:   Register_16_bit
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/Register_File_V1.2/Register_16_bit_tb.v
// Project Name:  Register_File_V1.2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_16_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_16_bit_tb;

	// Inputs
	reg clk;
	reg rst;
	reg wr_en;
	reg [15:0] data_in;

	// Outputs
	wire [15:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Register_16_bit uut (
		.clk(clk), 
		.rst(rst), 
		.wr_en(wr_en), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
	clk = 0;
	forever #37 clk = ~clk;
	end
	
	initial begin
		clk = 0;
		rst = 1;
		wr_en = 0;
		data_in = 0;
		#50;
		rst = 0;
		wr_en = 1;
		data_in = 16'h07d8;
		#50;
		
		wr_en = 0;
		data_in = 16'h7777;
		#50;
		
		wr_en = 1;
		data_in = 16'h1245;
		#50;
		
		wr_en = 1;
		data_in = 16'h1874;
		#50;
		
		wr_en = 0;
		data_in = 16'h0001;
		#50;
		
		wr_en = 1;
		data_in = 16'h8745;
		#50;
        
		// Add stimulus here

	end
      
endmodule

