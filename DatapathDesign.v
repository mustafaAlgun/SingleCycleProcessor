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
// CREATED		"Sun May 02 18:56:08 2021"

module DatapathDesign(
	PCSrc,
	MemWrite,
	ALUSrc,
	RegWrite,
	RegSrc,
	CLK,
	ImmSrc,
	MemtoReg,
	ALUControl,
	ALUFlags,
	Inst_OUTPUT
);


input wire	PCSrc;
input wire	MemWrite;
input wire	ALUSrc;
input wire	RegWrite;
input wire	RegSrc;
input wire	CLK;
input wire	ImmSrc;
input wire	MemtoReg;
input wire	[2:0] ALUControl;
output wire	[3:0] ALUFlags;
output wire	[31:0] Inst_OUTPUT;

wire	[3:0] FlagBUS;
wire	[31:0] Instruction;
wire	[31:0] SYNTHESIZED_WIRE_20;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_21;
wire	[31:0] SYNTHESIZED_WIRE_22;
wire	[31:0] SYNTHESIZED_WIRE_4;
wire	[31:0] SYNTHESIZED_WIRE_23;
wire	[31:0] SYNTHESIZED_WIRE_8;
wire	[31:0] SYNTHESIZED_WIRE_9;
wire	[3:0] SYNTHESIZED_WIRE_10;
wire	[31:0] SYNTHESIZED_WIRE_11;
wire	[31:0] SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_17;
wire	[31:0] SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_17 = 0;




MUX_2x1	b2v_inst(
	.SELECT(ALUSrc),
	.Input0(SYNTHESIZED_WIRE_20),
	.Input1(SYNTHESIZED_WIRE_1),
	.DataOut(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst.W = 32;


ConstantValueGenerator	b2v_inst11(
	.DataOut(SYNTHESIZED_WIRE_22));
	defparam	b2v_inst11.value = 4;
	defparam	b2v_inst11.W = 32;


Adder	b2v_inst12(
	.Input1(SYNTHESIZED_WIRE_21),
	.Input2(SYNTHESIZED_WIRE_22),
	.DataOut(SYNTHESIZED_WIRE_25));
	defparam	b2v_inst12.W = 32;


MUX_2x1	b2v_inst14(
	.SELECT(MemtoReg),
	.Input0(SYNTHESIZED_WIRE_4),
	.Input1(SYNTHESIZED_WIRE_23),
	.DataOut(SYNTHESIZED_WIRE_24));
	defparam	b2v_inst14.W = 32;


DataMemory	b2v_inst15(
	.CLK(CLK),
	.WE(MemWrite),
	.A(SYNTHESIZED_WIRE_23),
	.WD(SYNTHESIZED_WIRE_20),
	.RD(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst15.W = 32;


ImmExtender	b2v_inst17(
	.ExtendSrc(ImmSrc),
	.DataInput(Instruction[11:0]),
	.DataOut(SYNTHESIZED_WIRE_1));


ArithmeticLogicUnit	b2v_inst18(
	.ALU_CNTRL(ALUControl),
	.Input1(SYNTHESIZED_WIRE_8),
	.Input2(SYNTHESIZED_WIRE_9),
	.CO(FlagBUS[1]),
	.OVF(FlagBUS[0]),
	.Z(FlagBUS[2]),
	.N(FlagBUS[3]),
	.DataOut(SYNTHESIZED_WIRE_23));
	defparam	b2v_inst18.W = 32;


RegisterFile	b2v_inst19(
	.CLK(CLK),
	.WE3(RegWrite),
	.A1(Instruction[19:16]),
	.A2(SYNTHESIZED_WIRE_10),
	.A3(Instruction[15:12]),
	.R15(SYNTHESIZED_WIRE_11),
	.WD3(SYNTHESIZED_WIRE_24),
	.RD1(SYNTHESIZED_WIRE_8),
	.RD2(SYNTHESIZED_WIRE_20));
	defparam	b2v_inst19.W = 32;


MUX_2x1	b2v_inst2(
	.SELECT(PCSrc),
	.Input0(SYNTHESIZED_WIRE_25),
	.Input1(SYNTHESIZED_WIRE_24),
	.DataOut(SYNTHESIZED_WIRE_18));
	defparam	b2v_inst2.W = 32;


MUX_2x1	b2v_inst20(
	.SELECT(RegSrc),
	.Input0(Instruction[15:12]),
	.Input1(Instruction[3:0]),
	.DataOut(SYNTHESIZED_WIRE_10));
	defparam	b2v_inst20.W = 4;


Adder	b2v_inst22(
	.Input1(SYNTHESIZED_WIRE_25),
	.Input2(SYNTHESIZED_WIRE_22),
	.DataOut(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst22.W = 32;



NormalRegister	b2v_inst4(
	.CLK(CLK),
	.RESET(SYNTHESIZED_WIRE_17),
	.InputData(SYNTHESIZED_WIRE_18),
	.OutputData(SYNTHESIZED_WIRE_21));
	defparam	b2v_inst4.W = 32;


InstructionMemory	b2v_inst5(
	.A(SYNTHESIZED_WIRE_21),
	.RD(Instruction));
	defparam	b2v_inst5.W = 8;

assign	ALUFlags = FlagBUS;
assign	Inst_OUTPUT = Instruction;

endmodule
