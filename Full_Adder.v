module Full_Adder(a,b,C_in,sum,C_out);

input a,b,C_in;
output sum,C_out; 

assign C_out = (a&b) | (a&C_in) | (b&C_in);
assign sum = a^b^C_in;

endmodule 	