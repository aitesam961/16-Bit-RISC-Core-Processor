`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:56 12/16/2022 
// Design Name: 
// Module Name:    ALU_Main 
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
module ALU_Main(
    input [15:0] d_in_1,
    input [15:0] d_in_2,
    input [2:0] alu_op,
    output reg z_flag,
    output reg [15:0] d_out,
    output reg a_grt_b,
    output reg b_grt_a
    );
	 
	 /* 	000 = addition
			001 = multiplication
			010 = and operation
			011 = or operation
			100 = divide
			101 = compare
	 */
	 
	 wire [15:0] d_out1;
	 wire [15:0] d_out2;
	 wire [15:0] d_out3; 
	 wire [15:0] d_out4; 
	 wire [15:0] d_out5; 

	 wire d_out6; 
	 wire d_out7; 
	 wire [15:0] d_out8; 
	 
	 

	 always @(d_in_1, d_in_2, alu_op,d_out1, d_out2, d_out3, d_out4, d_out5, d_out6, d_out7, d_out8) begin
			case(alu_op)
				3'b000 : begin 	d_out[15:0] = d_out1	;  end
				3'b001 : begin 	d_out 		= d_out2 ;	end
				3'b010 : begin 	d_out[15:0] = d_out3 ;  end
				3'b011 : begin 	d_out[15:0] = d_out4 ;  end
				3'b100 : begin 	d_out[15:0] = d_out5 ;  end
				3'b101 : begin 	d_out[0] 	= d_out6 ; d_out[15:1]  = 0; end
				3'b110 : begin 	d_out[0] 	= d_out7 ; d_out[15:1]  = 0; end
				3'b111 : begin 	d_out[15:0] = d_out8 ;  end
				default: begin 	d_out[15:0] = 16'h0000;	end
			endcase 
		end
		
		assign d_out1 = d_in_1 + d_in_2;
		assign d_out2 = d_in_1 * d_in_2;
		assign d_out3 = d_in_1 & d_in_2;
		assign d_out4 = d_in_1 | d_in_2;
		assign d_out5 = d_in_1 / 2;
		assign d_out6 = d_in_1 > d_in_2;
		assign d_out7 = d_in_1 < d_in_2;
		assign d_out8 = d_in_1 << d_in_2;
		
		always @(d_out6 or d_out7) begin 
			if(d_out6 == 1)begin
				a_grt_b <= 1;
				b_grt_a <=0;
				z_flag <= 0;
			end
			else if(d_out7  == 1) begin
					a_grt_b <= 0;
					b_grt_a <=1;
					z_flag <= 0;
			end
			else begin
				a_grt_b <= 0;
				b_grt_a <=0;
				z_flag <= 1;
			end
		end
			
		
		

endmodule

