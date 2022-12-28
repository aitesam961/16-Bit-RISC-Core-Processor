`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:38:34 12/26/2022 
// Design Name: 
// Module Name:    MUX2x1 
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
module MUX2x1_Br(
    input [5:0] ch1,
    input [5:0] ch2,
    input sel,
    output reg [5:0] out
    );
	 
	 always @(sel or ch1 or ch2) begin
		case(sel)
			1'b0 : out  = ch1;
			1'b1 : out  = ch2;
		endcase
	 end

endmodule
