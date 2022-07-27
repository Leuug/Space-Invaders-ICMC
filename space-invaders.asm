; Hello World - Escreve mensagem armazenada na memoria na tela

jmp main

; ------- DEFINIÇÃO DE COrES -------
branco : var #1
	static branco + #0, #0

marrom : var #1
	static marrom + #0, #256

verde : var #1
	static verde + #0, #512

oliva : var #1
	static oliva + #0, #768

azul : var #1
	static azul + #0, #1024

roxo : var #1
	static roxo + #0, #1280

teal : var #1
	static teal + #0, #1536

vermelho : var #1
	static vermelho + #0, #2304

amarelo : var #1
	static amarelo + #0, #2816
;-----------------------------------

input_1 : var #1
score : var #1
cor : var #1

startmenu : string "Aperte Enter para comecar!"
gameover_str : string "Gameover"
jogarnovamente : string "Deseja jogar novamente?"
confirmacao : string "s/n"

alien1Position : var #1

alien1 : var #6
	static alien1 + #0, #14 ; alien1_upl
	static alien1 + #1, #0 ; bloco
	static alien1 + #2, #15 ; alien1_upr
	; 38  espacos para o proximo caractere
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

tanquePosition : var #1

tanque : var #11
	static tanque + #0, #520 ; canhao
	; 38  espacos para o proximo caractere
	static tanque + #1, #517 ; tanque_l
	static tanque + #2, #519 ; tanque_up
	static tanque + #3, #512 ; bloco
	static tanque + #4, #519 ; tanque_up
	static tanque + #5, #518 ; tanque_r
	; 36  espacos para o proximo caractere
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

position : var #1
;---- Inicio do Programa Principal -----

main:
	loadn r0, #0
	store score, r0

menu_main:
	jmp menu

;	jmp gameover

jogo:
;	loadn r2, #branco
;	call tela
;	call limpa_tela

halt


;---- Fim do Programa Principal -----

;---- Inicio das Subrotinas -----

player:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	; printando tanque
	load r2, tanquePosition
	loadn r0, #tanque
	loadn r1, #tanqueGaps
	loadn r3, #11
	load r7, branco
	call printChar

	; guardando infos
	load r1, tanquePosition
	loadn r4, #1
	loadn r5, #1042
	loadn r6, #1077

	loadn r7, #255
	store input_1, r7

	loadn r0, #100
	call delay

	; verifica input
	load r2, input_1
	loadn r3, #'a' ; esquerda
	cmp r2, r3
	jeq esquerda
	; verifica input
	load r2, input_1
	loadn r3, #'d' ; direita
	cmp r2, r3
	jeq direita
	jmp fim

	esquerda:
		cmp r1, r5
		jeq fim
		push r1
		load r2, tanquePosition
		loadn r1, #tanqueGaps
		loadn r3, #11
		load r7, verde
		call apagarChar
		pop r1
		sub r1, r1, r4
		store tanquePosition, r1
		jmp fim

	direita:
		cmp r1, r6
		jeq fim
		push r1
		load r2, tanquePosition
		loadn r1, #tanqueGaps
		loadn r3, #11
		load r7, verde
		call apagarChar
		pop r1
		add r1, r1, r4
		store tanquePosition, r1

	fim:

	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

main_game:
	push r1
	loadn r1, #1059
	store tanquePosition, r1

main_game_loop:
	call player
	jmp main_game_loop

	pop r1

gameover:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5

loopGameover:
	; imprime strings
	loadn r0, #615
	loadn r1, #gameover_str
	load r2, vermelho
	call Imprimestr
	loadn r0, #648
	loadn r1, #jogarnovamente
	load r2, vermelho
	call Imprimestr
	loadn r0, #698
	loadn r1, #confirmacao
	load r2, vermelho
	call Imprimestr

	loadn r0, #1000
	call delay

	; verifica input
	load r4, input_1
	loadn r5, #'s'
	cmp r4, r5
	jeq sim
	loadn r5, #'n'
	cmp r4, r5
	jeq nao

	call limpa_tela

	loadn r0, #500
	call delay

	; verifica input
	load r4, input_1
	loadn r5, #'s'
	cmp r4, r5
	jeq sim
	loadn r5, #'n'
	cmp r4, r5
	jeq nao

	jmp loopGameover

	sim:
		call limpa_tela
		load r2, amarelo
		call tela
		call limpa_tela

		pop r5
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0

		jmp jogo

	nao:
		call limpa_tela
		load r2, vermelho
		call tela
		call limpa_tela

		pop r5
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0

		jmp menu_main


menu:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5

loopMenu:
	; imprime string
	loadn r0, #607
	loadn r1, #startmenu
	load r2, amarelo
	call Imprimestr

	loadn r0, #1000
	call delay

	; verifica se o usuario digitou enter
	load r4, input_1
	loadn r5, #13
	cmp r4, r5
	jeq finalmenu

	call limpa_tela

	loadn r0, #500
	call delay

	; verifica se o usuario digitou enter
	load r4, input_1
	loadn r5, #13
	cmp r4, r5
	jeq finalmenu

	jmp loopMenu

	finalmenu:
	call limpa_tela

	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0

	call main_game

; r0: valor que define o intervalo de delay
; 1000 == devagar | 500 == rápido
; se o usuario digitou algo durante o delay salva na variavel input_1
delay:
	push r1
	push r2
	push r3
	loadn r2, #255

loop1_delay:
	loadn r1, #1000

loop2_delay:
	inchar r3
	cmp r2, r3
	jeq continue_delay

	store input_1, r3

	continue_delay:
	nop
	dec r1
	jnz loop2_delay

	nop
	dec r0
	jnz loop1_delay

	pop r3
	pop r2
	pop r1
	rts

limpa_tela:
	push r0
	push r1
	loadn r0, #1200
	loadn r1, #' '
	loop_limpa_tela:
		dec r0
		outchar r1, r0
		jnz loop_limpa_tela
	pop r1
	pop r0
	rts

; r2: cor
; preenche a tela toda com '#'
tela:
	push r0
	push r1
	loadn r0, #1200
	loadn r1, #'#'
	add r1, r1, r2
	telaloop:
		dec r0
		outchar r1, r0
		jnz telaloop
	pop r1
	pop r0
	rts

; r0: Posicao na tela onde a mensagem sera' escrita
; r1: Carrega r1 com o endereco do vetor que contem a mensagem
; r2: Seleciona a COr da Mensagem
Imprimestr:	;  rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina

	loadn r3, #'\0'	; Criterio de parada

ImprimestrLoop:
	loadi r4, r1
	cmp r4, r3
	jeq ImprimestrSai
	add r4, r2, r4
	outchar r4, r0
	inc r0
	inc r1
	jmp ImprimestrLoop

ImprimestrSai:
	pop r4	; resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts

;---------- Funções para printar os personagens ---------------

; r0: recebe o personagem
; r1: recebe os gaps
; r2: recebe a posição
; r3: recebe o tamanho
printChar:
	push r4
	push r5
	push r6

  	loadn r4, #0 ;incremetador

  	printCharLoop:
    	add r5,r0,r4
    	loadi r5, r5

    	add r6, r1, r4
    	loadi r6, r6

    	add r2, r2, r6

    	add r5, r7, r5
    	outchar r5, r2

    	inc r2
     		inc r4
     		cmp r3, r4
    	jne printCharLoop

  	pop r6
  	pop r5
  	pop r4
  	rts


; r1: recebe os gaps
; r2: recebe a posição
; r3: recebe o tamanho
apagarChar:
  	push r0
  	push r4
  	push r5

	loadn r0, #3967
  	loadn r4, #0 ;incremetador

  	apagarCharLoop:
    	add r5,r1,r4
    	loadi r5, r5

    	add r2,r2,r5
    	outchar r0, r2

    	inc r2
     		inc r4
     		cmp r3, r4
    	jne apagarCharLoop

  	pop r5
  	pop r4
  	pop r0
  	rts
