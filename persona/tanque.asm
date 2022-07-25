tanquePosition : var #1

tanque : var #11
  static tanque + #0, #520 ; canhao
  ;38  espacos para o proximo caractere
  static tanque + #1, #517 ; tanque_l
  static tanque + #2, #519 ; tanque_up
  static tanque + #3, #512 ; bloco
  static tanque + #4, #519 ; tanque_up
  static tanque + #5, #518 ; tanque_r
  ;36  espacos para o proximo caractere
  static tanque + #6, #512 ; bloco
  static tanque + #7, #512 ; bloco
  static tanque + #8, #512 ; bloco
  static tanque + #9, #512 ; bloco
  static tanque + #10, #512 ; bloco

tanqueGaps : var #11
  static tanqueGaps + #0, #0
  static tanqueGaps + #1, #37
  static tanqueGaps + #2, #0
  static tanqueGaps + #3, #0
  static tanqueGaps + #4, #0
  static tanqueGaps + #5, #0
  static tanqueGaps + #6, #35
  static tanqueGaps + #7, #0
  static tanqueGaps + #8, #0
  static tanqueGaps + #9, #0
  static tanqueGaps + #10, #0

printtanque:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #tanque
  loadn R1, #tanqueGaps
  load R2, tanquePosition
  loadn R3, #11 ;tamanho tanque
  loadn R4, #0 ;incremetador

  printtanqueLoop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printtanqueLoop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagartanque:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #tanqueGaps
  load R2, tanquePosition
  loadn R3, #11 ;tamanho tanque
  loadn R4, #0 ;incremetador

  apagartanqueLoop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagartanqueLoop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
