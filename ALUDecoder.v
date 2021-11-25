module ALUDecoder(	ALUOp,
							FUNCT,
							ShiftType,
							ALUControl,
							FlagW	);
							
// All control signals are named as in lecture notes except ShiftType.
// It is sh in lecture notes but I changed it so that it is more understandable to the reader!
// Also FUNCT is not entirely the FUNCT but FUNCT[4:0].

input [1:0] ShiftType;

input ALUOp;

input [4:0] FUNCT;

output reg [1:0] FlagW=3'd0;

output reg [2:0] ALUControl=3'd0;


always @(*) begin

	if(ALUOp) begin	// Data Processing
	
		case (FUNCT[4:1])
		
			////////////////////////////
			4'b0100: begin		// ADD
							ALUControl=3'b000;

							if(FUNCT[0])	FlagW=2'b11;		// S=1, FlagW=11
							
							else	FlagW=2'b00;					// S=0, FlagW=00
							
						end
			////////////////////////////
			4'b0010: begin		//SUB
							ALUControl=3'b001;

							if(FUNCT[0])	FlagW=2'b11;		// S=1, FlagW=11
								
							else	FlagW=2'b00;					// S=0, FlagW=00
								
						end
			////////////////////////////
			4'b1101: begin		// SHIFT
						
							if(ShiftType==2'b01)	ALUControl=3'b101; 				// LSR
								
							else if (ShiftType==2'b00)	ALUControl=3'b110;		// LSL
								
							if(FUNCT[0])	FlagW=2'b10;		// S=1, FlagW=10
								
							else	FlagW=2'b00;					// S=0, FlagW=00
								
						end
			////////////////////////////
			4'b1010: begin		// CMP
			
							FlagW=2'b11;
							
							ALUControl=3'b010;
							
						end
			////////////////////////////			
			4'b0000:begin		// AND
							ALUControl=3'b011;
							
							if(FUNCT[0])	FlagW=2'b10;		// S=1, FlagW=10
								
							else	FlagW=2'b00;					// S=0, FlagW=00
								
						end
			////////////////////////////
			4'b1100:begin		// OR
							ALUControl=3'b100;
							
							if(FUNCT[0])	FlagW=2'b10;		// S=1, FlagW=10
								
							else	FlagW=2'b00;					// S=0, FlagW=00
								
						end
			////////////////////////////
		endcase
		
	end
	
	else begin
	
		ALUControl=3'b000;	// ADD	
		FlagW=2'b00;			// Flags stay as they were.
		
	end
end
endmodule