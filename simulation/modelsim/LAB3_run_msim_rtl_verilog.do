transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/RegisterFile.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/ArithmeticLogicUnit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/Adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/ImmExtender.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/Decoder_4x16.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/MUX_2x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/MUX_16x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/NormalRegister.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/Register_WriteEnable.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/ConstantValueGenerator.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/InstructionMemory.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mustafa/Desktop/METU/2021\ Spring/EE446/LAB3 {C:/Users/Mustafa/Desktop/METU/2021 Spring/EE446/LAB3/DataMemory.v}

