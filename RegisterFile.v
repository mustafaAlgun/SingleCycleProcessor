module RegisterFile #(parameter W=32)(CLK,
												  A1,
												  A2,
												  A3,
												  WD3,
												  WE3,
												  R15,
												  RD1,
												  RD2 );

input [W-1:0] WD3,R15;	// write data input, PC+8

input [3:0] A1,A2,A3;	// Rn, Rm, and Rd. A1 & A2 are 4bit address inputs for reading. A3 is 4bit address input for write.
											  
input CLK, WE3;	// CLK and write ENABLE input

wire [15:0] DecodedA3Address;		// to store the decoded write adress in 4bit A3 input

output wire [W-1:0] RD1,RD2;  //[Rn], and [Rm]. RD1 & RD2 are read data outputs.

// output connections of registers
wire [W-1:0] R0_Output, R1_Output, R2_Output, R3_Output, R4_Output, R5_Output, R6_Output, R7_Output, R8_Output, R9_Output, R10_Output, R11_Output, R12_Output, R13_Output, R14_Output, R15_Output;

// When WE3 is set, corresponding register must be written into. These connections are to be connected to WE3 and Decoded A3 addresses to ENABLE the write operation.
wire R0_Write, R1_Write, R2_Write, R3_Write, R4_Write, R5_Write, R6_Write, R7_Write, R8_Write, R9_Write, R10_Write, R11_Write, R12_Write, R13_Write, R14_Write;

// R15 will not be written since it is connected to PC+8.
assign R15_Output = R15; // R15 is PC + 8

// Decode the register address in A3 to be written
Decoder_4x16 DEC_A3 (		.Input0(A3[0]),
									.Input1(A3[1]),
									.Input2(A3[2]),
									.Input3(A3[3]),
									.Output0(DecodedA3Address[0]),
									.Output1(DecodedA3Address[1]),
									.Output2(DecodedA3Address[2]),
									.Output3(DecodedA3Address[3]),
									.Output4(DecodedA3Address[4]),
									.Output5(DecodedA3Address[5]),
									.Output6(DecodedA3Address[6]),
									.Output7(DecodedA3Address[7]),
									.Output8(DecodedA3Address[8]),
									.Output9(DecodedA3Address[9]),
									.Output10(DecodedA3Address[10]),
									.Output11(DecodedA3Address[11]),
									.Output12(DecodedA3Address[12]),
									.Output13(DecodedA3Address[13]),
									.Output14(DecodedA3Address[14]),
									.Output15(DecodedA3Address[15])		);
									


// When WE3 = 1, corresponding register write signals will be set.

assign R0_Write  = WE3 & DecodedA3Address[0]; 
assign R1_Write  = WE3 & DecodedA3Address[1]; 
assign R2_Write  = WE3 & DecodedA3Address[2]; 
assign R3_Write  = WE3 & DecodedA3Address[3]; 
assign R4_Write  = WE3 & DecodedA3Address[4]; 
assign R5_Write  = WE3 & DecodedA3Address[5]; 
assign R6_Write  = WE3 & DecodedA3Address[6]; 
assign R7_Write  = WE3 & DecodedA3Address[7];
assign R8_Write  = WE3 & DecodedA3Address[8]; 
assign R9_Write  = WE3 & DecodedA3Address[9]; 
assign R10_Write = WE3 & DecodedA3Address[10]; 
assign R11_Write = WE3 & DecodedA3Address[11];
assign R12_Write = WE3 & DecodedA3Address[12]; 
assign R13_Write = WE3 & DecodedA3Address[13]; 
assign R14_Write = WE3 & DecodedA3Address[14]; 


// .Register_WriteEnable file is utilized in here. WD3 is the input as in the lecture notes.
Register_WriteEnable #(.W(W)) R0(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R0_Output),.ENABLE(R0_Write));
Register_WriteEnable #(.W(W)) R1(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R1_Output),.ENABLE(R1_Write));
Register_WriteEnable #(.W(W)) R2(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R2_Output),.ENABLE(R2_Write));
Register_WriteEnable #(.W(W)) R3(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R3_Output),.ENABLE(R3_Write));
Register_WriteEnable #(.W(W)) R4(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R4_Output),.ENABLE(R4_Write));
Register_WriteEnable #(.W(W)) R5(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R5_Output),.ENABLE(R5_Write));
Register_WriteEnable #(.W(W)) R6(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R6_Output),.ENABLE(R6_Write));
Register_WriteEnable #(.W(W)) R7(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R7_Output),.ENABLE(R7_Write));
Register_WriteEnable #(.W(W)) R8(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R8_Output),.ENABLE(R8_Write));
Register_WriteEnable #(.W(W)) R9(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R9_Output),.ENABLE(R9_Write));
Register_WriteEnable #(.W(W)) R10(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R10_Output),.ENABLE(R10_Write));
Register_WriteEnable #(.W(W)) R11(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R11_Output),.ENABLE(R11_Write));
Register_WriteEnable #(.W(W)) R12(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R12_Output),.ENABLE(R12_Write));
Register_WriteEnable #(.W(W)) R13(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R13_Output),.ENABLE(R13_Write));
Register_WriteEnable #(.W(W)) R14(.CLK(CLK),.RESET(0),.InputData(WD3),.OutputData(R14_Output),.ENABLE(R14_Write));


MUX_16x1 #(.W(W)) MUX_OUTPUT1 (	.SELECT(A1),		//		Finding [Rn]
											.Input0(R0_Output),
											.Input1(R1_Output),
											.Input2(R2_Output),
											.Input3(R3_Output),
											.Input4(R4_Output),
											.Input5(R5_Output),
											.Input6(R6_Output),
											.Input7(R7_Output),
											.Input8(R8_Output),
											.Input9(R9_Output),
											.Input10(R10_Output),
											.Input11(R11_Output),
											.Input12(R12_Output),
											.Input13(R13_Output),
											.Input14(R14_Output),
											.Input15(R15_Output),
											.DataOut(RD1)	);
										 
MUX_16x1 #(.W(W)) MUX_OUTPUT2 (	.SELECT(A2),		//		Finding [Rm]
											.Input0(R0_Output),
											.Input1(R1_Output),
											.Input2(R2_Output),
											.Input3(R3_Output),
											.Input4(R4_Output),
											.Input5(R5_Output),
											.Input6(R6_Output),
											.Input7(R7_Output),
											.Input8(R8_Output),
											.Input9(R9_Output),
											.Input10(R10_Output),
											.Input11(R11_Output),
											.Input12(R12_Output),
											.Input13(R13_Output),
											.Input14(R14_Output),
											.Input15(R15_Output),
											.DataOut(RD2)	);
endmodule

