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
        uut.dm.memory[0] = 32'd0;   //0
        uut.dm.memory[1] = 32'd10;   //10
        uut.dm.memory[2] = 32'd20;   //20
        uut.dm.memory[3] = 32'd30;   //30
        uut.dm.memory[4] = 32'd40;   //40
        $readmemb("data.mem", uut.dm.memory);
        $readmemb("sumFirstTenNumbers.mem", uut.im.mem);
        
        $display($time, " Register%1d: %d", 0, uut.regfile.reg_file[0]);
        $display($time, " Register%1d: %d", 2, uut.regfile.reg_file[2]);
        $display($time, " Memory%1d: %d", 0, uut.dm.memory[0]);
        $display($time, " Memory%1d: %d", 1, uut.dm.memory[1]);
        #10 RESET=0;
        #800 $display($time, " Register%1d: %d", 0, uut.regfile.reg_file[0]);
        $display($time, " Register%1d: %d", 2, uut.regfile.reg_file[2]);
        $display($time, " Memory%1d: %d", 0, uut.dm.memory[0]);
        $display($time, " Memory%1d: %d", 1, uut.dm.memory[1]);
        $finish;
    end
    
    initial $monitor($time, " Current PC:%1d", uut.PC);
endmodule
