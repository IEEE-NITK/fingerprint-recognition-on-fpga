// Verilog code for data Memory
module Data_Memory(
 input clk,
 // address input, shared by read and write port
 input [31:0]   Adr,
 
 // write port
 input [31:0]   WD,
 input We,
 input Oe,
 // read port
 output [31:0]   RD
);

reg [31:0] memory [31:0]; 
//check no. of rows

wire [5:0] ram_addr=Adr[5:0];

initial
 begin
  $readmemb("./test/test.data", memory);
 end
 
 always @(posedge clk) begin
  if (We)
   memory[ram_addr] <= Wd;
 end
 assign RD = (Oe==1'b1) ? memory[ram_addr]: 32'd0; 

endmodule
