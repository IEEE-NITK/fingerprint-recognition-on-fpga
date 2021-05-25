`timescale 1ns / 1ps

module PCSEL_reg(
        input [31:0] PCSEL_OUT,
        input [31:0] Stall,
        output reg [31:0] PCSEL 
    );
    
    reg [31:0] PC;
    
    always @(*)
    begin
        if (Stall == 0)
        begin
            PC <= PCSEL_OUT;
        end
        
        PCSEL <= PC;
    end
    
endmodule
