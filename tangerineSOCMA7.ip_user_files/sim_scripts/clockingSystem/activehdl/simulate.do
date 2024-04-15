transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+clockingSystem  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clockingSystem xil_defaultlib.glbl

do {clockingSystem.udo}

run 1000ns

endsim

quit -force
