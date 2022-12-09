`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:05:08 12/09/2022 
// Design Name: 
// Module Name:    R_16B 
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
module R_16B(
    input clk,
    input rst,
	 input we,
    input [15:0] din,
    output [15:0] dout
    );
	 
	 R_1B Register1  (clk,	rst,	we,	din[0],	dout[1]);
	 R_1B Register2  (clk,	rst,	we,	din[1],	dout[1]);
	 R_1B Register3  (clk,	rst,	we,	din[2],	dout[2]);
	 R_1B Register4  (clk,	rst,	we,	din[3],	dout[3]);
	 R_1B Register5  (clk,	rst,	we,	din[4],	dout[4]);
	 R_1B Register6  (clk,	rst,	we,	din[5],	dout[5]);
	 R_1B Register7  (clk,	rst,	we,	din[6],	dout[6]);
	 R_1B Register8  (clk,	rst,	we,	din[7],	dout[7]);
	 R_1B Register9  (clk,	rst,	we,	din[8],	dout[8]);
	 R_1B Register10 (clk,	rst,	we,	din[9],	dout[9]);
	 R_1B Register11 (clk,	rst,	we,	din[10],	dout[10]);
	 R_1B Register12 (clk,	rst,	we,	din[11],	dout[11]);
	 R_1B Register13 (clk,	rst,	we,	din[12],	dout[12]);
	 R_1B Register14 (clk,	rst,	we,	din[13],	dout[13]);
	 R_1B Register15 (clk,	rst,	we,	din[14],	dout[14]);
	 R_1B Register16 (clk,	rst,	we,	din[15],	dout[15]);
	 
endmodule
