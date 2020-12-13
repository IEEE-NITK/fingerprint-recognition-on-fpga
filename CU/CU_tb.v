`timescale 1ns/1ns

module CU_tb;
reg clk;
reg [31:0] instruction;
wire [5:0] ALUFN;
wire ASEL;
wire BSEL;
wire MOE;
wire MWR;
wire [2:0] PCSEL;
wire RA2SEL;
wire WASEL;
wire [1:0] WDSEL;
wire WERF;

CU x(.clk(clk),
    .ALUFN(ALUFN),
    .instruction(instruction),
    .ASEL(ASEL),
    .BSEL(BSEL),
    .MOE(MOE),
    .MWR(MWR),
    .PCSEL(PCSEL),
    .RA2SEL(RA2SEL),
    .WASEL(WASEL),
    .WDSEL(WDSEL),
    .WERF(WERF)
    );

always #5 clk=~clk;
initial
begin
    clk <=0;
    #10 instruction[31:30] =2'b10;
    
    #(15)
    begin
		@(negedge clk)
    if(
            ASEL === 0 &&
			BSEL === 0 &&
			MOE === 1'bx &&
			MWR === 0 &&
			PCSEL === 3'b000 &&
			RA2SEL === 0 &&
			WASEL === 0 &&
			WDSEL === 2'b01 &&
			WERF === 1)

        $display("Case 1: PASS ");
    else
        $display("Case 1: FAIL ");
        end
    
    #10 instruction[31:30] =2'b11;
    #(15)
    begin
		@(negedge clk)
    if(
            ASEL === 0 &&
			BSEL === 1 &&
			MOE === 1'bx &&
			MWR === 0 &&
			PCSEL === 3'b000 &&
			RA2SEL ===1'bx &&
			WASEL === 0 &&
			WDSEL === 2'b01 &&
			WERF === 1 )

        $display("Case 2: PASS ");
    else
        $display("Case 2: FAIL ");
        end

    #10  instruction[31:26] =32'b011000;
    #(15)
    begin
		@(negedge clk)
    if(
            ALUFN === 6'b100000 &&
            ASEL === 0 &&
			BSEL === 1 &&
			MOE === 1 &&
			MWR === 0 &&
			PCSEL === 3'b000 &&
			RA2SEL ===1'bx &&
			WASEL === 0 &&
			WDSEL === 2'b10 &&
			WERF === 1 )

        $display("Case 3: PASS ");
    else
        $display("Case 3: FAIL ");
        end

end

endmodule