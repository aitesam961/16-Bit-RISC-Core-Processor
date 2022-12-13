`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:30:51 12/13/2022
// Design Name:   Register_File_main
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/Register_File/Register_File_16bCPU/Register_File_tb.v
// Project Name:  Register_File_16bCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_File_main
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
	reg [3:0] read_add_1;
	reg [3:0] read_add_2;
	reg [3:0] wr_reg_add;
	reg wr_en;
	reg [15:0] wr_data;

	// Outputs
	wire [15:0] read_data_1;
	wire [15:0] read_data_2;

	// Instantiate the Unit Under Test (UUT)
	Register_File_main uut (
		.clk(clk), 
		.rst(rst), 
		.read_add_1(read_add_1), 
		.read_add_2(read_add_2), 
		.wr_reg_add(wr_reg_add), 
		.wr_en(wr_en), 
		.wr_data(wr_data), 
		.read_data_1(read_data_1), 
		.read_data_2(read_data_2)
	);

	initial begin
		clk = 0;
		forever #50 clk = ~clk;
	end
	initial begin
		//Creating System Reset Event
		rst = 1;
		#100;
		rst = 0;
       
		 // Loading Data to Registers
		read_add_1 = 0000;
		read_add_2 = 0101;
		wr_data	  = 16'h04F2;
		wr_reg_add = 0101;
		wr_en		  = 1'b1;
		#50;
		read_add_1 = 0101;
		read_add_2 = 0111;
		wr_data	  = 16'h0542;
		wr_reg_add = 0111;
		wr_en		  = 1'b1;
		#50;
		read_add_1 = 1100;
		read_add_2 = 0111;
		wr_data	  = 16'h09E1;
		wr_reg_add = 1011;
		wr_en		  = 1'b0;
		#50;
		read_add_1 = 1011;
		read_add_2 = 1111;
		wr_data	  = 16'h1F5B;
		wr_reg_add = 1010;
		wr_en		  = 1'b1;
		#50;
		read_add_1 = 1111;
		read_add_2 = 1010;
		wr_data	  = 16'hB201;
		wr_reg_add = 0111;
		wr_en		  = 1'b0;
		#50;
		read_add_1 = 1010;
		read_add_2 = 1010;
		wr_data	  = 16'hB207;
		wr_reg_add = 1000;
		wr_en		  = 1'b1;
		#50;
		read_add_1 = 1111;
		read_add_2 = 1010;
		wr_data	  = 16'hB201;
		wr_reg_add = 0111;
		wr_en		  = 1'b1;
		#50;
		read_add_1 = 1010;
		read_add_2 = 0111;
		wr_data	  = 16'hB207;
		wr_reg_add = 1000;
		wr_en		  = 1'b1;
		#50;
		read_add_1 = 0110;
		read_add_2 = 1110;
		wr_data	  = 16'hB201;
		wr_reg_add = 0111;
		wr_en		  = 1'b0;
		#50;
		read_add_1 = 1111;
		read_add_2 = 0000;
		wr_data	  = 16'hB207;
		wr_reg_add = 1000;
		wr_en		  = 1'b0;
		#50;

	end
      
endmodule

