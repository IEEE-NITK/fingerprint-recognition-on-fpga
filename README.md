# Security Module for a simple RISC processor
We have designed a simple FPGA(Field Programmable Gate Array) synthesizable RISC processor complete with its own ISA(Instruction Set Architecture). 
It has 2 types of instructions where we can have 2 source registers or 1 source register + Sign extended constant much like R-type and I-Type 
instructions from RISC-V.

The motivation behind this project was to provide protection against hardware probing
attacks in low cost RISC based processors for applications such as IOT. While every
desktop-class processor has its own encryption-decryption block, the emphasis on security
in low cost processors has been lacklustre and has made them prone to many cyber
attacks.

We have also designed a simple high-level(Python) assembler for supplying 128-bit AES encrypted
machine code. We supply software (assembly level) encrypted instructions directly to the
processor instead of encrypting at the hardware level as supplying un-encrypted
instructions will offer no protection to probing attacks on the Instruction memory as the
data will be easily interpretable due to the standard formats followed for instructions. We
added a hardware security module to decrypt the Instruction Memory Output and both
encrypt as well as decrypt the transactions to the Data Memory.
We have used Xilinx Vivado for testing and implementing the aforementioned project.
