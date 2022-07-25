explsnPosition : var #1

explsn : var #6
  static explsn + #0, #18 ; explsn_upl
  static explsn + #1, #17 ; explsn_up
  static explsn + #2, #21 ; explsn_upr
  ;38  espacos para o proximo caractere
  static explsn + #3, #19 ; explsn_dwnl
  static explsn + #4, #20 ; explsn_dwn
  static explsn + #5, #22 ; explsn_dwnr

explsnGaps : var #6
  static explsnGaps + #0, #0
  static explsnGaps + #1, #0
  static explsnGaps + #2, #0
  static explsnGaps + #3, #37
  static explsnGaps + #4, #0
  static explsnGaps + #5, #0

printexplsn:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #explsn
  loadn R1, #explsnGaps
  load R2, explsnPosition
  loadn R3, #6 ;tamanho explsn
  loadn R4, #0 ;incremetador

  printexplsnLoop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printexplsnLoop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagarexplsn:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #explsnGaps
  load R2, explsnPosition
  loadn R3, #6 ;tamanho explsn
  loadn R4, #0 ;incremetador

  apagarexplsnLoop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagarexplsnLoop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
