module ALU(
	input [5:0] ALUFN,
	input signed [31:0] A,
	input signed [31:0] B,
	output reg [31:0] Y);

 always @(ALUFN,A,B)
 begin
	case(ALUFN)
	 6'b100100 : 	begin
				if(A == B)
					Y <= 1;
				else
					Y <= 0;
			end
	 6'b100101 : 	begin
				if(A < B)
					Y <= 1;
				else
					Y <= 0;
			end
	 6'b100110 : 	begin
				if(A == B)
					Y <= 1;
				else if(A < B)
					Y <= 1;
				else
					Y <= 0;
			end
	 6'b100000 : Y <= A + B;
	 6'b100001 : Y <= A - B;
	 6'b101000 : Y <= A & B;
	 6'b101001 : Y <= A | B;
	 6'b101010 : Y <= A ^ B;
	 6'b101011 : Y <= ~(A ^ B);
	 6'b111111 : Y <= A;
	 6'b101100 : Y <= A << B;
	 6'b101101 : Y <= A >> B;
	 6'b101110 : Y <= A >>> B;
	endcase
 end

endmodule
