alien3Position : var #1

alien3 : var #6
  static alien3 + #0, #97 ;   alien3_upl
  static alien3 + #1, #98 ;   alien3_cntr
  static alien3 + #2, #99 ;   alien3_upr
  ;38  espacos para o proximo caractere
  static alien3 + #3, #100 ;   alien3_dwnl
  static alien3 + #4, #101 ;   alien3_bttm
  static alien3 + #5, #102 ;   alien3_dwnr

alien3Gaps : var #6
  static alien3Gaps + #0, #0
  static alien3Gaps + #1, #0
  static alien3Gaps + #2, #0
  static alien3Gaps + #3, #37
  static alien3Gaps + #4, #0
  static alien3Gaps + #5, #0

printalien3:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #alien3
  loadn R1, #alien3Gaps
  load R2, alien3Position
  loadn R3, #6 ;tamanho alien3
  loadn R4, #0 ;incremetador

  printalien3Loop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printalien3Loop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagaralien3:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #alien3Gaps
  load R2, alien3Position
  loadn R3, #6 ;tamanho alien3
  loadn R4, #0 ;incremetador

  apagaralien3Loop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagaralien3Loop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
