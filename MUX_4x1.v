module MUX_4x1 #(parameter W=32) (Input0,
											 Input1,
											 Input2,
											 Input3,
											 SELECT,
											 DataOut);
input [1:0] SELECT;

input [W-1:0] Input0,Input1,Input2,Input3;

output reg [W-1:0] DataOut;

always @(*) begin

	case(SELECT)
		2'b00: DataOut=Input0;
		2'b01: DataOut=Input1;
		2'b10: DataOut=Input2;
		2'b11: DataOut=Input3;
	endcase
	
end

endmodule
