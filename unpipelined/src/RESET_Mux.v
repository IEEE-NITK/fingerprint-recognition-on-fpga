`timescale 1ns / 1ps

// Mux to reset PC to 0x00000000
module RESET_Mux(
	input RESET,
	input [31:0] PCSEL_OUT,
	output reg [31:0] out);

 always @(*)
 begin
	case(RESET)
		1'b0 : out = PCSEL_OUT;
		1'b1 : out = 32'h00000000;
	endcase
 end
endmodule