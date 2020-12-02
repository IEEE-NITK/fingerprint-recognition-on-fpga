`timescale 1ns / 1ps

// A register bank with 32, 32-bit registers 

module regfile(
    input clk,
    input [4:0] readreg1,
    input [4:0] readreg2,
    input [4:0] writereg,
    input [31:0] wdata,
    input w_en,
    output [31:0] rdata1,
    output [31:0] rdata2
    );
    
    reg [31:0] regbank [31:0];  // 32 32-bit registers
    
    assign rdata1 = regbank[readreg1];
    assign rdata2 = regbank[readreg2];
    
    always @(posedge clk)
    begin
        if(w_en)
            regbank[writereg]<=wdata;
    end
endmodule
