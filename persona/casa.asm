casaPosition : var #1

casa : var #10
  static casa + #0, #513 ; casa_upl
  static casa + #1, #512 ; bloco
  static casa + #2, #512 ; bloco
  static casa + #3, #514 ; casa_upr
  ;37  espacos para o proximo caractere
  static casa + #4, #512 ; bloco
  static casa + #5, #515 ; casa_dwnl
  static casa + #6, #516 ; casa_downr
  static casa + #7, #512 ; bloco
  ;37  espacos para o proximo caractere
  static casa + #8, #512 ; bloco
  ;3  espacos para o proximo caractere
  static casa + #9, #512 ; bloco

casaGaps : var #10
  static casaGaps + #0, #0
  static casaGaps + #1, #0
  static casaGaps + #2, #0
  static casaGaps + #3, #0
  static casaGaps + #4, #36
  static casaGaps + #5, #0
  static casaGaps + #6, #0
  static casaGaps + #7, #0
  static casaGaps + #8, #36
  static casaGaps + #9, #2

printcasa:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #casa
  loadn R1, #casaGaps
  load R2, casaPosition
  loadn R3, #10 ;tamanho casa
  loadn R4, #0 ;incremetador

  printcasaLoop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printcasaLoop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagarcasa:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #casaGaps
  load R2, casaPosition
  loadn R3, #10 ;tamanho casa
  loadn R4, #0 ;incremetador

  apagarcasaLoop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagarcasaLoop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
