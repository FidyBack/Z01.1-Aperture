onerror {quit -code 1}
source "/home/tluigimm/Desktop/faculdade/Elementos\ de\ Sistemas/Z01.1-Aperture/Projetos/D-UnidadeLogicaAritmetica/vunit_out/test_output/lib.tb_alu.all_776e1fb2296393bd00b7230172cd9214b3490146/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
