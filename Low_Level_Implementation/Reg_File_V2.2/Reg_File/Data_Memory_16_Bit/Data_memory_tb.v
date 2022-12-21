`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:01:19 12/21/2022
// Design Name:   Data_Memory_main
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/Low_Level_Implementation/Reg_File_V2.2/Reg_File/Data_Memory_16_Bit/Data_memory_tb.v
// Project Name:  Data_Memory_16_Bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Data_Memory_main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Data_memory_tb;

	// Inputs
	reg clk;
	reg rst;
	reg wr_en;
	reg rd_en;
	reg [15:0] data_in;
	reg [5:0] mem_address;

	// Outputs
	wire [15:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Data_Memory_main uut (
		.clk(clk), 
		.rst(rst), 
		.wr_en(wr_en), 
		.rd_en(rd_en), 
		.data_in(data_in), 
		.mem_address(mem_address), 
		.data_out(data_out)
	);

	initial begin
	clk = 0;
	forever #25 clk = ~clk;
	end
	initial begin
		
		rst = 1;
		wr_en = 0;
		rd_en = 0;
		data_in = 0;
		mem_address = 0;
		#100;
		rst = 0;
		wr_en = 1;
		rd_en = 0;
		data_in = 16'h0c60;
		mem_address = 000000;
		#50;
		
		wr_en = 0;
		rd_en = 1;
		data_in = 16'h0c60;
		mem_address = 000000;
		#50;
		
		wr_en = 1;
		rd_en = 0;
		data_in = 16'hfff0;
		mem_address = 000001;
		#50;
		
		wr_en = 0;
		rd_en = 1;
		data_in = 16'h0c60;
		mem_address = 000001;
		#50;
        
		// Add stimulus here
		
		wr_en = 1;
		rd_en = 0;
		data_in = 16'h11e4;
		mem_address = 000010;
		#50;
		
		wr_en = 0;
		rd_en = 1;
		data_in = 16'h0000;
		mem_address = 000010;
		#50;
		
		wr_en = 1;
		rd_en = 0;
		data_in = 16'haaa1;
		mem_address = 000011;
		#50;
		
		wr_en = 0;
		rd_en = 1;
		data_in = 16'h0c60;
		mem_address = 000011;
		#50;

	end
      
endmodule

