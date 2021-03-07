module reg32file
(input clk,
 input WERF,
 input [4:0] Ra,
 input [4:0] RA2,
 input [4:0] WA,
 input [31:0] WD,
 output [31:0] RD1,
 output [31:0] RD2);

 reg [31:0] reg_file [0:31];

 
 assign RD1 = reg_file[Ra];
 assign RD2 = reg_file[RA2];


 always @(posedge clk)
 begin
	if(WERF)
	begin
		reg_file[WA] <= WD;
	end
 end
endmodule
