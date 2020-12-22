module WDSELector(
	input [1:0] WDSEL,
	input signed [31:0] PC4,
	input signed [31:0] Y,
	input signed [31:0] MRD,
	output reg [31:0] Data);

 always @(WDSEL)
 begin
	case(WDSEL)
		2'b00 : Data <= PC4;
		2'b01 : Data <= Y;
		2'b10 : Data <= MRD;
	endcase
 end

endmodule

module RA2SELector(
	input RA2SEL,
	input [5:0] Rc,
	input [5:0] Rb,
	output reg [5:0] RA2);

 always @(RA2SEL)
 begin
	case(RA2SEL)
		1'b0 : RA2 <= Rb;
		1'b1 : RA2 <= Rc;
	endcase
 end

endmodule

module ASELector(
	input ASEL,
	input [31:0] RD1,
	input [31:0] PC4SXT,
	output reg [31:0] A);

 always @(ASEL)
 begin
	case(ASEL)
		1'b0 : A <= RD1;
		1'b1 : A <= PC4SXT;
	endcase
 end

endmodule

module BSELector(
	input BSEL,
	input [31:0] RD2,
	input [31:0] SXTC,
	output reg [31:0] B);

 always @(BSEL)
 begin
	case(BSEL)
		1'b0 : B <= RD2;
		1'b1 : B <= SXTC;
	endcase
 end

endmodule

module RESET_mux(
	input RESET,
	input [7:0] PCSEL_out,
	input [7:0] reset,
	output reg [7:0] out);

 always @(RESET)
 begin
	case(RESET)
		1'b0 : out <= PCSEL_out;
		1'b1 : out <= reset;
	endcase
 end

endmodule
