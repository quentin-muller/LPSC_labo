vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../../Labo02_DSP.gen/sources_1/ip/Speakerctrl_0/Speakerctrl.vhd" \
"../../../../Labo02_DSP.gen/sources_1/ip/Speakerctrl_0/sim/Speakerctrl_0.vhd" \


