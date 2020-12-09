module ALU_tb;
reg clk;
reg [5:0] ALUFN;
reg [31:0] A,B;
wire [31:0] Y;

ALU x(	.clk(clk),
	.ALUFN(ALUFN),
	.A(A),
	.B(B),
	.Y(Y));

 always #5 clk = ~clk;
 initial
 begin
	clk <= 0;
	#5 ALUFN = 6'b000011;
	A = 15;
	B = 13;
	
	$monitor("CMPEQ A= %d; B= %d; Y= %d;",A,B,Y);
	
	#(10)
	A = 13;
	B = 13;
	
	$monitor("A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b000101;
	A = 15;
	B = 13;
	
	$monitor("CMPLT A= %d; B= %d; Y= %d;",A,B,Y);
	
	#(10)
	A = 13;
	B = 13;
	
	$monitor("A= %d; B= %d; Y= %d;",A,B,Y);
	
	#(10)
	A = 13;
	B = 15;
	
	$monitor("A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b000111;
	A = 15;
	B = 13;
	
	$monitor("CMPLE A= %d; B= %d; Y= %d;",A,B,Y);
	
	#(10)
	A = 13;
	B = 13;
	
	$monitor("A= %d; B= %d; Y= %d;",A,B,Y);
	
	#(10)
	A = 13;
	B = 15;
	
	$monitor("A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b010000;
	A = 15;
	B = 13;
	
	$monitor("ADD A= %d; B= %d; Y= %d;",A,B,Y);
	
	#(10)
	A = 13;
	B = 13;
	
	$monitor("A= %d; B= %d; Y= %d;",A,B,Y);
	
	#10 ALUFN = 6'b010001;
	A = 15;
	B = 13;
	
	$monitor("SUB A= %d; B= %d; Y= %d;",A,B,Y);
	
	#(10)
	A = 13;
	B = 13;
	
	$monitor("A= %d; B= %d; Y= %d;",A,B,Y);
	
	#(10)
	A = 13;
	B = 15;
	
	$monitor("A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b101000;
	A = 15;
	B = 13;
	
	$monitor("AND A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b101110;
	A = 15;
	B = 13;
	
	$monitor("OR A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b100110;
	A = 15;
	B = 13;
	
	$monitor("XOR A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b101001;
	A = 15;
	B = 13;
	
	$monitor("XNOR A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b110000;
	A = 15;
	B = 4;
	
	$monitor("SHL A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b110001;
	A = 15;
	B = 4;
	
	$monitor("SHR A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b110011;
	A = -16;
	B = 4;
	
	$monitor("SHR A= %d; B= %d; Y= %d;",A,B,Y);

 end

endmodule
