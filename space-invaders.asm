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
m_score : string "SCORE "

tiroPosition : var #4
contador_tiro : var #1
alienPosition: var #1
alien_mov_esq : var #1

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

;; posição inicial de cada linha de aliens
alien_pos_0 : var #1
alien_pos_1 : var #1
alien_pos_2 : var #1
alien_pos_3 : var #1
alien_pos_4 : var #1

;; flags para verificar se alien devem ser impressos
alien_0 : var #1
alien_1 : var #1
alien_2 : var #1
alien_3 : var #1
alien_4 : var #1
alien_5 : var #1
alien_6 : var #1
alien_7 : var #1
alien_8 : var #1
alien_9 : var #1
alien_10 : var #1
alien_11 : var #1
alien_12 : var #1
alien_13 : var #1
alien_14 : var #1
alien_15 : var #1
alien_16 : var #1
alien_17 : var #1
alien_18 : var #1
alien_19 : var #1
alien_20 : var #1
alien_21 : var #1
alien_22 : var #1
alien_23 : var #1
alien_24 : var #1

;---- Inicio do Programa Principal -----

main:

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
	loadn r0, #tanque
	loadn r1, #tanqueGaps
	load r2, tanquePosition
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

		loadn r1, #tanqueGaps
		load r2, tanquePosition
		loadn r3, #11
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

setup_alien_row:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r4, #0 ; contador de aliens
	loadn r5, #5 ; quantidade de alien por coluna
	loadn r6, #0 ; primeiro gap entre alien / parede esquerda

	loadn r0, #alien1
	loadn r1, #alien1Gaps
	load r2, alienPosition
	loadn r3, #6
	load r7, branco

	store alien_pos_0, r2

	imprime_alien_0:
		add r2, r2, r6

		push r0

		;; verificando em qual iteração do loop estamos
		loadn r0, #0
		cmp r0, r4
		jeq verify_0

		loadn r0, #1
		cmp r0, r4
		jeq verify_1

		loadn r0, #2
		cmp r0, r4
		jeq verify_2

		loadn r0, #3
		cmp r0, r4
		jeq verify_3

		loadn r0, #4
		cmp r0, r4
		jeq verify_4

		jmp fim_verify_0

		;; verificando se alien existe
		verify_0:
			load r0, alien_0
			jmp fim_verify_0

		verify_1:
			load r0, alien_1
			jmp fim_verify_0

		verify_2:
			load r0, alien_2
			jmp fim_verify_0

		verify_3:
			load r0, alien_3
			jmp fim_verify_0

		verify_4:
			load r0, alien_4

		fim_verify_0:

		push r1

		loadn r1, #0
		cmp r1, r0 ; alien == 0?
		pop r1
		pop r0
		jeq not_print_0 ; se sim, não printar

		call printChar
		jmp continue_0

		not_print_0:
		loadn r6, #43
		add r2, r2, r6

		continue_0:

		inc r4
		cmp r4, r5

		loadn r6, #42
		sub r2, r2, r6
		loadn r6, #7

		jne imprime_alien_0

	loadn r4, #0 ; contador de aliens
	loadn r6, #127
	add r2, r2, r6
	loadn r6, #0

	store alien_pos_1, r2

	imprime_alien_1:
		add r2, r2, r6

		push r0

		;; verificando em qual iteração do loop estamos
		loadn r0, #0
		cmp r0, r4
		jeq verify_5

		loadn r0, #1
		cmp r0, r4
		jeq verify_6

		loadn r0, #2
		cmp r0, r4
		jeq verify_7

		loadn r0, #3
		cmp r0, r4
		jeq verify_8

		loadn r0, #4
		cmp r0, r4
		jeq verify_9

		jmp fim_verify_1

		;; verificando se alien existe
		verify_5:
			load r0, alien_5
			jmp fim_verify_1

		verify_6:
			load r0, alien_6
			jmp fim_verify_1

		verify_7:
			load r0, alien_7
			jmp fim_verify_1

		verify_8:
			load r0, alien_8
			jmp fim_verify_1

		verify_9:
			load r0, alien_9

		fim_verify_1:

		push r1

		loadn r1, #0
		cmp r1, r0 ; alien == 0?
		pop r1
		pop r0
		jeq not_print_1 ; se sim, não printar

		call printChar
		jmp continue_1

		not_print_1:
		loadn r6, #43
		add r2, r2, r6

		continue_1:

		inc r4
		cmp r4, r5

		loadn r6, #42
		sub r2, r2, r6
		loadn r6, #7

		jne imprime_alien_1

	loadn r4, #0 ; contador de aliens
	loadn r6, #127
	add r2, r2, r6
	loadn r6, #0

	store alien_pos_2, r2

	imprime_alien_2:
		add r2, r2, r6

		push r0

		;; verificando em qual iteração do loop estamos
		loadn r0, #0
		cmp r0, r4
		jeq verify_10

		loadn r0, #1
		cmp r0, r4
		jeq verify_11

		loadn r0, #2
		cmp r0, r4
		jeq verify_12

		loadn r0, #3
		cmp r0, r4
		jeq verify_13

		loadn r0, #4
		cmp r0, r4
		jeq verify_14

		jmp fim_verify_2

		;; verificando se alien existe
		verify_10:
			load r0, alien_10
			jmp fim_verify_2

		verify_11:
			load r0, alien_11
			jmp fim_verify_2

		verify_12:
			load r0, alien_12
			jmp fim_verify_2

		verify_13:
			load r0, alien_13
			jmp fim_verify_2

		verify_14:
			load r0, alien_14

		fim_verify_2:

		push r1

		loadn r1, #0
		cmp r1, r0 ; alien == 0?
		pop r1
		pop r0
		jeq not_print_2 ; se sim, não printar

		call printChar
		jmp continue_2

		not_print_2:
		loadn r6, #43
		add r2, r2, r6

		continue_2:

		inc r4
		cmp r4, r5

		loadn r6, #42
		sub r2, r2, r6
		loadn r6, #7

		jne imprime_alien_2

	loadn r4, #0 ; contador de aliens
	loadn r6, #127
	add r2, r2, r6
	loadn r6, #0

	store alien_pos_3, r2

	imprime_alien_3:
		add r2, r2, r6

		push r0

		;; verificando em qual iteração do loop estamos
		loadn r0, #0
		cmp r0, r4
		jeq verify_15

		loadn r0, #1
		cmp r0, r4
		jeq verify_16

		loadn r0, #2
		cmp r0, r4
		jeq verify_17

		loadn r0, #3
		cmp r0, r4
		jeq verify_18

		loadn r0, #4
		cmp r0, r4
		jeq verify_19

		jmp fim_verify_3

		;; verificando se alien existe
		verify_15:
			load r0, alien_15
			jmp fim_verify_3

		verify_16:
			load r0, alien_16
			jmp fim_verify_3

		verify_17:
			load r0, alien_17
			jmp fim_verify_3

		verify_18:
			load r0, alien_18
			jmp fim_verify_3

		verify_19:
			load r0, alien_19

		fim_verify_3:

		push r1

		loadn r1, #0
		cmp r1, r0 ; alien == 0?
		pop r1
		pop r0
		jeq not_print_3 ; se sim, não printar

		call printChar
		jmp continue_3

		not_print_3:
		loadn r6, #43
		add r2, r2, r6

		continue_3:

		inc r4
		cmp r4, r5

		loadn r6, #42
		sub r2, r2, r6
		loadn r6, #7

		jne imprime_alien_3

	loadn r4, #0 ; contador de aliens
	loadn r6, #127
	add r2, r2, r6
	loadn r6, #0

	store alien_pos_4, r2

	imprime_alien_4:
		add r2, r2, r6

		push r0

		;; verificando em qual iteração do loop estamos
		loadn r0, #0
		cmp r0, r4
		jeq verify_20

		loadn r0, #1
		cmp r0, r4
		jeq verify_21

		loadn r0, #2
		cmp r0, r4
		jeq verify_22

		loadn r0, #3
		cmp r0, r4
		jeq verify_23

		loadn r0, #4
		cmp r0, r4
		jeq verify_24

		jmp fim_verify_4

		;; verificando se alien existe
		verify_20:
			load r0, alien_20
			jmp fim_verify_4

		verify_21:
			load r0, alien_21
			jmp fim_verify_4

		verify_22:
			load r0, alien_22
			jmp fim_verify_4

		verify_23:
			load r0, alien_23
			jmp fim_verify_4

		verify_24:
			load r0, alien_24

		fim_verify_4:

		push r1

		loadn r1, #0
		cmp r1, r0 ; alien == 0?
		pop r1
		pop r0
		jeq not_print_4 ; se sim, não printar

		call printChar
		jmp continue_4

		not_print_4:
		loadn r6, #43
		add r2, r2, r6

		continue_4:

		inc r4
		cmp r4, r5

		loadn r6, #42
		sub r2, r2, r6
		loadn r6, #7

		jne imprime_alien_4

	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

erase_alien_row:
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6

	loadn r4, #0 ; contador de aliens
	loadn r5, #1 ; incrementador
	loadn r6, #0 ; primeiro gap entre alien / parede esquerda

	loadn r1, #alien1Gaps
	load r2, alienPosition
	loadn r3, #6

	erase_alien_0:
		add r2, r2, r6
		call apagarChar

		add r4, r4, r5
		loadn r6, #5
		cmp r4, r6

		loadn r6, #42
		sub r2, r2, r6
		loadn r6, #7
		jne erase_alien_0

	loadn r4, #0 ; contador de aliens
	loadn r5, #1 ; incrementador
	loadn r6, #125
	add r2, r2, r6
	loadn r6, #2

	erase_alien_1:
		add r2, r2, r6
		call apagarChar

		add r4, r4, r5
		loadn r6, #5
		cmp r4, r6

		loadn r6, #42
		sub r2, r2, r6
		loadn r6, #7
		jne erase_alien_1

	loadn r4, #0 ; contador de aliens
	loadn r5, #1 ; incrementador
	loadn r6, #125
	add r2, r2, r6
	loadn r6, #2

	erase_alien_2:
		add r2, r2, r6
		call apagarChar

		add r4, r4, r5
		loadn r6, #5
		cmp r4, r6

		loadn r6, #42
		sub r2, r2, r6
		loadn r6, #7
		jne erase_alien_2

	loadn r4, #0 ; contador de aliens
	loadn r5, #1 ; incrementador
	loadn r6, #125
	add r2, r2, r6
	loadn r6, #2

	erase_alien_3:
		add r2, r2, r6
		call apagarChar

		add r4, r4, r5
		loadn r6, #5
		cmp r4, r6

		loadn r6, #42
		sub r2, r2, r6
		loadn r6, #7
		jne erase_alien_3

	loadn r4, #0 ; contador de aliens
	loadn r5, #1 ; incrementador
	loadn r6, #125
	add r2, r2, r6
	loadn r6, #2

	erase_alien_4:
		add r2, r2, r6
		call apagarChar

		add r4, r4, r5
		loadn r6, #5
		cmp r4, r6

		loadn r6, #42
		sub r2, r2, r6
		loadn r6, #7
		jne erase_alien_4

	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	rts

alien_update:
	push r0
	push r1
	push r2
	push r3
	push r4

	call erase_alien_row

	load r0, alienPosition
	loadn r1, #1

	loadn r2, #5
	load r3, alien_mov_esq
	loadn r4, #0

	cmp r3, r4
	jne mov_alien_esq

	cmp r0, r2
	jeq flag_esq

	add r0, r0, r1
	jmp fim_mov_alien

	mov_alien_esq:
		cmp r0, r4
		jeq flag_dir
		sub r0, r0, r1
		jmp fim_mov_alien

	flag_esq:
		store alien_mov_esq, r2
		sub r0, r0, r1
		jmp fim_mov_alien

	flag_dir:
		store alien_mov_esq, r4
		add r0, r0, r1

	fim_mov_alien:

	store alienPosition, r0

	call setup_alien_row

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0

	rts

main_game:
	push r0
	push r1
	push r2
	push r3
	push r4

	loadn r1, #1059
	store tanquePosition, r1

	loadn r2, #0
	loadn r0, #1019
	store tiroPosition, r0
	; r0: Posicao na tela onde a mensagem sera' escrita
	; r1: Carrega r1 com o endereco do vetor que contem a mensagem
	; r2: Seleciona a COr da Mensagem
	loadn r0, #1160
	loadn r1, #m_score
	load r2, amarelo
	call Imprimestr

	loadn r0, #0
	store alien_mov_esq, r0
	store alienPosition, r0

	;; ------- setando valores dos alien para verdadeiro -------
	loadn r3, #1

	store alien_0, r3
	store alien_1, r3
	store alien_2, r3
	store alien_3, r3
	store alien_4, r3
	store alien_5, r3
	store alien_6, r3
	store alien_7, r3
	store alien_8, r3
	store alien_9, r3
	store alien_10, r3
	store alien_11, r3
	store alien_12, r3
	store alien_13, r3
	store alien_14, r3
	store alien_15, r3
	store alien_16, r3
	store alien_17, r3
	store alien_18, r3
	store alien_19, r3
	store alien_20, r3
	store alien_21, r3
	store alien_22, r3
	store alien_23, r3
	store alien_24, r3
	;; ---------------------------------------------------------

	call setup_alien_row

main_game_loop:
	call alien_update
	loadn r2, #1
	load r0, tiroPosition
	cmp r2, r0
	jle nao_att_tiro
	loadn r0, #40
	load r1, tanquePosition
	sub r1, r1, r0
	store tiroPosition, r1
nao_att_tiro:

	call print_tiro
	call player
	call apagar_tiro
	jmp main_game_loop

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0

print_tiro:
	push r0
	push r1

	load r0, tiroPosition
	loadn r1, #9
	outchar r1, r0

	pop r1
	pop r0
	rts

apagar_tiro:
	push r0
	push r1
	push r2

	load r0, tiroPosition
	loadn r1, #' '
	outchar r1, r0
	loadn r2, #40
	sub r0, r0, r2
	store tiroPosition, r0

	pop r2
	pop r1
	pop r0
	rts

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
