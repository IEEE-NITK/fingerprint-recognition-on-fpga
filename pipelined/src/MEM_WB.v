`timescale 1ns / 1ps

module MEM_WB(
        input [31:0] MEM_PC,
        input [1:0] MEM_WDSEL,
        input MEM_WERF,
        input MEM_WASEL,
        input [31:0] MEM_Y,
        output reg [31:0] WB_PC,
        output reg [1:0] WB_WDSEL,
        output reg WB_WERF,
        output reg WB_WASEL,
        output reg [31:0] WB_Y
    );
    
    reg [31:0] PC;
    reg [1:0] WDSEL;
    reg WERF;
    reg WASEL;
    reg [31:0] Y;
    
    always @(*)
    begin
        
        //data in pipeline register
        PC <= MEM_PC;
        WDSEL <= MEM_WDSEL;
        WERF <= MEM_WERF;
        WASEL <= MEM_WASEL;
        Y <= MEM_Y;
        
        //data sent
        WB_PC <= PC;
        WB_WDSEL <= WDSEL;
        WB_WERF <= WERF;
        WB_WASEL <= WASEL;
        WB_Y <= Y;
        
    end
    
endmodule
