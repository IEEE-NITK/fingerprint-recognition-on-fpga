module reg32file
(
 input [4:0] r_reg1,
 input [4:0] r_reg2,
 input [4:0] w_reg,
 input w_data,
 input reg_write,

 output reg [31:0] r_data1,
 output reg [31:0] r_data2,
);

 reg [31:0] reg_file;

if (reg_write == 1)
  begin
	reg_file[w_reg] <= w_data;
  end
else
  begin
	r_data1 <= reg_file[r_reg1];
	r_data2 <= reg_file[r_reg2];		
  end

endmodule
