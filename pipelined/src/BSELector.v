`timescale 1ns / 1ps

// Mux for operand B of the ALU
module BSELector(
	input BSEL,
	input [31:0] RD2,
	input [31:0] SXTC,
	output reg [31:0] B);

 always @(*)
 begin
	case(BSEL)
		1'b0 : B = RD2;
		1'b1 : B = SXTC;
	endcase
 end
endmodule