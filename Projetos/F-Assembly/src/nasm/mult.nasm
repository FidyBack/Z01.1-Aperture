; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]
; ####################################################################

INICIO:
  leaw $1, %A;
  movw (%A), %D;

  leaw $0, %A;
  movw (%A), %S;

  leaw $2, %A;
  movw %S, (%A);

LOOP:
  leaw $3, %A;
  addw %S, %D, (%A);

  leaw $2, %A;
  decw (%A);
  movw (%A), %S;

  leaw $END, %A;
  je %S;
  nop;

  leaw $INICIO, %A;
  jmp;
  nop;

END:
