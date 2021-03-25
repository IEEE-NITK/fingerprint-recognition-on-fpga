import ctypes
import json
import sys
from encrypt_utils import *

def Mbox(title, text, style):
    return ctypes.windll.user32.MessageBoxW(0, text, title, style)
    ##  Styles:
    ##  0 : OK
    ##  1 : OK | Cancel
    ##  2 : Abort | Retry | Ignore
    ##  3 : Yes | No | Cancel
    ##  4 : Yes | No
    ##  5 : Retry | Cancel 
    ##  6 : Cancel | Try Again | Continue

def convert_bin_n(num,n):
    """
    Input:
        num: Decimal number to be converted to binary
        n  : Number of binary digits(Zero Padded)

    Output:
        z  : Zero Padded n-digit binary number
    """
    if ( num < 0 ):
        a=bin(num & 0xffff).replace("0b","")
        z=a
    else:
        a=bin(num).replace("0b","")
        z=a.zfill(n)

    return z

def create_reg(num=32, n=5):
    """
    Input:
        num: Number of registers (Default Value = 32)
        n  : Number of binary digits (Default Value = 5)
    
    Output:
        reg: Dictionary containing register names(keys) and corresponding binary values(values)
    """
    reg={}
    for i in range(num):
        reg["r"+str(i)]=convert_bin_n(i,n)
    return reg

def assemble(assembly_filename,memory_filename,opcode,register):
    """
    Input:
        assembly_filename: String containing the assembly filename
        memory_filename  : String containing the memory filename
        opcode           : Dictionary containing opcodes
        register         : Dictionary containing registers

    Output:
        1: If assembly succesful
        0: If assembly failed
    """
    try:
        file_s = open('assembly_file/' + assembly_filename, 'r')
        code = file_s.readline()
    except:
        status = Mbox('Error!', 'No such file', style=0)
        sys.exit()
        return 0

    if code == '' :
        status = Mbox('Error!', 'File is Empty', style=0)
        sys.exit()

    #Obtaining the instructions
    instructions = list()
    while code != '':
        code = code.strip()
        temp = code.split(',')
        
        #cleaning the white spaces and storing relevent data
        data = list()
        for i in range(len(temp)):
            temp[i] = temp[i].strip()
            if i==0 and temp[i] != '':
                t = temp[i].split(' ')
                data.append(t[0])
                data.append(t[1])
            else:
                data.append(temp[i])

        instructions.append(data) #appending the instruction
        code = file_s.readline()

    file_mem = open('memory_file/' + memory_filename, 'a')
    k=0
    mem_instruction = list()
    for i in range(len(instructions)):
        
        ignore = ['']
        if instructions[i] == ignore: #ignoring empty lines
            continue
        
        #Initializing placeholder values depicting various parts of an Instruction
    
        Operation = instructions[i][0].upper() #Operation name
        R_dest    = instructions[i][1]         #Destination register
        R_source  = None                       #Source register
        R_source2 = None                       #Source register 2
        Constant  = None                       #16 bit Constant

        #checking if the instruction given is correct
        if Operation not in opcode.keys():
            Mbox('Error!', f'Line {i+1}: No such instruction', style=0)
            sys.exit()
        elif '' in instructions[i]:
            Mbox('Error!', f'Line {i+1}: Invalid syntax', style=0)
            sys.exit()
            return 0

        #Ensuring that we convert the source register name correctly as we may have [r0] in the case of indirect addressing
        if instructions[i][2].startswith('['):
            R_source = instructions[i][2][1:3]
        else:
            R_source = instructions[i][2]

        """Note that an instruction can have either 2 source registers 
            or 1 source register and a constant in our processor design"""

        #Checking if we have a 2nd source register or a constant
        if instructions[i][3] in register.keys():
            R_source2 = instructions[i][3]
        else:
            Constant = instructions[i][3]

        #generating binary instructions or machine code
        
        if R_source2 is not None:
            mem_data = opcode[Operation] + register[R_dest] + register[R_source] + register[R_source2] + '00000000000' 
            #Appending 11 zeroes to make our instruction reach the fixed size of 32 bit
        else :
            sxt = convert_bin_n(int(Constant),16) #Sign-extending our constant to reach 16 bits
            mem_data = opcode[Operation] + register[R_dest] + register[R_source] + sxt

        mem_data = encrypt(mem_data)
        
        mem_data = mem_data + '\n' 
        """Note that each line of the memory file contains one instruction
            Hence, each iteration generates a 32 bit machine code of 1 instruction.
        """
        mem_instruction.append(mem_data)
        file_mem.write(mem_data)
        k+=1
        print("Instruction",k,"does the operation", Operation,"with source register/s",R_source)

        if(Constant is None):
            print(" and",R_source2,"and the output is stored in the destination register",R_dest,".")
        else:
            print(" and the constant",Constant,"\n The output is stored in the destination register",R_dest,".\n")

    return 1