`timescale 1ns/1ns


module CU_tb;
reg RESET;
reg IRQ;
reg Z;
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

localparam period = 20; 

CU x(.RESET(RESET),
    .IRQ(IRQ),
    .Z(Z),
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

initial
begin

//Instruction Testing

    //Testing OP
    instruction[31:30] = 2'b10;
    #(period)
    
    if(     ALUFN == instruction[31:26] &&
            ASEL == 0 &&
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
        $display("Case 1(op): FAIL ");

    //Testing OPC    
	instruction[31:30] = 2'b11;
	#(period)

    if(     ALUFN == instruction[31:26] &&
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
        $display("Case 2(opc): FAIL ");

    //Testing LD
	instruction[31:26] = 6'b011000;
	#(period)

    if(
            ALUFN == 6'b100000 &&
            ASEL == 0 &&
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
        $display("Case 3(LD): FAIL ");

    //Testing LDR
	instruction[31:26] = 6'b011111;
	#(period)

    if(
            ALUFN === 6'b111111 &&
			ASEL == 1 &&
			BSEL == 1'bx &&
			MOE == 1 &&
			MWR == 0 &&
			PCSEL == 3'b000 &&
			RA2SEL == 1'bx &&
			WASEL == 0 &&
			WDSEL == 2'b10 &&
			WERF == 1)

        $display("Case 4: PASS ");
    else
        $display("Case 4(LDR): FAIL ");

    //Testing ST
	instruction[31:26] = 6'b011001;
	#(period)

    if(
            ALUFN == 6'b100000 &&
			ASEL == 0 &&
			BSEL == 1 &&
			MOE == 0 &&
			MWR == 1 &&
			PCSEL == 3'b000 &&
			RA2SEL == 1 &&
			WASEL == 1'bx &&
			WDSEL == 2'bxx &&
			WERF == 0)

        $display("Case 5: PASS ");
    else
        $display("Case 5(ST): FAIL ");

    //Testing JMP
	instruction[31:26] = 6'b011011;
    #(period)

	if(
            ALUFN == 6'bxxxxxx &&
			ASEL == 1'bx &&
			BSEL == 1'bx &&
			MOE == 1'bx &&
			MWR == 0 &&
			PCSEL == 3'b010 &&
			RA2SEL == 1'bx &&
			WASEL == 0 &&
			WDSEL == 2'b00 &&
			WERF == 1)

        $display("Case 6: PASS ");
    else
        $display("Case 6(JMP): FAIL ");

    //Testing BEQ        
	instruction[31:26] = 6'b011100;
    #(period)
	
	if(
            ALUFN == 6'bxxxxxx &&
			ASEL == 1'bx &&
			BSEL == 1'bx &&
			MOE == 1'bx &&
			MWR == 0 &&
			PCSEL == Z ? 3'b001 : 3'b000 &&
			RA2SEL == 1'bx &&
			WASEL == 0 &&
			WDSEL == 2'b00 &&
			WERF == 1)

        $display("Case 7: PASS ");
    else
        $display("Case 7(BEQ): FAIL ");    

    //Testing BNE        
	instruction[31:26] = 6'b011001;
    #(period)

	if(
            ALUFN == 6'bxxxxxx &&
			ASEL == 1'bx &&
			BSEL == 1'bx &&
			MOE == 1'bx &&
			MWR == 0 &&
			PCSEL == Z ? 3'b000 : 3'b001 &&
			RA2SEL == 1'bx &&
			WASEL == 0 &&
			WDSEL == 2'b00 &&
			WERF == 1)

        $display("Case 8: PASS ");
    else
        $display("Case 8(BNE): FAIL ");    

    //Testing ILLOP        
	instruction[31:26] = 6'b011101;
    #(period)

	if(
            ALUFN == 6'bxxxxxx &&
			ASEL == 1'bx &&
			BSEL == 1'bx &&
			MOE == 1'bx &&
			MWR == 0 &&
			PCSEL == 3'b011 &&
			RA2SEL == 1'bx &&
			WASEL == 1 &&
			WDSEL == 2'b00 &&
			WERF == 1)

        $display("Case 8: PASS ");
    else
        $display("Case 8(BNE): FAIL "); 

//IRQ Testing
	IRQ = 1;
	#(period)

    if(     ALUFN == 6'bxxxxxx &&
            ASEL == 1'bx &&
			BSEL === 1'bx &&
			MOE === 1'bx &&
			MWR === 0 &&
			PCSEL === 3'b100 &&
			RA2SEL === 1'bx &&
			WASEL === 1 &&
			WDSEL === 2'b000 &&
			WERF === 1)

        $display("Case 9: PASS ");
    else
        $display("Case 9(IRQ): FAIL ");

//RESET Testing
	RESET = 1;
	#(period)

    if(     ALUFN == 6'bxxxxxx &&
            ASEL == 1'bx &&
			BSEL === 1'bx &&
			MOE === 1'bx &&
			MWR === 0 &&
			PCSEL === 3'bxxx &&
			RA2SEL === 1'bx &&
			WASEL === 1'bx &&
			WDSEL === 2'bxx &&
			WERF === 1'bx)

        $display("Case 10: PASS ");
    else
        $display("Case 10(RESET): FAIL ");
end     
endmodule