`timescale 1ns / 1ps

// Mux for choosing data for register writeback
module WDSELector(
	input [1:0] WDSEL,
	input signed [31:0] PC4,
	input signed [31:0] Y,
	input signed [31:0] MRD,
	output reg [31:0] WD);

 always @(*)
 begin
	case(WDSEL)
		2'b00 : WD = PC4;
		2'b01 : WD = Y;
		2'b10 : WD = MRD;
	endcase
 end
endmodule