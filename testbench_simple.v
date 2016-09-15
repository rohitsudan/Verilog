`timescale 1ns/10ps
module testbench_simple;
reg a,b,s;
wire out;
mux2to1 mymux(a,b,s,out);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	a=0;
	b=0;
	s=0;
	#1;
	a=1;
	#1;
	s=1;
	b=1;
	#1;
	s=0;
	a=0;
        $finish;
end
endmodule


