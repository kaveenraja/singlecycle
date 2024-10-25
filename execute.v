/*
   CS/ECE 552 Spring '22
  
   Filename        : execute.v
   Description     : This is the overall module for the execute stage of the processor.
*/

module execute (// Outputs
	Out0, Out3 ALUOut,
 	// Inputs
  	to_ALUOP, func, Reg1, Reg2, Imm5, Imm8, Imm11, BSrc, brin, ALUJmp, ImmSrc);

  	// IN/OUT
	input [4:0]		to_ALUOP;
	input [1:0] 	func;
	input [15:0] 	Reg1;
	input [15:0]	Reg2;
	input [15:0]	Imm5;
	input [15:0]	Imm8;
	input [15:0]	Imm11;
	input [1:0]		BSrc;
	input [5:0]		brin;
	input 			ALUJmp;
	input			ImmSrc;

	output [15:0]	Out0;
	output [15:0]	Out3;
	output [15:0]	ALUOut;
	
	// WIRE


	// MAIN
   
endmodule

