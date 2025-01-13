module fulladder(a,b,cin,sum,cout);
input wire a,b,cin;
output wire sum,cout;

// Calcualtion of sum
assign sum = (a ^ b) ^ cin;

// Calculation of carry
assign cout = a & b | b & cin | cin & a;

endmodule

module ripplecarryadder(a,b,cin,sum,cout);
input wire [3:0]a,b;
input wire cin;
output wire [3:0]sum;
output wire cout;
wire c1,c2,c3;

// Structural modellig
// Order based instantiation
fulladder s1(a[0],b[0],cin,sum[0],c1);
fulladder s2(a[1],b[1],c1,sum[1],c2);
fulladder s3(a[2],b[2],c2,sum[2],c3);
fulladder s4(a[3],b[3],c3,sum[3],cout);

endmodule
