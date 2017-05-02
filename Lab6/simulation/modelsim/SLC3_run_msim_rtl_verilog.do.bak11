transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/RegFile.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/nzp.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/MainAdder.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/Led.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/ALU.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/HexDriver.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/tristate.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/SLC3_2.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/Mem2IO.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/ISDU.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/PC.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/IR.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/MAR.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/MDR.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/SEXT.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/GateMUX.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/test_memory.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/slc3.sv}
vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/lc3top.sv}

vlog -sv -work work +incdir+D:/University\ of\ Illinois/Spring\ 2017/ECE\ 385/Lab_6/Lab6 {D:/University of Illinois/Spring 2017/ECE 385/Lab_6/Lab6/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run 2000 ns
