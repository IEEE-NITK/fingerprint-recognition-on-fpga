`timescale 1ns / 1ps

// Mux for choosing PC
module PCSEL_Mux(
	input [2:0] PCSEL,
	input [31:0] JT,
	input [31:0] PC4,
	input [31:0] PC4SXT,
	output reg [31:0] PCSEL_OUT);

 always @(*)
 begin
	case(PCSEL)
		3'b000 : PCSEL_OUT = PC4;
		3'b001 : PCSEL_OUT = PC4SXT;
		3'b010 : PCSEL_OUT = JT;
		3'b011 : PCSEL_OUT = 32'h80000004;
		3'b100 : PCSEL_OUT = 32'h80000008;
	endcase
 end
endmodule
