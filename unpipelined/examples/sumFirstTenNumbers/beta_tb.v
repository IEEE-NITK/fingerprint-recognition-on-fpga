`timescale 1ns / 1ps

module beta_tb;
    reg clk;
    reg RESET;
    beta uut(.clk(clk), 
            .RESET(RESET));
            
    initial begin
        clk = 0;
        forever #10 clk=~clk;
    end
    
    integer i;
    initial begin
        RESET = 1;
        for (i=0;i<32;i=i+1) begin
            uut.regfile.reg_file[i] = i;
        end
        for(i=0;i<10;i=i+1) begin
            uut.dm.memory[i] = 10*i; 
        end
        $readmemb("sumFirstTenNumbers.mem", uut.im.mem);
        
        $display($time, " Register%1d: %d", 0, uut.regfile.reg_file[0]);
        $display($time, " Register%1d: %d", 2, uut.regfile.reg_file[2]);
        $display($time, " Memory%1d: %d", 0, uut.dm.memory[0]);
        #10 RESET=0;
        #800 $display($time, " Register%1d: %d", 0, uut.regfile.reg_file[0]);
        $display($time, " Register%1d: %d", 2, uut.regfile.reg_file[2]);
        $display($time, " Memory%1d: %d", 0, uut.dm.memory[0]);
        //$finish;
    end
    
    initial $monitor($time, " Current PC:%1d", uut.PC);
endmodule
