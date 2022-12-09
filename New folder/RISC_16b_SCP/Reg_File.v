`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:31:02 12/09/2022 
// Design Name: 
// Module Name:    Reg_File 
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
module Reg_File_16B(
    input clk,
    input rst,
    input we,
    input [15:0] Din,
	 output [15:0] dout
    );
	 
	 Reg_1B R1(clk,rst, we ,Din[0], dout[0]);
	 Reg_1B R2(clk,rst, we ,Din[1], dout[1]);
	 Reg_1B R3(clk,rst, we ,Din[2], dout[2]);
	 Reg_1B R4(clk,rst, we ,Din[3], dout[3]);
	 Reg_1B R5(clk,rst, we ,Din[4], dout[4]);
	 Reg_1B R6(clk,rst, we ,Din[5], dout[5]);
	 Reg_1B R7(clk,rst, we ,Din[6], dout[6]);
	 Reg_1B R8(clk,rst, we ,Din[7], dout[7]);
	 Reg_1B R9(clk,rst, we ,Din[8], dout[8]);
	 Reg_1B R10(clk,rst, we ,Din[9], dout[9]);
	 Reg_1B R11(clk,rst, we ,Din[10], dout[10]);
	 Reg_1B R12(clk,rst, we ,Din[11], dout[11]);
	 Reg_1B R13(clk,rst, we ,Din[12], dout[12]);
	 Reg_1B R14(clk,rst, we ,Din[13], dout[13]);
	 Reg_1B R15(clk,rst, we ,Din[14], dout[14]);
	 Reg_1B R16(clk,rst, we ,Din[15], dout[15]);

endmodule
