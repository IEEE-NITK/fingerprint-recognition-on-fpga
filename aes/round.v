`timescale 1ns / 1ps

module round(
    input [127:0] in,
    input [3:0] round,
    output [127:0] out
    );
    
    wire [127:0] tmp1;
    wire [127:0] tmp2;
    wire [127:0] tmp3;
    
    subBytes s1(.in(in), .out(tmp1));
    shiftRows s2(.in(tmp1), .out(tmp2));
    mixColumns s3(.in(tmp2), .out(tmp3));
    addRoundKey s4(.in(tmp3), .round(round), .out(out));
    
endmodule
