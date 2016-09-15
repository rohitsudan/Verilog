module 2to1mux(in0,in1,s,out);

input in0,in1,s;
output out;

not inv1(s_bar,s);
and and1(a1,s_bar,in0);
and and2(a2,s,in1);
or or1(out,a1,a2);


endmodule

