`include "lookaheadcarryadder.sv"

module lcatb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;

lookaheadcarryadder c1(
	.a(a),
	.b(b),
	.cin(cin),
	.sum(sum),
	.cout(cout)
	);

initial begin
	$monitor("time=%0t,a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
	repeat(10) begin
		a = $random;
		b = $random;
		cin = $random;
		#1;
	end
end

endmodule
