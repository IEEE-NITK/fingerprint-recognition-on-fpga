`timescale 1ns / 1ps

module roundDecrypt(
    input [127:0] in,
    input [3:0] round,
    output [127:0] out
    );
    
    wire [127:0] tmp1;
    wire [127:0] tmp2;
    wire [127:0] tmp3;
    
    addRoundKey s4(.in(in), .round(round), .out(tmp1));
    mixColumnsDecrypt s3(.in(tmp1), .out(tmp2));
    shiftRowsDecrypt s2(.in(tmp2), .out(tmp3));
    subBytesDecrypt s1(.in(tmp3), .out(out));
    
endmodule
