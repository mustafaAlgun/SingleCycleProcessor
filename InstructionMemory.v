module InstructionMemory #(parameter W=8)(A, RD	);

input [4*W-1:0] A;			// 32-bit instruction address input from PC

output reg [4*W-1:0] RD;	// 32-bit data (i.e., instruction)

integer k; // to be used in the for loop later


/*
										| MEMORY STRUCTURE |
										
								Address1 ->	{	[0]	--8bit--
												{	[1]	--8bit--
												{	[2]	--8bit--
												{	[3]	--8bit--
								Address2 ->	{	[4]	--8bit--
												.	[5]	--8bit--
												.	[6]	--8bit--
													[7]	--8bit--
													.			.
													.			.
													.			.
													[63]	--8bit--

*/


reg [W-1:0] InstructionMemory [0:63];	// 64bit depth for memory.
	
initial begin
	$readmemh("InstructionMem.txt",InstructionMemory);	// read from file
end

//4 bit memory address
reg [5:0] A_MEM;

always @ (*) begin	
	A_MEM=A[5:0];	// first bytes address
	
	/*
		Address is 32bit but the memory is byte addressable. Therefore, to fetch the instruction, I read 4 bytes back to back. 
		This for loop allows me to access each bytes address.
		RD[k*W +: W] syntax is called "index-part-select".
		With this sytnax I reach to the addresses:
		RD[0:7]
		RD[15:8]
		RD[23:16]
		RD[31:24], respectively. 
	*/

	for(k=0; k<4; k=k+1) begin
	
		RD[k*W +: W]=InstructionMemory[A_MEM];	
		
		A_MEM=A_MEM+6'd1;	// skip to the next address
		
		end

end



endmodule