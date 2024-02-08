module Full_Design(input [3:0]BCD_in,A,input mode,output[3:0] Sum);

wire[3:0] BCD_out;
wire[3:0] out;

Complement_9 (BCD_in,BCD_out);
QuadMux(BCD_out,BCD_in,mode,out);
BCD_Adder(out,A,mode,Sum);

endmodule 
