module BCD_Adder(input [3:0]Muxoutput,A,input c_in,output [3:0]S);

wire [3:0] Z,C_out,cout;
wire OutputCarry;


Full_Adder F1(Muxoutput[0],A[0],c_in,Z[0],C_out[0]);
Full_Adder F2(Muxoutput[1],A[1],C_out[0],Z[1],C_out[1]);
Full_Adder F3(Muxoutput[2],A[2],C_out[1],Z[2],C_out[2]);
Full_Adder F4(Muxoutput[3],A[3],C_out[2],Z[3],C_out[3]);

assign OutputCarry = ((C_out[3]) | (Z[3]&Z[2]) | (Z[3]&Z[1]));
//if OutputCarry =1 , then it will add 6(4b'0110) to the sum, if not, the sum will be added to 0(4b'0000) which will remain the same.
Full_Adder F5(Z[0],0,0,S[0],cout[0]);
Full_Adder F6(Z[1],OutputCarry,cout[0],S[1],cout[1]);
Full_Adder F7(Z[2],OutputCarry,cout[1],S[2],cout[2]);
Full_Adder F8(Z[3],0,cout[2],S[3],cout[3]);

endmodule 