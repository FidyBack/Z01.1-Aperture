onerror {quit -code 1}
source "/home/tluigimm/Desktop/faculdade/Elementos\ de\ Sistemas/Z01.1-Aperture/Projetos/E-LogicaSequencial/vunit_out/test_output/lib.tb_register64.all_4b3d7424596cd97dd7902eed2c07b57d4cde18f3/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
