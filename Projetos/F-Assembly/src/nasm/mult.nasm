; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]
; ####################################################################

INICIO:
  leaw $0, %A
  movw %A, %S

  leaw $1, %A
  movw (%A), %D
  
  leaw $3, %A
  movw $0,(%A)
 
WHILE:
  leaw $END, %A
  je %D                         ; Salta se D == 0
  nop

  leaw $0, %A                       ; Incrementa S
  movw (%A),%A
  addw %S,%A,%S                       ; Decrementa D
  decw %D
  leaw $WHILE, %A
  jmp                           ; Salto incondicional
  nop                           ; No-Operation
                                ; (necessário após jump)

END:                            ; Loop infinito

leaw $3, %A
movw %S, (%A)
