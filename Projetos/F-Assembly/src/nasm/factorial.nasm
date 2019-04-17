; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Calcula o fatorial do número em R0 e armazena o valor em R1.
; ####################################################################
;
; Multiplicador

leaw $0,%A
movw (%A), %D
movw (%A), %S

decw %D

leaw $ZERO, %A
	je %S
	nop

MENOS:
	leaw %3, %A
	movw %D, (%A)
	decw %D
	movw %D, (%A)
	leaw $WHILE, %A
  	jmp
  	nop

WHILE:
	leaw $END, %A
  	je %D
  	nop
  	decw %D
  	leaw $0, %A
  	movw (%A),%A
  	addw %S,%A,%S
  	leaw $WHILE, %A
  	jmp
  	nop

END:
	leaw $0, %A
	movw %S,(%A)
	leaw $3, %A
	movw (%A),%D
	decw %D
	leaw $FINAL, %A
  	je %D
  	nop
  	leaw $3, %A
  	movw (%A),%D
	leaw $MENOS, %A
  	jmp
  	nop

ZERO:
	leaw $1, %A
	movw %A, %S
	leaw $FINAL, %A
	jmp
	nop

FINAL:
	leaw $1, %A
	movw %S, (%A)
