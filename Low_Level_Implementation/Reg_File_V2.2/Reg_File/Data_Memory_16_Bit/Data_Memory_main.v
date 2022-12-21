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
			output reg [15:0] data_out
    );	
			integer i;
			reg [15:0] mem [0:63];
			always @(posedge clk or posedge rst)begin
				if(rst)begin
				for (i = 0; i<=15; i = i+1) begin
					mem[i] <=0;
				end
				end
				else 
					if (wr_en) begin
					mem[mem_address] <= data_in;
					end
					else if(rd_en)begin
					data_out <= mem[mem_address];
					end
			end

endmodule
