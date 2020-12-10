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
property maxfontsize 18
property maxzoom 7.5
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
property rubberbandfontsize 18
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
module new ALU work:ALU:NOFILE -nosplit
load symbol RTL_EQ work RTL(=) pin O output.right pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] fillcolor 1
load symbol RTL_LT work RTL(<) pin O output.right pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_AND work AND pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_OR work OR pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_XOR work XOR pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_INV work INV pinBus I0 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_LSHIFT work RTL(<<) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_RSHIFT work RTL(>>) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_ARSHIFT work RTL(>>>) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX0 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_MUX work MUX pin I0 input.left pin I1 input.left pin I2 input.left pinBus I10 input.left [31:0] pinBus I11 input.left [31:0] pinBus I12 input.left [31:0] pinBus I3 input.left [31:0] pinBus I4 input.left [31:0] pinBus I5 input.left [31:0] pinBus I6 input.left [31:0] pinBus I7 input.left [31:0] pinBus I8 input.left [31:0] pinBus I9 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [5:0] fillcolor 1
load symbol RTL_ROM work GEN pin O output.right pinBus A input.left [5:0] fillcolor 1
load symbol RTL_REG__BREG_1 work[31:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load port clk input -pg 1 -lvl 0 -x 0 -y 100
load portBus A input [31:0] -attr @name A[31:0] -pg 1 -lvl 0 -x 0 -y 310
load portBus ALUFN input [5:0] -attr @name ALUFN[5:0] -pg 1 -lvl 0 -x 0 -y 790
load portBus B input [31:0] -attr @name B[31:0] -pg 1 -lvl 0 -x 0 -y 340
load portBus Y output [31:0] -attr @name Y[31:0] -pg 1 -lvl 5 -x 1130 -y 120
load inst Y0_i RTL_EQ work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pg 1 -lvl 1 -x 120 -y 320
load inst Y0_i__0 RTL_LT work -attr @cell(#000000) RTL_LT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pg 1 -lvl 1 -x 120 -y 420
load inst Y0_i__1 RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 410 -y 50
load inst Y0_i__2 RTL_SUB work -attr @cell(#000000) RTL_SUB -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 410 -y 150
load inst Y0_i__3 RTL_AND work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 410 -y 390
load inst Y0_i__4 RTL_OR work -attr @cell(#000000) RTL_OR -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 410 -y 460
load inst Y0_i__5 RTL_XOR work -attr @cell(#000000) RTL_XOR -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 1 -x 120 -y 520
load inst Y0_i__6 RTL_INV work -attr @cell(#000000) RTL_INV -pinBusAttr I0 @name I0[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 410 -y 530
load inst Y0_i__7 RTL_LSHIFT work -attr @cell(#000000) RTL_LSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 410 -y 640
load inst Y0_i__8 RTL_RSHIFT work -attr @cell(#000000) RTL_RSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 410 -y 740
load inst Y0_i__9 RTL_ARSHIFT work -attr @cell(#000000) RTL_ARSHIFT -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 410 -y 850
load inst Y_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 2 -x 410 -y 260
load inst Y_i__0 RTL_MUX work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=6'b000011 -pinAttr I1 @attr S=6'b000101 -pinAttr I2 @attr S=6'b000111 -pinBusAttr I10 @name I10[31:0] -pinBusAttr I10 @attr S=6'b110000 -pinBusAttr I11 @name I11[31:0] -pinBusAttr I11 @attr S=6'b110001 -pinBusAttr I12 @name I12[31:0] -pinBusAttr I12 @attr S=6'b110011 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S=6'b010000 -pinBusAttr I4 @name I4[31:0] -pinBusAttr I4 @attr S=6'b010001 -pinBusAttr I5 @name I5[31:0] -pinBusAttr I5 @attr S=6'b101000 -pinBusAttr I6 @name I6[31:0] -pinBusAttr I6 @attr S=6'b101110 -pinBusAttr I7 @name I7[31:0] -pinBusAttr I7 @attr S=6'b100110 -pinBusAttr I8 @name I8[31:0] -pinBusAttr I8 @attr S=6'b101001 -pinBusAttr I9 @name I9[31:0] -pinBusAttr I9 @attr S=6'b101010 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[5:0] -pg 1 -lvl 3 -x 850 -y 430
load inst Y_i__1 RTL_ROM work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[5:0] -pg 1 -lvl 3 -x 850 -y 650
load inst Y_reg[31:0] RTL_REG__BREG_1 work[31:0]ssww -attr @cell(#000000) RTL_REG -pg 1 -lvl 4 -x 1030 -y 120
load net <const1> -power -pin Y0_i__7 I2 -pin Y0_i__8 I2 -pin Y0_i__9 I2 -pin Y_i I0
load net ALUFN[0] -attr @rip(#000000) ALUFN[0] -port ALUFN[0] -pin Y_i__0 S[0] -pin Y_i__1 A[0]
load net ALUFN[1] -attr @rip(#000000) ALUFN[1] -port ALUFN[1] -pin Y_i__0 S[1] -pin Y_i__1 A[1]
load net ALUFN[2] -attr @rip(#000000) ALUFN[2] -port ALUFN[2] -pin Y_i__0 S[2] -pin Y_i__1 A[2]
load net ALUFN[3] -attr @rip(#000000) ALUFN[3] -port ALUFN[3] -pin Y_i__0 S[3] -pin Y_i__1 A[3]
load net ALUFN[4] -attr @rip(#000000) ALUFN[4] -port ALUFN[4] -pin Y_i__0 S[4] -pin Y_i__1 A[4]
load net ALUFN[5] -attr @rip(#000000) ALUFN[5] -port ALUFN[5] -pin Y_i__0 S[5] -pin Y_i__1 A[5]
load net A[0] -attr @rip(#000000) A[0] -port A[0] -pin Y0_i I0[0] -pin Y0_i__0 I0[0] -pin Y0_i__1 I0[0] -pin Y0_i__2 I0[0] -pin Y0_i__3 I0[0] -pin Y0_i__4 I0[0] -pin Y0_i__5 I0[0] -pin Y0_i__7 I0[0] -pin Y0_i__8 I0[0] -pin Y0_i__9 I0[0] -pin Y_i__0 I9[0]
load net A[10] -attr @rip(#000000) A[10] -port A[10] -pin Y0_i I0[10] -pin Y0_i__0 I0[10] -pin Y0_i__1 I0[10] -pin Y0_i__2 I0[10] -pin Y0_i__3 I0[10] -pin Y0_i__4 I0[10] -pin Y0_i__5 I0[10] -pin Y0_i__7 I0[10] -pin Y0_i__8 I0[10] -pin Y0_i__9 I0[10] -pin Y_i__0 I9[10]
load net A[11] -attr @rip(#000000) A[11] -port A[11] -pin Y0_i I0[11] -pin Y0_i__0 I0[11] -pin Y0_i__1 I0[11] -pin Y0_i__2 I0[11] -pin Y0_i__3 I0[11] -pin Y0_i__4 I0[11] -pin Y0_i__5 I0[11] -pin Y0_i__7 I0[11] -pin Y0_i__8 I0[11] -pin Y0_i__9 I0[11] -pin Y_i__0 I9[11]
load net A[12] -attr @rip(#000000) A[12] -port A[12] -pin Y0_i I0[12] -pin Y0_i__0 I0[12] -pin Y0_i__1 I0[12] -pin Y0_i__2 I0[12] -pin Y0_i__3 I0[12] -pin Y0_i__4 I0[12] -pin Y0_i__5 I0[12] -pin Y0_i__7 I0[12] -pin Y0_i__8 I0[12] -pin Y0_i__9 I0[12] -pin Y_i__0 I9[12]
load net A[13] -attr @rip(#000000) A[13] -port A[13] -pin Y0_i I0[13] -pin Y0_i__0 I0[13] -pin Y0_i__1 I0[13] -pin Y0_i__2 I0[13] -pin Y0_i__3 I0[13] -pin Y0_i__4 I0[13] -pin Y0_i__5 I0[13] -pin Y0_i__7 I0[13] -pin Y0_i__8 I0[13] -pin Y0_i__9 I0[13] -pin Y_i__0 I9[13]
load net A[14] -attr @rip(#000000) A[14] -port A[14] -pin Y0_i I0[14] -pin Y0_i__0 I0[14] -pin Y0_i__1 I0[14] -pin Y0_i__2 I0[14] -pin Y0_i__3 I0[14] -pin Y0_i__4 I0[14] -pin Y0_i__5 I0[14] -pin Y0_i__7 I0[14] -pin Y0_i__8 I0[14] -pin Y0_i__9 I0[14] -pin Y_i__0 I9[14]
load net A[15] -attr @rip(#000000) A[15] -port A[15] -pin Y0_i I0[15] -pin Y0_i__0 I0[15] -pin Y0_i__1 I0[15] -pin Y0_i__2 I0[15] -pin Y0_i__3 I0[15] -pin Y0_i__4 I0[15] -pin Y0_i__5 I0[15] -pin Y0_i__7 I0[15] -pin Y0_i__8 I0[15] -pin Y0_i__9 I0[15] -pin Y_i__0 I9[15]
load net A[16] -attr @rip(#000000) A[16] -port A[16] -pin Y0_i I0[16] -pin Y0_i__0 I0[16] -pin Y0_i__1 I0[16] -pin Y0_i__2 I0[16] -pin Y0_i__3 I0[16] -pin Y0_i__4 I0[16] -pin Y0_i__5 I0[16] -pin Y0_i__7 I0[16] -pin Y0_i__8 I0[16] -pin Y0_i__9 I0[16] -pin Y_i__0 I9[16]
load net A[17] -attr @rip(#000000) A[17] -port A[17] -pin Y0_i I0[17] -pin Y0_i__0 I0[17] -pin Y0_i__1 I0[17] -pin Y0_i__2 I0[17] -pin Y0_i__3 I0[17] -pin Y0_i__4 I0[17] -pin Y0_i__5 I0[17] -pin Y0_i__7 I0[17] -pin Y0_i__8 I0[17] -pin Y0_i__9 I0[17] -pin Y_i__0 I9[17]
load net A[18] -attr @rip(#000000) A[18] -port A[18] -pin Y0_i I0[18] -pin Y0_i__0 I0[18] -pin Y0_i__1 I0[18] -pin Y0_i__2 I0[18] -pin Y0_i__3 I0[18] -pin Y0_i__4 I0[18] -pin Y0_i__5 I0[18] -pin Y0_i__7 I0[18] -pin Y0_i__8 I0[18] -pin Y0_i__9 I0[18] -pin Y_i__0 I9[18]
load net A[19] -attr @rip(#000000) A[19] -port A[19] -pin Y0_i I0[19] -pin Y0_i__0 I0[19] -pin Y0_i__1 I0[19] -pin Y0_i__2 I0[19] -pin Y0_i__3 I0[19] -pin Y0_i__4 I0[19] -pin Y0_i__5 I0[19] -pin Y0_i__7 I0[19] -pin Y0_i__8 I0[19] -pin Y0_i__9 I0[19] -pin Y_i__0 I9[19]
load net A[1] -attr @rip(#000000) A[1] -port A[1] -pin Y0_i I0[1] -pin Y0_i__0 I0[1] -pin Y0_i__1 I0[1] -pin Y0_i__2 I0[1] -pin Y0_i__3 I0[1] -pin Y0_i__4 I0[1] -pin Y0_i__5 I0[1] -pin Y0_i__7 I0[1] -pin Y0_i__8 I0[1] -pin Y0_i__9 I0[1] -pin Y_i__0 I9[1]
load net A[20] -attr @rip(#000000) A[20] -port A[20] -pin Y0_i I0[20] -pin Y0_i__0 I0[20] -pin Y0_i__1 I0[20] -pin Y0_i__2 I0[20] -pin Y0_i__3 I0[20] -pin Y0_i__4 I0[20] -pin Y0_i__5 I0[20] -pin Y0_i__7 I0[20] -pin Y0_i__8 I0[20] -pin Y0_i__9 I0[20] -pin Y_i__0 I9[20]
load net A[21] -attr @rip(#000000) A[21] -port A[21] -pin Y0_i I0[21] -pin Y0_i__0 I0[21] -pin Y0_i__1 I0[21] -pin Y0_i__2 I0[21] -pin Y0_i__3 I0[21] -pin Y0_i__4 I0[21] -pin Y0_i__5 I0[21] -pin Y0_i__7 I0[21] -pin Y0_i__8 I0[21] -pin Y0_i__9 I0[21] -pin Y_i__0 I9[21]
load net A[22] -attr @rip(#000000) A[22] -port A[22] -pin Y0_i I0[22] -pin Y0_i__0 I0[22] -pin Y0_i__1 I0[22] -pin Y0_i__2 I0[22] -pin Y0_i__3 I0[22] -pin Y0_i__4 I0[22] -pin Y0_i__5 I0[22] -pin Y0_i__7 I0[22] -pin Y0_i__8 I0[22] -pin Y0_i__9 I0[22] -pin Y_i__0 I9[22]
load net A[23] -attr @rip(#000000) A[23] -port A[23] -pin Y0_i I0[23] -pin Y0_i__0 I0[23] -pin Y0_i__1 I0[23] -pin Y0_i__2 I0[23] -pin Y0_i__3 I0[23] -pin Y0_i__4 I0[23] -pin Y0_i__5 I0[23] -pin Y0_i__7 I0[23] -pin Y0_i__8 I0[23] -pin Y0_i__9 I0[23] -pin Y_i__0 I9[23]
load net A[24] -attr @rip(#000000) A[24] -port A[24] -pin Y0_i I0[24] -pin Y0_i__0 I0[24] -pin Y0_i__1 I0[24] -pin Y0_i__2 I0[24] -pin Y0_i__3 I0[24] -pin Y0_i__4 I0[24] -pin Y0_i__5 I0[24] -pin Y0_i__7 I0[24] -pin Y0_i__8 I0[24] -pin Y0_i__9 I0[24] -pin Y_i__0 I9[24]
load net A[25] -attr @rip(#000000) A[25] -port A[25] -pin Y0_i I0[25] -pin Y0_i__0 I0[25] -pin Y0_i__1 I0[25] -pin Y0_i__2 I0[25] -pin Y0_i__3 I0[25] -pin Y0_i__4 I0[25] -pin Y0_i__5 I0[25] -pin Y0_i__7 I0[25] -pin Y0_i__8 I0[25] -pin Y0_i__9 I0[25] -pin Y_i__0 I9[25]
load net A[26] -attr @rip(#000000) A[26] -port A[26] -pin Y0_i I0[26] -pin Y0_i__0 I0[26] -pin Y0_i__1 I0[26] -pin Y0_i__2 I0[26] -pin Y0_i__3 I0[26] -pin Y0_i__4 I0[26] -pin Y0_i__5 I0[26] -pin Y0_i__7 I0[26] -pin Y0_i__8 I0[26] -pin Y0_i__9 I0[26] -pin Y_i__0 I9[26]
load net A[27] -attr @rip(#000000) A[27] -port A[27] -pin Y0_i I0[27] -pin Y0_i__0 I0[27] -pin Y0_i__1 I0[27] -pin Y0_i__2 I0[27] -pin Y0_i__3 I0[27] -pin Y0_i__4 I0[27] -pin Y0_i__5 I0[27] -pin Y0_i__7 I0[27] -pin Y0_i__8 I0[27] -pin Y0_i__9 I0[27] -pin Y_i__0 I9[27]
load net A[28] -attr @rip(#000000) A[28] -port A[28] -pin Y0_i I0[28] -pin Y0_i__0 I0[28] -pin Y0_i__1 I0[28] -pin Y0_i__2 I0[28] -pin Y0_i__3 I0[28] -pin Y0_i__4 I0[28] -pin Y0_i__5 I0[28] -pin Y0_i__7 I0[28] -pin Y0_i__8 I0[28] -pin Y0_i__9 I0[28] -pin Y_i__0 I9[28]
load net A[29] -attr @rip(#000000) A[29] -port A[29] -pin Y0_i I0[29] -pin Y0_i__0 I0[29] -pin Y0_i__1 I0[29] -pin Y0_i__2 I0[29] -pin Y0_i__3 I0[29] -pin Y0_i__4 I0[29] -pin Y0_i__5 I0[29] -pin Y0_i__7 I0[29] -pin Y0_i__8 I0[29] -pin Y0_i__9 I0[29] -pin Y_i__0 I9[29]
load net A[2] -attr @rip(#000000) A[2] -port A[2] -pin Y0_i I0[2] -pin Y0_i__0 I0[2] -pin Y0_i__1 I0[2] -pin Y0_i__2 I0[2] -pin Y0_i__3 I0[2] -pin Y0_i__4 I0[2] -pin Y0_i__5 I0[2] -pin Y0_i__7 I0[2] -pin Y0_i__8 I0[2] -pin Y0_i__9 I0[2] -pin Y_i__0 I9[2]
load net A[30] -attr @rip(#000000) A[30] -port A[30] -pin Y0_i I0[30] -pin Y0_i__0 I0[30] -pin Y0_i__1 I0[30] -pin Y0_i__2 I0[30] -pin Y0_i__3 I0[30] -pin Y0_i__4 I0[30] -pin Y0_i__5 I0[30] -pin Y0_i__7 I0[30] -pin Y0_i__8 I0[30] -pin Y0_i__9 I0[30] -pin Y_i__0 I9[30]
load net A[31] -attr @rip(#000000) A[31] -port A[31] -pin Y0_i I0[31] -pin Y0_i__0 I0[31] -pin Y0_i__1 I0[31] -pin Y0_i__2 I0[31] -pin Y0_i__3 I0[31] -pin Y0_i__4 I0[31] -pin Y0_i__5 I0[31] -pin Y0_i__7 I0[31] -pin Y0_i__8 I0[31] -pin Y0_i__9 I0[31] -pin Y_i__0 I9[31]
load net A[3] -attr @rip(#000000) A[3] -port A[3] -pin Y0_i I0[3] -pin Y0_i__0 I0[3] -pin Y0_i__1 I0[3] -pin Y0_i__2 I0[3] -pin Y0_i__3 I0[3] -pin Y0_i__4 I0[3] -pin Y0_i__5 I0[3] -pin Y0_i__7 I0[3] -pin Y0_i__8 I0[3] -pin Y0_i__9 I0[3] -pin Y_i__0 I9[3]
load net A[4] -attr @rip(#000000) A[4] -port A[4] -pin Y0_i I0[4] -pin Y0_i__0 I0[4] -pin Y0_i__1 I0[4] -pin Y0_i__2 I0[4] -pin Y0_i__3 I0[4] -pin Y0_i__4 I0[4] -pin Y0_i__5 I0[4] -pin Y0_i__7 I0[4] -pin Y0_i__8 I0[4] -pin Y0_i__9 I0[4] -pin Y_i__0 I9[4]
load net A[5] -attr @rip(#000000) A[5] -port A[5] -pin Y0_i I0[5] -pin Y0_i__0 I0[5] -pin Y0_i__1 I0[5] -pin Y0_i__2 I0[5] -pin Y0_i__3 I0[5] -pin Y0_i__4 I0[5] -pin Y0_i__5 I0[5] -pin Y0_i__7 I0[5] -pin Y0_i__8 I0[5] -pin Y0_i__9 I0[5] -pin Y_i__0 I9[5]
load net A[6] -attr @rip(#000000) A[6] -port A[6] -pin Y0_i I0[6] -pin Y0_i__0 I0[6] -pin Y0_i__1 I0[6] -pin Y0_i__2 I0[6] -pin Y0_i__3 I0[6] -pin Y0_i__4 I0[6] -pin Y0_i__5 I0[6] -pin Y0_i__7 I0[6] -pin Y0_i__8 I0[6] -pin Y0_i__9 I0[6] -pin Y_i__0 I9[6]
load net A[7] -attr @rip(#000000) A[7] -port A[7] -pin Y0_i I0[7] -pin Y0_i__0 I0[7] -pin Y0_i__1 I0[7] -pin Y0_i__2 I0[7] -pin Y0_i__3 I0[7] -pin Y0_i__4 I0[7] -pin Y0_i__5 I0[7] -pin Y0_i__7 I0[7] -pin Y0_i__8 I0[7] -pin Y0_i__9 I0[7] -pin Y_i__0 I9[7]
load net A[8] -attr @rip(#000000) A[8] -port A[8] -pin Y0_i I0[8] -pin Y0_i__0 I0[8] -pin Y0_i__1 I0[8] -pin Y0_i__2 I0[8] -pin Y0_i__3 I0[8] -pin Y0_i__4 I0[8] -pin Y0_i__5 I0[8] -pin Y0_i__7 I0[8] -pin Y0_i__8 I0[8] -pin Y0_i__9 I0[8] -pin Y_i__0 I9[8]
load net A[9] -attr @rip(#000000) A[9] -port A[9] -pin Y0_i I0[9] -pin Y0_i__0 I0[9] -pin Y0_i__1 I0[9] -pin Y0_i__2 I0[9] -pin Y0_i__3 I0[9] -pin Y0_i__4 I0[9] -pin Y0_i__5 I0[9] -pin Y0_i__7 I0[9] -pin Y0_i__8 I0[9] -pin Y0_i__9 I0[9] -pin Y_i__0 I9[9]
load net B[0] -attr @rip(#000000) B[0] -port B[0] -pin Y0_i I1[0] -pin Y0_i__0 I1[0] -pin Y0_i__1 I1[0] -pin Y0_i__2 I1[0] -pin Y0_i__3 I1[0] -pin Y0_i__4 I1[0] -pin Y0_i__5 I1[0] -pin Y0_i__7 I1[0] -pin Y0_i__8 I1[0] -pin Y0_i__9 I1[0]
load net B[10] -attr @rip(#000000) B[10] -port B[10] -pin Y0_i I1[10] -pin Y0_i__0 I1[10] -pin Y0_i__1 I1[10] -pin Y0_i__2 I1[10] -pin Y0_i__3 I1[10] -pin Y0_i__4 I1[10] -pin Y0_i__5 I1[10] -pin Y0_i__7 I1[10] -pin Y0_i__8 I1[10] -pin Y0_i__9 I1[10]
load net B[11] -attr @rip(#000000) B[11] -port B[11] -pin Y0_i I1[11] -pin Y0_i__0 I1[11] -pin Y0_i__1 I1[11] -pin Y0_i__2 I1[11] -pin Y0_i__3 I1[11] -pin Y0_i__4 I1[11] -pin Y0_i__5 I1[11] -pin Y0_i__7 I1[11] -pin Y0_i__8 I1[11] -pin Y0_i__9 I1[11]
load net B[12] -attr @rip(#000000) B[12] -port B[12] -pin Y0_i I1[12] -pin Y0_i__0 I1[12] -pin Y0_i__1 I1[12] -pin Y0_i__2 I1[12] -pin Y0_i__3 I1[12] -pin Y0_i__4 I1[12] -pin Y0_i__5 I1[12] -pin Y0_i__7 I1[12] -pin Y0_i__8 I1[12] -pin Y0_i__9 I1[12]
load net B[13] -attr @rip(#000000) B[13] -port B[13] -pin Y0_i I1[13] -pin Y0_i__0 I1[13] -pin Y0_i__1 I1[13] -pin Y0_i__2 I1[13] -pin Y0_i__3 I1[13] -pin Y0_i__4 I1[13] -pin Y0_i__5 I1[13] -pin Y0_i__7 I1[13] -pin Y0_i__8 I1[13] -pin Y0_i__9 I1[13]
load net B[14] -attr @rip(#000000) B[14] -port B[14] -pin Y0_i I1[14] -pin Y0_i__0 I1[14] -pin Y0_i__1 I1[14] -pin Y0_i__2 I1[14] -pin Y0_i__3 I1[14] -pin Y0_i__4 I1[14] -pin Y0_i__5 I1[14] -pin Y0_i__7 I1[14] -pin Y0_i__8 I1[14] -pin Y0_i__9 I1[14]
load net B[15] -attr @rip(#000000) B[15] -port B[15] -pin Y0_i I1[15] -pin Y0_i__0 I1[15] -pin Y0_i__1 I1[15] -pin Y0_i__2 I1[15] -pin Y0_i__3 I1[15] -pin Y0_i__4 I1[15] -pin Y0_i__5 I1[15] -pin Y0_i__7 I1[15] -pin Y0_i__8 I1[15] -pin Y0_i__9 I1[15]
load net B[16] -attr @rip(#000000) B[16] -port B[16] -pin Y0_i I1[16] -pin Y0_i__0 I1[16] -pin Y0_i__1 I1[16] -pin Y0_i__2 I1[16] -pin Y0_i__3 I1[16] -pin Y0_i__4 I1[16] -pin Y0_i__5 I1[16] -pin Y0_i__7 I1[16] -pin Y0_i__8 I1[16] -pin Y0_i__9 I1[16]
load net B[17] -attr @rip(#000000) B[17] -port B[17] -pin Y0_i I1[17] -pin Y0_i__0 I1[17] -pin Y0_i__1 I1[17] -pin Y0_i__2 I1[17] -pin Y0_i__3 I1[17] -pin Y0_i__4 I1[17] -pin Y0_i__5 I1[17] -pin Y0_i__7 I1[17] -pin Y0_i__8 I1[17] -pin Y0_i__9 I1[17]
load net B[18] -attr @rip(#000000) B[18] -port B[18] -pin Y0_i I1[18] -pin Y0_i__0 I1[18] -pin Y0_i__1 I1[18] -pin Y0_i__2 I1[18] -pin Y0_i__3 I1[18] -pin Y0_i__4 I1[18] -pin Y0_i__5 I1[18] -pin Y0_i__7 I1[18] -pin Y0_i__8 I1[18] -pin Y0_i__9 I1[18]
load net B[19] -attr @rip(#000000) B[19] -port B[19] -pin Y0_i I1[19] -pin Y0_i__0 I1[19] -pin Y0_i__1 I1[19] -pin Y0_i__2 I1[19] -pin Y0_i__3 I1[19] -pin Y0_i__4 I1[19] -pin Y0_i__5 I1[19] -pin Y0_i__7 I1[19] -pin Y0_i__8 I1[19] -pin Y0_i__9 I1[19]
load net B[1] -attr @rip(#000000) B[1] -port B[1] -pin Y0_i I1[1] -pin Y0_i__0 I1[1] -pin Y0_i__1 I1[1] -pin Y0_i__2 I1[1] -pin Y0_i__3 I1[1] -pin Y0_i__4 I1[1] -pin Y0_i__5 I1[1] -pin Y0_i__7 I1[1] -pin Y0_i__8 I1[1] -pin Y0_i__9 I1[1]
load net B[20] -attr @rip(#000000) B[20] -port B[20] -pin Y0_i I1[20] -pin Y0_i__0 I1[20] -pin Y0_i__1 I1[20] -pin Y0_i__2 I1[20] -pin Y0_i__3 I1[20] -pin Y0_i__4 I1[20] -pin Y0_i__5 I1[20] -pin Y0_i__7 I1[20] -pin Y0_i__8 I1[20] -pin Y0_i__9 I1[20]
load net B[21] -attr @rip(#000000) B[21] -port B[21] -pin Y0_i I1[21] -pin Y0_i__0 I1[21] -pin Y0_i__1 I1[21] -pin Y0_i__2 I1[21] -pin Y0_i__3 I1[21] -pin Y0_i__4 I1[21] -pin Y0_i__5 I1[21] -pin Y0_i__7 I1[21] -pin Y0_i__8 I1[21] -pin Y0_i__9 I1[21]
load net B[22] -attr @rip(#000000) B[22] -port B[22] -pin Y0_i I1[22] -pin Y0_i__0 I1[22] -pin Y0_i__1 I1[22] -pin Y0_i__2 I1[22] -pin Y0_i__3 I1[22] -pin Y0_i__4 I1[22] -pin Y0_i__5 I1[22] -pin Y0_i__7 I1[22] -pin Y0_i__8 I1[22] -pin Y0_i__9 I1[22]
load net B[23] -attr @rip(#000000) B[23] -port B[23] -pin Y0_i I1[23] -pin Y0_i__0 I1[23] -pin Y0_i__1 I1[23] -pin Y0_i__2 I1[23] -pin Y0_i__3 I1[23] -pin Y0_i__4 I1[23] -pin Y0_i__5 I1[23] -pin Y0_i__7 I1[23] -pin Y0_i__8 I1[23] -pin Y0_i__9 I1[23]
load net B[24] -attr @rip(#000000) B[24] -port B[24] -pin Y0_i I1[24] -pin Y0_i__0 I1[24] -pin Y0_i__1 I1[24] -pin Y0_i__2 I1[24] -pin Y0_i__3 I1[24] -pin Y0_i__4 I1[24] -pin Y0_i__5 I1[24] -pin Y0_i__7 I1[24] -pin Y0_i__8 I1[24] -pin Y0_i__9 I1[24]
load net B[25] -attr @rip(#000000) B[25] -port B[25] -pin Y0_i I1[25] -pin Y0_i__0 I1[25] -pin Y0_i__1 I1[25] -pin Y0_i__2 I1[25] -pin Y0_i__3 I1[25] -pin Y0_i__4 I1[25] -pin Y0_i__5 I1[25] -pin Y0_i__7 I1[25] -pin Y0_i__8 I1[25] -pin Y0_i__9 I1[25]
load net B[26] -attr @rip(#000000) B[26] -port B[26] -pin Y0_i I1[26] -pin Y0_i__0 I1[26] -pin Y0_i__1 I1[26] -pin Y0_i__2 I1[26] -pin Y0_i__3 I1[26] -pin Y0_i__4 I1[26] -pin Y0_i__5 I1[26] -pin Y0_i__7 I1[26] -pin Y0_i__8 I1[26] -pin Y0_i__9 I1[26]
load net B[27] -attr @rip(#000000) B[27] -port B[27] -pin Y0_i I1[27] -pin Y0_i__0 I1[27] -pin Y0_i__1 I1[27] -pin Y0_i__2 I1[27] -pin Y0_i__3 I1[27] -pin Y0_i__4 I1[27] -pin Y0_i__5 I1[27] -pin Y0_i__7 I1[27] -pin Y0_i__8 I1[27] -pin Y0_i__9 I1[27]
load net B[28] -attr @rip(#000000) B[28] -port B[28] -pin Y0_i I1[28] -pin Y0_i__0 I1[28] -pin Y0_i__1 I1[28] -pin Y0_i__2 I1[28] -pin Y0_i__3 I1[28] -pin Y0_i__4 I1[28] -pin Y0_i__5 I1[28] -pin Y0_i__7 I1[28] -pin Y0_i__8 I1[28] -pin Y0_i__9 I1[28]
load net B[29] -attr @rip(#000000) B[29] -port B[29] -pin Y0_i I1[29] -pin Y0_i__0 I1[29] -pin Y0_i__1 I1[29] -pin Y0_i__2 I1[29] -pin Y0_i__3 I1[29] -pin Y0_i__4 I1[29] -pin Y0_i__5 I1[29] -pin Y0_i__7 I1[29] -pin Y0_i__8 I1[29] -pin Y0_i__9 I1[29]
load net B[2] -attr @rip(#000000) B[2] -port B[2] -pin Y0_i I1[2] -pin Y0_i__0 I1[2] -pin Y0_i__1 I1[2] -pin Y0_i__2 I1[2] -pin Y0_i__3 I1[2] -pin Y0_i__4 I1[2] -pin Y0_i__5 I1[2] -pin Y0_i__7 I1[2] -pin Y0_i__8 I1[2] -pin Y0_i__9 I1[2]
load net B[30] -attr @rip(#000000) B[30] -port B[30] -pin Y0_i I1[30] -pin Y0_i__0 I1[30] -pin Y0_i__1 I1[30] -pin Y0_i__2 I1[30] -pin Y0_i__3 I1[30] -pin Y0_i__4 I1[30] -pin Y0_i__5 I1[30] -pin Y0_i__7 I1[30] -pin Y0_i__8 I1[30] -pin Y0_i__9 I1[30]
load net B[31] -attr @rip(#000000) B[31] -port B[31] -pin Y0_i I1[31] -pin Y0_i__0 I1[31] -pin Y0_i__1 I1[31] -pin Y0_i__2 I1[31] -pin Y0_i__3 I1[31] -pin Y0_i__4 I1[31] -pin Y0_i__5 I1[31] -pin Y0_i__7 I1[31] -pin Y0_i__8 I1[31] -pin Y0_i__9 I1[31]
load net B[3] -attr @rip(#000000) B[3] -port B[3] -pin Y0_i I1[3] -pin Y0_i__0 I1[3] -pin Y0_i__1 I1[3] -pin Y0_i__2 I1[3] -pin Y0_i__3 I1[3] -pin Y0_i__4 I1[3] -pin Y0_i__5 I1[3] -pin Y0_i__7 I1[3] -pin Y0_i__8 I1[3] -pin Y0_i__9 I1[3]
load net B[4] -attr @rip(#000000) B[4] -port B[4] -pin Y0_i I1[4] -pin Y0_i__0 I1[4] -pin Y0_i__1 I1[4] -pin Y0_i__2 I1[4] -pin Y0_i__3 I1[4] -pin Y0_i__4 I1[4] -pin Y0_i__5 I1[4] -pin Y0_i__7 I1[4] -pin Y0_i__8 I1[4] -pin Y0_i__9 I1[4]
load net B[5] -attr @rip(#000000) B[5] -port B[5] -pin Y0_i I1[5] -pin Y0_i__0 I1[5] -pin Y0_i__1 I1[5] -pin Y0_i__2 I1[5] -pin Y0_i__3 I1[5] -pin Y0_i__4 I1[5] -pin Y0_i__5 I1[5] -pin Y0_i__7 I1[5] -pin Y0_i__8 I1[5] -pin Y0_i__9 I1[5]
load net B[6] -attr @rip(#000000) B[6] -port B[6] -pin Y0_i I1[6] -pin Y0_i__0 I1[6] -pin Y0_i__1 I1[6] -pin Y0_i__2 I1[6] -pin Y0_i__3 I1[6] -pin Y0_i__4 I1[6] -pin Y0_i__5 I1[6] -pin Y0_i__7 I1[6] -pin Y0_i__8 I1[6] -pin Y0_i__9 I1[6]
load net B[7] -attr @rip(#000000) B[7] -port B[7] -pin Y0_i I1[7] -pin Y0_i__0 I1[7] -pin Y0_i__1 I1[7] -pin Y0_i__2 I1[7] -pin Y0_i__3 I1[7] -pin Y0_i__4 I1[7] -pin Y0_i__5 I1[7] -pin Y0_i__7 I1[7] -pin Y0_i__8 I1[7] -pin Y0_i__9 I1[7]
load net B[8] -attr @rip(#000000) B[8] -port B[8] -pin Y0_i I1[8] -pin Y0_i__0 I1[8] -pin Y0_i__1 I1[8] -pin Y0_i__2 I1[8] -pin Y0_i__3 I1[8] -pin Y0_i__4 I1[8] -pin Y0_i__5 I1[8] -pin Y0_i__7 I1[8] -pin Y0_i__8 I1[8] -pin Y0_i__9 I1[8]
load net B[9] -attr @rip(#000000) B[9] -port B[9] -pin Y0_i I1[9] -pin Y0_i__0 I1[9] -pin Y0_i__1 I1[9] -pin Y0_i__2 I1[9] -pin Y0_i__3 I1[9] -pin Y0_i__4 I1[9] -pin Y0_i__5 I1[9] -pin Y0_i__7 I1[9] -pin Y0_i__8 I1[9] -pin Y0_i__9 I1[9]
load net Y0[0] -attr @rip(#000000) O[0] -pin Y0_i__5 O[0] -pin Y0_i__6 I0[0] -pin Y_i__0 I7[0]
load net Y0[10] -attr @rip(#000000) O[10] -pin Y0_i__5 O[10] -pin Y0_i__6 I0[10] -pin Y_i__0 I7[10]
load net Y0[11] -attr @rip(#000000) O[11] -pin Y0_i__5 O[11] -pin Y0_i__6 I0[11] -pin Y_i__0 I7[11]
load net Y0[12] -attr @rip(#000000) O[12] -pin Y0_i__5 O[12] -pin Y0_i__6 I0[12] -pin Y_i__0 I7[12]
load net Y0[13] -attr @rip(#000000) O[13] -pin Y0_i__5 O[13] -pin Y0_i__6 I0[13] -pin Y_i__0 I7[13]
load net Y0[14] -attr @rip(#000000) O[14] -pin Y0_i__5 O[14] -pin Y0_i__6 I0[14] -pin Y_i__0 I7[14]
load net Y0[15] -attr @rip(#000000) O[15] -pin Y0_i__5 O[15] -pin Y0_i__6 I0[15] -pin Y_i__0 I7[15]
load net Y0[16] -attr @rip(#000000) O[16] -pin Y0_i__5 O[16] -pin Y0_i__6 I0[16] -pin Y_i__0 I7[16]
load net Y0[17] -attr @rip(#000000) O[17] -pin Y0_i__5 O[17] -pin Y0_i__6 I0[17] -pin Y_i__0 I7[17]
load net Y0[18] -attr @rip(#000000) O[18] -pin Y0_i__5 O[18] -pin Y0_i__6 I0[18] -pin Y_i__0 I7[18]
load net Y0[19] -attr @rip(#000000) O[19] -pin Y0_i__5 O[19] -pin Y0_i__6 I0[19] -pin Y_i__0 I7[19]
load net Y0[1] -attr @rip(#000000) O[1] -pin Y0_i__5 O[1] -pin Y0_i__6 I0[1] -pin Y_i__0 I7[1]
load net Y0[20] -attr @rip(#000000) O[20] -pin Y0_i__5 O[20] -pin Y0_i__6 I0[20] -pin Y_i__0 I7[20]
load net Y0[21] -attr @rip(#000000) O[21] -pin Y0_i__5 O[21] -pin Y0_i__6 I0[21] -pin Y_i__0 I7[21]
load net Y0[22] -attr @rip(#000000) O[22] -pin Y0_i__5 O[22] -pin Y0_i__6 I0[22] -pin Y_i__0 I7[22]
load net Y0[23] -attr @rip(#000000) O[23] -pin Y0_i__5 O[23] -pin Y0_i__6 I0[23] -pin Y_i__0 I7[23]
load net Y0[24] -attr @rip(#000000) O[24] -pin Y0_i__5 O[24] -pin Y0_i__6 I0[24] -pin Y_i__0 I7[24]
load net Y0[25] -attr @rip(#000000) O[25] -pin Y0_i__5 O[25] -pin Y0_i__6 I0[25] -pin Y_i__0 I7[25]
load net Y0[26] -attr @rip(#000000) O[26] -pin Y0_i__5 O[26] -pin Y0_i__6 I0[26] -pin Y_i__0 I7[26]
load net Y0[27] -attr @rip(#000000) O[27] -pin Y0_i__5 O[27] -pin Y0_i__6 I0[27] -pin Y_i__0 I7[27]
load net Y0[28] -attr @rip(#000000) O[28] -pin Y0_i__5 O[28] -pin Y0_i__6 I0[28] -pin Y_i__0 I7[28]
load net Y0[29] -attr @rip(#000000) O[29] -pin Y0_i__5 O[29] -pin Y0_i__6 I0[29] -pin Y_i__0 I7[29]
load net Y0[2] -attr @rip(#000000) O[2] -pin Y0_i__5 O[2] -pin Y0_i__6 I0[2] -pin Y_i__0 I7[2]
load net Y0[30] -attr @rip(#000000) O[30] -pin Y0_i__5 O[30] -pin Y0_i__6 I0[30] -pin Y_i__0 I7[30]
load net Y0[31] -attr @rip(#000000) O[31] -pin Y0_i__5 O[31] -pin Y0_i__6 I0[31] -pin Y_i__0 I7[31]
load net Y0[3] -attr @rip(#000000) O[3] -pin Y0_i__5 O[3] -pin Y0_i__6 I0[3] -pin Y_i__0 I7[3]
load net Y0[4] -attr @rip(#000000) O[4] -pin Y0_i__5 O[4] -pin Y0_i__6 I0[4] -pin Y_i__0 I7[4]
load net Y0[5] -attr @rip(#000000) O[5] -pin Y0_i__5 O[5] -pin Y0_i__6 I0[5] -pin Y_i__0 I7[5]
load net Y0[6] -attr @rip(#000000) O[6] -pin Y0_i__5 O[6] -pin Y0_i__6 I0[6] -pin Y_i__0 I7[6]
load net Y0[7] -attr @rip(#000000) O[7] -pin Y0_i__5 O[7] -pin Y0_i__6 I0[7] -pin Y_i__0 I7[7]
load net Y0[8] -attr @rip(#000000) O[8] -pin Y0_i__5 O[8] -pin Y0_i__6 I0[8] -pin Y_i__0 I7[8]
load net Y0[9] -attr @rip(#000000) O[9] -pin Y0_i__5 O[9] -pin Y0_i__6 I0[9] -pin Y_i__0 I7[9]
load net Y0_i__0_n_0 -pin Y0_i__0 O -pin Y_i I1 -pin Y_i__0 I1
netloc Y0_i__0_n_0 1 1 2 290 340 600
load net Y0_i__1_n_0 -attr @rip(#000000) O[31] -pin Y0_i__1 O[31] -pin Y_i__0 I3[31]
load net Y0_i__1_n_1 -attr @rip(#000000) O[30] -pin Y0_i__1 O[30] -pin Y_i__0 I3[30]
load net Y0_i__1_n_10 -attr @rip(#000000) O[21] -pin Y0_i__1 O[21] -pin Y_i__0 I3[21]
load net Y0_i__1_n_11 -attr @rip(#000000) O[20] -pin Y0_i__1 O[20] -pin Y_i__0 I3[20]
load net Y0_i__1_n_12 -attr @rip(#000000) O[19] -pin Y0_i__1 O[19] -pin Y_i__0 I3[19]
load net Y0_i__1_n_13 -attr @rip(#000000) O[18] -pin Y0_i__1 O[18] -pin Y_i__0 I3[18]
load net Y0_i__1_n_14 -attr @rip(#000000) O[17] -pin Y0_i__1 O[17] -pin Y_i__0 I3[17]
load net Y0_i__1_n_15 -attr @rip(#000000) O[16] -pin Y0_i__1 O[16] -pin Y_i__0 I3[16]
load net Y0_i__1_n_16 -attr @rip(#000000) O[15] -pin Y0_i__1 O[15] -pin Y_i__0 I3[15]
load net Y0_i__1_n_17 -attr @rip(#000000) O[14] -pin Y0_i__1 O[14] -pin Y_i__0 I3[14]
load net Y0_i__1_n_18 -attr @rip(#000000) O[13] -pin Y0_i__1 O[13] -pin Y_i__0 I3[13]
load net Y0_i__1_n_19 -attr @rip(#000000) O[12] -pin Y0_i__1 O[12] -pin Y_i__0 I3[12]
load net Y0_i__1_n_2 -attr @rip(#000000) O[29] -pin Y0_i__1 O[29] -pin Y_i__0 I3[29]
load net Y0_i__1_n_20 -attr @rip(#000000) O[11] -pin Y0_i__1 O[11] -pin Y_i__0 I3[11]
load net Y0_i__1_n_21 -attr @rip(#000000) O[10] -pin Y0_i__1 O[10] -pin Y_i__0 I3[10]
load net Y0_i__1_n_22 -attr @rip(#000000) O[9] -pin Y0_i__1 O[9] -pin Y_i__0 I3[9]
load net Y0_i__1_n_23 -attr @rip(#000000) O[8] -pin Y0_i__1 O[8] -pin Y_i__0 I3[8]
load net Y0_i__1_n_24 -attr @rip(#000000) O[7] -pin Y0_i__1 O[7] -pin Y_i__0 I3[7]
load net Y0_i__1_n_25 -attr @rip(#000000) O[6] -pin Y0_i__1 O[6] -pin Y_i__0 I3[6]
load net Y0_i__1_n_26 -attr @rip(#000000) O[5] -pin Y0_i__1 O[5] -pin Y_i__0 I3[5]
load net Y0_i__1_n_27 -attr @rip(#000000) O[4] -pin Y0_i__1 O[4] -pin Y_i__0 I3[4]
load net Y0_i__1_n_28 -attr @rip(#000000) O[3] -pin Y0_i__1 O[3] -pin Y_i__0 I3[3]
load net Y0_i__1_n_29 -attr @rip(#000000) O[2] -pin Y0_i__1 O[2] -pin Y_i__0 I3[2]
load net Y0_i__1_n_3 -attr @rip(#000000) O[28] -pin Y0_i__1 O[28] -pin Y_i__0 I3[28]
load net Y0_i__1_n_30 -attr @rip(#000000) O[1] -pin Y0_i__1 O[1] -pin Y_i__0 I3[1]
load net Y0_i__1_n_31 -attr @rip(#000000) O[0] -pin Y0_i__1 O[0] -pin Y_i__0 I3[0]
load net Y0_i__1_n_4 -attr @rip(#000000) O[27] -pin Y0_i__1 O[27] -pin Y_i__0 I3[27]
load net Y0_i__1_n_5 -attr @rip(#000000) O[26] -pin Y0_i__1 O[26] -pin Y_i__0 I3[26]
load net Y0_i__1_n_6 -attr @rip(#000000) O[25] -pin Y0_i__1 O[25] -pin Y_i__0 I3[25]
load net Y0_i__1_n_7 -attr @rip(#000000) O[24] -pin Y0_i__1 O[24] -pin Y_i__0 I3[24]
load net Y0_i__1_n_8 -attr @rip(#000000) O[23] -pin Y0_i__1 O[23] -pin Y_i__0 I3[23]
load net Y0_i__1_n_9 -attr @rip(#000000) O[22] -pin Y0_i__1 O[22] -pin Y_i__0 I3[22]
load net Y0_i__2_n_0 -attr @rip(#000000) O[31] -pin Y0_i__2 O[31] -pin Y_i__0 I4[31]
load net Y0_i__2_n_1 -attr @rip(#000000) O[30] -pin Y0_i__2 O[30] -pin Y_i__0 I4[30]
load net Y0_i__2_n_10 -attr @rip(#000000) O[21] -pin Y0_i__2 O[21] -pin Y_i__0 I4[21]
load net Y0_i__2_n_11 -attr @rip(#000000) O[20] -pin Y0_i__2 O[20] -pin Y_i__0 I4[20]
load net Y0_i__2_n_12 -attr @rip(#000000) O[19] -pin Y0_i__2 O[19] -pin Y_i__0 I4[19]
load net Y0_i__2_n_13 -attr @rip(#000000) O[18] -pin Y0_i__2 O[18] -pin Y_i__0 I4[18]
load net Y0_i__2_n_14 -attr @rip(#000000) O[17] -pin Y0_i__2 O[17] -pin Y_i__0 I4[17]
load net Y0_i__2_n_15 -attr @rip(#000000) O[16] -pin Y0_i__2 O[16] -pin Y_i__0 I4[16]
load net Y0_i__2_n_16 -attr @rip(#000000) O[15] -pin Y0_i__2 O[15] -pin Y_i__0 I4[15]
load net Y0_i__2_n_17 -attr @rip(#000000) O[14] -pin Y0_i__2 O[14] -pin Y_i__0 I4[14]
load net Y0_i__2_n_18 -attr @rip(#000000) O[13] -pin Y0_i__2 O[13] -pin Y_i__0 I4[13]
load net Y0_i__2_n_19 -attr @rip(#000000) O[12] -pin Y0_i__2 O[12] -pin Y_i__0 I4[12]
load net Y0_i__2_n_2 -attr @rip(#000000) O[29] -pin Y0_i__2 O[29] -pin Y_i__0 I4[29]
load net Y0_i__2_n_20 -attr @rip(#000000) O[11] -pin Y0_i__2 O[11] -pin Y_i__0 I4[11]
load net Y0_i__2_n_21 -attr @rip(#000000) O[10] -pin Y0_i__2 O[10] -pin Y_i__0 I4[10]
load net Y0_i__2_n_22 -attr @rip(#000000) O[9] -pin Y0_i__2 O[9] -pin Y_i__0 I4[9]
load net Y0_i__2_n_23 -attr @rip(#000000) O[8] -pin Y0_i__2 O[8] -pin Y_i__0 I4[8]
load net Y0_i__2_n_24 -attr @rip(#000000) O[7] -pin Y0_i__2 O[7] -pin Y_i__0 I4[7]
load net Y0_i__2_n_25 -attr @rip(#000000) O[6] -pin Y0_i__2 O[6] -pin Y_i__0 I4[6]
load net Y0_i__2_n_26 -attr @rip(#000000) O[5] -pin Y0_i__2 O[5] -pin Y_i__0 I4[5]
load net Y0_i__2_n_27 -attr @rip(#000000) O[4] -pin Y0_i__2 O[4] -pin Y_i__0 I4[4]
load net Y0_i__2_n_28 -attr @rip(#000000) O[3] -pin Y0_i__2 O[3] -pin Y_i__0 I4[3]
load net Y0_i__2_n_29 -attr @rip(#000000) O[2] -pin Y0_i__2 O[2] -pin Y_i__0 I4[2]
load net Y0_i__2_n_3 -attr @rip(#000000) O[28] -pin Y0_i__2 O[28] -pin Y_i__0 I4[28]
load net Y0_i__2_n_30 -attr @rip(#000000) O[1] -pin Y0_i__2 O[1] -pin Y_i__0 I4[1]
load net Y0_i__2_n_31 -attr @rip(#000000) O[0] -pin Y0_i__2 O[0] -pin Y_i__0 I4[0]
load net Y0_i__2_n_4 -attr @rip(#000000) O[27] -pin Y0_i__2 O[27] -pin Y_i__0 I4[27]
load net Y0_i__2_n_5 -attr @rip(#000000) O[26] -pin Y0_i__2 O[26] -pin Y_i__0 I4[26]
load net Y0_i__2_n_6 -attr @rip(#000000) O[25] -pin Y0_i__2 O[25] -pin Y_i__0 I4[25]
load net Y0_i__2_n_7 -attr @rip(#000000) O[24] -pin Y0_i__2 O[24] -pin Y_i__0 I4[24]
load net Y0_i__2_n_8 -attr @rip(#000000) O[23] -pin Y0_i__2 O[23] -pin Y_i__0 I4[23]
load net Y0_i__2_n_9 -attr @rip(#000000) O[22] -pin Y0_i__2 O[22] -pin Y_i__0 I4[22]
load net Y0_i__3_n_0 -attr @rip(#000000) O[31] -pin Y0_i__3 O[31] -pin Y_i__0 I5[31]
load net Y0_i__3_n_1 -attr @rip(#000000) O[30] -pin Y0_i__3 O[30] -pin Y_i__0 I5[30]
load net Y0_i__3_n_10 -attr @rip(#000000) O[21] -pin Y0_i__3 O[21] -pin Y_i__0 I5[21]
load net Y0_i__3_n_11 -attr @rip(#000000) O[20] -pin Y0_i__3 O[20] -pin Y_i__0 I5[20]
load net Y0_i__3_n_12 -attr @rip(#000000) O[19] -pin Y0_i__3 O[19] -pin Y_i__0 I5[19]
load net Y0_i__3_n_13 -attr @rip(#000000) O[18] -pin Y0_i__3 O[18] -pin Y_i__0 I5[18]
load net Y0_i__3_n_14 -attr @rip(#000000) O[17] -pin Y0_i__3 O[17] -pin Y_i__0 I5[17]
load net Y0_i__3_n_15 -attr @rip(#000000) O[16] -pin Y0_i__3 O[16] -pin Y_i__0 I5[16]
load net Y0_i__3_n_16 -attr @rip(#000000) O[15] -pin Y0_i__3 O[15] -pin Y_i__0 I5[15]
load net Y0_i__3_n_17 -attr @rip(#000000) O[14] -pin Y0_i__3 O[14] -pin Y_i__0 I5[14]
load net Y0_i__3_n_18 -attr @rip(#000000) O[13] -pin Y0_i__3 O[13] -pin Y_i__0 I5[13]
load net Y0_i__3_n_19 -attr @rip(#000000) O[12] -pin Y0_i__3 O[12] -pin Y_i__0 I5[12]
load net Y0_i__3_n_2 -attr @rip(#000000) O[29] -pin Y0_i__3 O[29] -pin Y_i__0 I5[29]
load net Y0_i__3_n_20 -attr @rip(#000000) O[11] -pin Y0_i__3 O[11] -pin Y_i__0 I5[11]
load net Y0_i__3_n_21 -attr @rip(#000000) O[10] -pin Y0_i__3 O[10] -pin Y_i__0 I5[10]
load net Y0_i__3_n_22 -attr @rip(#000000) O[9] -pin Y0_i__3 O[9] -pin Y_i__0 I5[9]
load net Y0_i__3_n_23 -attr @rip(#000000) O[8] -pin Y0_i__3 O[8] -pin Y_i__0 I5[8]
load net Y0_i__3_n_24 -attr @rip(#000000) O[7] -pin Y0_i__3 O[7] -pin Y_i__0 I5[7]
load net Y0_i__3_n_25 -attr @rip(#000000) O[6] -pin Y0_i__3 O[6] -pin Y_i__0 I5[6]
load net Y0_i__3_n_26 -attr @rip(#000000) O[5] -pin Y0_i__3 O[5] -pin Y_i__0 I5[5]
load net Y0_i__3_n_27 -attr @rip(#000000) O[4] -pin Y0_i__3 O[4] -pin Y_i__0 I5[4]
load net Y0_i__3_n_28 -attr @rip(#000000) O[3] -pin Y0_i__3 O[3] -pin Y_i__0 I5[3]
load net Y0_i__3_n_29 -attr @rip(#000000) O[2] -pin Y0_i__3 O[2] -pin Y_i__0 I5[2]
load net Y0_i__3_n_3 -attr @rip(#000000) O[28] -pin Y0_i__3 O[28] -pin Y_i__0 I5[28]
load net Y0_i__3_n_30 -attr @rip(#000000) O[1] -pin Y0_i__3 O[1] -pin Y_i__0 I5[1]
load net Y0_i__3_n_31 -attr @rip(#000000) O[0] -pin Y0_i__3 O[0] -pin Y_i__0 I5[0]
load net Y0_i__3_n_4 -attr @rip(#000000) O[27] -pin Y0_i__3 O[27] -pin Y_i__0 I5[27]
load net Y0_i__3_n_5 -attr @rip(#000000) O[26] -pin Y0_i__3 O[26] -pin Y_i__0 I5[26]
load net Y0_i__3_n_6 -attr @rip(#000000) O[25] -pin Y0_i__3 O[25] -pin Y_i__0 I5[25]
load net Y0_i__3_n_7 -attr @rip(#000000) O[24] -pin Y0_i__3 O[24] -pin Y_i__0 I5[24]
load net Y0_i__3_n_8 -attr @rip(#000000) O[23] -pin Y0_i__3 O[23] -pin Y_i__0 I5[23]
load net Y0_i__3_n_9 -attr @rip(#000000) O[22] -pin Y0_i__3 O[22] -pin Y_i__0 I5[22]
load net Y0_i__4_n_0 -attr @rip(#000000) O[31] -pin Y0_i__4 O[31] -pin Y_i__0 I6[31]
load net Y0_i__4_n_1 -attr @rip(#000000) O[30] -pin Y0_i__4 O[30] -pin Y_i__0 I6[30]
load net Y0_i__4_n_10 -attr @rip(#000000) O[21] -pin Y0_i__4 O[21] -pin Y_i__0 I6[21]
load net Y0_i__4_n_11 -attr @rip(#000000) O[20] -pin Y0_i__4 O[20] -pin Y_i__0 I6[20]
load net Y0_i__4_n_12 -attr @rip(#000000) O[19] -pin Y0_i__4 O[19] -pin Y_i__0 I6[19]
load net Y0_i__4_n_13 -attr @rip(#000000) O[18] -pin Y0_i__4 O[18] -pin Y_i__0 I6[18]
load net Y0_i__4_n_14 -attr @rip(#000000) O[17] -pin Y0_i__4 O[17] -pin Y_i__0 I6[17]
load net Y0_i__4_n_15 -attr @rip(#000000) O[16] -pin Y0_i__4 O[16] -pin Y_i__0 I6[16]
load net Y0_i__4_n_16 -attr @rip(#000000) O[15] -pin Y0_i__4 O[15] -pin Y_i__0 I6[15]
load net Y0_i__4_n_17 -attr @rip(#000000) O[14] -pin Y0_i__4 O[14] -pin Y_i__0 I6[14]
load net Y0_i__4_n_18 -attr @rip(#000000) O[13] -pin Y0_i__4 O[13] -pin Y_i__0 I6[13]
load net Y0_i__4_n_19 -attr @rip(#000000) O[12] -pin Y0_i__4 O[12] -pin Y_i__0 I6[12]
load net Y0_i__4_n_2 -attr @rip(#000000) O[29] -pin Y0_i__4 O[29] -pin Y_i__0 I6[29]
load net Y0_i__4_n_20 -attr @rip(#000000) O[11] -pin Y0_i__4 O[11] -pin Y_i__0 I6[11]
load net Y0_i__4_n_21 -attr @rip(#000000) O[10] -pin Y0_i__4 O[10] -pin Y_i__0 I6[10]
load net Y0_i__4_n_22 -attr @rip(#000000) O[9] -pin Y0_i__4 O[9] -pin Y_i__0 I6[9]
load net Y0_i__4_n_23 -attr @rip(#000000) O[8] -pin Y0_i__4 O[8] -pin Y_i__0 I6[8]
load net Y0_i__4_n_24 -attr @rip(#000000) O[7] -pin Y0_i__4 O[7] -pin Y_i__0 I6[7]
load net Y0_i__4_n_25 -attr @rip(#000000) O[6] -pin Y0_i__4 O[6] -pin Y_i__0 I6[6]
load net Y0_i__4_n_26 -attr @rip(#000000) O[5] -pin Y0_i__4 O[5] -pin Y_i__0 I6[5]
load net Y0_i__4_n_27 -attr @rip(#000000) O[4] -pin Y0_i__4 O[4] -pin Y_i__0 I6[4]
load net Y0_i__4_n_28 -attr @rip(#000000) O[3] -pin Y0_i__4 O[3] -pin Y_i__0 I6[3]
load net Y0_i__4_n_29 -attr @rip(#000000) O[2] -pin Y0_i__4 O[2] -pin Y_i__0 I6[2]
load net Y0_i__4_n_3 -attr @rip(#000000) O[28] -pin Y0_i__4 O[28] -pin Y_i__0 I6[28]
load net Y0_i__4_n_30 -attr @rip(#000000) O[1] -pin Y0_i__4 O[1] -pin Y_i__0 I6[1]
load net Y0_i__4_n_31 -attr @rip(#000000) O[0] -pin Y0_i__4 O[0] -pin Y_i__0 I6[0]
load net Y0_i__4_n_4 -attr @rip(#000000) O[27] -pin Y0_i__4 O[27] -pin Y_i__0 I6[27]
load net Y0_i__4_n_5 -attr @rip(#000000) O[26] -pin Y0_i__4 O[26] -pin Y_i__0 I6[26]
load net Y0_i__4_n_6 -attr @rip(#000000) O[25] -pin Y0_i__4 O[25] -pin Y_i__0 I6[25]
load net Y0_i__4_n_7 -attr @rip(#000000) O[24] -pin Y0_i__4 O[24] -pin Y_i__0 I6[24]
load net Y0_i__4_n_8 -attr @rip(#000000) O[23] -pin Y0_i__4 O[23] -pin Y_i__0 I6[23]
load net Y0_i__4_n_9 -attr @rip(#000000) O[22] -pin Y0_i__4 O[22] -pin Y_i__0 I6[22]
load net Y0_i__6_n_0 -attr @rip(#000000) O[31] -pin Y0_i__6 O[31] -pin Y_i__0 I8[31]
load net Y0_i__6_n_1 -attr @rip(#000000) O[30] -pin Y0_i__6 O[30] -pin Y_i__0 I8[30]
load net Y0_i__6_n_10 -attr @rip(#000000) O[21] -pin Y0_i__6 O[21] -pin Y_i__0 I8[21]
load net Y0_i__6_n_11 -attr @rip(#000000) O[20] -pin Y0_i__6 O[20] -pin Y_i__0 I8[20]
load net Y0_i__6_n_12 -attr @rip(#000000) O[19] -pin Y0_i__6 O[19] -pin Y_i__0 I8[19]
load net Y0_i__6_n_13 -attr @rip(#000000) O[18] -pin Y0_i__6 O[18] -pin Y_i__0 I8[18]
load net Y0_i__6_n_14 -attr @rip(#000000) O[17] -pin Y0_i__6 O[17] -pin Y_i__0 I8[17]
load net Y0_i__6_n_15 -attr @rip(#000000) O[16] -pin Y0_i__6 O[16] -pin Y_i__0 I8[16]
load net Y0_i__6_n_16 -attr @rip(#000000) O[15] -pin Y0_i__6 O[15] -pin Y_i__0 I8[15]
load net Y0_i__6_n_17 -attr @rip(#000000) O[14] -pin Y0_i__6 O[14] -pin Y_i__0 I8[14]
load net Y0_i__6_n_18 -attr @rip(#000000) O[13] -pin Y0_i__6 O[13] -pin Y_i__0 I8[13]
load net Y0_i__6_n_19 -attr @rip(#000000) O[12] -pin Y0_i__6 O[12] -pin Y_i__0 I8[12]
load net Y0_i__6_n_2 -attr @rip(#000000) O[29] -pin Y0_i__6 O[29] -pin Y_i__0 I8[29]
load net Y0_i__6_n_20 -attr @rip(#000000) O[11] -pin Y0_i__6 O[11] -pin Y_i__0 I8[11]
load net Y0_i__6_n_21 -attr @rip(#000000) O[10] -pin Y0_i__6 O[10] -pin Y_i__0 I8[10]
load net Y0_i__6_n_22 -attr @rip(#000000) O[9] -pin Y0_i__6 O[9] -pin Y_i__0 I8[9]
load net Y0_i__6_n_23 -attr @rip(#000000) O[8] -pin Y0_i__6 O[8] -pin Y_i__0 I8[8]
load net Y0_i__6_n_24 -attr @rip(#000000) O[7] -pin Y0_i__6 O[7] -pin Y_i__0 I8[7]
load net Y0_i__6_n_25 -attr @rip(#000000) O[6] -pin Y0_i__6 O[6] -pin Y_i__0 I8[6]
load net Y0_i__6_n_26 -attr @rip(#000000) O[5] -pin Y0_i__6 O[5] -pin Y_i__0 I8[5]
load net Y0_i__6_n_27 -attr @rip(#000000) O[4] -pin Y0_i__6 O[4] -pin Y_i__0 I8[4]
load net Y0_i__6_n_28 -attr @rip(#000000) O[3] -pin Y0_i__6 O[3] -pin Y_i__0 I8[3]
load net Y0_i__6_n_29 -attr @rip(#000000) O[2] -pin Y0_i__6 O[2] -pin Y_i__0 I8[2]
load net Y0_i__6_n_3 -attr @rip(#000000) O[28] -pin Y0_i__6 O[28] -pin Y_i__0 I8[28]
load net Y0_i__6_n_30 -attr @rip(#000000) O[1] -pin Y0_i__6 O[1] -pin Y_i__0 I8[1]
load net Y0_i__6_n_31 -attr @rip(#000000) O[0] -pin Y0_i__6 O[0] -pin Y_i__0 I8[0]
load net Y0_i__6_n_4 -attr @rip(#000000) O[27] -pin Y0_i__6 O[27] -pin Y_i__0 I8[27]
load net Y0_i__6_n_5 -attr @rip(#000000) O[26] -pin Y0_i__6 O[26] -pin Y_i__0 I8[26]
load net Y0_i__6_n_6 -attr @rip(#000000) O[25] -pin Y0_i__6 O[25] -pin Y_i__0 I8[25]
load net Y0_i__6_n_7 -attr @rip(#000000) O[24] -pin Y0_i__6 O[24] -pin Y_i__0 I8[24]
load net Y0_i__6_n_8 -attr @rip(#000000) O[23] -pin Y0_i__6 O[23] -pin Y_i__0 I8[23]
load net Y0_i__6_n_9 -attr @rip(#000000) O[22] -pin Y0_i__6 O[22] -pin Y_i__0 I8[22]
load net Y0_i__7_n_0 -attr @rip(#000000) O[31] -pin Y0_i__7 O[31] -pin Y_i__0 I10[31]
load net Y0_i__7_n_1 -attr @rip(#000000) O[30] -pin Y0_i__7 O[30] -pin Y_i__0 I10[30]
load net Y0_i__7_n_10 -attr @rip(#000000) O[21] -pin Y0_i__7 O[21] -pin Y_i__0 I10[21]
load net Y0_i__7_n_11 -attr @rip(#000000) O[20] -pin Y0_i__7 O[20] -pin Y_i__0 I10[20]
load net Y0_i__7_n_12 -attr @rip(#000000) O[19] -pin Y0_i__7 O[19] -pin Y_i__0 I10[19]
load net Y0_i__7_n_13 -attr @rip(#000000) O[18] -pin Y0_i__7 O[18] -pin Y_i__0 I10[18]
load net Y0_i__7_n_14 -attr @rip(#000000) O[17] -pin Y0_i__7 O[17] -pin Y_i__0 I10[17]
load net Y0_i__7_n_15 -attr @rip(#000000) O[16] -pin Y0_i__7 O[16] -pin Y_i__0 I10[16]
load net Y0_i__7_n_16 -attr @rip(#000000) O[15] -pin Y0_i__7 O[15] -pin Y_i__0 I10[15]
load net Y0_i__7_n_17 -attr @rip(#000000) O[14] -pin Y0_i__7 O[14] -pin Y_i__0 I10[14]
load net Y0_i__7_n_18 -attr @rip(#000000) O[13] -pin Y0_i__7 O[13] -pin Y_i__0 I10[13]
load net Y0_i__7_n_19 -attr @rip(#000000) O[12] -pin Y0_i__7 O[12] -pin Y_i__0 I10[12]
load net Y0_i__7_n_2 -attr @rip(#000000) O[29] -pin Y0_i__7 O[29] -pin Y_i__0 I10[29]
load net Y0_i__7_n_20 -attr @rip(#000000) O[11] -pin Y0_i__7 O[11] -pin Y_i__0 I10[11]
load net Y0_i__7_n_21 -attr @rip(#000000) O[10] -pin Y0_i__7 O[10] -pin Y_i__0 I10[10]
load net Y0_i__7_n_22 -attr @rip(#000000) O[9] -pin Y0_i__7 O[9] -pin Y_i__0 I10[9]
load net Y0_i__7_n_23 -attr @rip(#000000) O[8] -pin Y0_i__7 O[8] -pin Y_i__0 I10[8]
load net Y0_i__7_n_24 -attr @rip(#000000) O[7] -pin Y0_i__7 O[7] -pin Y_i__0 I10[7]
load net Y0_i__7_n_25 -attr @rip(#000000) O[6] -pin Y0_i__7 O[6] -pin Y_i__0 I10[6]
load net Y0_i__7_n_26 -attr @rip(#000000) O[5] -pin Y0_i__7 O[5] -pin Y_i__0 I10[5]
load net Y0_i__7_n_27 -attr @rip(#000000) O[4] -pin Y0_i__7 O[4] -pin Y_i__0 I10[4]
load net Y0_i__7_n_28 -attr @rip(#000000) O[3] -pin Y0_i__7 O[3] -pin Y_i__0 I10[3]
load net Y0_i__7_n_29 -attr @rip(#000000) O[2] -pin Y0_i__7 O[2] -pin Y_i__0 I10[2]
load net Y0_i__7_n_3 -attr @rip(#000000) O[28] -pin Y0_i__7 O[28] -pin Y_i__0 I10[28]
load net Y0_i__7_n_30 -attr @rip(#000000) O[1] -pin Y0_i__7 O[1] -pin Y_i__0 I10[1]
load net Y0_i__7_n_31 -attr @rip(#000000) O[0] -pin Y0_i__7 O[0] -pin Y_i__0 I10[0]
load net Y0_i__7_n_4 -attr @rip(#000000) O[27] -pin Y0_i__7 O[27] -pin Y_i__0 I10[27]
load net Y0_i__7_n_5 -attr @rip(#000000) O[26] -pin Y0_i__7 O[26] -pin Y_i__0 I10[26]
load net Y0_i__7_n_6 -attr @rip(#000000) O[25] -pin Y0_i__7 O[25] -pin Y_i__0 I10[25]
load net Y0_i__7_n_7 -attr @rip(#000000) O[24] -pin Y0_i__7 O[24] -pin Y_i__0 I10[24]
load net Y0_i__7_n_8 -attr @rip(#000000) O[23] -pin Y0_i__7 O[23] -pin Y_i__0 I10[23]
load net Y0_i__7_n_9 -attr @rip(#000000) O[22] -pin Y0_i__7 O[22] -pin Y_i__0 I10[22]
load net Y0_i__8_n_0 -attr @rip(#000000) O[31] -pin Y0_i__8 O[31] -pin Y_i__0 I11[31]
load net Y0_i__8_n_1 -attr @rip(#000000) O[30] -pin Y0_i__8 O[30] -pin Y_i__0 I11[30]
load net Y0_i__8_n_10 -attr @rip(#000000) O[21] -pin Y0_i__8 O[21] -pin Y_i__0 I11[21]
load net Y0_i__8_n_11 -attr @rip(#000000) O[20] -pin Y0_i__8 O[20] -pin Y_i__0 I11[20]
load net Y0_i__8_n_12 -attr @rip(#000000) O[19] -pin Y0_i__8 O[19] -pin Y_i__0 I11[19]
load net Y0_i__8_n_13 -attr @rip(#000000) O[18] -pin Y0_i__8 O[18] -pin Y_i__0 I11[18]
load net Y0_i__8_n_14 -attr @rip(#000000) O[17] -pin Y0_i__8 O[17] -pin Y_i__0 I11[17]
load net Y0_i__8_n_15 -attr @rip(#000000) O[16] -pin Y0_i__8 O[16] -pin Y_i__0 I11[16]
load net Y0_i__8_n_16 -attr @rip(#000000) O[15] -pin Y0_i__8 O[15] -pin Y_i__0 I11[15]
load net Y0_i__8_n_17 -attr @rip(#000000) O[14] -pin Y0_i__8 O[14] -pin Y_i__0 I11[14]
load net Y0_i__8_n_18 -attr @rip(#000000) O[13] -pin Y0_i__8 O[13] -pin Y_i__0 I11[13]
load net Y0_i__8_n_19 -attr @rip(#000000) O[12] -pin Y0_i__8 O[12] -pin Y_i__0 I11[12]
load net Y0_i__8_n_2 -attr @rip(#000000) O[29] -pin Y0_i__8 O[29] -pin Y_i__0 I11[29]
load net Y0_i__8_n_20 -attr @rip(#000000) O[11] -pin Y0_i__8 O[11] -pin Y_i__0 I11[11]
load net Y0_i__8_n_21 -attr @rip(#000000) O[10] -pin Y0_i__8 O[10] -pin Y_i__0 I11[10]
load net Y0_i__8_n_22 -attr @rip(#000000) O[9] -pin Y0_i__8 O[9] -pin Y_i__0 I11[9]
load net Y0_i__8_n_23 -attr @rip(#000000) O[8] -pin Y0_i__8 O[8] -pin Y_i__0 I11[8]
load net Y0_i__8_n_24 -attr @rip(#000000) O[7] -pin Y0_i__8 O[7] -pin Y_i__0 I11[7]
load net Y0_i__8_n_25 -attr @rip(#000000) O[6] -pin Y0_i__8 O[6] -pin Y_i__0 I11[6]
load net Y0_i__8_n_26 -attr @rip(#000000) O[5] -pin Y0_i__8 O[5] -pin Y_i__0 I11[5]
load net Y0_i__8_n_27 -attr @rip(#000000) O[4] -pin Y0_i__8 O[4] -pin Y_i__0 I11[4]
load net Y0_i__8_n_28 -attr @rip(#000000) O[3] -pin Y0_i__8 O[3] -pin Y_i__0 I11[3]
load net Y0_i__8_n_29 -attr @rip(#000000) O[2] -pin Y0_i__8 O[2] -pin Y_i__0 I11[2]
load net Y0_i__8_n_3 -attr @rip(#000000) O[28] -pin Y0_i__8 O[28] -pin Y_i__0 I11[28]
load net Y0_i__8_n_30 -attr @rip(#000000) O[1] -pin Y0_i__8 O[1] -pin Y_i__0 I11[1]
load net Y0_i__8_n_31 -attr @rip(#000000) O[0] -pin Y0_i__8 O[0] -pin Y_i__0 I11[0]
load net Y0_i__8_n_4 -attr @rip(#000000) O[27] -pin Y0_i__8 O[27] -pin Y_i__0 I11[27]
load net Y0_i__8_n_5 -attr @rip(#000000) O[26] -pin Y0_i__8 O[26] -pin Y_i__0 I11[26]
load net Y0_i__8_n_6 -attr @rip(#000000) O[25] -pin Y0_i__8 O[25] -pin Y_i__0 I11[25]
load net Y0_i__8_n_7 -attr @rip(#000000) O[24] -pin Y0_i__8 O[24] -pin Y_i__0 I11[24]
load net Y0_i__8_n_8 -attr @rip(#000000) O[23] -pin Y0_i__8 O[23] -pin Y_i__0 I11[23]
load net Y0_i__8_n_9 -attr @rip(#000000) O[22] -pin Y0_i__8 O[22] -pin Y_i__0 I11[22]
load net Y0_i__9_n_0 -attr @rip(#000000) O[31] -pin Y0_i__9 O[31] -pin Y_i__0 I12[31]
load net Y0_i__9_n_1 -attr @rip(#000000) O[30] -pin Y0_i__9 O[30] -pin Y_i__0 I12[30]
load net Y0_i__9_n_10 -attr @rip(#000000) O[21] -pin Y0_i__9 O[21] -pin Y_i__0 I12[21]
load net Y0_i__9_n_11 -attr @rip(#000000) O[20] -pin Y0_i__9 O[20] -pin Y_i__0 I12[20]
load net Y0_i__9_n_12 -attr @rip(#000000) O[19] -pin Y0_i__9 O[19] -pin Y_i__0 I12[19]
load net Y0_i__9_n_13 -attr @rip(#000000) O[18] -pin Y0_i__9 O[18] -pin Y_i__0 I12[18]
load net Y0_i__9_n_14 -attr @rip(#000000) O[17] -pin Y0_i__9 O[17] -pin Y_i__0 I12[17]
load net Y0_i__9_n_15 -attr @rip(#000000) O[16] -pin Y0_i__9 O[16] -pin Y_i__0 I12[16]
load net Y0_i__9_n_16 -attr @rip(#000000) O[15] -pin Y0_i__9 O[15] -pin Y_i__0 I12[15]
load net Y0_i__9_n_17 -attr @rip(#000000) O[14] -pin Y0_i__9 O[14] -pin Y_i__0 I12[14]
load net Y0_i__9_n_18 -attr @rip(#000000) O[13] -pin Y0_i__9 O[13] -pin Y_i__0 I12[13]
load net Y0_i__9_n_19 -attr @rip(#000000) O[12] -pin Y0_i__9 O[12] -pin Y_i__0 I12[12]
load net Y0_i__9_n_2 -attr @rip(#000000) O[29] -pin Y0_i__9 O[29] -pin Y_i__0 I12[29]
load net Y0_i__9_n_20 -attr @rip(#000000) O[11] -pin Y0_i__9 O[11] -pin Y_i__0 I12[11]
load net Y0_i__9_n_21 -attr @rip(#000000) O[10] -pin Y0_i__9 O[10] -pin Y_i__0 I12[10]
load net Y0_i__9_n_22 -attr @rip(#000000) O[9] -pin Y0_i__9 O[9] -pin Y_i__0 I12[9]
load net Y0_i__9_n_23 -attr @rip(#000000) O[8] -pin Y0_i__9 O[8] -pin Y_i__0 I12[8]
load net Y0_i__9_n_24 -attr @rip(#000000) O[7] -pin Y0_i__9 O[7] -pin Y_i__0 I12[7]
load net Y0_i__9_n_25 -attr @rip(#000000) O[6] -pin Y0_i__9 O[6] -pin Y_i__0 I12[6]
load net Y0_i__9_n_26 -attr @rip(#000000) O[5] -pin Y0_i__9 O[5] -pin Y_i__0 I12[5]
load net Y0_i__9_n_27 -attr @rip(#000000) O[4] -pin Y0_i__9 O[4] -pin Y_i__0 I12[4]
load net Y0_i__9_n_28 -attr @rip(#000000) O[3] -pin Y0_i__9 O[3] -pin Y_i__0 I12[3]
load net Y0_i__9_n_29 -attr @rip(#000000) O[2] -pin Y0_i__9 O[2] -pin Y_i__0 I12[2]
load net Y0_i__9_n_3 -attr @rip(#000000) O[28] -pin Y0_i__9 O[28] -pin Y_i__0 I12[28]
load net Y0_i__9_n_30 -attr @rip(#000000) O[1] -pin Y0_i__9 O[1] -pin Y_i__0 I12[1]
load net Y0_i__9_n_31 -attr @rip(#000000) O[0] -pin Y0_i__9 O[0] -pin Y_i__0 I12[0]
load net Y0_i__9_n_4 -attr @rip(#000000) O[27] -pin Y0_i__9 O[27] -pin Y_i__0 I12[27]
load net Y0_i__9_n_5 -attr @rip(#000000) O[26] -pin Y0_i__9 O[26] -pin Y_i__0 I12[26]
load net Y0_i__9_n_6 -attr @rip(#000000) O[25] -pin Y0_i__9 O[25] -pin Y_i__0 I12[25]
load net Y0_i__9_n_7 -attr @rip(#000000) O[24] -pin Y0_i__9 O[24] -pin Y_i__0 I12[24]
load net Y0_i__9_n_8 -attr @rip(#000000) O[23] -pin Y0_i__9 O[23] -pin Y_i__0 I12[23]
load net Y0_i__9_n_9 -attr @rip(#000000) O[22] -pin Y0_i__9 O[22] -pin Y_i__0 I12[22]
load net Y0_i_n_0 -pin Y0_i O -pin Y_i S -pin Y_i__0 I0
netloc Y0_i_n_0 1 1 2 N 320N 580
load net Y[0] -attr @rip(#000000) 0 -port Y[0] -pin Y_reg[31:0] Q[0]
load net Y[10] -attr @rip(#000000) 10 -port Y[10] -pin Y_reg[31:0] Q[10]
load net Y[11] -attr @rip(#000000) 11 -port Y[11] -pin Y_reg[31:0] Q[11]
load net Y[12] -attr @rip(#000000) 12 -port Y[12] -pin Y_reg[31:0] Q[12]
load net Y[13] -attr @rip(#000000) 13 -port Y[13] -pin Y_reg[31:0] Q[13]
load net Y[14] -attr @rip(#000000) 14 -port Y[14] -pin Y_reg[31:0] Q[14]
load net Y[15] -attr @rip(#000000) 15 -port Y[15] -pin Y_reg[31:0] Q[15]
load net Y[16] -attr @rip(#000000) 16 -port Y[16] -pin Y_reg[31:0] Q[16]
load net Y[17] -attr @rip(#000000) 17 -port Y[17] -pin Y_reg[31:0] Q[17]
load net Y[18] -attr @rip(#000000) 18 -port Y[18] -pin Y_reg[31:0] Q[18]
load net Y[19] -attr @rip(#000000) 19 -port Y[19] -pin Y_reg[31:0] Q[19]
load net Y[1] -attr @rip(#000000) 1 -port Y[1] -pin Y_reg[31:0] Q[1]
load net Y[20] -attr @rip(#000000) 20 -port Y[20] -pin Y_reg[31:0] Q[20]
load net Y[21] -attr @rip(#000000) 21 -port Y[21] -pin Y_reg[31:0] Q[21]
load net Y[22] -attr @rip(#000000) 22 -port Y[22] -pin Y_reg[31:0] Q[22]
load net Y[23] -attr @rip(#000000) 23 -port Y[23] -pin Y_reg[31:0] Q[23]
load net Y[24] -attr @rip(#000000) 24 -port Y[24] -pin Y_reg[31:0] Q[24]
load net Y[25] -attr @rip(#000000) 25 -port Y[25] -pin Y_reg[31:0] Q[25]
load net Y[26] -attr @rip(#000000) 26 -port Y[26] -pin Y_reg[31:0] Q[26]
load net Y[27] -attr @rip(#000000) 27 -port Y[27] -pin Y_reg[31:0] Q[27]
load net Y[28] -attr @rip(#000000) 28 -port Y[28] -pin Y_reg[31:0] Q[28]
load net Y[29] -attr @rip(#000000) 29 -port Y[29] -pin Y_reg[31:0] Q[29]
load net Y[2] -attr @rip(#000000) 2 -port Y[2] -pin Y_reg[31:0] Q[2]
load net Y[30] -attr @rip(#000000) 30 -port Y[30] -pin Y_reg[31:0] Q[30]
load net Y[31] -attr @rip(#000000) 31 -port Y[31] -pin Y_reg[31:0] Q[31]
load net Y[3] -attr @rip(#000000) 3 -port Y[3] -pin Y_reg[31:0] Q[3]
load net Y[4] -attr @rip(#000000) 4 -port Y[4] -pin Y_reg[31:0] Q[4]
load net Y[5] -attr @rip(#000000) 5 -port Y[5] -pin Y_reg[31:0] Q[5]
load net Y[6] -attr @rip(#000000) 6 -port Y[6] -pin Y_reg[31:0] Q[6]
load net Y[7] -attr @rip(#000000) 7 -port Y[7] -pin Y_reg[31:0] Q[7]
load net Y[8] -attr @rip(#000000) 8 -port Y[8] -pin Y_reg[31:0] Q[8]
load net Y[9] -attr @rip(#000000) 9 -port Y[9] -pin Y_reg[31:0] Q[9]
load net Y_i__0_n_0 -attr @rip(#000000) O[31] -pin Y_i__0 O[31] -pin Y_reg[31:0] D[31]
load net Y_i__0_n_1 -attr @rip(#000000) O[30] -pin Y_i__0 O[30] -pin Y_reg[31:0] D[30]
load net Y_i__0_n_10 -attr @rip(#000000) O[21] -pin Y_i__0 O[21] -pin Y_reg[31:0] D[21]
load net Y_i__0_n_11 -attr @rip(#000000) O[20] -pin Y_i__0 O[20] -pin Y_reg[31:0] D[20]
load net Y_i__0_n_12 -attr @rip(#000000) O[19] -pin Y_i__0 O[19] -pin Y_reg[31:0] D[19]
load net Y_i__0_n_13 -attr @rip(#000000) O[18] -pin Y_i__0 O[18] -pin Y_reg[31:0] D[18]
load net Y_i__0_n_14 -attr @rip(#000000) O[17] -pin Y_i__0 O[17] -pin Y_reg[31:0] D[17]
load net Y_i__0_n_15 -attr @rip(#000000) O[16] -pin Y_i__0 O[16] -pin Y_reg[31:0] D[16]
load net Y_i__0_n_16 -attr @rip(#000000) O[15] -pin Y_i__0 O[15] -pin Y_reg[31:0] D[15]
load net Y_i__0_n_17 -attr @rip(#000000) O[14] -pin Y_i__0 O[14] -pin Y_reg[31:0] D[14]
load net Y_i__0_n_18 -attr @rip(#000000) O[13] -pin Y_i__0 O[13] -pin Y_reg[31:0] D[13]
load net Y_i__0_n_19 -attr @rip(#000000) O[12] -pin Y_i__0 O[12] -pin Y_reg[31:0] D[12]
load net Y_i__0_n_2 -attr @rip(#000000) O[29] -pin Y_i__0 O[29] -pin Y_reg[31:0] D[29]
load net Y_i__0_n_20 -attr @rip(#000000) O[11] -pin Y_i__0 O[11] -pin Y_reg[31:0] D[11]
load net Y_i__0_n_21 -attr @rip(#000000) O[10] -pin Y_i__0 O[10] -pin Y_reg[31:0] D[10]
load net Y_i__0_n_22 -attr @rip(#000000) O[9] -pin Y_i__0 O[9] -pin Y_reg[31:0] D[9]
load net Y_i__0_n_23 -attr @rip(#000000) O[8] -pin Y_i__0 O[8] -pin Y_reg[31:0] D[8]
load net Y_i__0_n_24 -attr @rip(#000000) O[7] -pin Y_i__0 O[7] -pin Y_reg[31:0] D[7]
load net Y_i__0_n_25 -attr @rip(#000000) O[6] -pin Y_i__0 O[6] -pin Y_reg[31:0] D[6]
load net Y_i__0_n_26 -attr @rip(#000000) O[5] -pin Y_i__0 O[5] -pin Y_reg[31:0] D[5]
load net Y_i__0_n_27 -attr @rip(#000000) O[4] -pin Y_i__0 O[4] -pin Y_reg[31:0] D[4]
load net Y_i__0_n_28 -attr @rip(#000000) O[3] -pin Y_i__0 O[3] -pin Y_reg[31:0] D[3]
load net Y_i__0_n_29 -attr @rip(#000000) O[2] -pin Y_i__0 O[2] -pin Y_reg[31:0] D[2]
load net Y_i__0_n_3 -attr @rip(#000000) O[28] -pin Y_i__0 O[28] -pin Y_reg[31:0] D[28]
load net Y_i__0_n_30 -attr @rip(#000000) O[1] -pin Y_i__0 O[1] -pin Y_reg[31:0] D[1]
load net Y_i__0_n_31 -attr @rip(#000000) O[0] -pin Y_i__0 O[0] -pin Y_reg[31:0] D[0]
load net Y_i__0_n_4 -attr @rip(#000000) O[27] -pin Y_i__0 O[27] -pin Y_reg[31:0] D[27]
load net Y_i__0_n_5 -attr @rip(#000000) O[26] -pin Y_i__0 O[26] -pin Y_reg[31:0] D[26]
load net Y_i__0_n_6 -attr @rip(#000000) O[25] -pin Y_i__0 O[25] -pin Y_reg[31:0] D[25]
load net Y_i__0_n_7 -attr @rip(#000000) O[24] -pin Y_i__0 O[24] -pin Y_reg[31:0] D[24]
load net Y_i__0_n_8 -attr @rip(#000000) O[23] -pin Y_i__0 O[23] -pin Y_reg[31:0] D[23]
load net Y_i__0_n_9 -attr @rip(#000000) O[22] -pin Y_i__0 O[22] -pin Y_reg[31:0] D[22]
load net Y_i__1_n_0 -pin Y_i__1 O -pin Y_reg[31:0] CE
netloc Y_i__1_n_0 1 3 1 970 120n
load net Y_i_n_0 -pin Y_i O -pin Y_i__0 I2
netloc Y_i_n_0 1 2 1 640 260n
load net clk -pin Y_reg[31:0] C -port clk
netloc clk 1 0 4 NJ 100 NJ 100 NJ 100 NJ
load netBundle @A 32 A[31] A[30] A[29] A[28] A[27] A[26] A[25] A[24] A[23] A[22] A[21] A[20] A[19] A[18] A[17] A[16] A[15] A[14] A[13] A[12] A[11] A[10] A[9] A[8] A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] -autobundled
netbloc @A 1 0 3 20 370 250 690 660
load netBundle @ALUFN 6 ALUFN[5] ALUFN[4] ALUFN[3] ALUFN[2] ALUFN[1] ALUFN[0] -autobundled
netbloc @ALUFN 1 0 3 NJ 790 NJ 790 700
load netBundle @B 32 B[31] B[30] B[29] B[28] B[27] B[26] B[25] B[24] B[23] B[22] B[21] B[20] B[19] B[18] B[17] B[16] B[15] B[14] B[13] B[12] B[11] B[10] B[9] B[8] B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] -autobundled
netbloc @B 1 0 2 40 470 270
load netBundle @Y 32 Y[31] Y[30] Y[29] Y[28] Y[27] Y[26] Y[25] Y[24] Y[23] Y[22] Y[21] Y[20] Y[19] Y[18] Y[17] Y[16] Y[15] Y[14] Y[13] Y[12] Y[11] Y[10] Y[9] Y[8] Y[7] Y[6] Y[5] Y[4] Y[3] Y[2] Y[1] Y[0] -autobundled
netbloc @Y 1 4 1 N 120
load netBundle @Y0_i__1_n_ 32 Y0_i__1_n_0 Y0_i__1_n_1 Y0_i__1_n_2 Y0_i__1_n_3 Y0_i__1_n_4 Y0_i__1_n_5 Y0_i__1_n_6 Y0_i__1_n_7 Y0_i__1_n_8 Y0_i__1_n_9 Y0_i__1_n_10 Y0_i__1_n_11 Y0_i__1_n_12 Y0_i__1_n_13 Y0_i__1_n_14 Y0_i__1_n_15 Y0_i__1_n_16 Y0_i__1_n_17 Y0_i__1_n_18 Y0_i__1_n_19 Y0_i__1_n_20 Y0_i__1_n_21 Y0_i__1_n_22 Y0_i__1_n_23 Y0_i__1_n_24 Y0_i__1_n_25 Y0_i__1_n_26 Y0_i__1_n_27 Y0_i__1_n_28 Y0_i__1_n_29 Y0_i__1_n_30 Y0_i__1_n_31 -autobundled
netbloc @Y0_i__1_n_ 1 2 1 660 50n
load netBundle @Y0_i__2_n_ 32 Y0_i__2_n_0 Y0_i__2_n_1 Y0_i__2_n_2 Y0_i__2_n_3 Y0_i__2_n_4 Y0_i__2_n_5 Y0_i__2_n_6 Y0_i__2_n_7 Y0_i__2_n_8 Y0_i__2_n_9 Y0_i__2_n_10 Y0_i__2_n_11 Y0_i__2_n_12 Y0_i__2_n_13 Y0_i__2_n_14 Y0_i__2_n_15 Y0_i__2_n_16 Y0_i__2_n_17 Y0_i__2_n_18 Y0_i__2_n_19 Y0_i__2_n_20 Y0_i__2_n_21 Y0_i__2_n_22 Y0_i__2_n_23 Y0_i__2_n_24 Y0_i__2_n_25 Y0_i__2_n_26 Y0_i__2_n_27 Y0_i__2_n_28 Y0_i__2_n_29 Y0_i__2_n_30 Y0_i__2_n_31 -autobundled
netbloc @Y0_i__2_n_ 1 2 1 620 150n
load netBundle @Y0_i__3_n_ 32 Y0_i__3_n_0 Y0_i__3_n_1 Y0_i__3_n_2 Y0_i__3_n_3 Y0_i__3_n_4 Y0_i__3_n_5 Y0_i__3_n_6 Y0_i__3_n_7 Y0_i__3_n_8 Y0_i__3_n_9 Y0_i__3_n_10 Y0_i__3_n_11 Y0_i__3_n_12 Y0_i__3_n_13 Y0_i__3_n_14 Y0_i__3_n_15 Y0_i__3_n_16 Y0_i__3_n_17 Y0_i__3_n_18 Y0_i__3_n_19 Y0_i__3_n_20 Y0_i__3_n_21 Y0_i__3_n_22 Y0_i__3_n_23 Y0_i__3_n_24 Y0_i__3_n_25 Y0_i__3_n_26 Y0_i__3_n_27 Y0_i__3_n_28 Y0_i__3_n_29 Y0_i__3_n_30 Y0_i__3_n_31 -autobundled
netbloc @Y0_i__3_n_ 1 2 1 580 390n
load netBundle @Y0_i__4_n_ 32 Y0_i__4_n_0 Y0_i__4_n_1 Y0_i__4_n_2 Y0_i__4_n_3 Y0_i__4_n_4 Y0_i__4_n_5 Y0_i__4_n_6 Y0_i__4_n_7 Y0_i__4_n_8 Y0_i__4_n_9 Y0_i__4_n_10 Y0_i__4_n_11 Y0_i__4_n_12 Y0_i__4_n_13 Y0_i__4_n_14 Y0_i__4_n_15 Y0_i__4_n_16 Y0_i__4_n_17 Y0_i__4_n_18 Y0_i__4_n_19 Y0_i__4_n_20 Y0_i__4_n_21 Y0_i__4_n_22 Y0_i__4_n_23 Y0_i__4_n_24 Y0_i__4_n_25 Y0_i__4_n_26 Y0_i__4_n_27 Y0_i__4_n_28 Y0_i__4_n_29 Y0_i__4_n_30 Y0_i__4_n_31 -autobundled
netbloc @Y0_i__4_n_ 1 2 1 560 460n
load netBundle @Y0 32 Y0[31] Y0[30] Y0[29] Y0[28] Y0[27] Y0[26] Y0[25] Y0[24] Y0[23] Y0[22] Y0[21] Y0[20] Y0[19] Y0[18] Y0[17] Y0[16] Y0[15] Y0[14] Y0[13] Y0[12] Y0[11] Y0[10] Y0[9] Y0[8] Y0[7] Y0[6] Y0[5] Y0[4] Y0[3] Y0[2] Y0[1] Y0[0] -autobundled
netbloc @Y0 1 1 2 230 570 620
load netBundle @Y0_i__6_n_ 32 Y0_i__6_n_0 Y0_i__6_n_1 Y0_i__6_n_2 Y0_i__6_n_3 Y0_i__6_n_4 Y0_i__6_n_5 Y0_i__6_n_6 Y0_i__6_n_7 Y0_i__6_n_8 Y0_i__6_n_9 Y0_i__6_n_10 Y0_i__6_n_11 Y0_i__6_n_12 Y0_i__6_n_13 Y0_i__6_n_14 Y0_i__6_n_15 Y0_i__6_n_16 Y0_i__6_n_17 Y0_i__6_n_18 Y0_i__6_n_19 Y0_i__6_n_20 Y0_i__6_n_21 Y0_i__6_n_22 Y0_i__6_n_23 Y0_i__6_n_24 Y0_i__6_n_25 Y0_i__6_n_26 Y0_i__6_n_27 Y0_i__6_n_28 Y0_i__6_n_29 Y0_i__6_n_30 Y0_i__6_n_31 -autobundled
netbloc @Y0_i__6_n_ 1 2 1 N 530
load netBundle @Y0_i__7_n_ 32 Y0_i__7_n_0 Y0_i__7_n_1 Y0_i__7_n_2 Y0_i__7_n_3 Y0_i__7_n_4 Y0_i__7_n_5 Y0_i__7_n_6 Y0_i__7_n_7 Y0_i__7_n_8 Y0_i__7_n_9 Y0_i__7_n_10 Y0_i__7_n_11 Y0_i__7_n_12 Y0_i__7_n_13 Y0_i__7_n_14 Y0_i__7_n_15 Y0_i__7_n_16 Y0_i__7_n_17 Y0_i__7_n_18 Y0_i__7_n_19 Y0_i__7_n_20 Y0_i__7_n_21 Y0_i__7_n_22 Y0_i__7_n_23 Y0_i__7_n_24 Y0_i__7_n_25 Y0_i__7_n_26 Y0_i__7_n_27 Y0_i__7_n_28 Y0_i__7_n_29 Y0_i__7_n_30 Y0_i__7_n_31 -autobundled
netbloc @Y0_i__7_n_ 1 2 1 600 370n
load netBundle @Y0_i__8_n_ 32 Y0_i__8_n_0 Y0_i__8_n_1 Y0_i__8_n_2 Y0_i__8_n_3 Y0_i__8_n_4 Y0_i__8_n_5 Y0_i__8_n_6 Y0_i__8_n_7 Y0_i__8_n_8 Y0_i__8_n_9 Y0_i__8_n_10 Y0_i__8_n_11 Y0_i__8_n_12 Y0_i__8_n_13 Y0_i__8_n_14 Y0_i__8_n_15 Y0_i__8_n_16 Y0_i__8_n_17 Y0_i__8_n_18 Y0_i__8_n_19 Y0_i__8_n_20 Y0_i__8_n_21 Y0_i__8_n_22 Y0_i__8_n_23 Y0_i__8_n_24 Y0_i__8_n_25 Y0_i__8_n_26 Y0_i__8_n_27 Y0_i__8_n_28 Y0_i__8_n_29 Y0_i__8_n_30 Y0_i__8_n_31 -autobundled
netbloc @Y0_i__8_n_ 1 2 1 640 390n
load netBundle @Y0_i__9_n_ 32 Y0_i__9_n_0 Y0_i__9_n_1 Y0_i__9_n_2 Y0_i__9_n_3 Y0_i__9_n_4 Y0_i__9_n_5 Y0_i__9_n_6 Y0_i__9_n_7 Y0_i__9_n_8 Y0_i__9_n_9 Y0_i__9_n_10 Y0_i__9_n_11 Y0_i__9_n_12 Y0_i__9_n_13 Y0_i__9_n_14 Y0_i__9_n_15 Y0_i__9_n_16 Y0_i__9_n_17 Y0_i__9_n_18 Y0_i__9_n_19 Y0_i__9_n_20 Y0_i__9_n_21 Y0_i__9_n_22 Y0_i__9_n_23 Y0_i__9_n_24 Y0_i__9_n_25 Y0_i__9_n_26 Y0_i__9_n_27 Y0_i__9_n_28 Y0_i__9_n_29 Y0_i__9_n_30 Y0_i__9_n_31 -autobundled
netbloc @Y0_i__9_n_ 1 2 1 680 410n
load netBundle @Y_i__0_n_ 32 Y_i__0_n_0 Y_i__0_n_1 Y_i__0_n_2 Y_i__0_n_3 Y_i__0_n_4 Y_i__0_n_5 Y_i__0_n_6 Y_i__0_n_7 Y_i__0_n_8 Y_i__0_n_9 Y_i__0_n_10 Y_i__0_n_11 Y_i__0_n_12 Y_i__0_n_13 Y_i__0_n_14 Y_i__0_n_15 Y_i__0_n_16 Y_i__0_n_17 Y_i__0_n_18 Y_i__0_n_19 Y_i__0_n_20 Y_i__0_n_21 Y_i__0_n_22 Y_i__0_n_23 Y_i__0_n_24 Y_i__0_n_25 Y_i__0_n_26 Y_i__0_n_27 Y_i__0_n_28 Y_i__0_n_29 Y_i__0_n_30 Y_i__0_n_31 -autobundled
netbloc @Y_i__0_n_ 1 3 1 990 140n
levelinfo -pg 1 0 120 410 850 1030 1130
pagesize -pg 1 -db -bbox -sgen -120 0 1230 900
show
fullfit
#
# initialize ictrl to current module ALU work:ALU:NOFILE
ictrl init topinfo |
