module ArithmeticLogicUnit #(parameter W=32)(Input1,
															Input2,
															ALU_CNTRL,
															DataOut,
															CO,
															OVF,
															Z,
															N);

input [2:0] ALU_CNTRL;

input [W-1:0] Input1,Input2;

reg [W-1:0] OnesComplement;

output reg [W-1:0] DataOut;

output reg CO,OVF,Z,N;

always @(*) begin

	case(ALU_CNTRL)
		////////////////////////////////
		3'b000: begin
		
						{CO,DataOut} = Input1 + Input2;	// Input1 + Input2 operation
						
						if( ~(Input1[W-1]^Input2[W-1]) & (Input1[W-1]^DataOut[W-1]) )	OVF=1;	// output has different sign than Input1 & Input2 -> Overflow detected!!		
						
						else	OVF=0;
							
					end
		////////////////////////////////			
		3'b001: begin
						OnesComplement = ~Input2;

						{CO,DataOut}=Input1+OnesComplement+1;	// Input1 - Input2 operation
						
						if((Input1[W-1]^Input2[W-1])& (Input1[W-1]^DataOut[W-1]))		OVF=1;	// output has different sign than Input1 and  Input1 & Input2 have different signs -> Overflow detected!!
							
						else	OVF=0;
							
					end
		////////////////////////////////
		3'b010: begin 
						OnesComplement = ~Input1;
						
						{CO,DataOut} = Input2+OnesComplement+1;	// Input2 - Input1 operation
						
						if((Input1[W-1]^Input2[W-1])& (Input2[W-1]^DataOut[W-1]))		OVF=1;	// output has different sign than Input2 and  Input1 & Input2 have different signs -> Overflow detected!!
							
						else	OVF=0;
							
					end
		////////////////////////////////
		3'b011: begin 
						
						DataOut = Input1 & Input2;	// AND
						
						CO=0;
						
						OVF=0;
						
					end
		////////////////////////////////
		3'b100: begin
		
						DataOut = Input1 | Input2; // OR
						
						CO=0;
						
						OVF=0;
						
					end
		////////////////////////////////
		3'b101: begin	
						DataOut = Input1 >> Input2[4:0];	//	LSR rA <- (rB >> Imm)
						
						CO=0;
						
						OVF=0;
						
					end
		////////////////////////////////			
		3'b110: begin	
		
						DataOut = Input1 << Input2[4:0];	//	LSL rA <- (rB << Imm)
						
						CO=0;
						
						OVF=0;	
						
					end
	endcase
			
	Z = (&(~DataOut));		// If all bits of Output are zero, Zero Flag is assigned to one
	
	N = DataOut[W-1];		// MSB of output is assigned to Negative Flag	
	
end

endmodule
						
	