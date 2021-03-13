`timescale 1ns / 1ps

module mixColumns(
    input [127:0] in,
    output [127:0] out
    );
    
    function [7:0] mul2;
        input [7:0] in;
        begin
            mul2 = in[7]? (in<<1)^(8'h1b) : (in<<1);
        end
    endfunction

    function [7:0] mul3;
        input [7:0] in;
        begin
            mul3 = mul2(in)^in;
        end
    endfunction
    
    assign out[127:120] = mul2(in[127:120]) ^ mul3(in[119:112]) ^ in[111:104] ^ in[103:96];
    assign out[119:112] = in[127:120] ^ mul2(in[119:112]) ^ mul3(in[111:104]) ^ in[103:96];
    assign out[111:104] = in[127:120] ^ in[119:112] ^ mul2(in[111:104]) ^ mul3(in[103:96]);
    assign out[103:96] = mul3(in[127:120]) ^ in[119:112] ^ in[111:104] ^ mul2(in[103:96]);
    
    assign out[95:88] = mul2(in[95:88]) ^ mul3(in[87:80]) ^ in[79:72] ^ in[71:64];
    assign out[87:80] = in[95:88] ^ mul2(in[87:80]) ^ mul3(in[79:72]) ^ in[71:64];
    assign out[79:72] = in[95:88] ^ in[87:80] ^ mul2(in[79:72]) ^ mul3(in[71:64]);
    assign out[71:64] = mul3(in[95:88]) ^ in[87:80] ^ in[79:72] ^ mul2(in[71:64]);
    
    assign out[63:56] = mul2(in[63:56]) ^ mul3(in[55:48]) ^ in[47:40] ^ in[39:32];
    assign out[55:48] = in[63:56] ^ mul2(in[55:48]) ^ mul3(in[47:40]) ^ in[39:32];
    assign out[47:40] = in[63:56] ^ in[55:48] ^ mul2(in[47:40]) ^ mul3(in[39:32]);
    assign out[39:32] = mul3(in[63:56]) ^ in[55:48] ^ in[47:40] ^ mul2(in[39:32]);
    
    assign out[31:24] = mul2(in[31:24]) ^ mul3(in[23:16]) ^ in[15:8] ^ in[7:0];
    assign out[23:16] = in[31:24] ^ mul2(in[23:16]) ^ mul3(in[15:8]) ^ in[7:0];
    assign out[15:8] = in[31:24] ^ in[23:16] ^ mul2(in[15:8]) ^ mul3(in[7:0]);
    assign out[7:0] = mul3(in[31:24]) ^ in[23:16] ^ in[15:8] ^ mul2(in[7:0]);
endmodule
