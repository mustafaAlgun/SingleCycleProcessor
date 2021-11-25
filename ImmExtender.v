module ImmExtender(DataInput,
						 DataOut,
						 ExtendSrc);

input ExtendSrc;

input [11:0] DataInput;

output reg [31:0] DataOut;

always @ (*) begin
		
		if(ExtendSrc) begin
							DataOut={20'd0,DataInput};	//extend for mem
						  end
		else 	begin
				DataOut={27'd0,DataInput[11:7]};	//extend for shift
				end
				
end

endmodule