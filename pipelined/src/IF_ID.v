`timescale 1ns / 1ps

// The instruction fetch to Instruction Decode pipeline stage
module IF_ID(
        input [31:0] IF_PC,
        input IF_RA2SEL,
        input IF_ASEL,
        input IF_BSEL,
        input [31:0] IF_SXTC,
        input [31:0] IF_ID,
        output reg [31:0] ID_PC,
        output reg ID_RA2SEL,
        output reg ID_ASEL,
        output reg ID_BSEL,
        output reg [31:0] ID_SXTC,
        output reg [31:0] ID_ID
    );
    
    reg [31:0] PC;
    reg RA2SEL;
    reg ASEL;
    reg BSEL;
    reg [31:0] SXTC;
    reg [31:0] ID;
    
    always @(*)
    begin
        //data in pipeline register
        PC <= IF_PC;
        RA2SEL <= IF_RA2SEL;
        ASEL <= IF_ASEL;
        BSEL <= IF_BSEL;
        SXTC <= IF_SXTC;
        ID <= IF_ID;
        
        //data sent
        ID_PC <= PC;
        ID_RA2SEL <= RA2SEL;
        ID_ASEL <= ASEL;
        ID_BSEL <= BSEL;
        ID_SXTC <= SXTC;
        ID_ID <= ID;
    end
    
endmodule
