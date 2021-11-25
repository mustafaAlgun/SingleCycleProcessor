module Adder #(parameter W=32)(Input1,
										 Input2,
										 DataOut);

input [W-1:0] Input1,Input2;

output wire [W-1:0] DataOut;

assign DataOut = Input1 + Input2;		// Add two inputs

endmodule
