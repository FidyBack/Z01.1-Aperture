LED:
  leaw $21185, %A
  movw (%A), %D 
  leaw $21845, %A
  addw %A, %D, %D
  leaw $64, %A
  addw %A, %D, %D
  leaw $21184, %A
  movw %D, (%A)
  leaw $LED, %A
  jmp
  nop