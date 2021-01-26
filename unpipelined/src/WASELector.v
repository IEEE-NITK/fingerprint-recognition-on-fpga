`timescale 1ns / 1ps

// Mux for choosing Writeback Address to regfile
module WASELector(
	input WASEL,
	input [4:0] Rc,
	output reg [4:0] WA);

 always @(*)
 begin
	case(WASEL)
		1'b0 : WA = Rc;
		1'b1 : WA = 5'b11110;
	endcase
 end
endmodule