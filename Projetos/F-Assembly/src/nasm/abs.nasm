; ####################################################################
; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Copia o valor de RAM[1] para RAM[0] deixando o valor sempre positivo.
; ####################################################################

INICIO:
	leaw $1,%A
	movw (%A),%D

WHILE:
	leaw $END, %A
	jg %D
	nop
	negw %D
	leaw $WHILE, %A

	jmp
	nop

END:
	leaw $0,%A
	movw %D, (%A)