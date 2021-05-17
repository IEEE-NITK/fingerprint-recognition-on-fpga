`timescale 1ns / 1ps

module beta(
    input clk,
    input RESET
    );

    // register file address wires
    wire [4:0] RA1;
    wire [4:0] RA2;
    wire [4:0] WA;
    wire [4:0] Ra, Rb, Rc;
    
    // register file data wires
    wire [31:0] RD1;
    wire [31:0] RD2;
    wire [31:0] WDSEL_OUT;
    
    // control signals and flags
    wire [5:0] ALUFN;
    wire ASEL;
    wire BSEL;
    wire MOE;
    wire MWR;
    wire [2:0] PCSEL;
    wire RA2SEL;
    wire WASEL;
    wire [1:0] WDSEL;
    wire WERF;
    reg Z;
    
    // ALU wires
    wire [31:0] A;
    wire [31:0] B;
    wire [31:0] Y;
    
    // program counter  
    wire [31:0] PC4;
    wire [31:0] PCSEL_OUT;
    wire [31:0] out;
    reg [31:0] PC;
    
    // branch 
    wire [31:0] PC4SXT;
    
    // sign extended literal
    wire [31:0] SXTC;
     
    // data memory
    wire [31:0] MRD;
    //encrypted data memory
    wire [127:0] e_MRD;
    wire [127:0] e_RD2;
    wire [127:0] temp_RD2;
   
	// instruction memory 
	wire [31:0] IA;
	wire [31:0] ID;
	
	//encrypted instruction memory
	wire [127:0] e_ID;
	
	// jump 
	wire [31:0] JT;
    
    
    assign RA1 = Ra;
    assign SXTC = {{16{ID[15]}}, ID[15:0]};
    assign Ra = ID[20:16];
    assign Rb = ID[15:11];
    assign Rc = ID[25:21];
    assign JT = RD1;
    assign IA = PC;
    assign PC4 = PC+1;
    assign PC4SXT = PC4 + (SXTC);
    
    always @(posedge clk) begin
        PC<=out;
    end
    
    // zero flag
    always@(RD1) begin
        if(RD1==0)
            Z=1;
        else
            Z=0;
    end
    
    
    // instantiations
   
    regfile regfile(.clk(clk),
                  .WERF(WERF),
                  .RA1(RA1),
                  .RA2(RA2),
                  .WA(WA),
                  .WD(WDSEL_OUT),
                  .RD1(RD1),
                  .RD2(RD2));
     
               
    ASELector asel_mux(.ASEL(ASEL),
                       .RD1(RD1),
                       .PC4SXT(PC4SXT),
                       .A(A));
                       

    BSELector bsel_mux(.BSEL(BSEL),
                       .RD2(RD2),
                       .SXTC(SXTC),
                       .B(B));
    
                      
    ALU alu(.ALUFN(ALUFN),
            .A(A),
            .B(B),
            .Y(Y));
           
    assign temp_RD2[31:0] = RD2;
    assign temp_RD2[127:32]= 96'd0; 
    encrypt e1(.message(temp_RD2),
            .encrypted_message(e_RD2));
    
    Data_Memory dm(.clk(clk),
                   .Adr(Y),
                   .MWD(e_RD2),
                   .MWR(MWR),
                   .MOE(MOE),
                   .MRD(e_MRD));
                   
   decrypt d1(.encrypted_message(e_MRD),
           .cut_decrypted_message(MRD));
     
                 
    WDSELector wdsel_mux(.WDSEL(WDSEL),
                         .PC4(PC4),
                         .Y(Y),
                         .MRD(MRD),
                         .WD(WDSEL_OUT));
                         
    InstructionMemory im(.IA(IA),
                         .ID(e_ID));
    
    decrypt d2(.encrypted_message(e_ID),
            .cut_decrypted_message(ID));     
                                        
    RA2SELector ra2sel_mux(.RA2SEL(RA2SEL),
                           .Rb(Rb),
                           .Rc(Rc),
                           .RA2(RA2));
                           
    
    WASELector wasel_mux(.WASEL(WASEL),
                         .Rc(Rc),
                         .WA(WA));                     
    
    
    PCSEL_Mux pcsel_mux(.PCSEL(PCSEL),
                        .JT(JT),
                        .PC4(PC4),
                        .PC4SXT(PC4SXT),
                        .PCSEL_OUT(PCSEL_OUT));
    
    
    RESET_Mux reset_mux(.RESET(RESET),
                        .PCSEL_OUT(PCSEL_OUT),
                        .out(out));
       
                     
    CU cu(.clk(clk),
          .RESET(RESET),
          .Z(Z),
          .instruction(ID),
          .ALUFN(ALUFN),
          .ASEL(ASEL),
          .BSEL(BSEL),
          .MOE(MOE),
          .MWR(MWR),
          .PCSEL(PCSEL),
          .RA2SEL(RA2SEL),
          .WASEL(WASEL),
          .WDSEL(WDSEL),
          .WERF(WERF));
endmodule