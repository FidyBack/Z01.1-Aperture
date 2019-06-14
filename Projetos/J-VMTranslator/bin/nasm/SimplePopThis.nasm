; 0 - POP this 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%S
leaw $0, %A
movw %A,%D
leaw $THIS, %A
movw (%A),%A
addw %A, %D, %A
movw %S, (%A)
; 1 - POP this 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%S
leaw $1, %A
movw %A,%D
leaw $THIS, %A
movw (%A),%A
addw %A, %D, %A
movw %S, (%A)
; 2 - POP this 2
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
; End
