jogar_novamentePosition : var #1

jogar_novamente : var #26
  static jogar_novamente + #0, #2372 ;   D
  static jogar_novamente + #1, #2373 ;   E
  static jogar_novamente + #2, #2387 ;   S
  static jogar_novamente + #3, #2373 ;   E
  static jogar_novamente + #4, #2378 ;   J
  static jogar_novamente + #5, #2369 ;   A
  ;2  espacos para o proximo caractere
  static jogar_novamente + #6, #2378 ;   J
  static jogar_novamente + #7, #2383 ;   O
  static jogar_novamente + #8, #2375 ;   G
  static jogar_novamente + #9, #2369 ;   A
  static jogar_novamente + #10, #2386 ;   R
  ;2  espacos para o proximo caractere
  static jogar_novamente + #11, #2382 ;   N
  static jogar_novamente + #12, #2383 ;   O
  static jogar_novamente + #13, #2390 ;   V
  static jogar_novamente + #14, #2369 ;   A
  static jogar_novamente + #15, #2381 ;   M
  static jogar_novamente + #16, #2373 ;   E
  static jogar_novamente + #17, #2382 ;   N
  static jogar_novamente + #18, #2388 ;   T
  static jogar_novamente + #19, #2373 ;   E
  static jogar_novamente + #20, #2367 ;   ?
  ;67  espacos para o proximo caractere
  static jogar_novamente + #21, #2395 ;   [
  static jogar_novamente + #22, #2387 ;   S
  static jogar_novamente + #23, #2351 ;   /
  static jogar_novamente + #24, #2382 ;   N
  static jogar_novamente + #25, #2397 ;   ]

jogar_novamenteGaps : var #26
  static jogar_novamenteGaps + #0, #0
  static jogar_novamenteGaps + #1, #0
  static jogar_novamenteGaps + #2, #0
  static jogar_novamenteGaps + #3, #0
  static jogar_novamenteGaps + #4, #0
  static jogar_novamenteGaps + #5, #0
  static jogar_novamenteGaps + #6, #1
  static jogar_novamenteGaps + #7, #0
  static jogar_novamenteGaps + #8, #0
  static jogar_novamenteGaps + #9, #0
  static jogar_novamenteGaps + #10, #0
  static jogar_novamenteGaps + #11, #1
  static jogar_novamenteGaps + #12, #0
  static jogar_novamenteGaps + #13, #0
  static jogar_novamenteGaps + #14, #0
  static jogar_novamenteGaps + #15, #0
  static jogar_novamenteGaps + #16, #0
  static jogar_novamenteGaps + #17, #0
  static jogar_novamenteGaps + #18, #0
  static jogar_novamenteGaps + #19, #0
  static jogar_novamenteGaps + #20, #0
  static jogar_novamenteGaps + #21, #66
  static jogar_novamenteGaps + #22, #0
  static jogar_novamenteGaps + #23, #0
  static jogar_novamenteGaps + #24, #0
  static jogar_novamenteGaps + #25, #0

printjogar_novamente:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5
  push R6

  loadn R0, #jogar_novamente
  loadn R1, #jogar_novamenteGaps
  load R2, jogar_novamentePosition
  loadn R3, #26 ;tamanho jogar_novamente
  loadn R4, #0 ;incremetador

  printjogar_novamenteLoop:
    add R5,R0,R4
    loadi R5, R5

    add R6,R1,R4
    loadi R6, R6

    add R2, R2, R6

    outchar R5, R2

    inc R2
     inc R4
     cmp R3, R4
    jne printjogar_novamenteLoop

  pop R6
  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts

apagarjogar_novamente:
  push R0
  push R1
  push R2
  push R3
  push R4
  push R5

  loadn R0, #3967
  loadn R1, #jogar_novamenteGaps
  load R2, jogar_novamentePosition
  loadn R3, #26 ;tamanho jogar_novamente
  loadn R4, #0 ;incremetador

  apagarjogar_novamenteLoop:
    add R5,R1,R4
    loadi R5, R5

    add R2,R2,R5
    outchar R0, R2

    inc R2
     inc R4
     cmp R3, R4
    jne apagarjogar_novamenteLoop

  pop R5
  pop R4
  pop R3
  pop R2
  pop R1
  pop R0
  rts
