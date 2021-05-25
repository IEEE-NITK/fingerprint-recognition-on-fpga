`timescale 1ns / 1ps

// A Mux to decide between NOP, BNE and normal flow of data in EX stage
module IRSrc_MEM_Mux(
        input [1:0] IRSrcALU,
        input [31:0] BNE,
        input [31:0] NOP,
        input [31:0] MEM_ID,
        output reg [31:0] ID
    );
     
    always @(*)
    begin
        case(IRSrcALU)
            
            2'b00 : ID <= MEM_ID;
            2'b01 : ID <= NOP;
            2'b10 : ID <= BNE;
            
        endcase
     end
    
endmodule
