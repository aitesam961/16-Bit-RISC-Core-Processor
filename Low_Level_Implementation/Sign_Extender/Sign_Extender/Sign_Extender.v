`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:45 12/26/2022 
// Design Name: 
// Module Name:    Sign_Extender 
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
module jump_sign(
    input [11:0] data_in,
    output reg [15:0] data_out
    );
	 
	 
	always @ (data_in) begin
		if(data_in[11] == 0) begin
			data_out <= {4'b0000,data_in};		// Stuff 0 is MSB is zero
			end
			else begin 
				data_out <= {4'b1111,data_in};	// Stuff 1 is MSB is one
			end
	end	 
	 


endmodule
