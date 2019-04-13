; ####################################################################
; Arquivo: Div.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Divide R0 por R1 e armazena o resultado em R2.
; (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
;
; Divisao entre numeros inteiros positivos
; ####################################################################

leaw $0, %A
movw (%A), %S

leaw $2, %A
leaw $0, (%A)

WHILE:
  leaw $1, %A
  movw (%A), %D
	subw %S, %D, %S

	leaw $END, %A
	jl %S
	nop

	leaw $2, %A
	movw (%A), %D
	incw %D
	movw %D, (%A)

	leaw $WHILE, %A
	jmp
	nop
END:
