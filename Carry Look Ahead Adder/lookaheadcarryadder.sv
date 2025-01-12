module lookaheadcarryadder(a,b,cin,sum,cout);    // Completely in Data flow modelling
input wire [3:0]a,b;
input wire cin;
output wire [3:0]sum;
output wire cout;
wire c2,c3,c4;

// calculation of carry
// a.b is generated carry and (a xor b)c is propagation carry 
assign c2 = a[0] & b[0] | (a[0] ^ b[0]) & cin;
assign c3 = a[1] & b[1] | (a[1] ^ b[1]) & c2;
assign c4 = a[2] & b[2] | (a[2] ^ b[2]) & c3;
assign cout = a[3] & b[3] | (a[3] ^ b[3]) & c4;  

// calculation of sum
assign sum[0] = a[0] ^ b[0] ^ cin;
assign sum[1] = a[1] ^ b[1] ^ c2;
assign sum[2] = a[2] ^ b[2] ^ c3;
assign sum[3] = a[3] ^ b[3] ^ c4;

endmodule
