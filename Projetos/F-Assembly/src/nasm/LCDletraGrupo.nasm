; Arquivo: LCDletraGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD a letra do grupo de vocês
;  - Valide no hardawre
;  - Bata uma foto!


; ####################################################################
; Rafael Corsi @ 2018
; 
; Escreve a letra R na tela
; ####################################################################

; carrega x"FF" em S (todos pxs em '1')
  leaw $0, %A
  movw %A, %S
  notw %S

  ; linha 1
  leaw $18815, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)

  ;; linha 2
  leaw $18835, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)

  ;;  linha 3
  leaw $18855, %A
  movw %S, (%A)

  leaw $18858, %A
  movw %S, (%A)

  ;; linha 4
  leaw $18875, %A
  movw %S, (%A)

  leaw $18878, %A
  movw %S, (%A)

  ;; linha 5
  leaw $18895, %A
  movw %S, (%A)

  leaw $18898, %A
  movw %S, (%A)

  ;; linha 6
  leaw $18915, %A
  movw %S, (%A)

  leaw $18918, %A
  movw %S, (%A)

  ; linha 7
  leaw $18935, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)

  ; linha 8
  leaw $18955, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)

  ; linha 9
  leaw $18975, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)

  ; linha 10
  leaw $18995, %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)

	;; linha 11
  leaw $19015, %A
  movw %S, (%A)

  leaw $19018, %A
  movw %S, (%A)
  
	;; linha 12
	leaw $19035, %A
	movw %S, (%A)

	leaw $19038, %A
	movw %S, (%A)

	;; linha 13
	leaw $19055, %A
	movw %S, (%A)

	leaw $19058, %A
	movw %S, (%A)
  
	;; linha 14
	leaw $19075, %A
	movw %S, (%A)

	leaw $19078, %A
	movw %S, (%A)

	;; linha 15
	leaw $19095, %A
	movw %S, (%A)

	leaw $19098, %A
	movw %S, (%A)

		;; linha 16
	leaw $19115, %A
	movw %S, (%A)

	leaw $19118, %A
	movw %S, (%A)