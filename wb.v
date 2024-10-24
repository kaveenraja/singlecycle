/*
   CS/ECE 552 Spring '22
  
   Filename        : wb.v
   Description     : This is the module for the overall Write Back stage of the processor.
*/

module wb (// Outputs
   	wbdata,
   	// Inputs
   	In0, In1, In2, In3, RegSrc);

   	// IN/OUT
	input  [15:0] In0;
	input  [15:0] In1;
	input  [15:0] In2;
	input  [15:0] In3;
	input  [3:0]  RegSrc;

	output [15:0] wbdata;

	// MAIN

	mux4_1 #(16) mux1(.inA(In0), .inB(In1), .inC(In2), .inD(In3), .s(RegSrc), .out(wbdata));
   
endmodule

