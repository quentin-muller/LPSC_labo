onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib TP2_audioFIR_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {TP2_audioFIR.udo}

run -all

quit -force
