`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
 
 Created by: Muhammad Aitesam
 
 Create Date:    21:05:08 12/09/2022 
 Design Name: 	  16-Bit Register
 Module Name:    R_16B 
 Project Name:   16-Bit Single Cycle RISC core Processor Design

 Description: 

 Dependencies: 

 Revision: 0.1V
 Additional Comments: 
	This module is a dependency of Parent module, /Register_File.v


 See Design Reference
	xst.pdf//Chapter 2//Page 57-58

*/
//////////////////////////////////////////////////////////////////////////////////
module R_16B(
    input clk,
    input rst,
	 input we,
    input [15:0] din,
    output reg [15:0] dout
    );
	 
	 
	 // See Design Reference: xst.pdf/Chapter "4-bit register with a positive-edge clock" Page 57
	 //reg [15:0] data_out;
	 always @(posedge clk or posedge rst) 
		begin
			if (rst) begin
				 //data_out <= 16'h0000;
				 dout <= 16'h0000;
			end
			else begin
				if (we == 1) begin
				 //data_out <= din;
				 dout <= din;
				 end
			end
	 end
		//assign dout = data_out;
	 
endmodule
