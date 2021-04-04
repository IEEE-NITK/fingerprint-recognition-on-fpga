`timescale 1ns / 1ps

module decrypt(
    input [127:0] encrypted_message,
    output [31:0] cut_decrypted_message
    );
    
    wire [127:0] decrypted_message;
    wire [3:0] round;
    wire [127:0] tmp [9:0];
    wire [127:0] tmp1;
    wire [127:0] tmp2;

    addRoundKey a1(.in(encrypted_message), .round(10), .out(tmp1));
    shiftRowsDecrypt s1(.in(tmp1), .out(tmp2));
    subBytesDecrypt s2(.in(tmp2), .out(tmp[0]));
    
    roundDecrypt r0(.in(tmp[0]), .round(9), .out(tmp[1]));
    roundDecrypt r1(.in(tmp[1]), .round(8), .out(tmp[2]));
    roundDecrypt r2(.in(tmp[2]), .round(7), .out(tmp[3]));
    roundDecrypt r3(.in(tmp[3]), .round(6), .out(tmp[4]));
    roundDecrypt r4(.in(tmp[4]), .round(5), .out(tmp[5]));
    roundDecrypt r5(.in(tmp[5]), .round(4), .out(tmp[6]));
    roundDecrypt r6(.in(tmp[6]), .round(3), .out(tmp[7]));
    roundDecrypt r7(.in(tmp[7]), .round(2), .out(tmp[8]));
    roundDecrypt r8(.in(tmp[8]), .round(1), .out(tmp[9]));
    
    addRoundKey a2(.in(tmp[9]), .round(0), .out(decrypted_message));
    
    assign cut_decrypted_message = decrypted_message[31:0];
    
endmodule
