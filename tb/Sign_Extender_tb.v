`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:55:51 12/26/2022
// Design Name:   Sign_Extender
// Module Name:   C:/Users/aites/Documents/Github/16-Bit-RISC-Core-Procesor/Low_Level_Implementation/Sign_Extender/Sign_Extender/Sign_Extender_tb.v
// Project Name:  Sign_Extender
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sign_Extender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Sign_Extender_tb;

	// Inputs
	reg [11:0] data_in;

	// Outputs
	wire [15:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Sign_Extender uut (
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		data_in = 12'b000000011000;
		#100;
		
		data_in = 12'b100000011000;
		#100;
        
		// Add stimulus here

	end
          
endmodule

