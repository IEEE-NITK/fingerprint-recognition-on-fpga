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
        uut.dm.memory[0] = 128'haa29df7d196f03aa5e36698ba569b133;   //0
        uut.dm.memory[1] = 128'h32ed0c201c35720637564e513590b443;   //10
        uut.dm.memory[2] = 128'h280549e1f9a45a9c886cb6eb09223ca8;   //20
        uut.dm.memory[3] = 128'hf03fe8d863e6b1d24cf441166ea4ac92;   //30
        uut.dm.memory[4] = 128'h3f44d681c1651ea47d639a959e27654e;   //40
        //$readmemb("data.mem", uut.dm.memory);
        $readmemb("final_enc.mem", uut.im.mem);
        
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
