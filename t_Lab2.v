`timescale 1ns/ 1ns
`include "Lab2.v"

module t_Lab2;

reg A; // input A
reg B; // input B
reg S; // selection line
wire Y; // output Y

Lab2 uut(A, B, S, Y); 

    initial begin
        
        $dumpfile("t_Lab2.vcd");
        $dumpvars(0, t_Lab2);

        // first inputs, simulate for 20ns
        A = 0; 
        B = 1;
        S = 0;
        #20

        // second inputs, simulate for 40ns
        A = 1;
        B = 1; 
        S = 1;
        #40

        // third inputs, simulate for 20ns
        A = 1; 
        B = 0;
        S = 0;
        #20

        $display("Lab2 is complete");
    end

endmodule