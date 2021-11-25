module MainDecoder(	Op,
							FUNCT,
							RegW,
							MemW,
							ALUSrc,
							MemtoReg,
							ImmSrc,
							RegSrc,
							ALUOp);
							
// All control signals are named as in lecture notes!

input [1:0] Op;

input [4:0] FUNCT;

output reg 	MemtoReg=0,
				ImmSrc=0,
				RegSrc=0,
				ALUOp=0,
				RegW=0,
				MemW=0,
				ALUSrc=0;

always @(*) begin
	case (Op)
	
		2'b01: begin		// Memory
					
					if(~FUNCT[0]) begin		//STR
					
						ImmSrc=1;
						
						RegSrc=0;
						
						ALUOp=0;	
						
						RegW=0;
						
						MemW=1;
						
						ALUSrc=1;
							
					end
					
					else begin					//LDR
					
						MemtoReg=0;
						
						ImmSrc=1;
						
						ALUOp=0;
						
						RegW=1;
						
						MemW=0;
						
						ALUSrc=1;

					end
					
				end
		 
		2'b00: begin	//Data Processing		
		
				ImmSrc=0;
						
				ALUOp=1;	
						
				MemW=0;
						
				MemtoReg=1;
						
						if(FUNCT[4:1]==4'b1101) begin		//SHIFT
						
							RegW=1;
							
							ALUSrc=1;

						end
						
						else if (FUNCT[4:1]==4'b1010) begin		// CMP

							RegSrc=0;
							
							ALUSrc=0;
							
							RegW=0;
							
						end
							
						else begin		// If niether of them
						
							RegW=1;
							
							RegSrc=1;
							
							ALUSrc=0;
							
						end
				end
				
	endcase
	
end

endmodule
						