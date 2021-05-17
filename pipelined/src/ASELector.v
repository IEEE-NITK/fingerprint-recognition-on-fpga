`timescale 1ns / 1ps

// Mux for operand A of the ALU.
module ASELector(
	input ASEL,
	input [31:0] RD1,
	input [31:0] PC4SXT,
	output reg [31:0] A);

 always @(*)
 begin
	case(ASEL)
		1'b0 : A = RD1;
		1'b1 : A = PC4SXT;
	endcase
 end
endmodule
