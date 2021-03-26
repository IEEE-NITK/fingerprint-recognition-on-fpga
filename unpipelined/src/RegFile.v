`timescale 1ns / 1ps

// A register bank with 32, 32-bit registers 

module regfile(
    input clk,
    input [4:0] RA1,
    input [4:0] RA2,
    input [4:0] WA,
    input [31:0] WD,
    input WERF,
    output [31:0] RD1,
    output [31:0] RD2
    );
    
    reg [31:0] reg_file [31:0];  // 32 32-bit registers
    
    assign RD1 = reg_file[RA1];
    assign RD2 = reg_file[RA2];
    
    always @(posedge clk)
    begin
        if(WERF)
            reg_file[WA]<=WD;
    end
endmodule