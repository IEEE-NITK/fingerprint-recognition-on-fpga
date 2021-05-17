`timescale 1ns / 1ps

module MEM_WB(
        input [31:0] MEM_PC,
        input [31:0] MEM_IRSrc,
        input [31:0] MEM_Y,
        output reg [31:0] WB_PC,
        output reg [31:0] WB_IRSrc,
        output reg [31:0] WB_Y
    );
endmodule
