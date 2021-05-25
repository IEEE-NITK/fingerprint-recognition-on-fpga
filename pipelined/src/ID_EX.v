`timescale 1ns / 1ps

module ID_EX(
        input [31:0] ID_PC,
        input [5:0] ID_ALUFN,
        input [31:0] ID_A,
        input [31:0] ID_B,
        input [31:0] ID_D,
        input [31:0] ID_ID,
        output reg [31:0] EX_PC,
        output reg [5:0] EX_ALUFN,
        output reg [31:0] EX_A,
        output reg [31:0] EX_B,
        output reg [31:0] EX_D,
        output reg [31:0] EX_ID
    );
    
    reg [31:0] PC;
    reg [5:0] ALUFN;
    reg [31:0] A;
    reg [31:0] B;
    reg [31:0] D;
    reg [31:0] ID;
    
    always @(*)
    begin
        //data in pipeline register
        PC <= ID_PC;
        ALUFN <= ID_ALUFN;
        A <= ID_A;
        B <= ID_B;
        D <= ID_D;
        ID <= ID_ID;
        
        //data sent
        EX_PC <= PC;
        EX_ALUFN <= ALUFN;
        EX_A <= A;
        EX_B <= B;
        EX_D <= D;
        EX_ID <= ID;
        EX_ID <= ID;
    end
    
endmodule
