`timescale 1ns/ 1ns // research this more
`include "Lab2.v"

module t_Lab2;

reg A;
reg B;
reg S;
wire Y;

Lab2 uut(A, B, S, Y);

    initial begin
        
        $dumpfile("t_Lab2.vcd");
        $dumpvars(0, t_Lab2);

        A = 0; 
        B = 1;
        S = 0;
        #20

        A = 1;
        B = 1; 
        S = 1;
        #40

        A = 1; 
        B = 0;
        S = 0;
        #20

        $display("Lab2 is complete");
    end

endmodule