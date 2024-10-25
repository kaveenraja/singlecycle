module brncnd(brin, SF, ZF, OF, CF, BR);
	input 		SF;
	input 		ZF;
	input 		OF;
	input 		CF;
	input [5:0] brin;

	output reg 	BR;

	always @(brin, SF, ZF, OF, CF)
	begin
		case(brin)
			5'b00000: BR = 0;
			5'b00001: BR = ZF;
			5'b00010: BR = ~ZF;
			5'b00100: BR = SF;
			5'b01000: BR = ~SF;
			5'b10000: BR = 1;
			
		endcase
	end


endmodule
