; 0 - PUSH constant 5
leaw $5, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 1 - PUSH constant 15
leaw $15, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 2 - PUSH constant 15
leaw $15, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 3 - EQ
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
; 5 - PUSH constant 3
leaw $3, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 6 - POP temp 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $5, %A
movw %D,(%A)
; 7 - PUSH constant 15
leaw $15, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 8 - PUSH constant 9
leaw $9, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 9 - EQ
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
; 11 - PUSH constant 2
leaw $2, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 12 - POP temp 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $6, %A
movw %D,(%A)
; End
