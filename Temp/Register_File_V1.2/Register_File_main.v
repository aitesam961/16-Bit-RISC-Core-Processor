`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:04 12/14/2022 
// Design Name: 
// Module Name:    Register_File_main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Register_File_main(
    input clk,
    input rst,
    input wr_en,
    input [15:0] data_write,
    input [3:0] read_addr_1,
    input [3:0] read_addr_2,
    output reg [15:0] read_data_1,
    output reg [15:0] read_data_2,
    input [3:0] write_addr
    );
	 
	 
	 Register_16_bit rg1 (clk,		rst,		wr_en,		data_write,		data_1);
	 Register_16_bit rg2 (clk,		rst,		wr_en,		data_write,		data_2);
	 
	 always @(read_addr_1 or read_addr_2 or read_data_1 or read_data_2) begin
		if (read_addr_1) begin
			read_data_1 <= data_1;
		end
		else begin
			if (read_addr_2) begin
			read_data_2 <= data_2;
		end
		end
	 end
	 

endmodule


//
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
