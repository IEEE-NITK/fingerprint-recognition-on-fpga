`timescale 1ns / 1ps

module addRoundKey(
    input [127:0] in,
    input [3:0] round,
    output [127:0] out
    );
    
    wire [127:0] key;
    expandedKey e1(.round(round), .out(key));
    assign out = in^key;
endmodule
