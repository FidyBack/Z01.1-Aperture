; 0 - LT
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
jg %S
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
