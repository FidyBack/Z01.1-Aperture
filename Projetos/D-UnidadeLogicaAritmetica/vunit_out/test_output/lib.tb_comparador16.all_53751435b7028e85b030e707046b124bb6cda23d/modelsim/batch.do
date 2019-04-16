onerror {quit -code 1}
source "/home/tluigimm/Desktop/faculdade/Elementos\ de\ Sistemas/Z01.1-Aperture/Projetos/D-UnidadeLogicaAritmetica/vunit_out/test_output/lib.tb_comparador16.all_53751435b7028e85b030e707046b124bb6cda23d/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
