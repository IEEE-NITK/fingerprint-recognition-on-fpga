`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// INPUT:-
// Address: 8-Bit address input port.
//
// OUTPUT:-
// Instruction: 32-Bit output port.
////////////////////////////////////////////////////////////////////////////////

module InstructionMemory( 
	input [31:0]  IA,        // Input Address 
	output  [31:0]  ID    // Instruction at memory location Address
	); 
    
    reg [31:0] mem[0:1024]; //check what to do

    assign ID = mem[IA>>2];	

endmodule
