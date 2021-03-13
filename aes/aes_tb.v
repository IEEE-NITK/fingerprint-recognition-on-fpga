`timescale 1ns / 1ps

module aes_tb;
    reg [127:0] in;
    wire [127:0] out;
    aes a(in, out);
    initial begin
        in = {32'h11443322, {3{32'h00000000}}};
        #20 in = {32'h11443321, {3{32'h00000000}}};
        #20 in = {32'h78594a3f, {3{32'h00000000}}};
        #20 $finish;
    end
    
    initial $monitor($time, " %h \t %h \t %h", in, aes.tmp, out);
endmodule
