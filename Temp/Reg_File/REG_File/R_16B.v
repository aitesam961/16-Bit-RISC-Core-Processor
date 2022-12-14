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
				 dout[0] <= din[0]; 
				 dout[1] <= din[1]; 
				 dout[2] <= din[2]; 
				 dout[3] <= din[3]; 
				 dout[4] <= din[4]; 
				 dout[5] <= din[5]; 
				 dout[6] <= din[6]; 
				 dout[7] <= din[7]; 
				 dout[8] <= din[8]; 
				 dout[9] <= din[9]; 
				 dout[10] <= din[10]; 
				 dout[11] <= din[11]; 
				 dout[12] <= din[12]; 
				 dout[13] <= din[13]; 
				 dout[14] <= din[14]; 
				 dout[15] <= din[15]; 
				 end
			end
	 end
		//assign dout = data_out;
	 
endmodule
