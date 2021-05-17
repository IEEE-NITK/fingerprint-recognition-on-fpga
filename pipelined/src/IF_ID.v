`timescale 1ns / 1ps

// The instruction fetch to Instruction Decode pipeline stage
module IF_ID(
        input [31:0] IF_PC,
        input [31:0] IF_ID,
        output reg [31:0] ID_PC,
        output reg [31:0] ID_ID
    );
    
    reg [31:0] PC;
    reg [31:0] ID;
    
    always @(*)
    begin
        //data in pipeline register
        PC <= IF_PC;
        ID <= IF_ID;
        
        //data sent
        ID_PC <= PC;
        ID_ID <= ID;
    end
    
endmodule
