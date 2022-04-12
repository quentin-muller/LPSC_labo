onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+TP2_audioFIR -L xpm -L xil_defaultlib -L xlconcat_v2_1_4 -L xlconstant_v1_1_7 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.TP2_audioFIR xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {TP2_audioFIR.udo}

run -all

endsim

quit -force
