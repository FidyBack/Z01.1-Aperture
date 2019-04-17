
proc vunit_help {} {
    puts {List of VUnit commands:}
    puts {vunit_help}
    puts {  - Prints this help}
    puts {vunit_load [vsim_extra_args]}
    puts {  - Load design with correct generics for the test}
    puts {  - Optional first argument are passed as extra flags to vsim}
    puts {vunit_user_init}
    puts {  - Re-runs the user defined init file}
    puts {vunit_run}
    puts {  - Run test, must do vunit_load first}
    puts {vunit_compile}
    puts {  - Recompiles the source files}
    puts {vunit_restart}
    puts {  - Recompiles the source files}
    puts {  - and re-runs the simulation if the compile was successful}
}

proc vunit_run {} {
    if {[catch {_vunit_run} failed_or_err]} {
        echo $failed_or_err
        return true;
    }

    if {![is_test_suite_done]} {
        echo
        echo "Test Run Failed!"
        echo
        _vunit_run_failure;
        return true;
    }

    return false;
}

proc _vunit_source_init_files_after_load {} {
    return 0
}

proc vunit_load {{vsim_extra_args ""}} {
    set vsim_failed [catch {
        eval vsim ${vsim_extra_args} {-wlf {/home/tluigimm/Desktop/faculdade/Elementos\ de\ Sistemas/Z01.1-Aperture/vunit_out/test_output/lib.tb_ram8.all_479863c9f9014a9dc9b05b00557ba5ed5848a6ed/modelsim/vsim.wlf} -quiet -t ps -onfinish stop  -g/tb_ram8/runner_cfg={"active python runner : true,enabled_test_cases : ,output path : /home/tluigimm/Desktop/faculdade/Elementos de Sistemas/Z01.1-Aperture/vunit_out/test_output/lib.tb_ram8.all_479863c9f9014a9dc9b05b00557ba5ed5848a6ed/,tb path : /home/tluigimm/Desktop/faculdade/Elementos de Sistemas/Z01.1-Aperture/Projetos/E-LogicaSequencial/tests/tst/,use_color : true"} lib.tb_ram8(tb)   -L vunit_lib -L lib}
    }]

    if {${vsim_failed}} {
       echo Command 'vsim ${vsim_extra_args} -wlf {/home/tluigimm/Desktop/faculdade/Elementos\ de\ Sistemas/Z01.1-Aperture/vunit_out/test_output/lib.tb_ram8.all_479863c9f9014a9dc9b05b00557ba5ed5848a6ed/modelsim/vsim.wlf} -quiet -t ps -onfinish stop  -g/tb_ram8/runner_cfg={"active python runner : true,enabled_test_cases : ,output path : /home/tluigimm/Desktop/faculdade/Elementos de Sistemas/Z01.1-Aperture/vunit_out/test_output/lib.tb_ram8.all_479863c9f9014a9dc9b05b00557ba5ed5848a6ed/,tb path : /home/tluigimm/Desktop/faculdade/Elementos de Sistemas/Z01.1-Aperture/Projetos/E-LogicaSequencial/tests/tst/,use_color : true"} lib.tb_ram8(tb)   -L vunit_lib -L lib' failed
       echo Bad flag from vsim_extra_args?
       return true
    }

    if {[_vunit_source_init_files_after_load]} {
        return true
    }

    global BreakOnAssertion
    set BreakOnAssertion 2

    global NumericStdNoWarnings
    set NumericStdNoWarnings 0

    global StdArithNoWarnings
    set StdArithNoWarnings 0

    
    return false
}

proc is_test_suite_done {} {
    set fd [open "/home/tluigimm/Desktop/faculdade/Elementos\ de\ Sistemas/Z01.1-Aperture/vunit_out/test_output/lib.tb_ram8.all_479863c9f9014a9dc9b05b00557ba5ed5848a6ed/vunit_results" "r"]
    set contents [read $fd]
    close $fd
    set lines [split $contents "
"]
    foreach line $lines {
        if {$line=="test_suite_done"} {
           return true;
        }
    }

    return false;
}


proc _vunit_run_failure {} {
    catch {
        # tb command can fail when error comes from pli
        echo "Stack trace result from 'tb' command"
        echo [tb]
        echo
        echo "Surrounding code from 'see' command"
        echo [see]
    }
}

proc _vunit_run {} {
    proc on_break {} {
        resume
    }
    onbreak {on_break}

    run -all
}

proc _vunit_sim_restart {} {
    restart -f
}

proc vunit_compile {} {
    set cmd_show {/usr/bin/python3 -u Projetos/E-LogicaSequencial/testeLogicaSequencial.py --compile}
    puts "Re-compiling using command ${cmd_show}"

    set chan [open |[list {/usr/bin/python3} {-u} {-c} {import sys;import subprocess;exit(subprocess.call(['/usr/bin/python3', '-u', 'Projetos/E-LogicaSequencial/testeLogicaSequencial.py', '--compile'], cwd='/home/tluigimm/Desktop/faculdade/Elementos de Sistemas/Z01.1-Aperture', bufsize=0, universal_newlines=True, stdout=sys.stdout, stderr=sys.stdout))}] r]

    while {[gets $chan line] >= 0} {
        puts $line
    }

    if {[catch {close $chan} error_msg]} {
        puts "Re-compile failed"
        puts ${error_msg}
        return true
    } else {
        puts "Re-compile finished"
        return false
    }
}

proc vunit_restart {} {
    if {![vunit_compile]} {
        _vunit_sim_restart
        vunit_run
    }
}