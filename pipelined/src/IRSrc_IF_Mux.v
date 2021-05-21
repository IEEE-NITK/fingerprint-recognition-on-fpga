`timescale 1ns / 1ps

// A Mux to decide between NOP, BNE and normal flow of data in IF stage
module IRSrc_IF_Mux(
        input [1:0] IRSrcIF,
        input [31:0] BNE,
        input [31:0] NOP,
        input [31:0] IF_ID,
        output reg [31:0] ID
    );
    
    always @(*)
    begin
        case(IRSrcIF)
            
            2'b00 : ID <= IF_ID;
            2'b01 : ID <= NOP;
            2'b10 : ID <= BNE;
            
        endcase
    end
    
endmodule
