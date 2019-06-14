; 0 - PUSH constant 3030
leaw $3030, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 1 - POP pointer 0
leaw $THIS,%A
movw (%A), %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%A
incw %A
movw %A, (%A)
; 2 - PUSH constant 3040
leaw $3040, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 3 - POP pointer 1
leaw $THAT,%A
movw (%A), %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%A
incw %A
movw %A, (%A)
; 4 - PUSH constant 32
leaw $32, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 5 - POP this 2
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%S
leaw $2, %A
movw %A,%D
leaw $THIS, %A
movw (%A),%A
addw %A, %D, %A
movw %S, (%A)
; 6 - PUSH constant 46
leaw $46, %A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 7 - POP that 6
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%S
leaw $6, %A
movw %A,%D
leaw $THAT, %A
movw (%A),%A
addw %A, %D, %A
movw %S, (%A)
; 8 - PUSH pointer 0
leaw $SP,%A
movw (%A), %A
decw %A
movw %A, (%A)
movw (%A), %S
leaw $THIS,%A
movw %S, (%A)
; 9 - PUSH pointer 1
leaw $SP,%A
movw (%A), %A
decw %A
movw %A, (%A)
movw (%A), %S
leaw $THAT,%A
movw %S, (%A)
; 10 - ADD
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
; 11 - PUSH this 2
leaw $2, %A
movw %A,%D
leaw $THIS,%A
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
; 12 - SUB
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
; 13 - PUSH that 6
leaw $6, %A
movw %A,%D
leaw $THAT,%A
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
; 14 - ADD
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
; End
