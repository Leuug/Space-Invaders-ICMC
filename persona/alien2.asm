alien2Position : var #1

alien2 : var #6
  static alien2 + #0, #23 ;   alien2_upl
  static alien2 + #1, #24 ;   alien2_cntr
  static alien2 + #2, #25 ;   alien2_upr
  ;38  espacos para o proximo caractere
  static alien2 + #3, #26 ;   alien2_dwnl
  static alien2 + #4, #27 ;   alien2_bttm
  static alien2 + #5, #28 ;   alien2_dwnr

alien2Gaps : var #6
  static alien2Gaps + #0, #0
  static alien2Gaps + #1, #0
  static alien2Gaps + #2, #0
  static alien2Gaps + #3, #37
  static alien2Gaps + #4, #0
  static alien2Gaps + #5, #0

printalien2:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #alien2
  loadn R1, #alien2Gaps
  load R2, alien2Position
  loadn R3, #6 ;tamanho alien2
  loadn R4, #0 ;incremetador

  printalien2Loop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printalien2Loop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagaralien2:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #alien2Gaps
  load R2, alien2Position
  loadn R3, #6 ;tamanho alien2
  loadn R4, #0 ;incremetador

  apagaralien2Loop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagaralien2Loop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
