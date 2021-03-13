`timescale 1ns / 1ps

module mixColumnsDecrypt(
    input [127:0] in,
    output [127:0] out
    );
    
    function [7 : 0] mul2(input [7 : 0] op);
    begin
      mul2 = {op[6 : 0], 1'b0} ^ (8'h1b & {8{op[7]}});
    end
    endfunction 

  function [7 : 0] mul3(input [7 : 0] op);
    begin
      mul3 = mul2(op) ^ op;
    end
  endfunction
    
    function [7 : 0] mul4(input [7 : 0] op);
    begin
      mul4 = mul2(mul2(op));
    end
    endfunction 

  function [7 : 0] mul8(input [7 : 0] op);
    begin
      mul8 = mul2(mul4(op));
    end
  endfunction 

  function [7 : 0] mul9(input [7 : 0] op);
    begin
      mul9 = mul8(op) ^ op;
    end
  endfunction 

  function [7 : 0] mul11(input [7 : 0] op);
    begin
      mul11 = mul8(op) ^ mul2(op) ^ op;
    end
  endfunction 

  function [7 : 0] mul13(input [7 : 0] op);
    begin
      mul13 = mul8(op) ^ mul4(op) ^ op;
    end
  endfunction
    
    function [7 : 0] mul14(input [7 : 0] op);
    begin
      mul14 = mul8(op) ^ mul4(op) ^ mul2(op);
    end
    endfunction 
    
    assign out[127:120] = mul14(in[127:120]) ^ mul11(in[119:112]) ^ mul13(in[111:104]) ^ mul9(in[103:96]);
    assign out[119:112] = mul9(in[127:120]) ^ mul14(in[119:112]) ^ mul11(in[111:104]) ^ mul13(in[103:96]);
    assign out[111:104] = mul13(in[127:120]) ^ mul9(in[119:112]) ^ mul14(in[111:104]) ^ mul11(in[103:96]);
    assign out[103:96] = mul11(in[127:120]) ^ mul13(in[119:112]) ^ mul9(in[111:104]) ^ mul14(in[103:96]);
    
    assign out[95:88] = mul14(in[95:88]) ^ mul11(in[87:80]) ^ mul13(in[79:72]) ^ mul9(in[71:64]);
    assign out[87:80] = mul9(in[95:88]) ^ mul14(in[87:80]) ^ mul11(in[79:72]) ^ mul13(in[71:64]);
    assign out[79:72] = mul13(in[95:88]) ^ mul9(in[87:80]) ^ mul14(in[79:72]) ^ mul11(in[71:64]);
    assign out[71:64] = mul11(in[95:88]) ^ mul13(in[87:80]) ^ mul9(in[79:72]) ^ mul14(in[71:64]);
    
    assign out[63:56] = mul14(in[63:56]) ^ mul11(in[55:48]) ^ mul13(in[47:40]) ^ mul9(in[39:32]);
    assign out[55:48] = mul9(in[63:56]) ^ mul14(in[55:48]) ^ mul11(in[47:40]) ^ mul13(in[39:32]);
    assign out[47:40] = mul13(in[63:56]) ^ mul9(in[55:48]) ^ mul14(in[47:40]) ^ mul11(in[39:32]);
    assign out[39:32] = mul11(in[63:56]) ^ mul13(in[55:48]) ^ mul9(in[47:40]) ^ mul14(in[39:32]);
    
    assign out[31:24] = mul14(in[31:24]) ^ mul11(in[23:16]) ^ mul13(in[15:8]) ^ mul9(in[7:0]);
    assign out[23:16] = mul9(in[31:24]) ^ mul14(in[23:16]) ^ mul11(in[15:8]) ^ mul13(in[7:0]);
    assign out[15:8] = mul13(in[31:24]) ^ mul9(in[23:16]) ^ mul14(in[15:8]) ^ mul11(in[7:0]);
    assign out[7:0] = mul11(in[31:24]) ^ mul13(in[23:16]) ^ mul9(in[15:8]) ^ mul14(in[7:0]);
    
endmodule
