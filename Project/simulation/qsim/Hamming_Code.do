onerror {exit -code 1}
vlib work
vcom -work work Hamming_Code.vho
vcom -work work RESULTADOFINAL.vwf.vht
vsim -novopt -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.HammingEncoder_vhd_vec_tst
vcd file -direction Hamming_Code.msim.vcd
vcd add -internal HammingEncoder_vhd_vec_tst/*
vcd add -internal HammingEncoder_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
