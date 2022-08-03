press_startPosition : var #1

press_start : var #23
  static press_start + #0, #2881 ;   A
  static press_start + #1, #2896 ;   P
  static press_start + #2, #2885 ;   E
  static press_start + #3, #2898 ;   R
  static press_start + #4, #2900 ;   T
  static press_start + #5, #2885 ;   E
  ;2  espacos para o proximo caractere
  static press_start + #6, #2885 ;   E
  static press_start + #7, #2894 ;   N
  static press_start + #8, #2900 ;   T
  static press_start + #9, #2885 ;   E
  static press_start + #10, #2898 ;   R
  ;2  espacos para o proximo caractere
  static press_start + #11, #2896 ;   P
  static press_start + #12, #2881 ;   A
  static press_start + #13, #2898 ;   R
  static press_start + #14, #2881 ;   A
  ;2  espacos para o proximo caractere
  static press_start + #15, #2889 ;   I
  static press_start + #16, #2894 ;   N
  static press_start + #17, #2889 ;   I
  static press_start + #18, #2883 ;   C
  static press_start + #19, #2889 ;   I
  static press_start + #20, #2881 ;   A
  static press_start + #21, #2898 ;   R
  static press_start + #22, #2849 ;   !

press_startGaps : var #23
  static press_startGaps + #0, #0
  static press_startGaps + #1, #0
  static press_startGaps + #2, #0
  static press_startGaps + #3, #0
  static press_startGaps + #4, #0
  static press_startGaps + #5, #0
  static press_startGaps + #6, #1
  static press_startGaps + #7, #0
  static press_startGaps + #8, #0
  static press_startGaps + #9, #0
  static press_startGaps + #10, #0
  static press_startGaps + #11, #1
  static press_startGaps + #12, #0
  static press_startGaps + #13, #0
  static press_startGaps + #14, #0
  static press_startGaps + #15, #1
  static press_startGaps + #16, #0
  static press_startGaps + #17, #0
  static press_startGaps + #18, #0
  static press_startGaps + #19, #0
  static press_startGaps + #20, #0
  static press_startGaps + #21, #0
  static press_startGaps + #22, #0

printpress_start:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #press_start
  loadn R1, #press_startGaps
  load R2, press_startPosition
  loadn R3, #23 ;tamanho press_start
  loadn R4, #0 ;incremetador

  printpress_startLoop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printpress_startLoop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagarpress_start:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #press_startGaps
  load R2, press_startPosition
  loadn R3, #23 ;tamanho press_start
  loadn R4, #0 ;incremetador

  apagarpress_startLoop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagarpress_startLoop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
