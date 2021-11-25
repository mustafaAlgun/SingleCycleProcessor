module Controller(	Instruction,
							ALUFlags,
							RegSrc,
							RegWrite,
							ALUSrc,
							ALUControl,
							FLAGS_BEFORE,
							FLAGS_AFTER,
							PCSrc,
							ImmSrc,
							MemWrite,
							MemtoReg	);
							
input [31:0] Instruction;	// Fetched Instruction

input [3:0] ALUFlags,FLAGS_BEFORE;

output wire [2:0] ALUControl;

output wire [3:0] FLAGS_AFTER;

output wire PCSrc,
				ALUSrc,
				ImmSrc,
				MemWrite,
				RegSrc,
				RegWrite,
				MemtoReg;

wire [1:0] FlagW;

wire 	RegW,
		MemW,
		ALUOp;

ALUDecoder ALU_DEC (	.ALUOp(ALUOp),
							.ALUControl(ALUControl),
							.FlagW(FlagW),
							.FUNCT(Instruction[24:20]),
							.ShiftType(Instruction[6:5])	);

MainDecoder MAIN_DEC (	.Op(Instruction[27:26]),
								.FUNCT(Instruction[24:20]),
								.MemW(MemW),
								.ALUSrc(ALUSrc),
								.RegW(RegW),
								.ImmSrc(ImmSrc),
								.RegSrc(RegSrc),
								.MemtoReg(MemtoReg),
								.ALUOp(ALUOp)	);
								
ConditionalLogicUnit ConditionalLogic (.Cond(Instruction[31:28]),
													.PCSrc(PCSrc),
													.FlagW(FlagW),
													.ALUFlags(ALUFlags),
													.RegWrite(RegWrite),
													.MemWrite(MemWrite),
													.RegW(RegW),.MemW(MemW),
													.FLAGS_BEFORE(FLAGS_BEFORE),
													.FLAGS_AFTER(FLAGS_AFTER)	);
													
always @ (*) begin
	$display("Current Instruction = %h",Instruction);
end
	
endmodule