vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/xlconcat_v2_1_4
vlib riviera/xlconstant_v1_1_7

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7

vlog -work xpm  -sv2k12 "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/62b6" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/122e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/b205/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/fd26/hdl/verilog" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/TP2_audioFIR/ipshared/ef88/Speakerctrl.vhd" \
"../../../bd/TP2_audioFIR/ip/TP2_audioFIR_Speakerctrl_0_0/sim/TP2_audioFIR_Speakerctrl_0_0.vhd" \
"../../../bd/TP2_audioFIR/ip/TP2_audioFIR_clk_wiz_0_0/TP2_audioFIR_clk_wiz_0_0_sim_netlist.vhdl" \
"../../../bd/TP2_audioFIR/ip/TP2_audioFIR_util_vector_logic_0_0/TP2_audioFIR_util_vector_logic_0_0_sim_netlist.vhdl" \
"../../../bd/TP2_audioFIR/ipshared/f713/PmodMICRefComp.vhd" \
"../../../bd/TP2_audioFIR/ip/TP2_audioFIR_PmodMICRefComp_0_0/sim/TP2_audioFIR_PmodMICRefComp_0_0.vhd" \
"../../../bd/TP2_audioFIR/ip/TP2_audioFIR_ila_0_0/sim/TP2_audioFIR_ila_0_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/62b6" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/122e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/b205/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/fd26/hdl/verilog" \
"../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/62b6" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/122e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/b205/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/fd26/hdl/verilog" \
"../../../bd/TP2_audioFIR/ip/TP2_audioFIR_xlconcat_0_0/sim/TP2_audioFIR_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/62b6" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/122e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/b205/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/fd26/hdl/verilog" \
"../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/62b6" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/122e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/b205/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/fd26/hdl/verilog" \
"../../../bd/TP2_audioFIR/ip/TP2_audioFIR_xlconstant_0_0/sim/TP2_audioFIR_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/TP2_audioFIR/sim/TP2_audioFIR.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/62b6" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/122e/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/b205/hdl/verilog" "+incdir+../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/fd26/hdl/verilog" \
"../../../bd/TP2_audioFIR/ip/TP2_audioFIR_xlconstant_0_1/sim/TP2_audioFIR_xlconstant_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

