`timescale 1 ns / 100 ps
/*
















*/
module register_file16( 
    input        clk,
	 input 		  rst,
    input        we,
    input [ 3:0] A1,
    input [ 3:0] A2,
    input [ 3:0] A3,
    input [15:0] wd,
    output [15:0] rd1,
    output [15:0] rd2
	);
	  reg [15:0] mem[0:15];
	  wire ad;
	  assign ad = we & A3;
	  

	  always  @(posedge clk or posedge rst) begin
		 if (rst) begin
			mem[A3] <= 16'b0;
		 end
		 else if (ad) begin
			mem[A3] <= wd;
		 end
	  end

	  assign rd1 = A1 != 0 ? mem[A1] : 16'b0;
	  assign rd2 = A2 != 0 ? mem[A2] : 16'b0;


endmodule