`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:41:06 12/30/2022
// Design Name:   clock_gen_master
// Module Name:   C:/Users/aites/Desktop/Clock_gen/clock_generator/clock_gen_tb.v
// Project Name:  clock_generator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_gen_master
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_gen_tb;

	// Inputs
	reg clk_in;
	reg sel;
	reg din;
	reg rst;

	// Outputs
	wire d_clk;
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	clock_gen_master uut (
		.clk_in(clk_in), 
		.rst(rst),
		.sel(sel), 
		.d_clk(d_clk), 
		.din(din), 
		.dout(dout)
	);
	initial begin
		clk_in = 0;
		forever #25 clk_in = ~clk_in;
	end
	initial begin
		rst = 1;
		sel = 0;
		din = 0;
		#90;
		
		rst = 0;
		sel = 0;
		din = 0;
		#90;
		
		sel = 0;
		din = 1;
		#90;
		
		sel = 1;
		din = 0;
		#90;
		
		
		sel = 1;
		din = 1;
		#35;
        
		// Add stimulus here

	end
      
endmodule

