`timescale 1ns/10ps
module testbench_simple;
parameter width = 8;
reg [width-1:0] a,b;
reg s;
wire [width-1:0] out;
mux2to1 mymux(a,b,s,out);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	a=78;//this is in decimal
	b='b00000010;//this is in binary
	s=0;
	#1;
	a=150;
	#1;
	s=1;
	b=1;
	#1;
	s=0;
	a=200;
        $finish;
end
endmodule


