/*
   CS/ECE 552 Spring '22
  
   Filename        : decode.v
   Description     : This is the module for the overall decode stage of the processor.
*/

module decode (
   	// Outputs
  	Imm5, Imm8, Imm11, Reg1, Reg2, RegSrc, to_ALUOP, func, Bsrc, brin, MemWrt, ALUJmp, ImmSrc, err, 
   	// Inputs
   	Instruction, clk, rst
   	);

   	// IN/OUT
	input   [15:0] Instruction;
	input		   clk;
	input		   rst;

	output  [15:0] Imm5;
	output  [15:0] Imm8;
	output  [15:0] Imm11;
	output  [15:0] Reg1;
	output  [15:0] Reg2;
	output  [1:0]  RegSrc;
	output  [4:0]  to_ALUOP;
	output 	[1:0]  func;
	output 	[1:0]  Bsrc;
	output 	[4:0]  brin;
	output 		   MemWrt;
	output 		   ALUJmp;
	output 		   ImmSrc;
	output 		   err;

	// WIRE
	wire [1:0]     RegDst;
	wire 	       RegWrt;
	wire [1:0]     _0ext;

	//MAIN

	instr_decoder ID1(.instr(Instruction[15:11]), .RegDst(RegDst), .RegSrc(RegSrc), .to_ALUOP(to_ALUOP), ._0ext(_0ext), .RegWrt(RegWrt), .Bsrc(Bsrc), .brin(brin), .MemWrt(MemWrt), .ALUJmp(ALUJmp), .ImmSrc(ImmSrc));

	
   
endmodule

