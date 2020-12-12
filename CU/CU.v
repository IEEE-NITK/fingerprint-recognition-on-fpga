module CU (
	input [31:0] instruction,
	input clk,
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

always @(posedge clk)
 begin
	ALUFN <= instruction[31:26];
	case(ALUFN)
		//op
	 6'b10xxxx :
		begin
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
	endcase
 end

endmodule
