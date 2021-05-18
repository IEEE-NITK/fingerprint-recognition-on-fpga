`timescale 1ns / 1ps

module EX_MEM(
        input [31:0] EX_PC,
        input EX_MOE,
        input EX_MWR,
        input [31:0] EX_Y,
        input [31:0] EX_D,
        output reg [31:0] MEM_PC,
        output reg MEM_MOE,
        output reg MEM_MWR,
        output reg [31:0] MEM_Y,
        output reg [31:0] MEM_D
    );
    
    
    reg [31:0] PC;
    reg MOE;
    reg MWR;
    reg [31:0] Y;
    reg [31:0] D;
    
    always @(*)
    begin
        //data in pipeline register
        PC <= EX_PC;
        MOE <= EX_MOE;
        MWR <= EX_MWR;
        Y <= EX_Y;
        D <= EX_D;
                
        //data sent
        MEM_PC <= PC;
        MEM_MOE <= MOE;
        MEM_MWR <= MWR;
        MEM_Y <= Y;
        MEM_D <= D;
        
    end
    
endmodule
