`timescale 1ns / 1ps

module subBytes(
    input [127:0] in,
    output [127:0] out
    );
    
    genvar i;
    generate
        for(i=0;i<16;i=i+1) begin
            sbox s(in[8*(i+1)-1:8*i], out[8*(i+1)-1:8*i]);
        end
    endgenerate
endmodule
