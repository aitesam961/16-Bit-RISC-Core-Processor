`timescale 1ns/1ps
/*
.	Created by: Muhammad Aitesam
.	Dept. of Electrical & Computer Engineering
.	COMSATS University Islamabad, Wah Campus
.
.	Title: Register File (16-Bit, 3x-Address In, 2x, Data Out, 1x, Data in)
.	Project: 16-Bit, RISC Core, Single Cycle Processor Design
.
.
.	@aitesam961
.
*/
module Register_File_main(
					input clk,
					input rst,
					input [3:0] read_add_1,
					input [3:0] read_add_2,
					input [3:0] wr_reg_add,
					input wr_en,
					input [15:0] wr_data,
					output [15:0] read_data_1,
					output [15:0] read_data_2
					);
					
					reg [15:0] reg_file [15:0];
					always @ (posedge clk or posedge rst) begin 
						if(rst) begin
							reg_file[0]  = 0;
							reg_file[1]  = 0;
							reg_file[2]  = 0;
							reg_file[3]  = 0;
							reg_file[4]  = 0;
							reg_file[5]  = 0;
							reg_file[6]  = 0;
							reg_file[7]  = 0;
							reg_file[8]  = 0;
							reg_file[9]  = 0;
							reg_file[10] = 0;
							reg_file[11] = 0;
							reg_file[12] = 0;
							reg_file[13] = 0;
							reg_file[14] = 0;
							reg_file[15] = 0;
						end
						else if (wr_en == 1) begin
							reg_file[wr_reg_add] = wr_data;
						end
					end
					assign read_data_1 = reg_file[read_add_1];
					assign read_data_2 = reg_file[read_add_2];
					
							
				
endmodule			