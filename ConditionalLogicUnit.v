module ConditionalLogicUnit(	FlagW,
										RegWrite,
										MemWrite,
										PCSrc,
										RegW,
										MemW,
										Cond,
										ALUFlags,
										FLAGS_BEFORE,
										FLAGS_AFTER);

input [1:0] FlagW;

input [3:0] ALUFlags, Cond, FLAGS_BEFORE;
									
input RegW,MemW;

reg CondEx=0;

reg [1:0] FlagWrite=2'b00;

output reg [3:0] FLAGS_AFTER=4'd0;

output reg 	RegWrite=0,
				MemWrite=0,
				PCSrc=0;

always @ (*) begin

	case(Cond)		// List is given in Single Cycle Lecture notes Page54, Condition Mnemonics.
		
		4'b0000: CondEx=FLAGS_BEFORE[2];//EQUAL
		
		4'b0001: CondEx=~FLAGS_BEFORE[2];//NOT EQUAL
		
		4'b0010: CondEx=FLAGS_BEFORE[1];//Unsigned higher or same
		
		4'b0011: CondEx=~FLAGS_BEFORE[1];//Unsigned lower
		
		4'b0100: CondEx=FLAGS_BEFORE[3];//Negative
		
		4'b0101: CondEx=~FLAGS_BEFORE[3];//Positive or zero
		
		4'b0110: CondEx=FLAGS_BEFORE[0];//Overflow
		
		4'b0111: CondEx=~FLAGS_BEFORE[0];//No overflow
		
		4'b1000: CondEx=~FLAGS_BEFORE[2]&FLAGS_BEFORE[1];//Unsigned higher
		
		4'b1001: CondEx=FLAGS_BEFORE[2]|~FLAGS_BEFORE[1];//Unsigned lower or same
		
		4'b1010: CondEx=~(FLAGS_BEFORE[3]^FLAGS_BEFORE[0]);//Signed greater than or equal
		
		4'b1011: CondEx=FLAGS_BEFORE[3]^FLAGS_BEFORE[0];//Signed less than
		
		4'b1100: CondEx=(~FLAGS_BEFORE[2])&(~(FLAGS_BEFORE[3]^FLAGS_BEFORE[0]));//Signed greater than
		
		4'b1101: CondEx=FLAGS_BEFORE[2]|(FLAGS_BEFORE[3]^FLAGS_BEFORE[0]);//Signed less than or equal
		
		4'b1110: CondEx=1;//Always,Unconditional
		
	endcase
	
	FlagWrite[0] = FlagW[0] & CondEx;
	
	FlagWrite[1] = FlagW[1] & CondEx;
	
	PCSrc=0;
	
	RegWrite = RegW & CondEx;
	
	MemWrite = CondEx & MemW;
	

	if(FlagWrite[1])	FLAGS_AFTER[3:2]=ALUFlags[3:2];	// Flags will be updated.
		
	else	FLAGS_AFTER[3:2]=FLAGS_BEFORE[3:2];				// SAME AS  BEFORE
		
	if(FlagWrite[0])	FLAGS_AFTER[1:0]=ALUFlags[1:0];	// Flags will be updated.
		
	else	FLAGS_AFTER[1:0]=FLAGS_BEFORE[1:0];				// SAME AS  BEFORE
		
end

endmodule
	
		
		

