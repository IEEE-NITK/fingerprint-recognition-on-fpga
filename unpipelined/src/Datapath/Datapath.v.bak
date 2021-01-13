`timescale 1ns / 1ps

// Verilog code for RISC Processor 
// Verilog code for Data Path of the processor

//to add: Implementation of IRQ
module Datapath_Unit(
 input clk,
 input IRQ,
 input RESET,
 output[5:0] ALUFN
);

 wire MOE;
 wire MWR;
 wire RA2SEL;
 wire [1:0] WDSEl
 reg  [31:0] pc_current;
 wire [31:0] pc_next,PC4;
 wire [31:0] instruction;

 wire [4:0] RA2;
 wire [31:0] WD;
 
 wire [4:0] Ra;
 wire [31:0] RD1;
 
 wire [4:0] Rb;
 wire [31:0] RD2;
 wire [4:0] Rc;
 

 wire [31:0] A;
 wire [31:0] B;
 wire [31:0] Y;
 
 wire [31:0] MRD;

 wire [31:0] PCSEL_OUT;
 wire [31:0] SXTC;
 wire [31:0] PC4SXT;
 
 wire [4:0] WA;
 wire WERF;

 wire ASEL;
 wire BSEL;
 wire WASEL;
 wire [2:0] PCSEL;
 wire Z;
 
 // PC 
 initial begin
  pc_current <= 32'd0;
 end
 always @(posedge clk)
 begin 
   pc_current <= pc_next;
 end
 assign PC4 = pc_current + 32'd4;
 
 // instruction memory
 InstructionMemory im(
     .IA(pc_current),
     .ID(instruction),
     .mem(mem) //import mem from a file using readmemh
     );
 

//control unit
 CU controlunit(
    .RESET(RESET),
    .IRQ(IRQ),              //input from where??
    .Z(Z),          
    .ALUFN(ALUFN),
    .instruction(instruction),
    .ASEL(ASEL),
    .BSEL(BSEL),
    .MOE(MOE),
    .MWR(MWR),
    .PCSEL(PCSEL),
    .RA2SEL(RA2SEL),
    .WASEL(WASEL),
    .WDSEL(WDSEL),
    .WERF(WERF)
    );

 // mux RA2SEL

 assign Ra = instruction[20:16];
 assign Rb = instruction[15:11];
 assign Rc = instruction[25:21];

 RA2SELector ra2sel(
   .RA2SEL(RA2SEL),
   .Rc(Rc),
   .Rb(Rb),
   .RA2(RA2)
 );
 
 //mux WASEL

 WASELector wasel(
   .WASEL(WASEL),
   .Rc(Rc),
   .WA(WA)
 );

 // GENERAL PURPOSE REGISTERs
 reg32file reg_file
 (
  .clk(clk),
  .WERF(WERF),
  .WD(WD),
  .RA1(Ra),
  .RD1(RD1),
  .RA2(RA2),
  .RD2(RD2),
  .WA(WA)
 );

 // calculating Z
 //check if we need to assign value to Z bfr control unit
 genvar i;
 generate
  for(i=0;i<32;i=i+1)
	assign Z = (Z | RD1[i]);
 endgenerate
 assign Z = ~Z;

 // sign extension
 assign SXTC = {{16{instruction[15]}},instruction[15:0]};  
 assign PC4SXT =PC4+4*SXTC;

 // multiplexer ASELector and BSELector
 ASELector asel(
   .ASEL(ASEL),
   .RD1(RD1),
   .PC4SXT(PC4SXT),
   .A(A)
 );
 
BSELector bsel(
   .BSEL(BSEL),
   .RD2(RD2),
   .SXTC(SXTC),
   .B(B)
 );

 // ALU 
 ALU alu(
   .ALUFN(instruction[31:26]),
   .A(A),
   .B(B),
   .Y(Y)
 );
 
 //pcsel for next instruction
 PCSEL pcsel(
     .PCSEL(PCSEL),
     .PC4SXT(PC4SXT),
     .JT(RD1),
     .PC4(PC4),
     .PCSEL_OUT(PCSEL_OUT)
 );

 // reset_mux
 RESET_mux reset_mux(
     .RESET(RESET),
     .PCSEL_OUT(pc_next)
 );

 // Data memory
 Data_Memory dm(
    .clk(clk),
    .Adr(Y),
    .WD(RD2),
    .MWR(MWR),
    .MOE(MOE),
    .MRD(MRD)
   );
 
 // write back
  WDSELector wdsel(
    .WDSEL(WDSEL),
    .PC4(PC4),
    .Y(Y),
    .MRD(MRD),
    .WD(WD)    
  );

endmodule