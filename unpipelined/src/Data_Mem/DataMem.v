// Verilog code for data Memory
module Data_Memory(
	input clk,
	input [31:0]   Adr, // address input, shared by read and write port 

	// write port
	input [31:0]   MWD,
	input MWR,
	input MOE,
 
	// read port
	output [31:0]   MRD
);

reg [31:0] memory [2^30-1:0]; 
//check no. of rows

wire [5:0] ram_addr=Adr[5:0];

 always @(posedge clk) begin
  if (MWR)
   memory[ram_addr] <= MWD;
 end
 assign MRD = (MOE==1'b1) ? memory[ram_addr]: 32'd0; 

endmodule
