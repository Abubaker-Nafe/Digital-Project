module Complement_9(BCDin,BCDout);


input [3:0]BCDin;
output [3:0]BCDout;

//assign z = ~d;
//assign y = c;
//assign x = b^c;
//assign w = ~a & ~b & ~c;

//BCDin 3 = a
//BCDin 2 = b
//BCDin 1 = c
//BCDin 0 = d
//--------------
//BCDout 3 = w
//BCDout 2 = x
//BCDout 1 = y
//BCDout 0 = z
	
assign BCDout[3] = ((~(BCDin[3])) & (~(BCDin[2])) & (~(BCDin[1])));
assign BCDout[2] = BCDin[2] ^ BCDin[1];
assign BCDout[1] = BCDin[1];
assign BCDout[0] = ~BCDin[0];

endmodule  