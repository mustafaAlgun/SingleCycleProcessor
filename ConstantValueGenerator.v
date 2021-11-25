module ConstantValueGenerator #(parameter W=32, parameter value=4)(DataOut);
output wire [W-1:0] DataOut;
assign DataOut = value;
endmodule 