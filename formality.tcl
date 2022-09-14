read_verilog -container r -libname WORK -05 { /goldedAES_RTL/aes_128.v /goldedAES_RTL/round.v /goldedAES_RTL/table.v } 

set_top r:/WORK/aes_128 

read_verilog -container i -libname WORK -05 {/buggyAES_Netlist/aes_128_netlist.v } 

read_db { /designLibrary/GSCLib_3.0.db } 

set_top i:/WORK/aes_128 

match

verify


start_gui &


