onerror {quit -code 1}
source "/home/tluigimm/Desktop/faculdade/Elementos\ de\ Sistemas/Z01.1-Aperture/Projetos/D-UnidadeLogicaAritmetica/vunit_out/test_output/lib.tb_add16.all_a8ad0313227e6e4cf7e1113b280dcedad766e677/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
