module QuadMux(input [3:0]BCDout,BCDin,input sel,output reg [3:0]out);

always @(BCDout,BCDin,sel) begin
if(sel == 0) out = BCDin;

else out = BCDout;

end

endmodule 