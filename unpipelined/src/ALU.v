`timescale 1ns / 1ps

// Arithmetic Logic Unit
// Y = A op B
module ALU(
	input [5:0] ALUFN,
	input signed [31:0] A,
	input signed [31:0] B,
	output reg [31:0] Y);

 always @(*)
 begin
	casex(ALUFN)
	 6'b1x0100 : 	begin
				if(A == B)
					Y <= 1;
				else
					Y <= 0;
			end
	 6'b1x0101 : 	begin
				if(A < B)
					Y <= 1;
				else
					Y <= 0;
			end
	 6'b1x0110 : 	begin
				if(A == B)
					Y <= 1;
				else if(A < B)
					Y <= 1;
				else
					Y <= 0;
			end
	 6'b1x0000 : Y <= A + B;
	 6'b1x0001 : Y <= A - B;
	 6'b1x1000 : Y <= A & B;
	 6'b1x1001 : Y <= A | B;
	 6'b1x1010 : Y <= A ^ B;
	 6'b1x1011 : Y <= ~(A ^ B);
	 6'b111111 : Y <= A;
	 6'b1x1100 : Y <= A << B;
	 6'b1x1101 : Y <= A >> B;
	 6'b1x1110 : Y <= A >>> B;
	endcase
 end

endmodule
