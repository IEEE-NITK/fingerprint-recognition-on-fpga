`timescale 1ns / 1ps

module EX_MEM(
        input [31:0] EX_PC,
        input [31:0] EX_IRSrc,
        input [31:0] EX_Y,
        input [31:0] EX_D,
        output reg [31:0] MEM_PC,
        output reg [31:0] MEM_IRSrc,
        output reg [31:0] MEM_Y,
        output reg [31:0] MEM_D
    );
endmodule
