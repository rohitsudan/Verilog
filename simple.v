module mux2to1(in0,in1,s,out);

input in0,in1,s;
output out;
reg out;
// this design is using gate level or structural level
/*
not inv1(s_bar,s);
and and1(a1,s_bar,in0);
and and2(a2,s,in1);
or or1(out,a1,a2);
*/
// this design is using behavioural level

always @ (in0 or in1 or s)
begin
    if(s == 0)
    begin
    	out = in0;
    end
    else
    begin
	out = in1;
    end
end 

endmodule

