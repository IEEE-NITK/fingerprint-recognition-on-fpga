`timescale 1ns / 1ps

module InstructionMemory_tb;

	reg [31:0]  IA;	// Input Address 
	wire  [31:0]  ID;	// Instruction at memory location Address	

	InstructionMemory x(
				.IA(IA),
				.ID(ID));

	initial
	begin
		$readmemb("code.txt",x.mem);
		#10 IA <= 32'd0;
		#10 IA <= IA + 32'd4;
		#10 IA <= IA + 32'd4;
		#10 IA <= IA + 32'd4;
	end

endmodule
