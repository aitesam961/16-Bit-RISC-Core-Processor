`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:50 12/09/2022 
// Design Name: 
// Module Name:    Reg 
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
module Reg_1B(
    input clk,
    input rst,
	 input we,
    input d,
    output reg q
    );
	 
	 //reg qq;
	 always @ (posedge clk or posedge rst) begin
		if (rst) begin
			q <= 0;
		end
		else if (we == 1) begin
			q<=d;
		end
		else
			q <= q;
	 end
	 //assign q = qq;
		
endmodule