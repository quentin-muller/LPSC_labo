vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93 \
"../../../../Labo01_priseEnMain.gen/sources_1/ip/vio_0/sim/vio_0.vhd" \


