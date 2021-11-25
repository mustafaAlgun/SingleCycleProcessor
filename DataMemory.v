module DataMemory #(parameter W=32)(		CLK,
														WE,
														A,
														WD,
														RD	);

input CLK, WE;	// CLK, write enable

//memory A
input [W-1:0] A, WD;	// input for memory address and data to be written to the [memory address]

output wire [W-1:0] RD;	// read the data at [memory address]

/*
												  | MEMORY STRUCTURE |
													[0]	--32bit--
													[1]	--32bit--
													[2]	--32bit--
													[3]	--32bit--
													[4]	--32bit--
													[5]	--32bit--
													[6]	--32bit--
													[7]	--32bit--

*/
											

reg [W-1:0] DataMemory [0:7];	// 8bit depth for memory.

initial begin

	$readmemh("DataMem.txt",DataMemory);	// read the file
	
end

wire [2:0] A_MEM = A[2:0];	// Least Significant 3bit of A register is enough to access the memory

assign RD = DataMemory[A_MEM];	// read from memory

always @ (posedge CLK) begin

	if(WE)	DataMemory[A_MEM]<=WD;		// write to memory on the rising edge of the CLK
	
end


endmodule


