`timescale 1ns / 1ps

module encrypt(
    input [127:0] message,
    output [127:0] encrypted_message
    );
    
    wire [3:0] round;
    wire [127:0] tmp [9:0];
    wire [127:0] tmp1;
    wire [127:0] tmp2;

    addRoundKey a1(.in(message), .round(0), .out(tmp[0]));
    
    round r0(.in(tmp[0]), .round(1), .out(tmp[1]));
    round r1(.in(tmp[1]), .round(2), .out(tmp[2]));
    round r2(.in(tmp[2]), .round(3), .out(tmp[3]));
    round r3(.in(tmp[3]), .round(4), .out(tmp[4]));
    round r4(.in(tmp[4]), .round(5), .out(tmp[5]));
    round r5(.in(tmp[5]), .round(6), .out(tmp[6]));
    round r6(.in(tmp[6]), .round(7), .out(tmp[7]));
    round r7(.in(tmp[7]), .round(8), .out(tmp[8]));
    round r8(.in(tmp[8]), .round(9), .out(tmp[9]));
    
    subBytes s1(.in(tmp[9]), .out(tmp1));
    shiftRows s2(.in(tmp1), .out(tmp2));
    addRoundKey a2(.in(tmp2), .round(10), .out(encrypted_message));
    
endmodule
