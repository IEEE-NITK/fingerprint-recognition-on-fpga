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

module ADD(
	input [31:0] A,
	input [31:0] B,
	output [31:0] Y);

 wire  carry_out;
 wire [31:0] carry;

 genvar i;
 generate
  for(i=0;i<32;i=i+1)
	begin
	 if(i==0) 
  		full_adder f(A[0], B[0], 0, Y[0], carry[0]);
	 else
		full_adder f(A[i], B[i], carry[i-1], Y[i], carry[i]);
	end
  assign carry_out = carry[31];
 endgenerate
endmodule

module SUB(
	input [31:0] A,
	input [31:0] B,
	output [31:0] Y);

 wire  borrow_out;
 wire [31:0] borrow;

 genvar i;
 generate
  for(i=0;i<32;i=i+1)
	begin
	 if(i==0) 
  		full_subtractor f(A[0], B[0], 0, Y[0], borrow[0]);
	 else
		full_subtractor f(A[i], B[i], borrow[i-1], Y[i], borrow[i]);
	end
  assign carry_out = borrow[31];
 endgenerate
endmodule

module AND(
	input [31:0] A,
	input [31:0] B,
	output [31:0] Y);

 genvar i;
 generate
  for(i=0;i<32;i=i+1)
	begin
	 assign Y[i] = A[i]&B[i];
	end
 endgenerate

endmodule

module OR(
	input [31:0] A,
	input [31:0] B,
	output [31:0] Y);

 genvar i;
 generate
  for(i=0;i<32;i=i+1)
	begin
	 assign Y[i] = A[i] | B[i];
	end
 endgenerate

endmodule

module XOR(
	input [31:0] A,
	input [31:0] B,
	output [31:0] Y);

 genvar i;
 generate
  for(i=0;i<32;i=i+1)
	begin
	 assign Y[i] = A[i]^B[i];
	end
 endgenerate

endmodule

module XNOR(
	input [31:0] A,
	input [31:0] B,
	output [31:0] Y);

 genvar i;
 generate
  for(i=0;i<32;i=i+1)
	begin
	 assign Y[i] = ~(A[i]^B[i]);
	end
 endgenerate

endmodule

module A(
	input [31:0] A,
	output reg [31:0] Y);

 initial
 begin
	assign Y = A;
 end

endmodule

module ALU(
	input clk,
	input [5:0] ALUFN,
	input [31:0] A,
	input [31:0] B,
	output reg [31:0] Y);

 reg [31:0] add, sub, and_isa, or_isa, xor_isa, xnor_isa, a; 
 ADD(.A(A),.B(B),.add(Y));
 SUB(.A(A),.B(B),.sub(Y));
 AND(.A(A),.B(B),.and_isa(Y));
 OR(.A(A),.B(B),.or_isa(Y));
 XOR(.A(A),.B(B),.xor_isa(Y));
 XNOR(.A(A),.B(B),.xnor_isa(Y));
 A(.A(A),.B(B),.a(Y));

 always @(posedge clk)
 begin
	case(ALUFN)
	 6'b010000 : Y <= add;
	 6'b010001 : Y <= sub;
	 6'b101000 : Y <= and_isa;
	 6'b101110 : Y <= or_isa;
	 6'b100110 : Y <= xor_isa;
	 6'b101001 : Y <= xnor_isa;
	 6'b101010 : Y <= a;
	endcase
 end

endmodule
