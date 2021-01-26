# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new beta work:beta:NOFILE -nosplit
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_ROM9 work GEN pin O output.right pinBus A input.left [31:0] fillcolor 1
load symbol ALU work:ALU:NOFILE HIERBOX pinBus A input.left [31:0] pinBus ALUFN input.left [5:0] pinBus B input.left [31:0] pinBus Y output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ASELector work:ASELector:NOFILE HIERBOX pin ASEL input.left pinBus A output.right [31:0] pinBus PC4SXT input.left [31:0] pinBus RD1 input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol BSELector work:BSELector:NOFILE HIERBOX pin BSEL input.left pinBus B output.right [31:0] pinBus RD2 input.left [31:0] pinBus SXTC input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol CU work:CU:NOFILE HIERBOX pin ASEL output.right pin BSEL output.right pin MOE output.right pin MWR output.right pin RA2SEL output.right pin RESET input.left pin WASEL output.right pin WERF output.right pin Z input.left pin clk input.left pinBus ALUFN output.right [5:0] pinBus PCSEL output.right [2:0] pinBus WDSEL output.right [1:0] pinBus instruction input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Data_Memory work:Data_Memory:NOFILE HIERBOX pin MOE input.left pin MWR input.left pin clk input.left pinBus Adr input.left [31:0] pinBus MRD output.right [31:0] pinBus MWD input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol InstructionMemory work:InstructionMemory:NOFILE HIERBOX pinBus IA input.left [31:0] pinBus ID output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol PCSEL_Mux work:PCSEL_Mux:NOFILE HIERBOX pinBus JT input.left [31:0] pinBus PC4 input.left [31:0] pinBus PC4SXT input.left [31:0] pinBus PCSEL input.left [2:0] pinBus PCSEL_OUT output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RA2SELector work:RA2SELector:NOFILE HIERBOX pin RA2SEL input.left pinBus RA2 output.right [4:0] pinBus Rb input.left [4:0] pinBus Rc input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol reg32file work:reg32file:NOFILE HIERBOX pin WERF input.left pin clk input.left pinBus RA1 input.left [4:0] pinBus RA2 input.left [4:0] pinBus RD1 output.right [31:0] pinBus RD2 output.right [31:0] pinBus WA input.left [4:0] pinBus WD input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RESET_Mux work:RESET_Mux:NOFILE HIERBOX pin RESET input.left pinBus PCSEL_OUT input.left [31:0] pinBus out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol WASELector work:WASELector:NOFILE HIERBOX pin WASEL input.left pinBus Rc input.left [4:0] pinBus WA output.right [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol WDSELector work:WDSELector:NOFILE HIERBOX pinBus MRD input.left [31:0] pinBus PC4 input.left [31:0] pinBus WD output.right [31:0] pinBus WDSEL input.left [1:0] pinBus Y input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG__BREG_1 work[31:0]sww GEN pin C input.clk.left pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load port RESET input -pg 1 -lvl 0 -x 0 -y 190
load port clk input -pg 1 -lvl 0 -x 0 -y 290
load inst PC4SXT_i RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 520 -y 530
load inst PC4_i RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr V=X\"00000001\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 1 -x 200 -y 520
load inst Z_i RTL_ROM9 work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[31:0] -pg 1 -lvl 1 -x 200 -y 240
load inst alu ALU work:ALU:NOFILE -autohide -attr @cell(#000000) ALU -pinBusAttr A @name A[31:0] -pinBusAttr ALUFN @name ALUFN[5:0] -pinBusAttr B @name B[31:0] -pinBusAttr Y @name Y[31:0] -pg 1 -lvl 4 -x 1160 -y 170
load inst asel_mux ASELector work:ASELector:NOFILE -autohide -attr @cell(#000000) ASELector -pinBusAttr A @name A[31:0] -pinBusAttr PC4SXT @name PC4SXT[31:0] -pinBusAttr RD1 @name RD1[31:0] -pg 1 -lvl 3 -x 910 -y 450
load inst bsel_mux BSELector work:BSELector:NOFILE -autohide -attr @cell(#000000) BSELector -pinBusAttr B @name B[31:0] -pinBusAttr RD2 @name RD2[31:0] -pinBusAttr SXTC @name SXTC[31:0] -pg 1 -lvl 3 -x 910 -y 190
load inst cu CU work:CU:NOFILE -autohide -attr @cell(#000000) CU -pinBusAttr ALUFN @name ALUFN[5:0] -pinBusAttr PCSEL @name PCSEL[2:0] -pinBusAttr WDSEL @name WDSEL[1:0] -pinBusAttr instruction @name instruction[31:0] -pg 1 -lvl 2 -x 520 -y 150
load inst dm Data_Memory work:Data_Memory:NOFILE -autohide -attr @cell(#000000) Data_Memory -pinBusAttr Adr @name Adr[31:0] -pinBusAttr MRD @name MRD[31:0] -pinBusAttr MWD @name MWD[31:0] -pg 1 -lvl 5 -x 1430 -y 50
load inst im InstructionMemory work:InstructionMemory:NOFILE -autohide -attr @cell(#000000) InstructionMemory -pinBusAttr IA @name IA[31:0] -pinBusAttr ID @name ID[31:0] -pg 1 -lvl 1 -x 200 -y 630
load inst pcsel_mux PCSEL_Mux work:PCSEL_Mux:NOFILE -autohide -attr @cell(#000000) PCSEL_Mux -pinBusAttr JT @name JT[31:0] -pinBusAttr PC4 @name PC4[31:0] -pinBusAttr PC4SXT @name PC4SXT[31:0] -pinBusAttr PCSEL @name PCSEL[2:0] -pinBusAttr PCSEL_OUT @name PCSEL_OUT[31:0] -pg 1 -lvl 8 -x 2340 -y 490
load inst ra2sel_mux RA2SELector work:RA2SELector:NOFILE -autohide -attr @cell(#000000) RA2SELector -pinBusAttr RA2 @name RA2[4:0] -pinBusAttr Rb @name Rb[4:0] -pinBusAttr Rc @name Rc[4:0] -pg 1 -lvl 6 -x 1740 -y 450
load inst regfile reg32file work:reg32file:NOFILE -autohide -attr @cell(#000000) reg32file -pinBusAttr RA1 @name RA1[4:0] -pinBusAttr RA2 @name RA2[4:0] -pinBusAttr RD1 @name RD1[31:0] -pinBusAttr RD2 @name RD2[31:0] -pinBusAttr WA @name WA[4:0] -pinBusAttr WD @name WD[31:0] -pg 1 -lvl 7 -x 2060 -y 250
load inst reset_mux RESET_Mux work:RESET_Mux:NOFILE -autohide -attr @cell(#000000) RESET_Mux -pinBusAttr PCSEL_OUT @name PCSEL_OUT[31:0] -pinBusAttr out @name out[31:0] -pg 1 -lvl 9 -x 2680 -y 610
load inst wasel_mux WASELector work:WASELector:NOFILE -autohide -attr @cell(#000000) WASELector -pinBusAttr Rc @name Rc[4:0] -pinBusAttr WA @name WA[4:0] -pg 1 -lvl 6 -x 1740 -y 290
load inst wdsel_mux WDSELector work:WDSELector:NOFILE -autohide -attr @cell(#000000) WDSELector -pinBusAttr MRD @name MRD[31:0] -pinBusAttr PC4 @name PC4[31:0] -pinBusAttr WD @name WD[31:0] -pinBusAttr WDSEL @name WDSEL[1:0] -pinBusAttr Y @name Y[31:0] -pg 1 -lvl 6 -x 1740 -y 110
load inst PC_reg[31:0] RTL_REG__BREG_1 work[31:0]sww -attr @cell(#000000) RTL_REG -pg 1 -lvl 10 -x 2860 -y 570
load net <const0> -ground -pin PC4_i I1[31] -pin PC4_i I1[30] -pin PC4_i I1[29] -pin PC4_i I1[28] -pin PC4_i I1[27] -pin PC4_i I1[26] -pin PC4_i I1[25] -pin PC4_i I1[24] -pin PC4_i I1[23] -pin PC4_i I1[22] -pin PC4_i I1[21] -pin PC4_i I1[20] -pin PC4_i I1[19] -pin PC4_i I1[18] -pin PC4_i I1[17] -pin PC4_i I1[16] -pin PC4_i I1[15] -pin PC4_i I1[14] -pin PC4_i I1[13] -pin PC4_i I1[12] -pin PC4_i I1[11] -pin PC4_i I1[10] -pin PC4_i I1[9] -pin PC4_i I1[8] -pin PC4_i I1[7] -pin PC4_i I1[6] -pin PC4_i I1[5] -pin PC4_i I1[4] -pin PC4_i I1[3] -pin PC4_i I1[2] -pin PC4_i I1[1]
load net <const1> -power -attr @rip(#000000) 0 -pin PC4_i I1[0]
load net ALUFN[0] -attr @rip(#000000) ALUFN[0] -pin alu ALUFN[0] -pin cu ALUFN[0]
load net ALUFN[1] -attr @rip(#000000) ALUFN[1] -pin alu ALUFN[1] -pin cu ALUFN[1]
load net ALUFN[2] -attr @rip(#000000) ALUFN[2] -pin alu ALUFN[2] -pin cu ALUFN[2]
load net ALUFN[3] -attr @rip(#000000) ALUFN[3] -pin alu ALUFN[3] -pin cu ALUFN[3]
load net ALUFN[4] -attr @rip(#000000) ALUFN[4] -pin alu ALUFN[4] -pin cu ALUFN[4]
load net ALUFN[5] -attr @rip(#000000) ALUFN[5] -pin alu ALUFN[5] -pin cu ALUFN[5]
load net ASEL -pin asel_mux ASEL -pin cu ASEL
netloc ASEL 1 2 1 780 180n
load net A[0] -attr @rip(#000000) A[0] -pin alu A[0] -pin asel_mux A[0]
load net A[10] -attr @rip(#000000) A[10] -pin alu A[10] -pin asel_mux A[10]
load net A[11] -attr @rip(#000000) A[11] -pin alu A[11] -pin asel_mux A[11]
load net A[12] -attr @rip(#000000) A[12] -pin alu A[12] -pin asel_mux A[12]
load net A[13] -attr @rip(#000000) A[13] -pin alu A[13] -pin asel_mux A[13]
load net A[14] -attr @rip(#000000) A[14] -pin alu A[14] -pin asel_mux A[14]
load net A[15] -attr @rip(#000000) A[15] -pin alu A[15] -pin asel_mux A[15]
load net A[16] -attr @rip(#000000) A[16] -pin alu A[16] -pin asel_mux A[16]
load net A[17] -attr @rip(#000000) A[17] -pin alu A[17] -pin asel_mux A[17]
load net A[18] -attr @rip(#000000) A[18] -pin alu A[18] -pin asel_mux A[18]
load net A[19] -attr @rip(#000000) A[19] -pin alu A[19] -pin asel_mux A[19]
load net A[1] -attr @rip(#000000) A[1] -pin alu A[1] -pin asel_mux A[1]
load net A[20] -attr @rip(#000000) A[20] -pin alu A[20] -pin asel_mux A[20]
load net A[21] -attr @rip(#000000) A[21] -pin alu A[21] -pin asel_mux A[21]
load net A[22] -attr @rip(#000000) A[22] -pin alu A[22] -pin asel_mux A[22]
load net A[23] -attr @rip(#000000) A[23] -pin alu A[23] -pin asel_mux A[23]
load net A[24] -attr @rip(#000000) A[24] -pin alu A[24] -pin asel_mux A[24]
load net A[25] -attr @rip(#000000) A[25] -pin alu A[25] -pin asel_mux A[25]
load net A[26] -attr @rip(#000000) A[26] -pin alu A[26] -pin asel_mux A[26]
load net A[27] -attr @rip(#000000) A[27] -pin alu A[27] -pin asel_mux A[27]
load net A[28] -attr @rip(#000000) A[28] -pin alu A[28] -pin asel_mux A[28]
load net A[29] -attr @rip(#000000) A[29] -pin alu A[29] -pin asel_mux A[29]
load net A[2] -attr @rip(#000000) A[2] -pin alu A[2] -pin asel_mux A[2]
load net A[30] -attr @rip(#000000) A[30] -pin alu A[30] -pin asel_mux A[30]
load net A[31] -attr @rip(#000000) A[31] -pin alu A[31] -pin asel_mux A[31]
load net A[3] -attr @rip(#000000) A[3] -pin alu A[3] -pin asel_mux A[3]
load net A[4] -attr @rip(#000000) A[4] -pin alu A[4] -pin asel_mux A[4]
load net A[5] -attr @rip(#000000) A[5] -pin alu A[5] -pin asel_mux A[5]
load net A[6] -attr @rip(#000000) A[6] -pin alu A[6] -pin asel_mux A[6]
load net A[7] -attr @rip(#000000) A[7] -pin alu A[7] -pin asel_mux A[7]
load net A[8] -attr @rip(#000000) A[8] -pin alu A[8] -pin asel_mux A[8]
load net A[9] -attr @rip(#000000) A[9] -pin alu A[9] -pin asel_mux A[9]
load net BSEL -pin bsel_mux BSEL -pin cu BSEL
netloc BSEL 1 2 1 N 200
load net B[0] -attr @rip(#000000) B[0] -pin alu B[0] -pin bsel_mux B[0]
load net B[10] -attr @rip(#000000) B[10] -pin alu B[10] -pin bsel_mux B[10]
load net B[11] -attr @rip(#000000) B[11] -pin alu B[11] -pin bsel_mux B[11]
load net B[12] -attr @rip(#000000) B[12] -pin alu B[12] -pin bsel_mux B[12]
load net B[13] -attr @rip(#000000) B[13] -pin alu B[13] -pin bsel_mux B[13]
load net B[14] -attr @rip(#000000) B[14] -pin alu B[14] -pin bsel_mux B[14]
load net B[15] -attr @rip(#000000) B[15] -pin alu B[15] -pin bsel_mux B[15]
load net B[16] -attr @rip(#000000) B[16] -pin alu B[16] -pin bsel_mux B[16]
load net B[17] -attr @rip(#000000) B[17] -pin alu B[17] -pin bsel_mux B[17]
load net B[18] -attr @rip(#000000) B[18] -pin alu B[18] -pin bsel_mux B[18]
load net B[19] -attr @rip(#000000) B[19] -pin alu B[19] -pin bsel_mux B[19]
load net B[1] -attr @rip(#000000) B[1] -pin alu B[1] -pin bsel_mux B[1]
load net B[20] -attr @rip(#000000) B[20] -pin alu B[20] -pin bsel_mux B[20]
load net B[21] -attr @rip(#000000) B[21] -pin alu B[21] -pin bsel_mux B[21]
load net B[22] -attr @rip(#000000) B[22] -pin alu B[22] -pin bsel_mux B[22]
load net B[23] -attr @rip(#000000) B[23] -pin alu B[23] -pin bsel_mux B[23]
load net B[24] -attr @rip(#000000) B[24] -pin alu B[24] -pin bsel_mux B[24]
load net B[25] -attr @rip(#000000) B[25] -pin alu B[25] -pin bsel_mux B[25]
load net B[26] -attr @rip(#000000) B[26] -pin alu B[26] -pin bsel_mux B[26]
load net B[27] -attr @rip(#000000) B[27] -pin alu B[27] -pin bsel_mux B[27]
load net B[28] -attr @rip(#000000) B[28] -pin alu B[28] -pin bsel_mux B[28]
load net B[29] -attr @rip(#000000) B[29] -pin alu B[29] -pin bsel_mux B[29]
load net B[2] -attr @rip(#000000) B[2] -pin alu B[2] -pin bsel_mux B[2]
load net B[30] -attr @rip(#000000) B[30] -pin alu B[30] -pin bsel_mux B[30]
load net B[31] -attr @rip(#000000) B[31] -pin alu B[31] -pin bsel_mux B[31]
load net B[3] -attr @rip(#000000) B[3] -pin alu B[3] -pin bsel_mux B[3]
load net B[4] -attr @rip(#000000) B[4] -pin alu B[4] -pin bsel_mux B[4]
load net B[5] -attr @rip(#000000) B[5] -pin alu B[5] -pin bsel_mux B[5]
load net B[6] -attr @rip(#000000) B[6] -pin alu B[6] -pin bsel_mux B[6]
load net B[7] -attr @rip(#000000) B[7] -pin alu B[7] -pin bsel_mux B[7]
load net B[8] -attr @rip(#000000) B[8] -pin alu B[8] -pin bsel_mux B[8]
load net B[9] -attr @rip(#000000) B[9] -pin alu B[9] -pin bsel_mux B[9]
load net JT[0] -attr @rip(#000000) RD1[0] -pin Z_i A[0] -pin asel_mux RD1[0] -pin pcsel_mux JT[0] -pin regfile RD1[0]
load net JT[10] -attr @rip(#000000) RD1[10] -pin Z_i A[10] -pin asel_mux RD1[10] -pin pcsel_mux JT[10] -pin regfile RD1[10]
load net JT[11] -attr @rip(#000000) RD1[11] -pin Z_i A[11] -pin asel_mux RD1[11] -pin pcsel_mux JT[11] -pin regfile RD1[11]
load net JT[12] -attr @rip(#000000) RD1[12] -pin Z_i A[12] -pin asel_mux RD1[12] -pin pcsel_mux JT[12] -pin regfile RD1[12]
load net JT[13] -attr @rip(#000000) RD1[13] -pin Z_i A[13] -pin asel_mux RD1[13] -pin pcsel_mux JT[13] -pin regfile RD1[13]
load net JT[14] -attr @rip(#000000) RD1[14] -pin Z_i A[14] -pin asel_mux RD1[14] -pin pcsel_mux JT[14] -pin regfile RD1[14]
load net JT[15] -attr @rip(#000000) RD1[15] -pin Z_i A[15] -pin asel_mux RD1[15] -pin pcsel_mux JT[15] -pin regfile RD1[15]
load net JT[16] -attr @rip(#000000) RD1[16] -pin Z_i A[16] -pin asel_mux RD1[16] -pin pcsel_mux JT[16] -pin regfile RD1[16]
load net JT[17] -attr @rip(#000000) RD1[17] -pin Z_i A[17] -pin asel_mux RD1[17] -pin pcsel_mux JT[17] -pin regfile RD1[17]
load net JT[18] -attr @rip(#000000) RD1[18] -pin Z_i A[18] -pin asel_mux RD1[18] -pin pcsel_mux JT[18] -pin regfile RD1[18]
load net JT[19] -attr @rip(#000000) RD1[19] -pin Z_i A[19] -pin asel_mux RD1[19] -pin pcsel_mux JT[19] -pin regfile RD1[19]
load net JT[1] -attr @rip(#000000) RD1[1] -pin Z_i A[1] -pin asel_mux RD1[1] -pin pcsel_mux JT[1] -pin regfile RD1[1]
load net JT[20] -attr @rip(#000000) RD1[20] -pin Z_i A[20] -pin asel_mux RD1[20] -pin pcsel_mux JT[20] -pin regfile RD1[20]
load net JT[21] -attr @rip(#000000) RD1[21] -pin Z_i A[21] -pin asel_mux RD1[21] -pin pcsel_mux JT[21] -pin regfile RD1[21]
load net JT[22] -attr @rip(#000000) RD1[22] -pin Z_i A[22] -pin asel_mux RD1[22] -pin pcsel_mux JT[22] -pin regfile RD1[22]
load net JT[23] -attr @rip(#000000) RD1[23] -pin Z_i A[23] -pin asel_mux RD1[23] -pin pcsel_mux JT[23] -pin regfile RD1[23]
load net JT[24] -attr @rip(#000000) RD1[24] -pin Z_i A[24] -pin asel_mux RD1[24] -pin pcsel_mux JT[24] -pin regfile RD1[24]
load net JT[25] -attr @rip(#000000) RD1[25] -pin Z_i A[25] -pin asel_mux RD1[25] -pin pcsel_mux JT[25] -pin regfile RD1[25]
load net JT[26] -attr @rip(#000000) RD1[26] -pin Z_i A[26] -pin asel_mux RD1[26] -pin pcsel_mux JT[26] -pin regfile RD1[26]
load net JT[27] -attr @rip(#000000) RD1[27] -pin Z_i A[27] -pin asel_mux RD1[27] -pin pcsel_mux JT[27] -pin regfile RD1[27]
load net JT[28] -attr @rip(#000000) RD1[28] -pin Z_i A[28] -pin asel_mux RD1[28] -pin pcsel_mux JT[28] -pin regfile RD1[28]
load net JT[29] -attr @rip(#000000) RD1[29] -pin Z_i A[29] -pin asel_mux RD1[29] -pin pcsel_mux JT[29] -pin regfile RD1[29]
load net JT[2] -attr @rip(#000000) RD1[2] -pin Z_i A[2] -pin asel_mux RD1[2] -pin pcsel_mux JT[2] -pin regfile RD1[2]
load net JT[30] -attr @rip(#000000) RD1[30] -pin Z_i A[30] -pin asel_mux RD1[30] -pin pcsel_mux JT[30] -pin regfile RD1[30]
load net JT[31] -attr @rip(#000000) RD1[31] -pin Z_i A[31] -pin asel_mux RD1[31] -pin pcsel_mux JT[31] -pin regfile RD1[31]
load net JT[3] -attr @rip(#000000) RD1[3] -pin Z_i A[3] -pin asel_mux RD1[3] -pin pcsel_mux JT[3] -pin regfile RD1[3]
load net JT[4] -attr @rip(#000000) RD1[4] -pin Z_i A[4] -pin asel_mux RD1[4] -pin pcsel_mux JT[4] -pin regfile RD1[4]
load net JT[5] -attr @rip(#000000) RD1[5] -pin Z_i A[5] -pin asel_mux RD1[5] -pin pcsel_mux JT[5] -pin regfile RD1[5]
load net JT[6] -attr @rip(#000000) RD1[6] -pin Z_i A[6] -pin asel_mux RD1[6] -pin pcsel_mux JT[6] -pin regfile RD1[6]
load net JT[7] -attr @rip(#000000) RD1[7] -pin Z_i A[7] -pin asel_mux RD1[7] -pin pcsel_mux JT[7] -pin regfile RD1[7]
load net JT[8] -attr @rip(#000000) RD1[8] -pin Z_i A[8] -pin asel_mux RD1[8] -pin pcsel_mux JT[8] -pin regfile RD1[8]
load net JT[9] -attr @rip(#000000) RD1[9] -pin Z_i A[9] -pin asel_mux RD1[9] -pin pcsel_mux JT[9] -pin regfile RD1[9]
load net MOE -pin cu MOE -pin dm MOE
netloc MOE 1 2 3 680 80 NJ 80 NJ
load net MRD[0] -attr @rip(#000000) MRD[0] -pin dm MRD[0] -pin wdsel_mux MRD[0]
load net MRD[10] -attr @rip(#000000) MRD[10] -pin dm MRD[10] -pin wdsel_mux MRD[10]
load net MRD[11] -attr @rip(#000000) MRD[11] -pin dm MRD[11] -pin wdsel_mux MRD[11]
load net MRD[12] -attr @rip(#000000) MRD[12] -pin dm MRD[12] -pin wdsel_mux MRD[12]
load net MRD[13] -attr @rip(#000000) MRD[13] -pin dm MRD[13] -pin wdsel_mux MRD[13]
load net MRD[14] -attr @rip(#000000) MRD[14] -pin dm MRD[14] -pin wdsel_mux MRD[14]
load net MRD[15] -attr @rip(#000000) MRD[15] -pin dm MRD[15] -pin wdsel_mux MRD[15]
load net MRD[16] -attr @rip(#000000) MRD[16] -pin dm MRD[16] -pin wdsel_mux MRD[16]
load net MRD[17] -attr @rip(#000000) MRD[17] -pin dm MRD[17] -pin wdsel_mux MRD[17]
load net MRD[18] -attr @rip(#000000) MRD[18] -pin dm MRD[18] -pin wdsel_mux MRD[18]
load net MRD[19] -attr @rip(#000000) MRD[19] -pin dm MRD[19] -pin wdsel_mux MRD[19]
load net MRD[1] -attr @rip(#000000) MRD[1] -pin dm MRD[1] -pin wdsel_mux MRD[1]
load net MRD[20] -attr @rip(#000000) MRD[20] -pin dm MRD[20] -pin wdsel_mux MRD[20]
load net MRD[21] -attr @rip(#000000) MRD[21] -pin dm MRD[21] -pin wdsel_mux MRD[21]
load net MRD[22] -attr @rip(#000000) MRD[22] -pin dm MRD[22] -pin wdsel_mux MRD[22]
load net MRD[23] -attr @rip(#000000) MRD[23] -pin dm MRD[23] -pin wdsel_mux MRD[23]
load net MRD[24] -attr @rip(#000000) MRD[24] -pin dm MRD[24] -pin wdsel_mux MRD[24]
load net MRD[25] -attr @rip(#000000) MRD[25] -pin dm MRD[25] -pin wdsel_mux MRD[25]
load net MRD[26] -attr @rip(#000000) MRD[26] -pin dm MRD[26] -pin wdsel_mux MRD[26]
load net MRD[27] -attr @rip(#000000) MRD[27] -pin dm MRD[27] -pin wdsel_mux MRD[27]
load net MRD[28] -attr @rip(#000000) MRD[28] -pin dm MRD[28] -pin wdsel_mux MRD[28]
load net MRD[29] -attr @rip(#000000) MRD[29] -pin dm MRD[29] -pin wdsel_mux MRD[29]
load net MRD[2] -attr @rip(#000000) MRD[2] -pin dm MRD[2] -pin wdsel_mux MRD[2]
load net MRD[30] -attr @rip(#000000) MRD[30] -pin dm MRD[30] -pin wdsel_mux MRD[30]
load net MRD[31] -attr @rip(#000000) MRD[31] -pin dm MRD[31] -pin wdsel_mux MRD[31]
load net MRD[3] -attr @rip(#000000) MRD[3] -pin dm MRD[3] -pin wdsel_mux MRD[3]
load net MRD[4] -attr @rip(#000000) MRD[4] -pin dm MRD[4] -pin wdsel_mux MRD[4]
load net MRD[5] -attr @rip(#000000) MRD[5] -pin dm MRD[5] -pin wdsel_mux MRD[5]
load net MRD[6] -attr @rip(#000000) MRD[6] -pin dm MRD[6] -pin wdsel_mux MRD[6]
load net MRD[7] -attr @rip(#000000) MRD[7] -pin dm MRD[7] -pin wdsel_mux MRD[7]
load net MRD[8] -attr @rip(#000000) MRD[8] -pin dm MRD[8] -pin wdsel_mux MRD[8]
load net MRD[9] -attr @rip(#000000) MRD[9] -pin dm MRD[9] -pin wdsel_mux MRD[9]
load net MWR -pin cu MWR -pin dm MWR
netloc MWR 1 2 3 720 120 NJ 120 NJ
load net PC4SXT[0] -attr @rip(#000000) O[0] -pin PC4SXT_i O[0] -pin asel_mux PC4SXT[0] -pin pcsel_mux PC4SXT[0]
load net PC4SXT[10] -attr @rip(#000000) O[10] -pin PC4SXT_i O[10] -pin asel_mux PC4SXT[10] -pin pcsel_mux PC4SXT[10]
load net PC4SXT[11] -attr @rip(#000000) O[11] -pin PC4SXT_i O[11] -pin asel_mux PC4SXT[11] -pin pcsel_mux PC4SXT[11]
load net PC4SXT[12] -attr @rip(#000000) O[12] -pin PC4SXT_i O[12] -pin asel_mux PC4SXT[12] -pin pcsel_mux PC4SXT[12]
load net PC4SXT[13] -attr @rip(#000000) O[13] -pin PC4SXT_i O[13] -pin asel_mux PC4SXT[13] -pin pcsel_mux PC4SXT[13]
load net PC4SXT[14] -attr @rip(#000000) O[14] -pin PC4SXT_i O[14] -pin asel_mux PC4SXT[14] -pin pcsel_mux PC4SXT[14]
load net PC4SXT[15] -attr @rip(#000000) O[15] -pin PC4SXT_i O[15] -pin asel_mux PC4SXT[15] -pin pcsel_mux PC4SXT[15]
load net PC4SXT[16] -attr @rip(#000000) O[16] -pin PC4SXT_i O[16] -pin asel_mux PC4SXT[16] -pin pcsel_mux PC4SXT[16]
load net PC4SXT[17] -attr @rip(#000000) O[17] -pin PC4SXT_i O[17] -pin asel_mux PC4SXT[17] -pin pcsel_mux PC4SXT[17]
load net PC4SXT[18] -attr @rip(#000000) O[18] -pin PC4SXT_i O[18] -pin asel_mux PC4SXT[18] -pin pcsel_mux PC4SXT[18]
load net PC4SXT[19] -attr @rip(#000000) O[19] -pin PC4SXT_i O[19] -pin asel_mux PC4SXT[19] -pin pcsel_mux PC4SXT[19]
load net PC4SXT[1] -attr @rip(#000000) O[1] -pin PC4SXT_i O[1] -pin asel_mux PC4SXT[1] -pin pcsel_mux PC4SXT[1]
load net PC4SXT[20] -attr @rip(#000000) O[20] -pin PC4SXT_i O[20] -pin asel_mux PC4SXT[20] -pin pcsel_mux PC4SXT[20]
load net PC4SXT[21] -attr @rip(#000000) O[21] -pin PC4SXT_i O[21] -pin asel_mux PC4SXT[21] -pin pcsel_mux PC4SXT[21]
load net PC4SXT[22] -attr @rip(#000000) O[22] -pin PC4SXT_i O[22] -pin asel_mux PC4SXT[22] -pin pcsel_mux PC4SXT[22]
load net PC4SXT[23] -attr @rip(#000000) O[23] -pin PC4SXT_i O[23] -pin asel_mux PC4SXT[23] -pin pcsel_mux PC4SXT[23]
load net PC4SXT[24] -attr @rip(#000000) O[24] -pin PC4SXT_i O[24] -pin asel_mux PC4SXT[24] -pin pcsel_mux PC4SXT[24]
load net PC4SXT[25] -attr @rip(#000000) O[25] -pin PC4SXT_i O[25] -pin asel_mux PC4SXT[25] -pin pcsel_mux PC4SXT[25]
load net PC4SXT[26] -attr @rip(#000000) O[26] -pin PC4SXT_i O[26] -pin asel_mux PC4SXT[26] -pin pcsel_mux PC4SXT[26]
load net PC4SXT[27] -attr @rip(#000000) O[27] -pin PC4SXT_i O[27] -pin asel_mux PC4SXT[27] -pin pcsel_mux PC4SXT[27]
load net PC4SXT[28] -attr @rip(#000000) O[28] -pin PC4SXT_i O[28] -pin asel_mux PC4SXT[28] -pin pcsel_mux PC4SXT[28]
load net PC4SXT[29] -attr @rip(#000000) O[29] -pin PC4SXT_i O[29] -pin asel_mux PC4SXT[29] -pin pcsel_mux PC4SXT[29]
load net PC4SXT[2] -attr @rip(#000000) O[2] -pin PC4SXT_i O[2] -pin asel_mux PC4SXT[2] -pin pcsel_mux PC4SXT[2]
load net PC4SXT[30] -attr @rip(#000000) O[30] -pin PC4SXT_i O[30] -pin asel_mux PC4SXT[30] -pin pcsel_mux PC4SXT[30]
load net PC4SXT[31] -attr @rip(#000000) O[31] -pin PC4SXT_i O[31] -pin asel_mux PC4SXT[31] -pin pcsel_mux PC4SXT[31]
load net PC4SXT[3] -attr @rip(#000000) O[3] -pin PC4SXT_i O[3] -pin asel_mux PC4SXT[3] -pin pcsel_mux PC4SXT[3]
load net PC4SXT[4] -attr @rip(#000000) O[4] -pin PC4SXT_i O[4] -pin asel_mux PC4SXT[4] -pin pcsel_mux PC4SXT[4]
load net PC4SXT[5] -attr @rip(#000000) O[5] -pin PC4SXT_i O[5] -pin asel_mux PC4SXT[5] -pin pcsel_mux PC4SXT[5]
load net PC4SXT[6] -attr @rip(#000000) O[6] -pin PC4SXT_i O[6] -pin asel_mux PC4SXT[6] -pin pcsel_mux PC4SXT[6]
load net PC4SXT[7] -attr @rip(#000000) O[7] -pin PC4SXT_i O[7] -pin asel_mux PC4SXT[7] -pin pcsel_mux PC4SXT[7]
load net PC4SXT[8] -attr @rip(#000000) O[8] -pin PC4SXT_i O[8] -pin asel_mux PC4SXT[8] -pin pcsel_mux PC4SXT[8]
load net PC4SXT[9] -attr @rip(#000000) O[9] -pin PC4SXT_i O[9] -pin asel_mux PC4SXT[9] -pin pcsel_mux PC4SXT[9]
load net PC4[0] -attr @rip(#000000) O[0] -pin PC4SXT_i I0[0] -pin PC4_i O[0] -pin pcsel_mux PC4[0] -pin wdsel_mux PC4[0]
load net PC4[10] -attr @rip(#000000) O[10] -pin PC4SXT_i I0[10] -pin PC4_i O[10] -pin pcsel_mux PC4[10] -pin wdsel_mux PC4[10]
load net PC4[11] -attr @rip(#000000) O[11] -pin PC4SXT_i I0[11] -pin PC4_i O[11] -pin pcsel_mux PC4[11] -pin wdsel_mux PC4[11]
load net PC4[12] -attr @rip(#000000) O[12] -pin PC4SXT_i I0[12] -pin PC4_i O[12] -pin pcsel_mux PC4[12] -pin wdsel_mux PC4[12]
load net PC4[13] -attr @rip(#000000) O[13] -pin PC4SXT_i I0[13] -pin PC4_i O[13] -pin pcsel_mux PC4[13] -pin wdsel_mux PC4[13]
load net PC4[14] -attr @rip(#000000) O[14] -pin PC4SXT_i I0[14] -pin PC4_i O[14] -pin pcsel_mux PC4[14] -pin wdsel_mux PC4[14]
load net PC4[15] -attr @rip(#000000) O[15] -pin PC4SXT_i I0[15] -pin PC4_i O[15] -pin pcsel_mux PC4[15] -pin wdsel_mux PC4[15]
load net PC4[16] -attr @rip(#000000) O[16] -pin PC4SXT_i I0[16] -pin PC4_i O[16] -pin pcsel_mux PC4[16] -pin wdsel_mux PC4[16]
load net PC4[17] -attr @rip(#000000) O[17] -pin PC4SXT_i I0[17] -pin PC4_i O[17] -pin pcsel_mux PC4[17] -pin wdsel_mux PC4[17]
load net PC4[18] -attr @rip(#000000) O[18] -pin PC4SXT_i I0[18] -pin PC4_i O[18] -pin pcsel_mux PC4[18] -pin wdsel_mux PC4[18]
load net PC4[19] -attr @rip(#000000) O[19] -pin PC4SXT_i I0[19] -pin PC4_i O[19] -pin pcsel_mux PC4[19] -pin wdsel_mux PC4[19]
load net PC4[1] -attr @rip(#000000) O[1] -pin PC4SXT_i I0[1] -pin PC4_i O[1] -pin pcsel_mux PC4[1] -pin wdsel_mux PC4[1]
load net PC4[20] -attr @rip(#000000) O[20] -pin PC4SXT_i I0[20] -pin PC4_i O[20] -pin pcsel_mux PC4[20] -pin wdsel_mux PC4[20]
load net PC4[21] -attr @rip(#000000) O[21] -pin PC4SXT_i I0[21] -pin PC4_i O[21] -pin pcsel_mux PC4[21] -pin wdsel_mux PC4[21]
load net PC4[22] -attr @rip(#000000) O[22] -pin PC4SXT_i I0[22] -pin PC4_i O[22] -pin pcsel_mux PC4[22] -pin wdsel_mux PC4[22]
load net PC4[23] -attr @rip(#000000) O[23] -pin PC4SXT_i I0[23] -pin PC4_i O[23] -pin pcsel_mux PC4[23] -pin wdsel_mux PC4[23]
load net PC4[24] -attr @rip(#000000) O[24] -pin PC4SXT_i I0[24] -pin PC4_i O[24] -pin pcsel_mux PC4[24] -pin wdsel_mux PC4[24]
load net PC4[25] -attr @rip(#000000) O[25] -pin PC4SXT_i I0[25] -pin PC4_i O[25] -pin pcsel_mux PC4[25] -pin wdsel_mux PC4[25]
load net PC4[26] -attr @rip(#000000) O[26] -pin PC4SXT_i I0[26] -pin PC4_i O[26] -pin pcsel_mux PC4[26] -pin wdsel_mux PC4[26]
load net PC4[27] -attr @rip(#000000) O[27] -pin PC4SXT_i I0[27] -pin PC4_i O[27] -pin pcsel_mux PC4[27] -pin wdsel_mux PC4[27]
load net PC4[28] -attr @rip(#000000) O[28] -pin PC4SXT_i I0[28] -pin PC4_i O[28] -pin pcsel_mux PC4[28] -pin wdsel_mux PC4[28]
load net PC4[29] -attr @rip(#000000) O[29] -pin PC4SXT_i I0[29] -pin PC4_i O[29] -pin pcsel_mux PC4[29] -pin wdsel_mux PC4[29]
load net PC4[2] -attr @rip(#000000) O[2] -pin PC4SXT_i I0[2] -pin PC4_i O[2] -pin pcsel_mux PC4[2] -pin wdsel_mux PC4[2]
load net PC4[30] -attr @rip(#000000) O[30] -pin PC4SXT_i I0[30] -pin PC4_i O[30] -pin pcsel_mux PC4[30] -pin wdsel_mux PC4[30]
load net PC4[31] -attr @rip(#000000) O[31] -pin PC4SXT_i I0[31] -pin PC4_i O[31] -pin pcsel_mux PC4[31] -pin wdsel_mux PC4[31]
load net PC4[3] -attr @rip(#000000) O[3] -pin PC4SXT_i I0[3] -pin PC4_i O[3] -pin pcsel_mux PC4[3] -pin wdsel_mux PC4[3]
load net PC4[4] -attr @rip(#000000) O[4] -pin PC4SXT_i I0[4] -pin PC4_i O[4] -pin pcsel_mux PC4[4] -pin wdsel_mux PC4[4]
load net PC4[5] -attr @rip(#000000) O[5] -pin PC4SXT_i I0[5] -pin PC4_i O[5] -pin pcsel_mux PC4[5] -pin wdsel_mux PC4[5]
load net PC4[6] -attr @rip(#000000) O[6] -pin PC4SXT_i I0[6] -pin PC4_i O[6] -pin pcsel_mux PC4[6] -pin wdsel_mux PC4[6]
load net PC4[7] -attr @rip(#000000) O[7] -pin PC4SXT_i I0[7] -pin PC4_i O[7] -pin pcsel_mux PC4[7] -pin wdsel_mux PC4[7]
load net PC4[8] -attr @rip(#000000) O[8] -pin PC4SXT_i I0[8] -pin PC4_i O[8] -pin pcsel_mux PC4[8] -pin wdsel_mux PC4[8]
load net PC4[9] -attr @rip(#000000) O[9] -pin PC4SXT_i I0[9] -pin PC4_i O[9] -pin pcsel_mux PC4[9] -pin wdsel_mux PC4[9]
load net PCSEL[0] -attr @rip(#000000) PCSEL[0] -pin cu PCSEL[0] -pin pcsel_mux PCSEL[0]
load net PCSEL[1] -attr @rip(#000000) PCSEL[1] -pin cu PCSEL[1] -pin pcsel_mux PCSEL[1]
load net PCSEL[2] -attr @rip(#000000) PCSEL[2] -pin cu PCSEL[2] -pin pcsel_mux PCSEL[2]
load net PCSEL_OUT[0] -attr @rip(#000000) PCSEL_OUT[0] -pin pcsel_mux PCSEL_OUT[0] -pin reset_mux PCSEL_OUT[0]
load net PCSEL_OUT[10] -attr @rip(#000000) PCSEL_OUT[10] -pin pcsel_mux PCSEL_OUT[10] -pin reset_mux PCSEL_OUT[10]
load net PCSEL_OUT[11] -attr @rip(#000000) PCSEL_OUT[11] -pin pcsel_mux PCSEL_OUT[11] -pin reset_mux PCSEL_OUT[11]
load net PCSEL_OUT[12] -attr @rip(#000000) PCSEL_OUT[12] -pin pcsel_mux PCSEL_OUT[12] -pin reset_mux PCSEL_OUT[12]
load net PCSEL_OUT[13] -attr @rip(#000000) PCSEL_OUT[13] -pin pcsel_mux PCSEL_OUT[13] -pin reset_mux PCSEL_OUT[13]
load net PCSEL_OUT[14] -attr @rip(#000000) PCSEL_OUT[14] -pin pcsel_mux PCSEL_OUT[14] -pin reset_mux PCSEL_OUT[14]
load net PCSEL_OUT[15] -attr @rip(#000000) PCSEL_OUT[15] -pin pcsel_mux PCSEL_OUT[15] -pin reset_mux PCSEL_OUT[15]
load net PCSEL_OUT[16] -attr @rip(#000000) PCSEL_OUT[16] -pin pcsel_mux PCSEL_OUT[16] -pin reset_mux PCSEL_OUT[16]
load net PCSEL_OUT[17] -attr @rip(#000000) PCSEL_OUT[17] -pin pcsel_mux PCSEL_OUT[17] -pin reset_mux PCSEL_OUT[17]
load net PCSEL_OUT[18] -attr @rip(#000000) PCSEL_OUT[18] -pin pcsel_mux PCSEL_OUT[18] -pin reset_mux PCSEL_OUT[18]
load net PCSEL_OUT[19] -attr @rip(#000000) PCSEL_OUT[19] -pin pcsel_mux PCSEL_OUT[19] -pin reset_mux PCSEL_OUT[19]
load net PCSEL_OUT[1] -attr @rip(#000000) PCSEL_OUT[1] -pin pcsel_mux PCSEL_OUT[1] -pin reset_mux PCSEL_OUT[1]
load net PCSEL_OUT[20] -attr @rip(#000000) PCSEL_OUT[20] -pin pcsel_mux PCSEL_OUT[20] -pin reset_mux PCSEL_OUT[20]
load net PCSEL_OUT[21] -attr @rip(#000000) PCSEL_OUT[21] -pin pcsel_mux PCSEL_OUT[21] -pin reset_mux PCSEL_OUT[21]
load net PCSEL_OUT[22] -attr @rip(#000000) PCSEL_OUT[22] -pin pcsel_mux PCSEL_OUT[22] -pin reset_mux PCSEL_OUT[22]
load net PCSEL_OUT[23] -attr @rip(#000000) PCSEL_OUT[23] -pin pcsel_mux PCSEL_OUT[23] -pin reset_mux PCSEL_OUT[23]
load net PCSEL_OUT[24] -attr @rip(#000000) PCSEL_OUT[24] -pin pcsel_mux PCSEL_OUT[24] -pin reset_mux PCSEL_OUT[24]
load net PCSEL_OUT[25] -attr @rip(#000000) PCSEL_OUT[25] -pin pcsel_mux PCSEL_OUT[25] -pin reset_mux PCSEL_OUT[25]
load net PCSEL_OUT[26] -attr @rip(#000000) PCSEL_OUT[26] -pin pcsel_mux PCSEL_OUT[26] -pin reset_mux PCSEL_OUT[26]
load net PCSEL_OUT[27] -attr @rip(#000000) PCSEL_OUT[27] -pin pcsel_mux PCSEL_OUT[27] -pin reset_mux PCSEL_OUT[27]
load net PCSEL_OUT[28] -attr @rip(#000000) PCSEL_OUT[28] -pin pcsel_mux PCSEL_OUT[28] -pin reset_mux PCSEL_OUT[28]
load net PCSEL_OUT[29] -attr @rip(#000000) PCSEL_OUT[29] -pin pcsel_mux PCSEL_OUT[29] -pin reset_mux PCSEL_OUT[29]
load net PCSEL_OUT[2] -attr @rip(#000000) PCSEL_OUT[2] -pin pcsel_mux PCSEL_OUT[2] -pin reset_mux PCSEL_OUT[2]
load net PCSEL_OUT[30] -attr @rip(#000000) PCSEL_OUT[30] -pin pcsel_mux PCSEL_OUT[30] -pin reset_mux PCSEL_OUT[30]
load net PCSEL_OUT[31] -attr @rip(#000000) PCSEL_OUT[31] -pin pcsel_mux PCSEL_OUT[31] -pin reset_mux PCSEL_OUT[31]
load net PCSEL_OUT[3] -attr @rip(#000000) PCSEL_OUT[3] -pin pcsel_mux PCSEL_OUT[3] -pin reset_mux PCSEL_OUT[3]
load net PCSEL_OUT[4] -attr @rip(#000000) PCSEL_OUT[4] -pin pcsel_mux PCSEL_OUT[4] -pin reset_mux PCSEL_OUT[4]
load net PCSEL_OUT[5] -attr @rip(#000000) PCSEL_OUT[5] -pin pcsel_mux PCSEL_OUT[5] -pin reset_mux PCSEL_OUT[5]
load net PCSEL_OUT[6] -attr @rip(#000000) PCSEL_OUT[6] -pin pcsel_mux PCSEL_OUT[6] -pin reset_mux PCSEL_OUT[6]
load net PCSEL_OUT[7] -attr @rip(#000000) PCSEL_OUT[7] -pin pcsel_mux PCSEL_OUT[7] -pin reset_mux PCSEL_OUT[7]
load net PCSEL_OUT[8] -attr @rip(#000000) PCSEL_OUT[8] -pin pcsel_mux PCSEL_OUT[8] -pin reset_mux PCSEL_OUT[8]
load net PCSEL_OUT[9] -attr @rip(#000000) PCSEL_OUT[9] -pin pcsel_mux PCSEL_OUT[9] -pin reset_mux PCSEL_OUT[9]
load net PC[0] -attr @rip(#000000) 0 -pin PC4_i I0[0] -pin PC_reg[31:0] Q[0] -pin im IA[0]
load net PC[10] -attr @rip(#000000) 10 -pin PC4_i I0[10] -pin PC_reg[31:0] Q[10] -pin im IA[10]
load net PC[11] -attr @rip(#000000) 11 -pin PC4_i I0[11] -pin PC_reg[31:0] Q[11] -pin im IA[11]
load net PC[12] -attr @rip(#000000) 12 -pin PC4_i I0[12] -pin PC_reg[31:0] Q[12] -pin im IA[12]
load net PC[13] -attr @rip(#000000) 13 -pin PC4_i I0[13] -pin PC_reg[31:0] Q[13] -pin im IA[13]
load net PC[14] -attr @rip(#000000) 14 -pin PC4_i I0[14] -pin PC_reg[31:0] Q[14] -pin im IA[14]
load net PC[15] -attr @rip(#000000) 15 -pin PC4_i I0[15] -pin PC_reg[31:0] Q[15] -pin im IA[15]
load net PC[16] -attr @rip(#000000) 16 -pin PC4_i I0[16] -pin PC_reg[31:0] Q[16] -pin im IA[16]
load net PC[17] -attr @rip(#000000) 17 -pin PC4_i I0[17] -pin PC_reg[31:0] Q[17] -pin im IA[17]
load net PC[18] -attr @rip(#000000) 18 -pin PC4_i I0[18] -pin PC_reg[31:0] Q[18] -pin im IA[18]
load net PC[19] -attr @rip(#000000) 19 -pin PC4_i I0[19] -pin PC_reg[31:0] Q[19] -pin im IA[19]
load net PC[1] -attr @rip(#000000) 1 -pin PC4_i I0[1] -pin PC_reg[31:0] Q[1] -pin im IA[1]
load net PC[20] -attr @rip(#000000) 20 -pin PC4_i I0[20] -pin PC_reg[31:0] Q[20] -pin im IA[20]
load net PC[21] -attr @rip(#000000) 21 -pin PC4_i I0[21] -pin PC_reg[31:0] Q[21] -pin im IA[21]
load net PC[22] -attr @rip(#000000) 22 -pin PC4_i I0[22] -pin PC_reg[31:0] Q[22] -pin im IA[22]
load net PC[23] -attr @rip(#000000) 23 -pin PC4_i I0[23] -pin PC_reg[31:0] Q[23] -pin im IA[23]
load net PC[24] -attr @rip(#000000) 24 -pin PC4_i I0[24] -pin PC_reg[31:0] Q[24] -pin im IA[24]
load net PC[25] -attr @rip(#000000) 25 -pin PC4_i I0[25] -pin PC_reg[31:0] Q[25] -pin im IA[25]
load net PC[26] -attr @rip(#000000) 26 -pin PC4_i I0[26] -pin PC_reg[31:0] Q[26] -pin im IA[26]
load net PC[27] -attr @rip(#000000) 27 -pin PC4_i I0[27] -pin PC_reg[31:0] Q[27] -pin im IA[27]
load net PC[28] -attr @rip(#000000) 28 -pin PC4_i I0[28] -pin PC_reg[31:0] Q[28] -pin im IA[28]
load net PC[29] -attr @rip(#000000) 29 -pin PC4_i I0[29] -pin PC_reg[31:0] Q[29] -pin im IA[29]
load net PC[2] -attr @rip(#000000) 2 -pin PC4_i I0[2] -pin PC_reg[31:0] Q[2] -pin im IA[2]
load net PC[30] -attr @rip(#000000) 30 -pin PC4_i I0[30] -pin PC_reg[31:0] Q[30] -pin im IA[30]
load net PC[31] -attr @rip(#000000) 31 -pin PC4_i I0[31] -pin PC_reg[31:0] Q[31] -pin im IA[31]
load net PC[3] -attr @rip(#000000) 3 -pin PC4_i I0[3] -pin PC_reg[31:0] Q[3] -pin im IA[3]
load net PC[4] -attr @rip(#000000) 4 -pin PC4_i I0[4] -pin PC_reg[31:0] Q[4] -pin im IA[4]
load net PC[5] -attr @rip(#000000) 5 -pin PC4_i I0[5] -pin PC_reg[31:0] Q[5] -pin im IA[5]
load net PC[6] -attr @rip(#000000) 6 -pin PC4_i I0[6] -pin PC_reg[31:0] Q[6] -pin im IA[6]
load net PC[7] -attr @rip(#000000) 7 -pin PC4_i I0[7] -pin PC_reg[31:0] Q[7] -pin im IA[7]
load net PC[8] -attr @rip(#000000) 8 -pin PC4_i I0[8] -pin PC_reg[31:0] Q[8] -pin im IA[8]
load net PC[9] -attr @rip(#000000) 9 -pin PC4_i I0[9] -pin PC_reg[31:0] Q[9] -pin im IA[9]
load net RA2SEL -pin cu RA2SEL -pin ra2sel_mux RA2SEL
netloc RA2SEL 1 2 4 700 540 NJ 540 1290J 520 1620J
load net RA2[0] -attr @rip(#000000) RA2[0] -pin ra2sel_mux RA2[0] -pin regfile RA2[0]
load net RA2[1] -attr @rip(#000000) RA2[1] -pin ra2sel_mux RA2[1] -pin regfile RA2[1]
load net RA2[2] -attr @rip(#000000) RA2[2] -pin ra2sel_mux RA2[2] -pin regfile RA2[2]
load net RA2[3] -attr @rip(#000000) RA2[3] -pin ra2sel_mux RA2[3] -pin regfile RA2[3]
load net RA2[4] -attr @rip(#000000) RA2[4] -pin ra2sel_mux RA2[4] -pin regfile RA2[4]
load net RD2[0] -attr @rip(#000000) RD2[0] -pin bsel_mux RD2[0] -pin dm MWD[0] -pin regfile RD2[0]
load net RD2[10] -attr @rip(#000000) RD2[10] -pin bsel_mux RD2[10] -pin dm MWD[10] -pin regfile RD2[10]
load net RD2[11] -attr @rip(#000000) RD2[11] -pin bsel_mux RD2[11] -pin dm MWD[11] -pin regfile RD2[11]
load net RD2[12] -attr @rip(#000000) RD2[12] -pin bsel_mux RD2[12] -pin dm MWD[12] -pin regfile RD2[12]
load net RD2[13] -attr @rip(#000000) RD2[13] -pin bsel_mux RD2[13] -pin dm MWD[13] -pin regfile RD2[13]
load net RD2[14] -attr @rip(#000000) RD2[14] -pin bsel_mux RD2[14] -pin dm MWD[14] -pin regfile RD2[14]
load net RD2[15] -attr @rip(#000000) RD2[15] -pin bsel_mux RD2[15] -pin dm MWD[15] -pin regfile RD2[15]
load net RD2[16] -attr @rip(#000000) RD2[16] -pin bsel_mux RD2[16] -pin dm MWD[16] -pin regfile RD2[16]
load net RD2[17] -attr @rip(#000000) RD2[17] -pin bsel_mux RD2[17] -pin dm MWD[17] -pin regfile RD2[17]
load net RD2[18] -attr @rip(#000000) RD2[18] -pin bsel_mux RD2[18] -pin dm MWD[18] -pin regfile RD2[18]
load net RD2[19] -attr @rip(#000000) RD2[19] -pin bsel_mux RD2[19] -pin dm MWD[19] -pin regfile RD2[19]
load net RD2[1] -attr @rip(#000000) RD2[1] -pin bsel_mux RD2[1] -pin dm MWD[1] -pin regfile RD2[1]
load net RD2[20] -attr @rip(#000000) RD2[20] -pin bsel_mux RD2[20] -pin dm MWD[20] -pin regfile RD2[20]
load net RD2[21] -attr @rip(#000000) RD2[21] -pin bsel_mux RD2[21] -pin dm MWD[21] -pin regfile RD2[21]
load net RD2[22] -attr @rip(#000000) RD2[22] -pin bsel_mux RD2[22] -pin dm MWD[22] -pin regfile RD2[22]
load net RD2[23] -attr @rip(#000000) RD2[23] -pin bsel_mux RD2[23] -pin dm MWD[23] -pin regfile RD2[23]
load net RD2[24] -attr @rip(#000000) RD2[24] -pin bsel_mux RD2[24] -pin dm MWD[24] -pin regfile RD2[24]
load net RD2[25] -attr @rip(#000000) RD2[25] -pin bsel_mux RD2[25] -pin dm MWD[25] -pin regfile RD2[25]
load net RD2[26] -attr @rip(#000000) RD2[26] -pin bsel_mux RD2[26] -pin dm MWD[26] -pin regfile RD2[26]
load net RD2[27] -attr @rip(#000000) RD2[27] -pin bsel_mux RD2[27] -pin dm MWD[27] -pin regfile RD2[27]
load net RD2[28] -attr @rip(#000000) RD2[28] -pin bsel_mux RD2[28] -pin dm MWD[28] -pin regfile RD2[28]
load net RD2[29] -attr @rip(#000000) RD2[29] -pin bsel_mux RD2[29] -pin dm MWD[29] -pin regfile RD2[29]
load net RD2[2] -attr @rip(#000000) RD2[2] -pin bsel_mux RD2[2] -pin dm MWD[2] -pin regfile RD2[2]
load net RD2[30] -attr @rip(#000000) RD2[30] -pin bsel_mux RD2[30] -pin dm MWD[30] -pin regfile RD2[30]
load net RD2[31] -attr @rip(#000000) RD2[31] -pin bsel_mux RD2[31] -pin dm MWD[31] -pin regfile RD2[31]
load net RD2[3] -attr @rip(#000000) RD2[3] -pin bsel_mux RD2[3] -pin dm MWD[3] -pin regfile RD2[3]
load net RD2[4] -attr @rip(#000000) RD2[4] -pin bsel_mux RD2[4] -pin dm MWD[4] -pin regfile RD2[4]
load net RD2[5] -attr @rip(#000000) RD2[5] -pin bsel_mux RD2[5] -pin dm MWD[5] -pin regfile RD2[5]
load net RD2[6] -attr @rip(#000000) RD2[6] -pin bsel_mux RD2[6] -pin dm MWD[6] -pin regfile RD2[6]
load net RD2[7] -attr @rip(#000000) RD2[7] -pin bsel_mux RD2[7] -pin dm MWD[7] -pin regfile RD2[7]
load net RD2[8] -attr @rip(#000000) RD2[8] -pin bsel_mux RD2[8] -pin dm MWD[8] -pin regfile RD2[8]
load net RD2[9] -attr @rip(#000000) RD2[9] -pin bsel_mux RD2[9] -pin dm MWD[9] -pin regfile RD2[9]
load net RESET -port RESET -pin cu RESET -pin reset_mux RESET
netloc RESET 1 0 9 NJ 190 380 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ
load net Ra[0] -attr @rip(#000000) ID[16] -pin cu instruction[16] -pin im ID[16] -pin regfile RA1[0]
load net Ra[1] -attr @rip(#000000) ID[17] -pin cu instruction[17] -pin im ID[17] -pin regfile RA1[1]
load net Ra[2] -attr @rip(#000000) ID[18] -pin cu instruction[18] -pin im ID[18] -pin regfile RA1[2]
load net Ra[3] -attr @rip(#000000) ID[19] -pin cu instruction[19] -pin im ID[19] -pin regfile RA1[3]
load net Ra[4] -attr @rip(#000000) ID[20] -pin cu instruction[20] -pin im ID[20] -pin regfile RA1[4]
load net Rb[0] -attr @rip(#000000) ID[11] -pin PC4SXT_i I1[11] -pin bsel_mux SXTC[11] -pin cu instruction[11] -pin im ID[11] -pin ra2sel_mux Rb[0]
load net Rb[1] -attr @rip(#000000) ID[12] -pin PC4SXT_i I1[12] -pin bsel_mux SXTC[12] -pin cu instruction[12] -pin im ID[12] -pin ra2sel_mux Rb[1]
load net Rb[2] -attr @rip(#000000) ID[13] -pin PC4SXT_i I1[13] -pin bsel_mux SXTC[13] -pin cu instruction[13] -pin im ID[13] -pin ra2sel_mux Rb[2]
load net Rb[3] -attr @rip(#000000) ID[14] -pin PC4SXT_i I1[14] -pin bsel_mux SXTC[14] -pin cu instruction[14] -pin im ID[14] -pin ra2sel_mux Rb[3]
load net Rb[4] -attr @rip(#000000) ID[15] -pin PC4SXT_i I1[31] -pin PC4SXT_i I1[30] -pin PC4SXT_i I1[29] -pin PC4SXT_i I1[28] -pin PC4SXT_i I1[27] -pin PC4SXT_i I1[26] -pin PC4SXT_i I1[25] -pin PC4SXT_i I1[24] -pin PC4SXT_i I1[23] -pin PC4SXT_i I1[22] -pin PC4SXT_i I1[21] -pin PC4SXT_i I1[20] -pin PC4SXT_i I1[19] -pin PC4SXT_i I1[18] -pin PC4SXT_i I1[17] -pin PC4SXT_i I1[16] -pin PC4SXT_i I1[15] -pin bsel_mux SXTC[31] -pin bsel_mux SXTC[30] -pin bsel_mux SXTC[29] -pin bsel_mux SXTC[28] -pin bsel_mux SXTC[27] -pin bsel_mux SXTC[26] -pin bsel_mux SXTC[25] -pin bsel_mux SXTC[24] -pin bsel_mux SXTC[23] -pin bsel_mux SXTC[22] -pin bsel_mux SXTC[21] -pin bsel_mux SXTC[20] -pin bsel_mux SXTC[19] -pin bsel_mux SXTC[18] -pin bsel_mux SXTC[17] -pin bsel_mux SXTC[16] -pin bsel_mux SXTC[15] -pin cu instruction[15] -pin im ID[15] -pin ra2sel_mux Rb[4]
load net Rc[0] -attr @rip(#000000) ID[21] -pin cu instruction[21] -pin im ID[21] -pin ra2sel_mux Rc[0] -pin wasel_mux Rc[0]
load net Rc[1] -attr @rip(#000000) ID[22] -pin cu instruction[22] -pin im ID[22] -pin ra2sel_mux Rc[1] -pin wasel_mux Rc[1]
load net Rc[2] -attr @rip(#000000) ID[23] -pin cu instruction[23] -pin im ID[23] -pin ra2sel_mux Rc[2] -pin wasel_mux Rc[2]
load net Rc[3] -attr @rip(#000000) ID[24] -pin cu instruction[24] -pin im ID[24] -pin ra2sel_mux Rc[3] -pin wasel_mux Rc[3]
load net Rc[4] -attr @rip(#000000) ID[25] -pin cu instruction[25] -pin im ID[25] -pin ra2sel_mux Rc[4] -pin wasel_mux Rc[4]
load net WASEL -pin cu WASEL -pin wasel_mux WASEL
netloc WASEL 1 2 4 NJ 300 NJ 300 NJ 300 1620
load net WA[0] -attr @rip(#000000) WA[0] -pin regfile WA[0] -pin wasel_mux WA[0]
load net WA[1] -attr @rip(#000000) WA[1] -pin regfile WA[1] -pin wasel_mux WA[1]
load net WA[2] -attr @rip(#000000) WA[2] -pin regfile WA[2] -pin wasel_mux WA[2]
load net WA[3] -attr @rip(#000000) WA[3] -pin regfile WA[3] -pin wasel_mux WA[3]
load net WA[4] -attr @rip(#000000) WA[4] -pin regfile WA[4] -pin wasel_mux WA[4]
load net WDSEL[0] -attr @rip(#000000) WDSEL[0] -pin cu WDSEL[0] -pin wdsel_mux WDSEL[0]
load net WDSEL[1] -attr @rip(#000000) WDSEL[1] -pin cu WDSEL[1] -pin wdsel_mux WDSEL[1]
load net WDSEL_OUT[0] -attr @rip(#000000) WD[0] -pin regfile WD[0] -pin wdsel_mux WD[0]
load net WDSEL_OUT[10] -attr @rip(#000000) WD[10] -pin regfile WD[10] -pin wdsel_mux WD[10]
load net WDSEL_OUT[11] -attr @rip(#000000) WD[11] -pin regfile WD[11] -pin wdsel_mux WD[11]
load net WDSEL_OUT[12] -attr @rip(#000000) WD[12] -pin regfile WD[12] -pin wdsel_mux WD[12]
load net WDSEL_OUT[13] -attr @rip(#000000) WD[13] -pin regfile WD[13] -pin wdsel_mux WD[13]
load net WDSEL_OUT[14] -attr @rip(#000000) WD[14] -pin regfile WD[14] -pin wdsel_mux WD[14]
load net WDSEL_OUT[15] -attr @rip(#000000) WD[15] -pin regfile WD[15] -pin wdsel_mux WD[15]
load net WDSEL_OUT[16] -attr @rip(#000000) WD[16] -pin regfile WD[16] -pin wdsel_mux WD[16]
load net WDSEL_OUT[17] -attr @rip(#000000) WD[17] -pin regfile WD[17] -pin wdsel_mux WD[17]
load net WDSEL_OUT[18] -attr @rip(#000000) WD[18] -pin regfile WD[18] -pin wdsel_mux WD[18]
load net WDSEL_OUT[19] -attr @rip(#000000) WD[19] -pin regfile WD[19] -pin wdsel_mux WD[19]
load net WDSEL_OUT[1] -attr @rip(#000000) WD[1] -pin regfile WD[1] -pin wdsel_mux WD[1]
load net WDSEL_OUT[20] -attr @rip(#000000) WD[20] -pin regfile WD[20] -pin wdsel_mux WD[20]
load net WDSEL_OUT[21] -attr @rip(#000000) WD[21] -pin regfile WD[21] -pin wdsel_mux WD[21]
load net WDSEL_OUT[22] -attr @rip(#000000) WD[22] -pin regfile WD[22] -pin wdsel_mux WD[22]
load net WDSEL_OUT[23] -attr @rip(#000000) WD[23] -pin regfile WD[23] -pin wdsel_mux WD[23]
load net WDSEL_OUT[24] -attr @rip(#000000) WD[24] -pin regfile WD[24] -pin wdsel_mux WD[24]
load net WDSEL_OUT[25] -attr @rip(#000000) WD[25] -pin regfile WD[25] -pin wdsel_mux WD[25]
load net WDSEL_OUT[26] -attr @rip(#000000) WD[26] -pin regfile WD[26] -pin wdsel_mux WD[26]
load net WDSEL_OUT[27] -attr @rip(#000000) WD[27] -pin regfile WD[27] -pin wdsel_mux WD[27]
load net WDSEL_OUT[28] -attr @rip(#000000) WD[28] -pin regfile WD[28] -pin wdsel_mux WD[28]
load net WDSEL_OUT[29] -attr @rip(#000000) WD[29] -pin regfile WD[29] -pin wdsel_mux WD[29]
load net WDSEL_OUT[2] -attr @rip(#000000) WD[2] -pin regfile WD[2] -pin wdsel_mux WD[2]
load net WDSEL_OUT[30] -attr @rip(#000000) WD[30] -pin regfile WD[30] -pin wdsel_mux WD[30]
load net WDSEL_OUT[31] -attr @rip(#000000) WD[31] -pin regfile WD[31] -pin wdsel_mux WD[31]
load net WDSEL_OUT[3] -attr @rip(#000000) WD[3] -pin regfile WD[3] -pin wdsel_mux WD[3]
load net WDSEL_OUT[4] -attr @rip(#000000) WD[4] -pin regfile WD[4] -pin wdsel_mux WD[4]
load net WDSEL_OUT[5] -attr @rip(#000000) WD[5] -pin regfile WD[5] -pin wdsel_mux WD[5]
load net WDSEL_OUT[6] -attr @rip(#000000) WD[6] -pin regfile WD[6] -pin wdsel_mux WD[6]
load net WDSEL_OUT[7] -attr @rip(#000000) WD[7] -pin regfile WD[7] -pin wdsel_mux WD[7]
load net WDSEL_OUT[8] -attr @rip(#000000) WD[8] -pin regfile WD[8] -pin wdsel_mux WD[8]
load net WDSEL_OUT[9] -attr @rip(#000000) WD[9] -pin regfile WD[9] -pin wdsel_mux WD[9]
load net WERF -pin cu WERF -pin regfile WERF
netloc WERF 1 2 5 720 360 NJ 360 NJ 360 NJ 360 1950J
load net Y[0] -attr @rip(#000000) Y[0] -pin alu Y[0] -pin dm Adr[0] -pin wdsel_mux Y[0]
load net Y[10] -attr @rip(#000000) Y[10] -pin alu Y[10] -pin dm Adr[10] -pin wdsel_mux Y[10]
load net Y[11] -attr @rip(#000000) Y[11] -pin alu Y[11] -pin dm Adr[11] -pin wdsel_mux Y[11]
load net Y[12] -attr @rip(#000000) Y[12] -pin alu Y[12] -pin dm Adr[12] -pin wdsel_mux Y[12]
load net Y[13] -attr @rip(#000000) Y[13] -pin alu Y[13] -pin dm Adr[13] -pin wdsel_mux Y[13]
load net Y[14] -attr @rip(#000000) Y[14] -pin alu Y[14] -pin dm Adr[14] -pin wdsel_mux Y[14]
load net Y[15] -attr @rip(#000000) Y[15] -pin alu Y[15] -pin dm Adr[15] -pin wdsel_mux Y[15]
load net Y[16] -attr @rip(#000000) Y[16] -pin alu Y[16] -pin dm Adr[16] -pin wdsel_mux Y[16]
load net Y[17] -attr @rip(#000000) Y[17] -pin alu Y[17] -pin dm Adr[17] -pin wdsel_mux Y[17]
load net Y[18] -attr @rip(#000000) Y[18] -pin alu Y[18] -pin dm Adr[18] -pin wdsel_mux Y[18]
load net Y[19] -attr @rip(#000000) Y[19] -pin alu Y[19] -pin dm Adr[19] -pin wdsel_mux Y[19]
load net Y[1] -attr @rip(#000000) Y[1] -pin alu Y[1] -pin dm Adr[1] -pin wdsel_mux Y[1]
load net Y[20] -attr @rip(#000000) Y[20] -pin alu Y[20] -pin dm Adr[20] -pin wdsel_mux Y[20]
load net Y[21] -attr @rip(#000000) Y[21] -pin alu Y[21] -pin dm Adr[21] -pin wdsel_mux Y[21]
load net Y[22] -attr @rip(#000000) Y[22] -pin alu Y[22] -pin dm Adr[22] -pin wdsel_mux Y[22]
load net Y[23] -attr @rip(#000000) Y[23] -pin alu Y[23] -pin dm Adr[23] -pin wdsel_mux Y[23]
load net Y[24] -attr @rip(#000000) Y[24] -pin alu Y[24] -pin dm Adr[24] -pin wdsel_mux Y[24]
load net Y[25] -attr @rip(#000000) Y[25] -pin alu Y[25] -pin dm Adr[25] -pin wdsel_mux Y[25]
load net Y[26] -attr @rip(#000000) Y[26] -pin alu Y[26] -pin dm Adr[26] -pin wdsel_mux Y[26]
load net Y[27] -attr @rip(#000000) Y[27] -pin alu Y[27] -pin dm Adr[27] -pin wdsel_mux Y[27]
load net Y[28] -attr @rip(#000000) Y[28] -pin alu Y[28] -pin dm Adr[28] -pin wdsel_mux Y[28]
load net Y[29] -attr @rip(#000000) Y[29] -pin alu Y[29] -pin dm Adr[29] -pin wdsel_mux Y[29]
load net Y[2] -attr @rip(#000000) Y[2] -pin alu Y[2] -pin dm Adr[2] -pin wdsel_mux Y[2]
load net Y[30] -attr @rip(#000000) Y[30] -pin alu Y[30] -pin dm Adr[30] -pin wdsel_mux Y[30]
load net Y[31] -attr @rip(#000000) Y[31] -pin alu Y[31] -pin dm Adr[31] -pin wdsel_mux Y[31]
load net Y[3] -attr @rip(#000000) Y[3] -pin alu Y[3] -pin dm Adr[3] -pin wdsel_mux Y[3]
load net Y[4] -attr @rip(#000000) Y[4] -pin alu Y[4] -pin dm Adr[4] -pin wdsel_mux Y[4]
load net Y[5] -attr @rip(#000000) Y[5] -pin alu Y[5] -pin dm Adr[5] -pin wdsel_mux Y[5]
load net Y[6] -attr @rip(#000000) Y[6] -pin alu Y[6] -pin dm Adr[6] -pin wdsel_mux Y[6]
load net Y[7] -attr @rip(#000000) Y[7] -pin alu Y[7] -pin dm Adr[7] -pin wdsel_mux Y[7]
load net Y[8] -attr @rip(#000000) Y[8] -pin alu Y[8] -pin dm Adr[8] -pin wdsel_mux Y[8]
load net Y[9] -attr @rip(#000000) Y[9] -pin alu Y[9] -pin dm Adr[9] -pin wdsel_mux Y[9]
load net Z -pin Z_i O -pin cu Z
netloc Z 1 1 1 NJ 240
load net clk -pin PC_reg[31:0] C -port clk -pin cu clk -pin dm clk -pin regfile clk
netloc clk 1 0 10 NJ 290 340 580 NJ 580 NJ 580 1330 540 NJ 540 1970 600 NJ 600 2550J 560 NJ
load net im_n_0 -attr @rip(#000000) ID[31] -pin cu instruction[31] -pin im ID[31]
load net im_n_1 -attr @rip(#000000) ID[30] -pin cu instruction[30] -pin im ID[30]
load net im_n_2 -attr @rip(#000000) ID[29] -pin cu instruction[29] -pin im ID[29]
load net im_n_21 -attr @rip(#000000) ID[10] -pin PC4SXT_i I1[10] -pin bsel_mux SXTC[10] -pin cu instruction[10] -pin im ID[10]
load net im_n_22 -attr @rip(#000000) ID[9] -pin PC4SXT_i I1[9] -pin bsel_mux SXTC[9] -pin cu instruction[9] -pin im ID[9]
load net im_n_23 -attr @rip(#000000) ID[8] -pin PC4SXT_i I1[8] -pin bsel_mux SXTC[8] -pin cu instruction[8] -pin im ID[8]
load net im_n_24 -attr @rip(#000000) ID[7] -pin PC4SXT_i I1[7] -pin bsel_mux SXTC[7] -pin cu instruction[7] -pin im ID[7]
load net im_n_25 -attr @rip(#000000) ID[6] -pin PC4SXT_i I1[6] -pin bsel_mux SXTC[6] -pin cu instruction[6] -pin im ID[6]
load net im_n_26 -attr @rip(#000000) ID[5] -pin PC4SXT_i I1[5] -pin bsel_mux SXTC[5] -pin cu instruction[5] -pin im ID[5]
load net im_n_27 -attr @rip(#000000) ID[4] -pin PC4SXT_i I1[4] -pin bsel_mux SXTC[4] -pin cu instruction[4] -pin im ID[4]
load net im_n_28 -attr @rip(#000000) ID[3] -pin PC4SXT_i I1[3] -pin bsel_mux SXTC[3] -pin cu instruction[3] -pin im ID[3]
load net im_n_29 -attr @rip(#000000) ID[2] -pin PC4SXT_i I1[2] -pin bsel_mux SXTC[2] -pin cu instruction[2] -pin im ID[2]
load net im_n_3 -attr @rip(#000000) ID[28] -pin cu instruction[28] -pin im ID[28]
load net im_n_30 -attr @rip(#000000) ID[1] -pin PC4SXT_i I1[1] -pin bsel_mux SXTC[1] -pin cu instruction[1] -pin im ID[1]
load net im_n_31 -attr @rip(#000000) ID[0] -pin PC4SXT_i I1[0] -pin bsel_mux SXTC[0] -pin cu instruction[0] -pin im ID[0]
load net im_n_4 -attr @rip(#000000) ID[27] -pin cu instruction[27] -pin im ID[27]
load net im_n_5 -attr @rip(#000000) ID[26] -pin cu instruction[26] -pin im ID[26]
load net out[0] -attr @rip(#000000) out[0] -pin PC_reg[31:0] D[0] -pin reset_mux out[0]
load net out[10] -attr @rip(#000000) out[10] -pin PC_reg[31:0] D[10] -pin reset_mux out[10]
load net out[11] -attr @rip(#000000) out[11] -pin PC_reg[31:0] D[11] -pin reset_mux out[11]
load net out[12] -attr @rip(#000000) out[12] -pin PC_reg[31:0] D[12] -pin reset_mux out[12]
load net out[13] -attr @rip(#000000) out[13] -pin PC_reg[31:0] D[13] -pin reset_mux out[13]
load net out[14] -attr @rip(#000000) out[14] -pin PC_reg[31:0] D[14] -pin reset_mux out[14]
load net out[15] -attr @rip(#000000) out[15] -pin PC_reg[31:0] D[15] -pin reset_mux out[15]
load net out[16] -attr @rip(#000000) out[16] -pin PC_reg[31:0] D[16] -pin reset_mux out[16]
load net out[17] -attr @rip(#000000) out[17] -pin PC_reg[31:0] D[17] -pin reset_mux out[17]
load net out[18] -attr @rip(#000000) out[18] -pin PC_reg[31:0] D[18] -pin reset_mux out[18]
load net out[19] -attr @rip(#000000) out[19] -pin PC_reg[31:0] D[19] -pin reset_mux out[19]
load net out[1] -attr @rip(#000000) out[1] -pin PC_reg[31:0] D[1] -pin reset_mux out[1]
load net out[20] -attr @rip(#000000) out[20] -pin PC_reg[31:0] D[20] -pin reset_mux out[20]
load net out[21] -attr @rip(#000000) out[21] -pin PC_reg[31:0] D[21] -pin reset_mux out[21]
load net out[22] -attr @rip(#000000) out[22] -pin PC_reg[31:0] D[22] -pin reset_mux out[22]
load net out[23] -attr @rip(#000000) out[23] -pin PC_reg[31:0] D[23] -pin reset_mux out[23]
load net out[24] -attr @rip(#000000) out[24] -pin PC_reg[31:0] D[24] -pin reset_mux out[24]
load net out[25] -attr @rip(#000000) out[25] -pin PC_reg[31:0] D[25] -pin reset_mux out[25]
load net out[26] -attr @rip(#000000) out[26] -pin PC_reg[31:0] D[26] -pin reset_mux out[26]
load net out[27] -attr @rip(#000000) out[27] -pin PC_reg[31:0] D[27] -pin reset_mux out[27]
load net out[28] -attr @rip(#000000) out[28] -pin PC_reg[31:0] D[28] -pin reset_mux out[28]
load net out[29] -attr @rip(#000000) out[29] -pin PC_reg[31:0] D[29] -pin reset_mux out[29]
load net out[2] -attr @rip(#000000) out[2] -pin PC_reg[31:0] D[2] -pin reset_mux out[2]
load net out[30] -attr @rip(#000000) out[30] -pin PC_reg[31:0] D[30] -pin reset_mux out[30]
load net out[31] -attr @rip(#000000) out[31] -pin PC_reg[31:0] D[31] -pin reset_mux out[31]
load net out[3] -attr @rip(#000000) out[3] -pin PC_reg[31:0] D[3] -pin reset_mux out[3]
load net out[4] -attr @rip(#000000) out[4] -pin PC_reg[31:0] D[4] -pin reset_mux out[4]
load net out[5] -attr @rip(#000000) out[5] -pin PC_reg[31:0] D[5] -pin reset_mux out[5]
load net out[6] -attr @rip(#000000) out[6] -pin PC_reg[31:0] D[6] -pin reset_mux out[6]
load net out[7] -attr @rip(#000000) out[7] -pin PC_reg[31:0] D[7] -pin reset_mux out[7]
load net out[8] -attr @rip(#000000) out[8] -pin PC_reg[31:0] D[8] -pin reset_mux out[8]
load net out[9] -attr @rip(#000000) out[9] -pin PC_reg[31:0] D[9] -pin reset_mux out[9]
load netBundle @PC4SXT 32 PC4SXT[31] PC4SXT[30] PC4SXT[29] PC4SXT[28] PC4SXT[27] PC4SXT[26] PC4SXT[25] PC4SXT[24] PC4SXT[23] PC4SXT[22] PC4SXT[21] PC4SXT[20] PC4SXT[19] PC4SXT[18] PC4SXT[17] PC4SXT[16] PC4SXT[15] PC4SXT[14] PC4SXT[13] PC4SXT[12] PC4SXT[11] PC4SXT[10] PC4SXT[9] PC4SXT[8] PC4SXT[7] PC4SXT[6] PC4SXT[5] PC4SXT[4] PC4SXT[3] PC4SXT[2] PC4SXT[1] PC4SXT[0] -autobundled
netbloc @PC4SXT 1 2 6 680 560 NJ 560 NJ 560 1580J 580 NJ 580 2230
load netBundle @PC4 32 PC4[31] PC4[30] PC4[29] PC4[28] PC4[27] PC4[26] PC4[25] PC4[24] PC4[23] PC4[22] PC4[21] PC4[20] PC4[19] PC4[18] PC4[17] PC4[16] PC4[15] PC4[14] PC4[13] PC4[12] PC4[11] PC4[10] PC4[9] PC4[8] PC4[7] PC4[6] PC4[5] PC4[4] PC4[3] PC4[2] PC4[1] PC4[0] -autobundled
netbloc @PC4 1 1 7 400 600 NJ 600 NJ 600 NJ 600 1600 560 NJ 560 2210J
load netBundle @Y 32 Y[31] Y[30] Y[29] Y[28] Y[27] Y[26] Y[25] Y[24] Y[23] Y[22] Y[21] Y[20] Y[19] Y[18] Y[17] Y[16] Y[15] Y[14] Y[13] Y[12] Y[11] Y[10] Y[9] Y[8] Y[7] Y[6] Y[5] Y[4] Y[3] Y[2] Y[1] Y[0] -autobundled
netbloc @Y 1 4 2 1290 180 NJ
load netBundle @A 32 A[31] A[30] A[29] A[28] A[27] A[26] A[25] A[24] A[23] A[22] A[21] A[20] A[19] A[18] A[17] A[16] A[15] A[14] A[13] A[12] A[11] A[10] A[9] A[8] A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] -autobundled
netbloc @A 1 3 1 1060 180n
load netBundle @B 32 B[31] B[30] B[29] B[28] B[27] B[26] B[25] B[24] B[23] B[22] B[21] B[20] B[19] B[18] B[17] B[16] B[15] B[14] B[13] B[12] B[11] B[10] B[9] B[8] B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] -autobundled
netbloc @B 1 3 1 N 220
load netBundle @ALUFN 6 ALUFN[5] ALUFN[4] ALUFN[3] ALUFN[2] ALUFN[1] ALUFN[0] -autobundled
netbloc @ALUFN 1 2 2 700 140 1040J
load netBundle @PCSEL 3 PCSEL[2] PCSEL[1] PCSEL[0] -autobundled
netbloc @PCSEL 1 2 6 760J 380 NJ 380 NJ 380 NJ 380 1910J 400 2210
load netBundle @WDSEL 2 WDSEL[1] WDSEL[0] -autobundled
netbloc @WDSEL 1 2 4 NJ 320 NJ 320 NJ 320 1580
load netBundle @MRD 32 MRD[31] MRD[30] MRD[29] MRD[28] MRD[27] MRD[26] MRD[25] MRD[24] MRD[23] MRD[22] MRD[21] MRD[20] MRD[19] MRD[18] MRD[17] MRD[16] MRD[15] MRD[14] MRD[13] MRD[12] MRD[11] MRD[10] MRD[9] MRD[8] MRD[7] MRD[6] MRD[5] MRD[4] MRD[3] MRD[2] MRD[1] MRD[0] -autobundled
netbloc @MRD 1 5 1 1580 100n
load netBundle @im_n_,Rc,Ra,Rb 32 im_n_0 im_n_1 im_n_2 im_n_3 im_n_4 im_n_5 Rc[4] Rc[3] Rc[2] Rc[1] Rc[0] Ra[4] Ra[3] Ra[2] Ra[1] Ra[0] Rb[4] Rb[3] Rb[2] Rb[1] Rb[0] im_n_21 im_n_22 im_n_23 im_n_24 im_n_25 im_n_26 im_n_27 im_n_28 im_n_29 im_n_30 im_n_31 -autobundled
netbloc @im_n_,Rc,Ra,Rb 1 1 6 360 380 740 340 NJ 340 NJ 340 1640 240 1930J
load netBundle @PCSEL_OUT 32 PCSEL_OUT[31] PCSEL_OUT[30] PCSEL_OUT[29] PCSEL_OUT[28] PCSEL_OUT[27] PCSEL_OUT[26] PCSEL_OUT[25] PCSEL_OUT[24] PCSEL_OUT[23] PCSEL_OUT[22] PCSEL_OUT[21] PCSEL_OUT[20] PCSEL_OUT[19] PCSEL_OUT[18] PCSEL_OUT[17] PCSEL_OUT[16] PCSEL_OUT[15] PCSEL_OUT[14] PCSEL_OUT[13] PCSEL_OUT[12] PCSEL_OUT[11] PCSEL_OUT[10] PCSEL_OUT[9] PCSEL_OUT[8] PCSEL_OUT[7] PCSEL_OUT[6] PCSEL_OUT[5] PCSEL_OUT[4] PCSEL_OUT[3] PCSEL_OUT[2] PCSEL_OUT[1] PCSEL_OUT[0] -autobundled
netbloc @PCSEL_OUT 1 8 1 2530 520n
load netBundle @RA2 5 RA2[4] RA2[3] RA2[2] RA2[1] RA2[0] -autobundled
netbloc @RA2 1 6 1 1930 280n
load netBundle @JT 32 JT[31] JT[30] JT[29] JT[28] JT[27] JT[26] JT[25] JT[24] JT[23] JT[22] JT[21] JT[20] JT[19] JT[18] JT[17] JT[16] JT[15] JT[14] JT[13] JT[12] JT[11] JT[10] JT[9] JT[8] JT[7] JT[6] JT[5] JT[4] JT[3] JT[2] JT[1] JT[0] -autobundled
netbloc @JT 1 0 8 40 400 NJ 400 800 400 NJ 400 NJ 400 NJ 400 1890J 420 2230
load netBundle @RD2 32 RD2[31] RD2[30] RD2[29] RD2[28] RD2[27] RD2[26] RD2[25] RD2[24] RD2[23] RD2[22] RD2[21] RD2[20] RD2[19] RD2[18] RD2[17] RD2[16] RD2[15] RD2[14] RD2[13] RD2[12] RD2[11] RD2[10] RD2[9] RD2[8] RD2[7] RD2[6] RD2[5] RD2[4] RD2[3] RD2[2] RD2[1] RD2[0] -autobundled
netbloc @RD2 1 2 6 800 280 NJ 280 1310 220 NJ 220 1930J 200 2210
load netBundle @out 32 out[31] out[30] out[29] out[28] out[27] out[26] out[25] out[24] out[23] out[22] out[21] out[20] out[19] out[18] out[17] out[16] out[15] out[14] out[13] out[12] out[11] out[10] out[9] out[8] out[7] out[6] out[5] out[4] out[3] out[2] out[1] out[0] -autobundled
netbloc @out 1 9 1 2820 580n
load netBundle @WA 5 WA[4] WA[3] WA[2] WA[1] WA[0] -autobundled
netbloc @WA 1 6 1 N 300
load netBundle @WDSEL_OUT 32 WDSEL_OUT[31] WDSEL_OUT[30] WDSEL_OUT[29] WDSEL_OUT[28] WDSEL_OUT[27] WDSEL_OUT[26] WDSEL_OUT[25] WDSEL_OUT[24] WDSEL_OUT[23] WDSEL_OUT[22] WDSEL_OUT[21] WDSEL_OUT[20] WDSEL_OUT[19] WDSEL_OUT[18] WDSEL_OUT[17] WDSEL_OUT[16] WDSEL_OUT[15] WDSEL_OUT[14] WDSEL_OUT[13] WDSEL_OUT[12] WDSEL_OUT[11] WDSEL_OUT[10] WDSEL_OUT[9] WDSEL_OUT[8] WDSEL_OUT[7] WDSEL_OUT[6] WDSEL_OUT[5] WDSEL_OUT[4] WDSEL_OUT[3] WDSEL_OUT[2] WDSEL_OUT[1] WDSEL_OUT[0] -autobundled
netbloc @WDSEL_OUT 1 6 1 1970 140n
load netBundle @PC 32 PC[31] PC[30] PC[29] PC[28] PC[27] PC[26] PC[25] PC[24] PC[23] PC[22] PC[21] PC[20] PC[19] PC[18] PC[17] PC[16] PC[15] PC[14] PC[13] PC[12] PC[11] PC[10] PC[9] PC[8] PC[7] PC[6] PC[5] PC[4] PC[3] PC[2] PC[1] PC[0] -autobundled
netbloc @PC 1 0 11 20 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 2960
levelinfo -pg 1 0 200 520 910 1160 1430 1740 2060 2340 2680 2860 2980
pagesize -pg 1 -db -bbox -sgen -90 0 2980 690
show
fullfit
#
# initialize ictrl to current module beta work:beta:NOFILE
ictrl init topinfo |
