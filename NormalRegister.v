module NormalRegister #(parameter W=32)(CLK,InputData,OutputData,RESET);

input [W-1:0] InputData;

input CLK,RESET;

output reg [W-1:0] OutputData=0;

always @ (posedge CLK) begin

	if(RESET) 	begin
					OutputData<=0;
					end
	else	begin
			OutputData<=InputData;
			end
			
end

endmodule
		