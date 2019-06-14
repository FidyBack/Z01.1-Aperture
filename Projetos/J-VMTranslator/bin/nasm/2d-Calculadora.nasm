; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 0
leaw $0, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 2 - POP local 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%S
leaw $0, %A
movw %A,%D
leaw $LCL, %A
movw (%A),%A
addw %A, %D, %A
movw %S, (%A)
; 3 - PUSH argument 1
leaw $1, %A
movw %A,%D
leaw $ARG,%A
movw (%A),%A
addw %A, %D, %A
movw (%A), %D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 4 - POP local 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%S
leaw $1, %A
movw %A,%D
leaw $LCL, %A
movw (%A),%A
addw %A, %D, %A
movw %S, (%A)
; 5 - PUSH constant 0
leaw $0, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 6 - PUSH local 1
leaw $1, %A
movw %A,%D
leaw $LCL,%A
movw (%A),%A
addw %A, %D, %A
movw (%A), %D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 7 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %D, %S, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $TRUE, %A
je %S
nop
leaw $0, %A
movw %A, %S
leaw $END, %A
jmp
nop
TRUE:
leaw $0, %A
notw %A
movw %A, %S
leaw $END, %A
jmp
nop
END:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 9 - PUSH local 0
leaw $0, %A
movw %A,%D
leaw $LCL,%A
movw (%A),%A
addw %A, %D, %A
movw (%A), %D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 10 - PUSH argument 0
leaw $0, %A
movw %A,%D
leaw $ARG,%A
movw (%A),%A
addw %A, %D, %A
movw (%A), %D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 11 - ADD
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
addw %D, %S, %S
movw %S, (%A)
movw %A, %S
leaw $SP, %A
incw %S
movw %S, (%A)
; 12 - POP local 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%S
leaw $0, %A
movw %A,%D
leaw $LCL, %A
movw (%A),%A
addw %A, %D, %A
movw %S, (%A)
; 13 - PUSH local 1
leaw $1, %A
movw %A,%D
leaw $LCL,%A
movw (%A),%A
addw %A, %D, %A
movw (%A), %D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 14 - PUSH constant 1
leaw $1, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 15 - SUB
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %S, (%A)
movw %A, %S
leaw $SP, %A
incw %S
movw %S, (%A)
; 16 - POP local 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%S
leaw $1, %A
movw %A,%D
leaw $LCL, %A
movw (%A),%A
addw %A, %D, %A
movw %S, (%A)
; 18 - PUSH local 0
leaw $0, %A
movw %A,%D
leaw $LCL,%A
movw (%A),%A
addw %A, %D, %A
movw (%A), %D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 21 - PUSH constant 3
leaw $3, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 22 - PUSH constant 3
leaw $3, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 24 - POP temp 2
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $7, %A
movw %D,(%A)
; End
