`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:11:29 12/14/2022 
// Design Name: 
// Module Name:    MUX_OP 
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
module MUX_OP(
			input RegSel,
			input Out1 ,
			input Out2 ,
			input Out3 ,
			input Out4 ,
			input Out5 ,
			input Out6 ,
			input Out7 ,
			input Out8 ,
			input Out9 ,
			input Out10,
			input Out11,
			input Out12,
			input Out13,
			input Out14,
			input Out15,
			input Out16,
			output Data_out);
			
	always @ (RegSel or  Out1  or
	                 Out2   or
	                 Out3   or
	                 Out4   or
	                 Out5   or
	                 Out6   or
	                 Out7   or
	                 Out8   or
	                 Out9   or
	                 Out10  or
	                 Out11  or
	                 Out12  or
	                 Out13  or
	                 Out14  or
	                 Out15  or
	                 Out16  ) begin
			case(RegSel)
				4'b0000	 :  begin	Data_out	 	= Out1;		end
				4'b0001	 :	 begin	Data_out    = Out2;		end
				4'b0010	 :  begin	Data_out		= Out3;		end
				4'b0011	 :  begin	Data_out	 	= Out4;     end
				4'b0100	 :	 begin	Data_out	 	= Out5;		end
				4'b0101	 :	 begin	Data_out   	= Out6;   	end
				4'b0110	 :  begin	Data_out	 	= Out7;   	end
				4'b0111	 :	 begin	Data_out	 	= Out8;   	end
				4'b1000	 :	 begin	Data_out	  	= Out9;		end
				4'b1001	 :  begin	Data_out    = Out10;  	end
				4'b1010	 :	 begin	Data_out	  	= Out11;  	end
				4'b1011	 :	 begin	Data_out	   = Out12;  	end
				4'b1100	 :	 begin	Data_out	   = Out13;		end
				4'b1101	 :  begin   Data_out    = Out14;  	end
				4'b1110	 :  begin   Data_out	   = Out15;  	end
				4'b1111	 :	 begin   Data_out	 	= Out16;  	end
				default   :  begin   Data_out    = 16'h0000; end
			endcase
  

endmodule
