`timescale 1ns / 1ps

// Sample Instruction Memory
module InstructionMemory( 
	input [31:0]  IA,         
	output  [127:0]  ID   
	); 
    
    reg [127:0] mem[1023:0]; 
    
    assign ID = mem[IA];	

endmodule
