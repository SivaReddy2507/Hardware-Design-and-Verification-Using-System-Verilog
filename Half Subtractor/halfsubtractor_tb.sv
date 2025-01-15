`include "halfsubtractor.sv"

module halfsubtractor_tb;
reg a,b;
wire diff,bout;

halfsubtractor s1(a,b,diff,bout);

initial begin
	$monitor("a=%b,b=%b,diff=%b,bout=%b",a,b,diff,bout);
	a <= 0; b <= 0;
	#1 a <= 0; b <= 1;
	#1 a <= 1; b <= 0;
	#1 a <= 1; b <= 1;
end

endmodule
