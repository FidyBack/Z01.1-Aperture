; 0 - POP pointer 0
leaw $THIS,%A
movw (%A), %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%A
incw %A
movw %A, (%A)
; 1 - POP pointer 1
leaw $THAT,%A
movw (%A), %D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%A
incw %A
movw %A, (%A)
; End
