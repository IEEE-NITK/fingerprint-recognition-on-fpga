`timescale 1ns / 1ps

module ID_EX(
        input [31:0] ID_PC,
        input [31:0] ID_IRSrc,
        input [31:0] ID_A,
        input [31:0] ID_B,
        input [31:0] ID_D,
        output reg [31:0] EX_PC,
        output reg [31:0] EX_IRSrc,
        output reg [31:0] EX_A,
        output reg [31:0] EX_B,
        output reg [31:0] EX_D
    );
endmodule
