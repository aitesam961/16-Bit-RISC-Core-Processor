`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:34 12/30/2022 
// Design Name: 
// Module Name:    clock_gen_master 
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
module clock_gen_master(

			input clk_in,
			input rst,
			input sel,
			output reg d_clk,
			input din,
			output dout
    );
	 
	
	 reg  div_clk;

	 always @(posedge clk_in or posedge rst) begin
		if(rst) begin
			div_clk <= 0;
		end
		else
		div_clk <= ~div_clk;
	 end

	 always @(sel or clk_in or div_clk )begin
		case(sel)
			1'b0 : d_clk <= clk_in;
			1'b1 : d_clk <= div_clk;
			default: d_clk <= 0;
			
		endcase
	 end
	
	 D_FF dff1 (d_clk, rst, din, dout);
	 


endmodule
