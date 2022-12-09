`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:58:11 12/09/2022 
// Design Name: 
// Module Name:    R_1B 
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
module R_1B(
    input clk,
    input rst,
    input we,
    input d,
    output q
    );
	 reg qq;
	 assign q = qq;
	 always @(posedge clk or posedge rst) begin 
		if(rst) begin
			qq <= 0;
		end
		else if (we) begin 
			qq <= d;
		end
		else begin
			qq <= q;
		end
	 end
endmodule
