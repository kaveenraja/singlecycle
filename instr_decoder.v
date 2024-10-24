/*
   CS/ECE 552 Spring '22
  
   Filename        : instr_decoder.v
   Description     : This module is used to decode the top 6 bits of the instruction into several control signals
*/

module instr_decoder (// Outputs
   RegDst, RegSrc, to_ALUOP, _0ext, RegWrt, Bsrc, InvA, InvB, cin, brin, MemWrt, ALUJmp, ImmSrc,
   // Inputs
   instr);

	// IN/OUT
	input  [4:0] instr;

	output reg  [1:0]  RegDst;
	output reg 	[1:0]  RegSrc;
	output  	[4:0]  to_ALUOP;
	output reg		   _0ext;
	output reg		   RegWrt;
	output reg	[1:0]  Bsrc;
	output reg		   InvA;
	output reg	   	   InvB;
	output reg		   cin;
	output reg	[2:0]  brin;
	output reg		   MemWrt;
	output reg		   ALUJmp;
	output reg		   ImmSrc;

	

	// MAIN
	assign to_ALUOP = instr;

	always @(instr)
	begin
		case(instr)

			5'b01000:
				begin
					RegDst = 2'b00;
					RegSrc = 2'b10;
					_0ext  = 1'b0;
					RegWrt = 1'b1;
					Bsrc   = 2'b01;
					InvA   = 1'b0;
					InvB   = 1'b0;
					cin    = 1'b0;
					brin   = 3'b001;
					MemWrt = 1'b0;
					ALUJmp = 1'b0;
					ImmSrc = 1'b0;
				end

			5'b01001:
				begin
					RegDst = 2'b00;
					RegSrc = 2'b10;
					_0ext  = 1'b0;
					RegWrt = 1'b1;
					Bsrc   = 2'b01;
					InvA   = 1'b1;
					InvB   = 1'b0;
					cin    = 1'b1;
					brin   = 3'b001;
					MemWrt = 1'b0;
					ALUJmp = 1'b0;
					ImmSrc = 1'b0;
				end

			5'b01010:
				begin
					RegDst = 2'b00;
					RegSrc = 2'b10;
					_0ext  = 1'b1;
					RegWrt = 1'b1;
					Bsrc   = 2'b01;
					InvA   = 1'b0;
					InvB   = 1'b0;
					cin    = 1'b0;
					brin   = 3'b001;
					MemWrt = 1'b0;
					ALUJmp = 1'b0;
					ImmSrc = 1'b0;
				end



		endcase
	end



   
endmodule
