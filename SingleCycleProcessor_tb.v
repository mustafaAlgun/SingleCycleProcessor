module SingleCycleProcessor_tb();
reg CLK;
reg [31:0] testvector [0:15];
integer number;
SingleCycleProcessor Single_Cycle_Processor(.CLK(CLK),.MemtoReg(MemtoReg),.MemWrite(MemWrite),.ImmSrc(ImmSrc),.PCSrc(PCSrc),.ALUSrc(ALUSrc),.RegWrite(RegWrite),.RegSrc(RegSrc));

initial begin
	$readmemh("InstructionMem.txt",testvector);
	number=0;
	CLK =0;
end
always begin
	#5; 
	CLK = ~CLK;
end

always @ (posedge CLK) begin
	number = number +1;
	$display("Instruction number is: %d ", number);
end
endmodule
