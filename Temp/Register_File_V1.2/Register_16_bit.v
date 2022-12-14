`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:30:11 12/14/2022 
// Design Name: 
// Module Name:    Register_16_bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Status: Simulated and Verified 
//
//////////////////////////////////////////////////////////////////////////////////
module Register_16_bit(
    input clk,
    input rst,
    input wr_en,
    input [15:0] data_in,
    output [15:0] data_out
    );
	 
	 reg [15:0] reg_data_out = 0;
	 always @(posedge clk or posedge rst) begin
		if(rst) begin 
			reg_data_out <= 16'h0000;
		end
		else begin
			if(wr_en == 1) begin
				reg_data_out[0] <= data_in[0] ;
				reg_data_out[1] <= data_in[1] ;
				reg_data_out[2] <= data_in[2] ;
				reg_data_out[3] <= data_in[3] ;
				reg_data_out[4] <= data_in[4] ;
				reg_data_out[5] <= data_in[5] ;
				reg_data_out[6] <= data_in[6] ;
				reg_data_out[7] <= data_in[7] ;
				reg_data_out[8] <= data_in[8] ;
				reg_data_out[9] <= data_in[9] ;
				reg_data_out[10] <= data_in[10] ;
				reg_data_out[11] <= data_in[11] ;
				reg_data_out[12] <= data_in[12] ;
				reg_data_out[13] <= data_in[13] ;
				reg_data_out[14] <= data_in[14] ;
				reg_data_out[15] <= data_in[15] ;
				
			end
		end
	 end
	 assign data_out = reg_data_out;


endmodule
