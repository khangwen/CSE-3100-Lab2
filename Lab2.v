module Lab2(A, B, S, Y);
// outputs one wire Y
// A, B inputs, S selection line
input A;
input B;
input S;
output Y;

assign Y = (A & S) | (B & !S); // combinational logic

endmodule