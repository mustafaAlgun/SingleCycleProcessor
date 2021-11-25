// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Sun May 02 18:58:33 2021"

module SingleCycleProcessor(
	CLK,
	RegSrc,
	RegWrite,
	ALUSrc,
	PCSrc,
	MemWrite,
	MemtoReg,
	ImmSrc
);


input wire	CLK;
output wire	RegSrc;
output wire	RegWrite;
output wire	ALUSrc;
output wire	PCSrc;
output wire	MemWrite;
output wire	MemtoReg;
output wire	ImmSrc;

wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	[2:0] SYNTHESIZED_WIRE_10;

assign	RegSrc = SYNTHESIZED_WIRE_9;
assign	RegWrite = SYNTHESIZED_WIRE_8;
assign	ALUSrc = SYNTHESIZED_WIRE_4;
assign	PCSrc = SYNTHESIZED_WIRE_5;
assign	MemWrite = SYNTHESIZED_WIRE_7;
assign	MemtoReg = SYNTHESIZED_WIRE_6;
assign	ImmSrc = SYNTHESIZED_WIRE_3;




Controller	b2v_inst1(
	.ALUFlags(SYNTHESIZED_WIRE_0),
	.FLAGS_BEFORE(SYNTHESIZED_WIRE_1),
	.Instruction(SYNTHESIZED_WIRE_2),
	.RegSrc(SYNTHESIZED_WIRE_9),
	.RegWrite(SYNTHESIZED_WIRE_8),
	.ALUSrc(SYNTHESIZED_WIRE_4),
	.PCSrc(SYNTHESIZED_WIRE_5),
	.ImmSrc(SYNTHESIZED_WIRE_3),
	.MemWrite(SYNTHESIZED_WIRE_7),
	.MemtoReg(SYNTHESIZED_WIRE_6),
	.ALUControl(SYNTHESIZED_WIRE_10),
	.FLAGS_AFTER(SYNTHESIZED_WIRE_1));


DatapathDesign	b2v_inst7(
	.CLK(CLK),
	.ImmSrc(SYNTHESIZED_WIRE_3),
	.ALUSrc(SYNTHESIZED_WIRE_4),
	.PCSrc(SYNTHESIZED_WIRE_5),
	.MemtoReg(SYNTHESIZED_WIRE_6),
	.MemWrite(SYNTHESIZED_WIRE_7),
	.RegWrite(SYNTHESIZED_WIRE_8),
	.RegSrc(SYNTHESIZED_WIRE_9),
	.ALUControl(SYNTHESIZED_WIRE_10),
	.ALUFlags(SYNTHESIZED_WIRE_0),
	.Inst_OUTPUT(SYNTHESIZED_WIRE_2));


endmodule
