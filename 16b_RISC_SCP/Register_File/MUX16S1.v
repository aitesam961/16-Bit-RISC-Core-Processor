`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:24 12/09/2022 
// Design Name: 
// Module Name:    MUX16S1 
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
module MUX16S1(
    input [15:0] in,
    input [3:0] sel,
    output [15:0] out
    );
	 
	 always @ (sel) begin
		case(sel)
			0000:begin
				Rout1 = Out1;
			end
			0001:begin
				Rout1 = Out2;
			end
			0010:begin
				Rout1 = Out3;
			end
			0011:begin
				Rout1 = Out4;
			end
			0100:begin
				Rout1 = Out5;
			end
			0101:begin
				Rout1 = Out6;
			end
			0110:begin
				Rout1 = Out7;
			end
			0111:begin
				Rout1 = Out8;
			end
			1000:begin
				Rout1 = Out9;
			end
			1001:begin
				Rout1 = Out10;
			end
			1010:begin
				Rout1 = Out11;
			end
			1011:begin
				Rout1 = Out12;
			end
			1100:begin
				Rout1 = Out13;
			end
			1101:begin
				Rout1 = Out14;
			end
			1110:begin
				Rout1 = Out15;
			end
			1111:begin
				Rout1 = Out16;
			end
		endcase
	end
		
endmodule
