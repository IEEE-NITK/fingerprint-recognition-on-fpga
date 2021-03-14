`timescale 1ns / 1ps

module aes(
    input [127:0] in,
    output [127:0] out
    );
    
    wire [127:0] tmp;
    
    encrypt e1(in, tmp);
    decrypt d1(tmp, out);
endmodule
