`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:17:01 12/23/2022 
// Design Name: 
// Module Name:    Program_Counter 
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
module Program_Counter(
    input [5:0] target,
	 input clk,
	 input rst,
    output reg [5:0] pc_out
    );
	 	
	 always @(posedge clk or posedge rst)
		if(rst)begin
			pc_out <= 0;
		end
		else begin
			pc_out <= target;
	 end
endmodule
