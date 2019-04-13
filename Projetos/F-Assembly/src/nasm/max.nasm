  ; ####################################################################
; Arquivo: Max.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
; Log :
;     - Rafael Corsi portado para Z01

; Calcula R2 = max(R0, R1)  (R0,R1,R2 se referem a  RAM[0],RAM[1],RAM[2])
; ou seja, o maior valor que estiver, ou em R0 ou R1 sera copiado para R2
; Estamos considerando números inteiros
; ####################################################################

INICIO:
  ; D == Ram[0]
  leaw $0, %A
  movw (%A), %D

  ; A = Ram[1]
  leaw $1, %A
  movw (%A), %A

  ; S = D - A
  subw %D, %A, %S

; entra se S maior que 0 (D maior que A)
MAIORQUE:
  leaw $MENORQUE, %A
  jl %S
  nop

  leaw $2, %A
  movw %D, (%A)

  leaw $END, %A
  jmp
  nop

; entra se S menor que 0 (A maior que D)
MENORQUE:
  leaw $MAIORQUE, %A
  jg %S
  nop

  ; Define maior valor para D
  leaw $1, %A
  movw (%A), %D

  leaw $2, %A
  movw %D, (%A)

  leaw $END, %A
  jmp
  nop

END:
