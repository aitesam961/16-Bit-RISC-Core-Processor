`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:07 12/30/2022 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(
    input clk,
    input rst,
    input d,
    output reg q
    );
	 always@(posedge clk or posedge rst) begin
		if(rst)begin
			q <= 0;
		end
		else 
			q <= d;
	end
		
	


endmodule
