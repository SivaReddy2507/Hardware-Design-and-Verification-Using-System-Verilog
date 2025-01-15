module halfsubtractor(a,b,diff,bout);
input wire a,b;
output diff,bout;

// Calculation of diff
assign diff = a ^ b;

// Calculation of barrow
assign bout = ~a & b;

endmodule
