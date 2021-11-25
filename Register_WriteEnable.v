module Register_WriteEnable #(parameter W=32)(CLK,RESET,InputData,OutputData,ENABLE);

input CLK,RESET,ENABLE;
input [W-1:0] InputData;
output reg [W-1:0] OutputData=0;

always @ (posedge CLK) begin

	if(RESET) 	begin
					OutputData<=0;
					end
	else 	begin
				if(ENABLE==1)
				OutputData<=InputData;
			end
			
end

endmodule
	