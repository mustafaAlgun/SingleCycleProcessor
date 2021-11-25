module MUX_16x1 #(parameter W=32) (Input0,
											  Input1,
											  Input2,
											  Input3,
											  Input4,
											  Input5,
											  Input6,
											  Input7,
											  Input8,
											  Input9,
											  Input10,
											  Input11,
											  Input12,
											  Input13,
											  Input14,
											  Input15,
											  SELECT,
											  DataOut );
											  
input [3:0] SELECT;

input [W-1:0] Input0,Input1,Input2,Input3,Input4,Input5,Input6,Input7,Input8,Input9,Input10,Input11,Input12,Input13,Input14,Input15;

output reg [W-1:0] DataOut;

always @(*) begin

	case(SELECT)
		4'b0000: DataOut=Input0;
		4'b0001: DataOut=Input1;
		4'b0010: DataOut=Input2;
		4'b0011: DataOut=Input3;
		4'b0100: DataOut=Input4;
		4'b0101: DataOut=Input5;
		4'b0110: DataOut=Input6;
		4'b0111: DataOut=Input7;
		4'b1000: DataOut=Input8;
		4'b1001: DataOut=Input9;
		4'b1010: DataOut=Input10;
		4'b1011: DataOut=Input11;
		4'b1100: DataOut=Input12;
		4'b1101: DataOut=Input13;
		4'b1110: DataOut=Input14;
		4'b1111: DataOut=Input15;
	endcase
	
end

endmodule
