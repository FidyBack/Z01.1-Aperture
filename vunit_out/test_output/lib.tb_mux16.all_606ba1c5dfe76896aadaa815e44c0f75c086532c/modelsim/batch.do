onerror {quit -code 1}
source "/home/tluigimm/Desktop/faculdade/Elementos\ de\ Sistemas/Z01.1-Aperture/vunit_out/test_output/lib.tb_mux16.all_606ba1c5dfe76896aadaa815e44c0f75c086532c/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
