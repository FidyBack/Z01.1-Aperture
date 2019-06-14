; 0 - POP local 0
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
; 1 - POP local 1
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
; 2 - POP local 2
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%S
leaw $2, %A
movw %A,%D
leaw $LCL, %A
movw (%A),%A
addw %A, %D, %A
movw %S, (%A)
; End
