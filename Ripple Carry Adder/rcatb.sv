`include "ripplecarryadder.sv"

module rcatb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;

ripplecarryadder r1(a,b,cin,sum,cout);

always begin
	a = $random;
	b = $random;
	cin = $random;
	#1;
end

initial begin
	$monitor("time=%0t,a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
	#10 $finish;
end

endmodule
