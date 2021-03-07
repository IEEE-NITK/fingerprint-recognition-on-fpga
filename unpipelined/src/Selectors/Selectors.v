module WDSELector(
	input [1:0] WDSEL,
	input signed [31:0] PC4,
	input signed [31:0] Y,
	input signed [31:0] MRD,
	output reg [31:0] WD);

 always @(WDSEL)
 begin
	case(WDSEL)
		2'b00 : WD <= PC4;
		2'b01 : WD <= Y;
		2'b10 : WD <= MRD;
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
	input [31:0] PCSEL_OUT,
	output reg [31:0] out);

 always @(RESET)
 begin
	case(RESET)
		1'b0 : out <= PCSEL_OUT;
		1'b1 : out <= 32'h80000000;
	endcase
 end

endmodule

module PCSEL_mux(
	input [2:0] PCSEL,
	input [31:0] JT,
	input [31:0] PC4,
	input [31:0] PC4SXT,
	output reg [31:0] PCSEL_OUT);

 always @(PCSEL)
 begin
	case(PCSEL)
		3'b000 : PCSEL_OUT <= PC4;
		3'b001 : PCSEL_OUT <= PC4SXT;
		3'b010 : PCSEL_OUT <= JT;
		3'b011 : PCSEL_OUT <= 32'h80000004;
		3'b100 : PCSEL_OUT <= 32'h80000008;
	endcase
 end

endmodule

module WASELector(
	input WASEL,
	input [4:0] Rc,
	output reg [4:0] WA);

 always @(WASEL)
 begin
	case(WASEL)
		1'b0 : WA <= Rc;
		1'b1 : WA <= 5'b11110;
	endcase
 end

endmodule
