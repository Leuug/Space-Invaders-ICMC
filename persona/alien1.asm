alien1Position : var #1

alien1 : var #6
  static alien1 + #0, #14 ; alien1_upl
  static alien1 + #1, #0 ; bloco
  static alien1 + #2, #15 ; alien1_upr
  ;38  espacos para o proximo caractere
  static alien1 + #3, #12 ; alien1_dwnl
  static alien1 + #4, #16 ; alien1_boca
  static alien1 + #5, #13 ; alien1_downr

alien1Gaps : var #6
  static alien1Gaps + #0, #0
  static alien1Gaps + #1, #0
  static alien1Gaps + #2, #0
  static alien1Gaps + #3, #37
  static alien1Gaps + #4, #0
  static alien1Gaps + #5, #0

printalien1:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #alien1
  loadn R1, #alien1Gaps
  load R2, alien1Position
  loadn R3, #6 ;tamanho alien1
  loadn R4, #0 ;incremetador

  printalien1Loop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printalien1Loop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagaralien1:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #alien1Gaps
  load R2, alien1Position
  loadn R3, #6 ;tamanho alien1
  loadn R4, #0 ;incremetador

  apagaralien1Loop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagaralien1Loop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
