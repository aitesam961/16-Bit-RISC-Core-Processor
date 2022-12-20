`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:44:02 12/19/2022 
// Design Name: 
// Module Name:    ALU_Control 
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
module ALU_Control(
    input alu_op,
    output alu_instr
    );
	 
	 always @(alu_op)
		case(alu_op)
			3'b000: begin
				alu_instr <= 000;
			end
			
			3'b001: begin
				alu_instr <= 001;
			end


endmodule
