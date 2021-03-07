from Tkinter import *
import Tkinter, Tkconstants, tkFileDialog
from tkFileDialog import *
from tkFont import *
import os.path
import sys
import re

from assemblerlib import *


def openFile():
    global filename
    global basefilename
    openfilename = askopenfilename()
    if openfilename is not None:
        filename = openfilename
        basefilename = os.path.basename(filename)
        asmfile = open(filename, "r")
        asmfile.seek(0)
        asmdata = asmfile.read()
        textArea.delete("1.0", "end - 1c")
        textArea.insert("1.0", asmdata)
        asmfile.close()
        filemenu.entryconfig(filemenu.index("Save"), state = NORMAL)
        frame.title("muCPU Assembler [" + basefilename + "]")
        frame.focus()
        initonOpen()

def saveFile():
    global filename
    asmdata = textArea.get("1.0", "end - 1c")
    asmfile = open(filename, "w")
    asmfile.seek(0)
    asmfile.truncate()
    asmfile.write(asmdata)
    asmfile.close()

def saveFileAs():
    global filename
    global fileexists
    global basefilename
    saveasfilename = asksaveasfilename()
    if saveasfilename is not None:
        filename = saveasfilename
        basefilename = os.path.basename(filename)
        fileexists = True
        asmdata = textArea.get("1.0", "end - 1c")
        asmfile = open(filename, "w")
        asmfile.seek(0)
        asmfile.truncate()
        asmfile.write(asmdata)
        asmfile.close()
        filemenu.entryconfig(filemenu.index("Save"), state = NORMAL)
        frame.title("muCPU Assembler [" + basefilename + "]")
        frame.focus()
    
        
def exitApp():
    frame.destroy()
    sys.exit()
    
def compileASM():
    global filename
    cpu_out = ""
    asm_in = textArea.get("1.0", END)
    asmlines = re.split("\n", asm_in)
    for i in range (len(asmlines)):
        if (asmlines[i] != ""):
            cpu_out += str(i) + " => x\"" + decode(asmlines[i]) + "\",\n"
    name, ext = os.path.splitext(filename)
    hexfilename = name + ".hex"
    hexfile = open(hexfilename, "w")
    hexfile.seek(0)
    hexfile.truncate()
    hexfile.write(cpu_out)
    hexfile.close()

def updateLinesEvent(event):
    drawLinenums()

def updateHighlightEvent(event):
    highlightSyntax((re.split("\.", textArea.index(INSERT))[0] + ".0"), INSERT)

def initonOpen():
    highlightSyntax("1.0", END)
    drawLinenums()


def drawLinenums():
    global canvaswidth
    global canvaswidthdefault
    linenumbers.delete("all")
    i = textArea.index("@0,0")
    while True:
        dline = textArea.dlineinfo(i)
        if dline is None: break
        y = dline[1]
        linenum = str(i).split(".")[0]
        linenumbers.create_text(canvaswidth, y, anchor=NE,text=linenum)
        i = textArea.index("%s+1line" % i)
        linenumbers.config(width = canvaswidth)
        

def highlightSyntax(start, end):
    global mnemonicstring
    global registerstring
    mnemoniclen = StringVar()
    registerlen = StringVar()
    numberlen = StringVar()
    pos = start
    while True:
        pos = textArea.search(mnemonicstring, pos, end, regexp = True, count = mnemoniclen)
        #print pos
        if not pos: break
        textArea.tag_add("mnemonic", pos, pos + " + " + str(mnemoniclen.get()) + "c")
        posarry = re.split("\.", pos)
        posarry[1] = str(int(posarry[1]) + 1)
        pos = posarry[0] + "." + posarry[1] + ("0" * (len(posarry[1]) - 2))
    pos = start
    while True:
        pos = textArea.search("-?\\d", pos, end, regexp = True, count = numberlen)
        #print pos
        if not pos: break
        textArea.tag_add("number", pos, pos + " + " + str(numberlen.get()) + "c")
        posarry = re.split("\.", pos)
        posarry[1] = str(int(posarry[1]) + 1)
        pos = posarry[0] + "." + posarry[1] + ("0" * (len(posarry[1]) - 2))
    pos = start
    while True:
        pos = textArea.search(registerstring, pos, end, regexp = True, count = registerlen)
        #print pos
        if not pos: break
        textArea.tag_add("register", pos, pos + " + " + str(registerlen.get()) + "c")
        posarry = re.split("\.", pos)
        posarry[1] = str(int(posarry[1]) + 1)
        pos = posarry[0] + "." + posarry[1] + ("0" * (len(posarry[1]) - 2))