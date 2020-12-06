module full_adder(x,y,c_in,s,c_out);
   input x,y,c_in;
   output s,c_out;
 assign s = (x^y) ^ c_in;
 assign c_out = (y&c_in)| (x&y) | (x&c_in);
endmodule

module full_subtractor(x,y,b_in,d,b_out);
   input x,y,b_in;
   output d,b_out;
 assign d = (x^y) ^ b_in;
 assign b_out = ((~x)&y) | ((~(x^y))&b_in);
endmodule

module CMPEQ(
	input [31:0] A,
	input [31:0] B,
	output reg [31:0] Y);

 always @(A or B)
 begin
	if(A == B)
		Y <= 1;
	else
		Y <= 0;
 end

 endmodule

module CMPLT(
	input [31:0] A,
	input [31:0] B,
	output reg [31:0] Y);

 always @(A or B)
 begin
	if(A < B)
		Y <= 1;
	else
		Y <= 0;
 end

 endmodule

module CMPLE(
	input [31:0] A,
	input [31:0] B,
	output reg [31:0] Y);

 always @(A or B)
 begin
	if(A == B)
		Y <= 1;
	else if(A < B)
		Y <= 1;
	else
		Y <= 0;
 end

 endmodule

module ALU(
	input clk,
	input [5:0] ALUFN,
	input [31:0] A,
	input [31:0] B,
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
	endcase
 end

endmodule
