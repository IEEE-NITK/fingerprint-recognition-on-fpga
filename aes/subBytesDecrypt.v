`timescale 1ns / 1ps

module subBytesDecrypt(
    input [127:0] in,
    output [127:0] out
    );
    
    genvar i;
    generate
        for(i=0;i<16;i=i+1) begin
            inv_sbox is(in[8*(i+1)-1:8*i], out[8*(i+1)-1:8*i]);
        end
    endgenerate
endmodule
