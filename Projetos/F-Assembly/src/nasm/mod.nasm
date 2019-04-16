; ####################################################################
; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Divide o número posicionado na RAM[1] pelo número posicionado no RAM[2] e armazena o resultado na RAM[0].
; ####################################################################

INICIO:
	leaw $1, %A
	movw (%A), %D
	leaw $2, %A
	movw (%A), %S

WHILE:
	leaw $END, %A
	
	subw %D, %S, %D
	jl %D
	nop

	leaw $WHILE, %A
	jmp
	nop
END:
	addw %D, %S, %D
	leaw $0, %A
	movw %D, (%A)