; 0 - SUB
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
; End
