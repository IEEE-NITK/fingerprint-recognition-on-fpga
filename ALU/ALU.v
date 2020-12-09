module ALU(
	input clk,
	input [5:0] ALUFN,
	input signed [31:0] A,
	input signed [31:0] B,
	output reg [31:0] Y);

 always @(posedge clk)
 begin
	case(ALUFN)
	 6'b000011 : 	begin
				if(A == B)
					Y <= 1;
				else
					Y <= 0;
			end
	 6'b000101 : 	begin
				if(A < B)
					Y <= 1;
				else
					Y <= 0;
			end
	 6'b000111 : 	begin
				if(A == B)
					Y <= 1;
				else if(A < B)
					Y <= 1;
				else
					Y <= 0;
			end
	 6'b010000 : Y <= A + B;
	 6'b010001 : Y <= A - B;
	 6'b101000 : Y <= A & B;
	 6'b101110 : Y <= A | B;
	 6'b100110 : Y <= A ^ B;
	 6'b101001 : Y <= ~(A ^ B);
	 6'b101010 : Y <= A;
	 6'b110000 : Y <= A << B;
	 6'b110001 : Y <= A >> B;
	 6'b110011 : Y <= A >>> B;
	endcase
 end

endmodule
