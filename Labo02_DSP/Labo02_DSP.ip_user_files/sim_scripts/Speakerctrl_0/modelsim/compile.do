vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93 \
"../../../../Labo02_DSP.gen/sources_1/ip/Speakerctrl_0/Speakerctrl.vhd" \
"../../../../Labo02_DSP.gen/sources_1/ip/Speakerctrl_0/sim/Speakerctrl_0.vhd" \


