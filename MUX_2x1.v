module MUX_2x1 #(parameter W=32) (Input0,
											 Input1,
											 SELECT,
											 DataOut);

input SELECT;
											 
input [W-1:0] Input0,Input1;

output wire [W-1:0] DataOut;

assign DataOut = SELECT ? Input1: Input0;

endmodule
