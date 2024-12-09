`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:31:49 12/21/2022 
// Design Name: 
// Module Name:    Data_Memory_main 
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
module Data_Memory_main(
			input 			clk,
			input 			rst,
			input				wr_en,
			input				rd_en,
			input	[15:0] data_in,
			input [5:0]  mem_address,		
			output [15:0] data_out
    );	
	 
	 reg [15:0]  data_out_internal;
			reg [15:0] mem [63:0];
			always @(posedge clk or posedge rst)begin
				if(rst)begin
				
					data_out_internal <=  16'h0000;
	
					mem[0]  <=  16'h0000;
					mem[1]  <=  16'h0000;
					mem[2]  <=  16'h0000;
					mem[3]  <=  16'h0000;
					mem[4]  <=  16'h0000;
					mem[5]  <=  16'h0000;
					mem[6]  <=  16'h0000;
					mem[7]  <=  16'h0000;
					mem[8]  <=  16'h0000;
					mem[9]  <=  16'h0000;
					mem[10] <=  16'h0000;
					mem[11] <=  16'h0000;
					mem[12] <=  16'h0000;
					mem[13] <=  16'h0000;
					mem[14] <=  16'h0000;
					mem[15] <=  16'h0000;
					
					mem[16]  <=  16'h0000;
					mem[17]  <=  16'h0000;
					mem[18]  <=  16'h0000;
					mem[19]  <=  16'h0000;
					mem[20]  <=  16'h0000;
					mem[21]  <=  16'h0000;
					mem[22]  <=  16'h0000;
					mem[23]  <=  16'h0000;
					mem[24]  <=  16'h0000;
					mem[25]  <=  16'h0000;
					mem[26] <=  16'h0000;
					mem[27] <=  16'h0000;
					mem[28] <=  16'h0000;
					mem[29] <=  16'h0000;
					mem[30] <=  16'h0000;
					mem[31] <=  16'h0000;
					
					
					mem[32]  <=  16'h0000;
					mem[33]  <=  16'h0000;
					mem[34]  <=  16'h0000;
					mem[35]  <=  16'h0000;
					mem[36]  <=  16'h0000;
					mem[37]  <=  16'h0000;
					mem[38]  <=  16'h0000;
					mem[39]  <=  16'h0000;
					mem[40]  <=  16'h0000;
					mem[41]  <=  16'h0000;
					mem[42] <=  16'h0000;
					mem[43] <=  16'h0000;
					mem[44] <=  16'h0000;
					mem[45] <=  16'h0000;
					mem[46] <=  16'h0000;
					mem[47] <=  16'h0000;
					
					mem[48]  <=  16'h0000;
					mem[49]  <=  16'h0000;
					mem[50]  <=  16'h0000;
					mem[51]  <=  16'h0000;
					mem[52]  <=  16'h0000;
					mem[53]  <=  16'h0000;
					mem[54]  <=  16'h0000;
					mem[55]  <=  16'h0000;
					mem[56]  <=  16'h0000;
					mem[57]  <=  16'h0000;
					mem[58] <=  16'h0000;
					mem[59] <=  16'h0000;
					mem[60] <=  16'h0000;
					mem[61] <=  16'h0000;
					mem[62] <=  16'h0000;
					mem[63] <=  16'h0000;
				
				end
				else 
					if (wr_en) begin
					mem[mem_address] <= data_in;
					end
					else if(rd_en)begin
					data_out_internal <= mem[mem_address];
					end
					
				
			end
			
			assign data_out = data_out_internal;

endmodule
