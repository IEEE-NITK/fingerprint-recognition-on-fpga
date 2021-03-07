module ALU_tb;
reg [5:0] ALUFN;
reg [31:0] A,B;
wire [31:0] Y;

ALU x(	.ALUFN(ALUFN),
	.A(A),
	.B(B),
	.Y(Y));

 initial
 begin
	#5 ALUFN = 6'b100100;
	A = 15;
	B = 13;
	
	$monitor("CMPEQ A= %d; B= %d; Y= %d;",A,B,Y);
	
	#(10)
	A = 13;
	B = 13;
	
	$monitor("A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b100101;
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
	#10 ALUFN = 6'b100110;
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
	#10 ALUFN = 6'b100000;
	A = 15;
	B = 13;
	
	$monitor("ADD A= %d; B= %d; Y= %d;",A,B,Y);
	
	#(10)
	A = 13;
	B = 13;
	
	$monitor("A= %d; B= %d; Y= %d;",A,B,Y);
	
	#10 ALUFN = 6'b100001;
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
	#10 ALUFN = 6'b101001;
	A = 15;
	B = 13;
	
	$monitor("OR A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b101010;
	A = 15;
	B = 13;
	
	$monitor("XOR A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b101001;
	A = 15;
	B = 13;
	
	$monitor("XNOR A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b101100;
	A = 15;
	B = 4;
	
	$monitor("SHL A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b101101;
	A = 15;
	B = 4;
	
	$monitor("SHR A= %d; B= %d; Y= %d;",A,B,Y);
	#10 ALUFN = 6'b101110;
	A = -16;
	B = 4;
	
	$monitor("SHR A= %d; B= %d; Y= %d;",A,B,Y);

 end

endmodule
