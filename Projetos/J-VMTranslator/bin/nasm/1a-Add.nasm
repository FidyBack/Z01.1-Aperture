; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 123
leaw $123, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 2 - PUSH constant 23
leaw $23, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 3 - ADD
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
; 4 - POP temp 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $5, %A
movw %D,(%A)
; End
