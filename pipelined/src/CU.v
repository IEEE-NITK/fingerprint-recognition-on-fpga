`timescale 1ns / 1ps

// Control Unit
module CU (
    input clk,
	input RESET,
	input Z,
	input [31:0] instruction,
	output reg [5:0] ALUFN,
	output reg ASEL,
	output reg BSEL,
	output reg MOE,
	output reg MWR,
	output reg [2:0] PCSEL,
	output reg RA2SEL,
	output reg WASEL,
	output reg [1:0] WDSEL,
	output reg WERF);

always @(*)
 begin
	casex(instruction[31:26])
		//op
	 6'b10xxxx :
		begin
			ALUFN <= instruction[31:26];
			ASEL <= 0;
			BSEL <= 0;
			MOE <= 1'bx;
			MWR <= 0;
			PCSEL <= 3'b000;
			RA2SEL <= 0;
			WASEL <= 0;
			WDSEL <= 2'b01;
			WERF <= 1;
		end	

		//opc
	 6'b11xxxx :
		begin
			ALUFN <= instruction[31:26];
			ASEL <= 0;
			BSEL <= 1;
			MOE <= 1'bx;
			MWR <= 0;
			PCSEL <= 3'b000;
			RA2SEL <= 1'bx;
			WASEL <= 0;
			WDSEL <= 2'b01;
			WERF <= 1;
		end

		//LD
	 6'b011000 :
		begin
			ALUFN <= 6'b100000;
			ASEL <= 0;
			BSEL <= 1;
			MOE <= 1;
			MWR <= 0;
			PCSEL <= 3'b000;
			RA2SEL <= 1'bx;
			WASEL <= 0;
			WDSEL <= 2'b10;
			WERF <= 1;
		end

		//LDR
	 6'b011111 :
		begin
			ALUFN <= 6'b111111;
			ASEL <= 1;
			BSEL <= 1'bx;
			MOE <= 1;
			MWR <= 0;
			PCSEL <= 3'b000;
			RA2SEL <= 1'bx;
			WASEL <= 0;
			WDSEL <= 2'b10;
			WERF <= 1;
		end

		//ST
	 6'b011001 :
		begin
			ALUFN <= 6'b100000;
			ASEL <= 0;
			BSEL <= 1;
			MOE <= 0;
			MWR <= 1;
			PCSEL <= 3'b000;
			RA2SEL <= 1;
			WASEL <= 1'bx;
			WDSEL <= 2'bxx;
			WERF <= 0;
		end

		//JMP
	 6'b011011 :
		begin
			ALUFN <= 6'bxxxxxx;
			ASEL <= 1'bx;
			BSEL <= 1'bx;
			MOE <= 1'bx;
			MWR <= 0;
			PCSEL <= 3'b010;
			RA2SEL <= 1'bx;
			WASEL <= 0;
			WDSEL <= 2'b00;
			WERF <= 1;
		end

		//BEQ
	 6'b011100 :
		begin
			ALUFN <= 6'bxxxxxx;
			ASEL <= 1'bx;
			BSEL <= 1'bx;
			MOE <= 1'bx;
			MWR <= 0;
			PCSEL <= Z ? 3'b001 : 3'b000;
			RA2SEL <= 1'bx;
			WASEL <= 0;
			WDSEL <= 2'b00;
			WERF <= 1;
		end

		//BNE
	 6'b011101 :
		begin
			ALUFN <= 6'bxxxxxx;
			ASEL <= 1'bx;
			BSEL <= 1'bx;
			MOE <= 1'bx;
			MWR <= 0;
			PCSEL <= Z ? 3'b000 : 3'b001;
			RA2SEL <= 1'bx;
			WASEL <= 0;
			WDSEL <= 2'b00;
			WERF <= 1;
		end

		//ILLOP
	 default:
		begin
			ALUFN <= 6'bxxxxxx;
			ASEL <= 1'bx;
			BSEL <= 1'bx;
			MOE <= 1'bx;
			MWR <= 0;
			PCSEL <= 3'b011;
			RA2SEL <= 1'bx;
			WASEL <= 1;
			WDSEL <= 2'b00;
			WERF <= 1;
		end
		endcase

	// RESET
	if (RESET == 1)
		begin
			ALUFN <= 6'bxxxxxx;
			ASEL <= 1'bx;
			BSEL <= 1'bx;
			MOE <= 1'bx;
			MWR <= 0;
			PCSEL <= 3'bxxx;
			RA2SEL <= 1'bx;
			WASEL <= 1'bx;
			WDSEL <= 2'bxx;
			WERF <= 1'bx;
		end
 end
endmodule