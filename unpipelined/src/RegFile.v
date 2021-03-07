`timescale 1ns / 1ps

// 32-bit register file containing 32 registers
// Writeback at negative edge of clock

module reg32file
(input clk,
 input WERF,
 input [4:0] RA1,
 input [4:0] RA2,
 input [4:0] WA,
 input [31:0] WD,
 output [31:0] RD1,
 output [31:0] RD2);

 reg [31:0] reg_file [31:0];

 
 assign RD1 = reg_file[RA1];
 assign RD2 = reg_file[RA2];


 always @(negedge clk)
 begin
	if(WERF)
	begin
		reg_file[WA] <= WD;
	end
 end
endmodule