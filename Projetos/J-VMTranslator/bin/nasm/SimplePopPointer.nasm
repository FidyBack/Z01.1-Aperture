; 0 - POP pointer 0
<<<<<<< HEAD
leaw $SP,%A
movw (%A), %S
decw %S
movw %S, (%A)
movw (%A), %A
movw (%A), %S
leaw $THIS,%A
movw %S, (%A)
; 1 - POP pointer 1
leaw $SP,%A
movw (%A), %S
decw %S
movw %S, (%A)
movw (%A), %A
movw (%A), %S
leaw $THAT,%A
movw %S, (%A)
=======
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
>>>>>>> 1f5a80a0674b61598bf695c0e823e910839991cc
; End
