`timescale 1ns / 1ps

// Mux for RA2 port of the register file
module RA2SELector(
	input RA2SEL,
	input [4:0] Rc,
	input [4:0] Rb,
	output reg [4:0] RA2);

 always @(*)
 begin
	case(RA2SEL)
		1'b0 : RA2 = Rb;
		1'b1 : RA2 = Rc;
	endcase
 end
endmodule