; 0 - LT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
<<<<<<< HEAD
subw %D, %S, %S
=======
subw %S, %D, %S
>>>>>>> 1f5a80a0674b61598bf695c0e823e910839991cc
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $TRUE, %A
<<<<<<< HEAD
jg %S
=======
je %S
>>>>>>> 1f5a80a0674b61598bf695c0e823e910839991cc
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
; End
