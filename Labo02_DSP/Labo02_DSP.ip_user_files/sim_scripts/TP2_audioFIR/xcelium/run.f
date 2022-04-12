-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/TP2_audioFIR/ipshared/ef88/Speakerctrl.vhd" \
  "../../../bd/TP2_audioFIR/ip/TP2_audioFIR_Speakerctrl_0_0/sim/TP2_audioFIR_Speakerctrl_0_0.vhd" \
  "../../../bd/TP2_audioFIR/ip/TP2_audioFIR_clk_wiz_0_0/TP2_audioFIR_clk_wiz_0_0_sim_netlist.vhdl" \
  "../../../bd/TP2_audioFIR/ip/TP2_audioFIR_util_vector_logic_0_0/TP2_audioFIR_util_vector_logic_0_0_sim_netlist.vhdl" \
  "../../../bd/TP2_audioFIR/ipshared/f713/PmodMICRefComp.vhd" \
  "../../../bd/TP2_audioFIR/ip/TP2_audioFIR_PmodMICRefComp_0_0/sim/TP2_audioFIR_PmodMICRefComp_0_0.vhd" \
  "../../../bd/TP2_audioFIR/ip/TP2_audioFIR_ila_0_0/sim/TP2_audioFIR_ila_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/TP2_audioFIR/ip/TP2_audioFIR_xlconcat_0_0/sim/TP2_audioFIR_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/TP2_audioFIR/ip/TP2_audioFIR_xlconstant_0_0/sim/TP2_audioFIR_xlconstant_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/TP2_audioFIR/sim/TP2_audioFIR.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/TP2_audioFIR/ip/TP2_audioFIR_xlconstant_0_1/sim/TP2_audioFIR_xlconstant_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

