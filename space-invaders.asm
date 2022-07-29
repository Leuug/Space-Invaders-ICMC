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
;; cor : var #1
original_pos : var #1

startmenu : string "APERTE ENTRE PARA COMECAR!"
gameover_str : string "GAME OVER!"
jogarnovamente : string "DESEJA JOGAR NOVAMENTE?"
confirmacao : string "S/N"
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

atirador_0 : var #1
atirador_1 : var #1
atirador_2 : var #1
atirador_3 : var #1
atirador_4 : var #1

atirador_pos_0 : var #1
atirador_pos_1 : var #1
atirador_pos_2 : var #1
atirador_pos_3 : var #1
atirador_pos_4 : var #1

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

	loadn r0, #alien3
	loadn r1, #alien3Gaps
	load r2, alienPosition
	loadn r3, #6
	load r7, branco

	store alien_pos_0, r2

	imprime_alien_0:
		add r2, r2, r6

		push r0
		push r1

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

			load r1, atirador_0
			cmp r0, r1
			jne fim_verify_0

			store atirador_pos_0, r2

			jmp fim_verify_0

		verify_1:
			load r0, alien_1

			load r1, atirador_1
			cmp r0, r1
			jne fim_verify_0

			store atirador_pos_1, r2

			jmp fim_verify_0

		verify_2:
			load r0, alien_2

			load r1, atirador_2
			cmp r0, r1
			jne fim_verify_0

			store atirador_pos_2, r2

			jmp fim_verify_0

		verify_3:
			load r0, alien_3

			load r1, atirador_3
			cmp r0, r1
			jne fim_verify_0

			store atirador_pos_3, r2

			jmp fim_verify_0

		verify_4:
			load r0, alien_4

			load r1, atirador_4
			cmp r0, r1
			jne fim_verify_0

			store atirador_pos_4, r2

		fim_verify_0:

		loadn r1, #0
		cmp r0, r1 ; alien == 0?
		pop r1
		pop r0
		jeq not_print_0 ; se sim, não printar

		call printChar

		not_print_0:

		loadn r6, #8

		inc r4
		cmp r4, r5
		jne imprime_alien_0

	loadn r0, #alien2
	loadn r1, #alien2Gaps
	loadn r4, #0 ; contador de aliens
	loadn r6, #128
	add r2, r2, r6
	loadn r6, #0

	store alien_pos_1, r2

	imprime_alien_1:
		add r2, r2, r6

		push r0
		push r1

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

			load r1, atirador_0
			cmp r0, r1
			jne fim_verify_1

			store atirador_pos_0, r2

			jmp fim_verify_1

		verify_6:
			load r0, alien_6

			load r1, atirador_1
			cmp r0, r1
			jne fim_verify_1

			store atirador_pos_1, r2

			jmp fim_verify_1

		verify_7:
			load r0, alien_7

			load r1, atirador_2
			cmp r0, r1
			jne fim_verify_1

			store atirador_pos_2, r2

			jmp fim_verify_1

		verify_8:
			load r0, alien_8

			load r1, atirador_3
			cmp r0, r1
			jne fim_verify_1

			store atirador_pos_3, r2

			jmp fim_verify_1

		verify_9:
			load r0, alien_9

			load r1, atirador_4
			cmp r0, r1
			jne fim_verify_1

			store atirador_pos_4, r2

		fim_verify_1:

		loadn r1, #0
		cmp r0, r1 ; alien == 0?
		pop r1
		pop r0
		jeq not_print_1 ; se sim, não printar

		call printChar

		not_print_1:

		loadn r6, #8

		inc r4
		cmp r4, r5
		jne imprime_alien_1

	loadn r4, #0 ; contador de aliens
	loadn r6, #128
	add r2, r2, r6
	loadn r6, #0

	store alien_pos_2, r2

	imprime_alien_2:
		add r2, r2, r6

		push r0
		push r1

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

			load r1, atirador_0
			cmp r0, r1
			jne fim_verify_2

			store atirador_pos_0, r2

			jmp fim_verify_2

		verify_11:
			load r0, alien_11

			load r1, atirador_1
			cmp r0, r1
			jne fim_verify_2

			store atirador_pos_1, r2

			jmp fim_verify_2

		verify_12:
			load r0, alien_12

			load r1, atirador_2
			cmp r0, r1
			jne fim_verify_2

			store atirador_pos_2, r2

			jmp fim_verify_2

		verify_13:
			load r0, alien_13

			load r1, atirador_3
			cmp r0, r1
			jne fim_verify_2

			store atirador_pos_3, r2

			jmp fim_verify_2

		verify_14:
			load r0, alien_14

			load r1, atirador_4
			cmp r0, r1
			jne fim_verify_2

			store atirador_pos_4, r2

		fim_verify_2:

		loadn r1, #0
		cmp r0, r1 ; alien == 0?
		pop r1
		pop r0
		jeq not_print_2 ; se sim, não printar

		call printChar

		not_print_2:

		loadn r6, #8

		inc r4
		cmp r4, r5
		jne imprime_alien_2

	loadn r0, #alien1
	loadn r1, #alien1Gaps
	loadn r4, #0 ; contador de aliens
	loadn r6, #128
	add r2, r2, r6
	loadn r6, #0

	store alien_pos_3, r2

	imprime_alien_3:
		add r2, r2, r6

		push r0
		push r1

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

			load r1, atirador_0
			cmp r0, r1
			jne fim_verify_3

			store atirador_pos_0, r2

			jmp fim_verify_3

		verify_16:
			load r0, alien_16

			load r1, atirador_1
			cmp r0, r1
			jne fim_verify_3

			store atirador_pos_1, r2

			jmp fim_verify_3

		verify_17:
			load r0, alien_17

			load r1, atirador_2
			cmp r0, r1
			jne fim_verify_3

			store atirador_pos_2, r2

			jmp fim_verify_3

		verify_18:
			load r0, alien_18

			load r1, atirador_3
			cmp r0, r1
			jne fim_verify_3

			store atirador_pos_3, r2

			jmp fim_verify_3

		verify_19:
			load r0, alien_19

			load r1, atirador_4
			cmp r0, r1
			jne fim_verify_3

			store atirador_pos_4, r2

		fim_verify_3:

		loadn r1, #0
		cmp r0, r1 ; alien == 0?
		pop r1
		pop r0
		jeq not_print_3 ; se sim, não printar

		call printChar

		not_print_3:

		loadn r6, #8

		inc r4
		cmp r4, r5
		jne imprime_alien_3

	loadn r4, #0 ; contador de aliens
	loadn r6, #128
	add r2, r2, r6
	loadn r6, #0

	store alien_pos_4, r2

	imprime_alien_4:
		add r2, r2, r6

		push r0
		push r1

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

			load r1, atirador_0
			cmp r0, r1
			jne fim_verify_4

			store atirador_pos_0, r2

			jmp fim_verify_4

		verify_21:
			load r0, alien_21

			load r1, atirador_1
			cmp r0, r1
			jne fim_verify_4

			store atirador_pos_1, r2

			jmp fim_verify_4

		verify_22:
			load r0, alien_22

			load r1, atirador_2
			cmp r0, r1
			jne fim_verify_4

			store atirador_pos_2, r2

			jmp fim_verify_4

		verify_23:
			load r0, alien_23

			load r1, atirador_3
			cmp r0, r1
			jne fim_verify_4

			store atirador_pos_3, r2

			jmp fim_verify_4

		verify_24:
			load r0, alien_24

			load r1, atirador_4
			cmp r0, r1
			jne fim_verify_4

			store atirador_pos_4, r2

		fim_verify_4:

		loadn r1, #0
		cmp r0, r1 ; alien == 0?
		pop r1
		pop r0
		jeq not_print_4 ; se sim, não printar

		call printChar

		not_print_4:

		loadn r6, #8

		inc r4
		cmp r4, r5
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
	loadn r5, #5 ; quantidade de alien a serem apagados
	loadn r6, #0 ; primeiro gap entre alien / parede esquerda

	loadn r1, #alien1Gaps
	load r2, alienPosition
	loadn r3, #6

	erase_alien_0:
		add r2, r2, r6
		call apagarChar

		loadn r6, #8

		inc r4
		cmp r4, r5
		jne erase_alien_0

	loadn r4, #0 ; contador de aliens
	loadn r6, #128
	add r2, r2, r6
	loadn r6, #0

	erase_alien_1:
		add r2, r2, r6
		call apagarChar

		loadn r6, #8

		inc r4
		cmp r4, r5
		jne erase_alien_1

	loadn r4, #0 ; contador de aliens
	loadn r6, #128
	add r2, r2, r6
	loadn r6, #0

	erase_alien_2:
		add r2, r2, r6
		call apagarChar

		loadn r6, #8

		inc r4
		cmp r4, r5
		jne erase_alien_2

	loadn r4, #0 ; contador de aliens
	loadn r6, #128
	add r2, r2, r6
	loadn r6, #0

	erase_alien_3:
		add r2, r2, r6
		call apagarChar

		loadn r6, #8

		inc r4
		cmp r4, r5
		jne erase_alien_3

	loadn r4, #0 ; contador de aliens
	loadn r6, #128
	add r2, r2, r6
	loadn r6, #0

	erase_alien_4:
		add r2, r2, r6
		call apagarChar

		loadn r6, #8

		inc r4
		cmp r4, r5
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

	;setando a posicao inicial do tanque
	loadn r1, #1059
	store tanquePosition, r1

	;setando a posicao inicial do primeiro tiro
	loadn r2, #0
	loadn r0, #1019
	store tiroPosition, r0

	;printando score
	loadn r0, #1160
	loadn r1, #m_score
	load r2, amarelo
	call Imprimestr

	;setando a direcao do movimento e a posicao inicial dos aliens
	loadn r0, #0
	store alien_mov_esq, r0
	store alienPosition, r0

	; setando os alien do front como atiradores
	loadn r4, #20
	store atirador_0, r4

	loadn r4, #21
	store atirador_1, r4

	loadn r4, #22
	store atirador_2, r4

	loadn r4, #23
	store atirador_3, r4

	loadn r4, #24
	store atirador_4, r4

	;; ------- setando valores dos alien para verdadeiro -------
	loadn r3, #1
	loadn r4, #0

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
	loadn r2, #0
	load r0, tiroPosition
	cmp r2, r0
	jle nao_att_tiro
	call att_pos_novo_tiro

nao_att_tiro:
	call print_tiro
	call player
	call apagar_tiro
	;colisao
	call colisoes_alien

fim_rem_alien:
	call alien_update
	jmp main_game_loop

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0

	rts

colisoes_alien:
	push r0
	push r1
	push r2
	push r3
	push r4

	loadn r4, #0

	load r0, tiroPosition
	loadn r2, #40
	sub r0, r0, r2
	;*************************verificando os aliens da linha 4*************************

	;-----------------------verificando alien 20-----------------------
	;verificando se esta removido
	load r3, alien_20
	cmp r3, r4
	jeq verify_colis_alien_21

	load r1, alien_pos_4

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_20

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_20

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_20

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_20

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_20

;-----------------------verificando alien 21-----------------------
verify_colis_alien_21:
	;verificando se esta removido
	load r3, alien_21
	cmp r3, r4
	jeq verify_colis_alien_22

	load r1, alien_pos_4
	loadn r2, #8
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_21

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_21

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_21

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_21

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_21

;-----------------------verificando alien 22-----------------------
verify_colis_alien_22:
	;verificando se esta removido
	load r3, alien_22
	cmp r3, r4
	jeq verify_colis_alien_23

	load r1, alien_pos_4
	loadn r2, #16
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_22

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_22

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_22

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_22

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_22

;-----------------------verificando alien 23-----------------------
verify_colis_alien_23:
	;verificando se esta removido
	load r3, alien_23
	cmp r3, r4
	jeq verify_colis_alien_24

	load r1, alien_pos_4
	loadn r2, #24
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_23

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_23

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_23

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_23

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_23

;-----------------------verificando alien 24-----------------------
verify_colis_alien_24:
	;verificando se esta removido
	load r3, alien_24
	cmp r3, r4
	jeq verify_colis_alien_15

	load r1, alien_pos_4
	loadn r2, #32
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_24

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_24

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_24

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_24

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_24

;*************************verificando os aliens da linha 3*************************

	;-----------------------verificando alien 15-----------------------
verify_colis_alien_15:
	;verificando se esta removido
	load r3, alien_15
	cmp r3, r4
	jeq verify_colis_alien_16

	load r1, alien_pos_3

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_15

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_15

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_15

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_15

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_15

;-----------------------verificando alien 16-----------------------
verify_colis_alien_16:
	;verificando se esta removido
	load r3, alien_16
	cmp r3, r4
	jeq verify_colis_alien_17

	load r1, alien_pos_3
	loadn r2, #8
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_16

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_16

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_16

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_16

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_16

;-----------------------verificando alien 17-----------------------
verify_colis_alien_17:
	;verificando se esta removido
	load r3, alien_17
	cmp r3, r4
	jeq verify_colis_alien_18

	load r1, alien_pos_3
	loadn r2, #16
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_17

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_17

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_17

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_17

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_17

;-----------------------verificando alien 18-----------------------
verify_colis_alien_18:
	;verificando se esta removido
	load r3, alien_18
	cmp r3, r4
	jeq verify_colis_alien_19

	load r1, alien_pos_3
	loadn r2, #24
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_18

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_18

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_18

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_18

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_18

;-----------------------verificando alien 19-----------------------
verify_colis_alien_19:
	;verificando se esta removido
	load r3, alien_19
	cmp r3, r4
	jeq verify_colis_alien_10

	load r1, alien_pos_3
	loadn r2, #32
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_19

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_19

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_19

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_19

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_19

;*************************verificando os aliens da linha 2*************************

	;-----------------------verificando alien 10-----------------------
verify_colis_alien_10:
	;verificando se esta removido
	load r3, alien_10
	cmp r3, r4
	jeq verify_colis_alien_11

	load r1, alien_pos_2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_10

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_10

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_10

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_10

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_10

;-----------------------verificando alien 11-----------------------
verify_colis_alien_11:
	;verificando se esta removido
	load r3, alien_11
	cmp r3, r4
	jeq verify_colis_alien_12

	load r1, alien_pos_2
	loadn r2, #8
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_11

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_11

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_11

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_11

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_11

;-----------------------verificando alien 12-----------------------
verify_colis_alien_12:
	;verificando se esta removido
	load r3, alien_12
	cmp r3, r4
	jeq verify_colis_alien_13

	load r1, alien_pos_2
	loadn r2, #16
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_12

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_12

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_12

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_12

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_12

;-----------------------verificando alien 13-----------------------
verify_colis_alien_13:
	;verificando se esta removido
	load r3, alien_13
	cmp r3, r4
	jeq verify_colis_alien_14

	load r1, alien_pos_2
	loadn r2, #24
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_13

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_13

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_13

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_13

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_13

;-----------------------verificando alien 14-----------------------
verify_colis_alien_14:
	;verificando se esta removido
	load r3, alien_14
	cmp r3, r4
	jeq verify_colis_alien_5

	load r1, alien_pos_2
	loadn r2, #32
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_14

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_14

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_14

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_14

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_14

;*************************verificando os aliens da linha 1*************************

	;-----------------------verificando alien 5-----------------------
verify_colis_alien_5:
	;verificando se esta removido
	load r3, alien_5
	cmp r3, r4
	jeq verify_colis_alien_6

	load r1, alien_pos_1

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_5

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_5

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_5

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_5

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_5

;-----------------------verificando alien 6-----------------------
verify_colis_alien_6:
	;verificando se esta removido
	load r3, alien_6
	cmp r3, r4
	jeq verify_colis_alien_7

	load r1, alien_pos_1
	loadn r2, #8
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_6

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_6

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_6

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_6

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_6

;-----------------------verificando alien 7-----------------------
verify_colis_alien_7:
	;verificando se esta removido
	load r3, alien_7
	cmp r3, r4
	jeq verify_colis_alien_8

	load r1, alien_pos_1
	loadn r2, #16
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_7

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_7

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_7

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_7

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_7

;-----------------------verificando alien 8-----------------------
verify_colis_alien_8:
	;verificando se esta removido
	load r3, alien_8
	cmp r3, r4
	jeq verify_colis_alien_9

	load r1, alien_pos_1
	loadn r2, #24
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_8

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_8

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_8

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_8

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_8

;-----------------------verificando alien 9-----------------------
verify_colis_alien_9:
	;verificando se esta removido
	load r3, alien_9
	cmp r3, r4
	jeq verify_colis_alien_0

	load r1, alien_pos_1
	loadn r2, #32
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_9

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_9

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_9

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_9

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_9

;*************************verificando os aliens da linha 0*************************

	;-----------------------verificando alien 0-----------------------
verify_colis_alien_0:
	;verificando se esta removido
	load r3, alien_0
	cmp r3, r4
	jeq verify_colis_alien_1

	load r1, alien_pos_0

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_0

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_0

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_0

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_0

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_0

;-----------------------verificando alien 1-----------------------
verify_colis_alien_1:
	;verificando se esta removido
	load r3, alien_1
	cmp r3, r4
	jeq verify_colis_alien_2

	load r1, alien_pos_0
	loadn r2, #8
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_1

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_1

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_1

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_1

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_1

;-----------------------verificando alien 2-----------------------
verify_colis_alien_2:
	;verificando se esta removido
	load r3, alien_2
	cmp r3, r4
	jeq verify_colis_alien_3

	load r1, alien_pos_0
	loadn r2, #16
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_2

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_2

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_2

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_2

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_2

;-----------------------verificando alien 3-----------------------
verify_colis_alien_3:
	;verificando se esta removido
	load r3, alien_3
	cmp r3, r4
	jeq verify_colis_alien_4

	load r1, alien_pos_0
	loadn r2, #24
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_3

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_3

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_3

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_3

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_3

;-----------------------verificando alien 4-----------------------
verify_colis_alien_4:
	;verificando se esta removido
	load r3, alien_4
	cmp r3, r4
	jeq fim_colisoes

	load r1, alien_pos_0
	loadn r2, #32
	add r1, r1, r2

	;verificando se houve colisao com a parte superior esquerda
	cmp r0, r1
	jeq rem_alien_4

	;verificando se houve colisao com a parte superior direita
	inc r1
	inc r1
	cmp r0, r1
	jeq rem_alien_4

	;verificando se houve colisao com a parte inferior esquerda
	loadn r2, #38
	add r1, r1, r2
	cmp r0, r1
	jeq rem_alien_4

	;verificando se houve colisao com a parte do meio inferior
	inc r1
	cmp r0, r1
	jeq rem_alien_4

	;verificando se houve colisao com a parte inferior direita
	inc r1
	cmp r0, r1
	jeq rem_alien_4
	jmp fim_colisoes

	loadn r2, #1

	rem_alien_24:
		store alien_24, r4

		load r1, alien_19
		cmp r1, r2
		jeq set_alien19_atirador
		jeq cont_alien_24

		load r1, alien_14
		cmp r1, r2
		jeq set_alien14_atirador
		jeq cont_alien_24

		load r1, alien_9
		cmp r1, r2
		jeq set_alien9_atirador
		jeq cont_alien_24

		load r1, alien_4
		cmp r1, r2
		jeq set_alien4_atirador
		jeq cont_alien_24

		cont_alien_24:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_23:
		store alien_23, r4

		load r1, alien_18
		cmp r1, r2
		jeq set_alien18_atirador
		jeq cont_alien_23

		load r1, alien_13
		cmp r1, r2
		jeq set_alien13_atirador
		jeq cont_alien_23

		load r1, alien_8
		cmp r1, r2
		jeq set_alien8_atirador
		jeq cont_alien_23

		load r1, alien_3
		cmp r1, r2
		jeq set_alien3_atirador
		jeq cont_alien_23

		cont_alien_23:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_22:
		store alien_22, r4

		load r1, alien_17
		cmp r1, r2
		jeq set_alien17_atirador
		jeq cont_alien_22

		load r1, alien_12
		cmp r1, r2
		jeq set_alien12_atirador
		jeq cont_alien_22

		load r1, alien_7
		cmp r1, r2
		jeq set_alien7_atirador
		jeq cont_alien_22

		load r1, alien_2
		cmp r1, r2
		jeq set_alien2_atirador
		jeq cont_alien_22

		cont_alien_22:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_21:
		store alien_21, r4

		load r1, alien_16
		cmp r1, r2
		jeq set_alien16_atirador
		jeq cont_alien_21

		load r1, alien_11
		cmp r1, r2
		jeq set_alien11_atirador
		jeq cont_alien_21

		load r1, alien_6
		cmp r1, r2
		jeq set_alien6_atirador
		jeq cont_alien_21

		load r1, alien_1
		cmp r1, r2
		jeq set_alien1_atirador
		jeq cont_alien_21

		cont_alien_21:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_20:
		store alien_20, r4

		load r1, alien_15
		cmp r1, r2
		jeq set_alien15_atirador
		jeq cont_alien_20

		load r1, alien_10
		cmp r1, r2
		jeq set_alien10_atirador
		jeq cont_alien_20

		load r1, alien_5
		cmp r1, r2
		jeq set_alien5_atirador
		jeq cont_alien_20

		load r1, alien_0
		cmp r1, r2
		jeq set_alien0_atirador
		jeq cont_alien_20

		cont_alien_20:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_19:
		store alien_19, r4

		load r3, atirador_4
		loadn r1, #19
		cmp r3, r1
		jgr cont_alien_19

		load r1, alien_14
		cmp r1, r2
		jeq set_alien14_atirador
		jeq cont_alien_19

		load r1, alien_9
		cmp r1, r2
		jeq set_alien9_atirador
		jeq cont_alien_19

		load r1, alien_4
		cmp r1, r2
		jeq set_alien4_atirador
		jeq cont_alien_19

		cont_alien_19:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_18:
		store alien_18, r4

		load r3, atirador_3
		loadn r1, #18
		cmp r3, r1
		jgr cont_alien_18

		load r1, alien_13
		cmp r1, r2
		jeq set_alien13_atirador
		jeq cont_alien_18

		load r1, alien_8
		cmp r1, r2
		jeq set_alien8_atirador
		jeq cont_alien_18

		load r1, alien_3
		cmp r1, r2
		jeq set_alien3_atirador
		jeq cont_alien_18

		cont_alien_18:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_17:
		store alien_17, r4

		load r3, atirador_2
		loadn r1, #17
		cmp r3, r1
		jgr cont_alien_17

		load r1, alien_12
		cmp r1, r2
		jeq set_alien12_atirador
		jeq cont_alien_17

		load r1, alien_7
		cmp r1, r2
		jeq set_alien7_atirador
		jeq cont_alien_17

		load r1, alien_2
		cmp r1, r2
		jeq set_alien2_atirador
		jeq cont_alien_17

		cont_alien_17:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_16:
		store alien_16, r4

		load r3, atirador_1
		loadn r1, #16
		cmp r3, r1
		jgr cont_alien_16

		load r1, alien_11
		cmp r1, r2
		jeq set_alien11_atirador
		jeq cont_alien_16

		load r1, alien_6
		cmp r1, r2
		jeq set_alien6_atirador
		jeq cont_alien_16

		load r1, alien_1
		cmp r1, r2
		jeq set_alien1_atirador
		jeq cont_alien_16

		cont_alien_16:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_15:
		store alien_15, r4

		load r3, atirador_0
		loadn r1, #15
		cmp r3, r1
		jgr cont_alien_15

		load r1, alien_10
		cmp r1, r2
		jeq set_alien10_atirador
		jeq cont_alien_15

		load r1, alien_5
		cmp r1, r2
		jeq set_alien5_atirador
		jeq cont_alien_15

		load r1, alien_0
		cmp r1, r2
		jeq set_alien0_atirador
		jeq cont_alien_15

		cont_alien_15:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_14:
		store alien_14, r4

		load r3, atirador_4
		loadn r1, #14
		cmp r3, r1
		jgr cont_alien_14

		load r1, alien_9
		cmp r1, r2
		jeq set_alien9_atirador
		jeq cont_alien_14

		load r1, alien_4
		cmp r1, r2
		jeq set_alien4_atirador
		jeq cont_alien_14

		cont_alien_14:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_13:
		store alien_13, r4

		load r3, atirador_3
		loadn r1, #13
		cmp r3, r1
		jgr cont_alien_13

		load r1, alien_8
		cmp r1, r2
		jeq set_alien8_atirador
		jeq cont_alien_13

		load r1, alien_3
		cmp r1, r2
		jeq set_alien3_atirador
		jeq cont_alien_13

		cont_alien_13:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_12:
		store alien_12, r4

		load r3, atirador_2
		loadn r1, #12
		cmp r3, r1
		jgr cont_alien_12

		load r1, alien_7
		cmp r1, r2
		jeq set_alien7_atirador
		jeq cont_alien_12

		load r1, alien_2
		cmp r1, r2
		jeq set_alien2_atirador
		jeq cont_alien_12

		cont_alien_12:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_11:
		store alien_11, r4

		load r3, atirador_1
		loadn r1, #11
		cmp r3, r1
		jgr cont_alien_11

		load r1, alien_6
		cmp r1, r2
		jeq set_alien6_atirador
		jeq cont_alien_11

		load r1, alien_1
		cmp r1, r2
		jeq set_alien1_atirador
		jeq cont_alien_11

		cont_alien_11:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_10:
		store alien_10, r4

		load r3, atirador_0
		loadn r1, #10
		cmp r3, r1
		jgr cont_alien_10

		load r1, alien_5
		cmp r1, r2
		jeq set_alien5_atirador
		jeq cont_alien_10

		load r1, alien_0
		cmp r1, r2
		jeq set_alien0_atirador
		jeq cont_alien_10

		cont_alien_10:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_9:
		store alien_9, r4

		load r3, atirador_4
		loadn r1, #9
		cmp r3, r1
		jgr cont_alien_9

		load r1, alien_4
		cmp r1, r2
		jeq set_alien4_atirador

		cont_alien_9:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_8:
		store alien_8, r4

		load r3, atirador_3
		loadn r1, #8
		cmp r3, r1
		jgr cont_alien_8

		load r1, alien_3
		cmp r1, r2
		jeq set_alien3_atirador

		cont_alien_8:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_7:
		store alien_7, r4

		load r3, atirador_2
		loadn r1, #7
		cmp r3, r1
		jgr cont_alien_7

		load r1, alien_2
		cmp r1, r2
		jeq set_alien2_atirador

		cont_alien_7:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_6:
		store alien_6, r4

		load r3, atirador_1
		loadn r1, #6
		cmp r3, r1
		jgr cont_alien_6

		load r1, alien_1
		cmp r1, r2
		jeq set_alien1_atirador

		cont_alien_6:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_5:
		store alien_5, r4

		load r3, atirador_0
		loadn r1, #5
		cmp r3, r1
		jgr cont_alien_5

		load r1, alien_0
		cmp r1, r2
		jeq set_alien0_atirador

		cont_alien_5:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_4:
		store alien_4, r4

		load r3, atirador_4
		loadn r1, #4
		cmp r3, r1
		jgr cont_alien_4

		loadn r1, #'@'
		store atirador_4, r1

		cont_alien_4:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_3:
		store alien_3, r4

		load r3, atirador_3
		loadn r1, #3
		cmp r3, r1
		jgr cont_alien_3

		loadn r1, #'@'
		store atirador_3, r1

		cont_alien_3:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_2:
		store alien_2, r4

		load r3, atirador_2
		loadn r1, #2
		cmp r3, r1
		jgr cont_alien_2

		loadn r1, #'@'
		store atirador_2, r1

		cont_alien_2:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_1:
		store alien_1, r4

		load r3, atirador_1
		loadn r1, #1
		cmp r3, r1
		jgr cont_alien_1

		loadn r1, #'@'
		store atirador_1, r1

		cont_alien_1:
		call att_pos_novo_tiro
		jmp fim_colisoes

	rem_alien_0:
		store alien_0, r4

		load r3, atirador_0
		loadn r1, #0
		cmp r3, r1
		jgr cont_alien_0

		loadn r1, #'@'
		store atirador_0, r1

		cont_alien_0:
		call att_pos_novo_tiro

fim_colisoes:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

att_pos_novo_tiro:
	push r0
	push r1

	loadn r0, #40
	load r1, tanquePosition
	sub r1, r1, r0
	store tiroPosition, r1

	pop r1
	pop r0
	rts

print_tiro:
	push r0
	push r1
	push r2

	load r0, tiroPosition
	loadn r1, #9
	load r2, vermelho
	add r1, r1, r2

	outchar r1, r0

	pop r2
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

set_alien0_atirador:
	push r0

	loadn r0, #0
	store atirador_0, r0

	pop r0

	rts

set_alien1_atirador:
	push r0

	loadn r0, #1
	store atirador_1, r0

	pop r0

	rts

set_alien2_atirador:
	push r0

	loadn r0, #2
	store atirador_2, r0

	pop r0

	rts

set_alien3_atirador:
	push r0

	loadn r0, #3
	store atirador_3, r0

	pop r0

	rts

set_alien4_atirador:
	push r0

	loadn r0, #4
	store atirador_4, r0

	pop r0

	rts

set_alien5_atirador:
	push r0

	loadn r0, #5
	store atirador_0, r0

	pop r0

	rts

set_alien6_atirador:
	push r0

	loadn r0, #6
	store atirador_1, r0

	pop r0

	rts

set_alien7_atirador:
	push r0

	loadn r0, #7
	store atirador_2, r0

	pop r0

	rts

set_alien8_atirador:
	push r0

	loadn r0, #8
	store atirador_3, r0

	pop r0

	rts

set_alien9_atirador:
	push r0

	loadn r0, #9
	store atirador_4, r0

	pop r0

	rts

set_alien10_atirador:
	push r0

	loadn r0, #10
	store atirador_0, r0

	pop r0

	rts

set_alien11_atirador:
	push r0

	loadn r0, #11
	store atirador_1, r0

	pop r0

	rts

set_alien12_atirador:
	push r0

	loadn r0, #12
	store atirador_2, r0

	pop r0

	rts

set_alien13_atirador:
	push r0

	loadn r0, #13
	store atirador_3, r0

	pop r0

	rts

set_alien14_atirador:
	push r0

	loadn r0, #14
	store atirador_4, r0

	pop r0

	rts

set_alien15_atirador:
	push r0

	loadn r0, #15
	store atirador_0, r0

	pop r0

	rts

set_alien16_atirador:
	push r0

	loadn r0, #16
	store atirador_1, r0

	pop r0

	rts

set_alien17_atirador:
	push r0

	loadn r0, #17
	store atirador_2, r0

	pop r0

	rts

set_alien18_atirador:
	push r0

	loadn r0, #18
	store atirador_3, r0

	pop r0

	rts

set_alien19_atirador:
	push r0

	loadn r0, #19
	store atirador_4, r0

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
; r7: recebe a cor
printChar:
	push r4
	push r5
	push r6

	store original_pos, r2

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

	load r2, original_pos

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

	store original_pos, r2

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

	load r2, original_pos

  	pop r5
  	pop r4
  	pop r0
  	rts
