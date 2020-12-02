module reg32file
(input clk,
 input reg_write,
 input [4:0] r_reg1,
 input [4:0] r_reg2,
 input [4:0] w_reg,
 input [31:0] w_data,
 output [31:0] r_data1,
 output [31:0] r_data2);

 reg [31:0] reg_file [0:31];

 
 assign r_data1 = reg_file[r_reg1];
 assign r_data2 = reg_file[r_reg2];


 always @(posedge clk)
 begin
	if(reg_write)
	begin
		reg_file[w_reg] <= w_data;
	end
 end
endmodule
