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
.
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
					
					
					integer i;
					reg [15:0] reg_file [15:0];
					always @ (posedge clk or posedge rst) begin 
						if(rst) begin
							for(i = 1; i<=16; i=i+1) begin
								reg_file[i-1] = 0;
							end
						end
						else if (wr_en) begin
							reg_file[wr_reg_add] = wr_data;
						end
					end
					assign read_data_1 = reg_file[read_add_1];
					assign read_data_2 = reg_file[read_add_2];
					
							
				
endmodule			