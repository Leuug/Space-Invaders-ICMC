jmp main

; ------- DEFINIÇÃO DE CORES -------
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

atirador_atual : var #1
input_1 : var #1
score : var #1
original_pos : var #1
m_score : string "SCORE "

tiroAlienPosition : var #1
tiroTanquePosition : var #1
contador_tiro : var #1
alienPosition: var #1
alien_mov_esq : var #1

vidas_restantes : var #1
quant_alien_eliminados : var #1

score0 : string "0000"
score1 : string "0040"
score2 : string "0080"
score3 : string "0120"
score4 : string "0160"

score5 : string "0200"
score6 : string "0240"
score7 : string "0280"
score8 : string "0320"
score9 : string "0360"

score10 : string "0400"
score11 : string "0440"
score12 : string "0480"
score13 : string "0520"
score14 : string "0560"

score15 : string "0600"
score16 : string "0640"
score17 : string "0680"
score18 : string "0720"
score19 : string "0760"

score20 : string "0800"
score21 : string "0840"
score22 : string "0880"
score23 : string "0920"
score24 : string "0960"
score25 : string "1000"

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
	static alien2 + #0, #23 ;	 alien2_upl
	static alien2 + #1, #24 ;	 alien2_cntr
	static alien2 + #2, #25 ;	 alien2_upr
	;38	espacos para o proximo caractere
	static alien2 + #3, #26 ;	 alien2_dwnl
	static alien2 + #4, #27 ;	 alien2_bttm
	static alien2 + #5, #28 ;	 alien2_dwnr

alien2Gaps : var #6
	static alien2Gaps + #0, #0
	static alien2Gaps + #1, #0
	static alien2Gaps + #2, #0
	static alien2Gaps + #3, #37
	static alien2Gaps + #4, #0
	static alien2Gaps + #5, #0

alien3 : var #6
	static alien3 + #0, #97 ;	 alien3_upl
	static alien3 + #1, #98 ;	 alien3_cntr
	static alien3 + #2, #99 ;	 alien3_upr
	;38	espacos para o proximo caractere
	static alien3 + #3, #100 ;	 alien3_dwnl
	static alien3 + #4, #101 ;	 alien3_bttm
	static alien3 + #5, #102 ;	 alien3_dwnr

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
	; 38	espacos para o proximo caractere
	static tanque + #1, #517 ; tanque_l
	static tanque + #2, #519 ; tanque_up
	static tanque + #3, #512 ; bloco
	static tanque + #4, #519 ; tanque_up
	static tanque + #5, #518 ; tanque_r
	; 36	espacos para o proximo caractere
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

atirador_eh_0 : var #1
atirador_eh_1 : var #1
atirador_eh_2 : var #1
atirador_eh_3 : var #1
atirador_eh_4 : var #1
atirador_eh_5 : var #1
atirador_eh_6 : var #1
atirador_eh_7 : var #1
atirador_eh_8 : var #1
atirador_eh_9 : var #1
atirador_eh_10 : var #1
atirador_eh_11 : var #1
atirador_eh_12 : var #1
atirador_eh_13 : var #1
atirador_eh_14 : var #1
atirador_eh_15 : var #1
atirador_eh_16 : var #1
atirador_eh_17 : var #1
atirador_eh_18 : var #1
atirador_eh_19 : var #1
atirador_eh_20 : var #1
atirador_eh_21 : var #1
atirador_eh_22 : var #1
atirador_eh_23 : var #1
atirador_eh_24 : var #1

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
	jmp menu

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
		push r7

		loadn r7, #1

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

			load r1, atirador_eh_0
			cmp r7, r1
			jne fim_verify_0

			push r0
			load r0, alien_pos_0
			store atirador_pos_0, r0
			pop r0

			jmp fim_verify_0

		verify_1:
			load r0, alien_1

			load r1, atirador_eh_1
			cmp r7, r1
			jne fim_verify_0

			push r0
			push r1
			loadn r1, #8
			load r0, alien_pos_0
			add r0, r0, r1
			store atirador_pos_1, r0
			pop r1
			pop r0

			store atirador_pos_1, r2

			jmp fim_verify_0

		verify_2:
			load r0, alien_2

			load r1, atirador_eh_2
			cmp r7, r1
			jne fim_verify_0

			push r0
			push r1
			loadn r1, #16
			load r0, alien_pos_0
			add r0, r0, r1
			store atirador_pos_2, r0
			pop r1
			pop r0

			jmp fim_verify_0

		verify_3:
			load r0, alien_3

			load r1, atirador_eh_3
			cmp r7, r1
			jne fim_verify_0

			push r0
			push r1
			loadn r1, #24
			load r0, alien_pos_0
			add r0, r0, r1
			store atirador_pos_3, r0
			pop r1
			pop r0

			jmp fim_verify_0

		verify_4:
			load r0, alien_4

			load r1, atirador_eh_4
			cmp r7, r1
			jne fim_verify_0

			push r0
			push r1
			loadn r1, #32
			load r0, alien_pos_0
			add r0, r0, r1
			store atirador_pos_4, r0
			pop r1
			pop r0


		fim_verify_0:
		pop r7

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
	loadn r4, #0 ; contador de aliens
	loadn r6, #128
	add r2, r2, r6
	loadn r6, #0

	store alien_pos_1, r2

	imprime_alien_1:
		add r2, r2, r6

		push r0
		push r1
		push r7

		loadn r7, #1

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

			load r1, atirador_eh_5
			cmp r7, r1
			jne fim_verify_1

			push r0
			load r0, alien_pos_1
			store atirador_pos_0, r0
			pop r0


			jmp fim_verify_1

		verify_6:
			load r0, alien_6

			load r1, atirador_eh_6
			cmp r7, r1
			jne fim_verify_1

			push r0
			push r1
			loadn r1, #8
			load r0, alien_pos_1
			add r0, r0, r1
			store atirador_pos_1, r0
			pop r1
			pop r0


			jmp fim_verify_1

		verify_7:
			load r0, alien_7

			load r1, atirador_eh_7
			cmp r7, r1
			jne fim_verify_1

			push r0
			push r1
			loadn r1, #16
			load r0, alien_pos_1
			add r0, r0, r1
			store atirador_pos_2, r0
			pop r1
			pop r0

			jmp fim_verify_1

		verify_8:
			load r0, alien_8

			load r1, atirador_eh_8
			cmp r7, r1
			jne fim_verify_1

			push r0
			push r1
			loadn r1, #24
			load r0, alien_pos_1
			add r0, r0, r1
			store atirador_pos_3, r0
			pop r1
			pop r0

			jmp fim_verify_1

		verify_9:
			load r0, alien_9

			load r1, atirador_eh_9
			cmp r7, r1
			jne fim_verify_1

			push r0
			push r1
			loadn r1, #32
			load r0, alien_pos_1
			add r0, r0, r1
			store atirador_pos_4, r0
			pop r1
			pop r0

		fim_verify_1:
		pop r7

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
		push r7

		loadn r7, #1

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

			load r1, atirador_eh_10
			cmp r7, r1
			jne fim_verify_2

			push r0
			load r0, alien_pos_2
			store atirador_pos_0, r0
			pop r0

			jmp fim_verify_2

		verify_11:
			load r0, alien_11

			load r1, atirador_eh_11
			cmp r7, r1
			jne fim_verify_2

			push r0
			push r1
			loadn r1, #8
			load r0, alien_pos_2
			add r0, r0, r1
			store atirador_pos_1, r0
			pop r1
			pop r0

			jmp fim_verify_2

		verify_12:
			load r0, alien_12

			load r1, atirador_eh_12
			cmp r7, r1
			jne fim_verify_2

			push r0
			push r1
			loadn r1, #16
			load r0, alien_pos_2
			add r0, r0, r1
			store atirador_pos_2, r0
			pop r1
			pop r0

			jmp fim_verify_2

		verify_13:
			load r0, alien_13

			load r1, atirador_eh_13
			cmp r7, r1
			jne fim_verify_2

			push r0
			push r1
			loadn r1, #24
			load r0, alien_pos_2
			add r0, r0, r1
			store atirador_pos_3, r0
			pop r1
			pop r0

			jmp fim_verify_2

		verify_14:
			load r0, alien_14

			load r1, atirador_eh_14
			cmp r7, r1
			jne fim_verify_2

			push r0
			push r1
			loadn r1, #32
			load r0, alien_pos_2
			add r0, r0, r1
			store atirador_pos_4, r0
			pop r1
			pop r0

		fim_verify_2:
		pop r7

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
	loadn r4, #0 ; contador de aliens
	loadn r6, #128
	add r2, r2, r6
	loadn r6, #0

	store alien_pos_3, r2

	imprime_alien_3:
		add r2, r2, r6

		push r0
		push r1
		push r7

		loadn r7, #1

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

			load r1, atirador_eh_15
			cmp r7, r1
			jne fim_verify_3

			push r0
			load r0, alien_pos_3
			store atirador_pos_0, r0
			pop r0

			jmp fim_verify_3

		verify_16:
			load r0, alien_16

			load r1, atirador_eh_16
			cmp r7, r1
			jne fim_verify_3

			push r0
			push r1
			loadn r1, #8
			load r0, alien_pos_3
			add r0, r0, r1
			store atirador_pos_1, r0
			pop r1
			pop r0

			jmp fim_verify_3

		verify_17:
			load r0, alien_17

			load r1, atirador_eh_17
			cmp r7, r1
			jne fim_verify_3

			push r0
			push r1
			loadn r1, #16
			load r0, alien_pos_3
			add r0, r0, r1
			store atirador_pos_2, r0
			pop r1
			pop r0

			jmp fim_verify_3

		verify_18:
			load r0, alien_18

			load r1, atirador_eh_18
			cmp r7, r1
			jne fim_verify_3

			push r0
			push r1
			loadn r1, #24
			load r0, alien_pos_3
			add r0, r0, r1
			store atirador_pos_3, r0
			pop r1
			pop r0

			jmp fim_verify_3

		verify_19:
			load r0, alien_19

			load r1, atirador_eh_19
			cmp r7, r1
			jne fim_verify_3

			push r0
			push r1
			loadn r1, #32
			load r0, alien_pos_3
			add r0, r0, r1
			store atirador_pos_4, r0
			pop r1
			pop r0

		fim_verify_3:
		pop r7

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
		push r7

		loadn r7, #1

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

			load r1, atirador_eh_20
			cmp r7, r1
			jne fim_verify_4

			push r0
			load r0, alien_pos_4
			store atirador_pos_0, r0
			pop r0

			jmp fim_verify_4

		verify_21:
			load r0, alien_21

			load r1, atirador_eh_21
			cmp r7, r1
			jne fim_verify_4

			push r0
			push r1
			loadn r1, #8
			load r0, alien_pos_4
			add r0, r0, r1
			store atirador_pos_1, r0
			pop r1
			pop r0

			jmp fim_verify_4

		verify_22:
			load r0, alien_22

			load r1, atirador_eh_22
			cmp r7, r1
			jne fim_verify_4

			push r0
			push r1
			loadn r1, #16
			load r0, alien_pos_4
			add r0, r0, r1
			store atirador_pos_2, r0
			pop r1
			pop r0

			jmp fim_verify_4

		verify_23:
			load r0, alien_23

			load r1, atirador_eh_23
			cmp r7, r1
			jne fim_verify_4

			push r0
			push r1
			loadn r1, #24
			load r0, alien_pos_4
			add r0, r0, r1
			store atirador_pos_3, r0
			pop r1
			pop r0

			jmp fim_verify_4

		verify_24:
			load r0, alien_24

			load r1, atirador_eh_24
			cmp r0, r1
			jne fim_verify_4

			push r0
			push r1
			loadn r1, #32
			load r0, alien_pos_4
			add r0, r0, r1
			store atirador_pos_4, r0
			pop r1
			pop r0

		fim_verify_4:
		pop r7

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

	load r0, alienPosition
	loadn r1, #1

	loadn r2, #5
	load r3, alien_mov_esq
	loadn r4, #0

	call erase_alien_row

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

	;setando a posicao inicial do primeiro tiro do tanque
	loadn r2, #0
	loadn r0, #1019
	store tiroTanquePosition, r0

	;setando a posicao inicial do primeiro tiro dos aliens
	loadn r0, #825
	store tiroAlienPosition, r0

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

	loadn r0, #640
	loadn r4, #8

	store atirador_pos_0, r0
	add r0, r0, r4
	store atirador_pos_1, r0
	add r0, r0, r4
	store atirador_pos_2, r0
	add r0, r0, r4
	store atirador_pos_3, r0
	add r0, r0, r4
	store atirador_pos_4, r0

	;; ------- setando valores dos atiradores -------
	loadn r3, #0

	store atirador_atual, r3

	store atirador_eh_0, r3
	store atirador_eh_1, r3
	store atirador_eh_2, r3
	store atirador_eh_3, r3
	store atirador_eh_4, r3
	store atirador_eh_5, r3
	store atirador_eh_6, r3
	store atirador_eh_7, r3
	store atirador_eh_8, r3
	store atirador_eh_9, r3
	store atirador_eh_10, r3
	store atirador_eh_11, r3
	store atirador_eh_12, r3
	store atirador_eh_13, r3
	store atirador_eh_14, r3
	store atirador_eh_15, r3
	store atirador_eh_16, r3
	store atirador_eh_17, r3
	store atirador_eh_18, r3
	store atirador_eh_19, r3

	loadn r3, #1

	store atirador_eh_20, r3
	store atirador_eh_21, r3
	store atirador_eh_22, r3
	store atirador_eh_23, r3
	store atirador_eh_24, r3

	;; ------- setando valores dos alien para verdadeiro -------

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

	loadn r4, #3
	store vidas_restantes, r4

	loadn r4, #0
	store quant_alien_eliminados, r4

	call setup_alien_row

main_game_loop:
	call verifica_pos_tiro_tanque
	call verifica_pos_tiro_alien
	call print_tiro_tanque

	call print_tiro_aliens
	call colisoes_tanque
	call player
	call apagar_tiro_tanque

	call apagar_tiro_aliens

	call colisoes_alien
	loadn r0, #1166
	call printar_score
	jmp verificar_fim_do_jogo

fim_verificacao_fim_do_jogo:
	call alien_update
	jmp main_game_loop

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0

	rts

colisoes_tanque:
	push r0
	push r1
	push r2
	push r3

	load r1, tiroAlienPosition
	loadn r0, #40
	add r1, r1, r0
	load r0, tanquePosition

	;OOXOO
	cmp r1, r0
	jeq colisao_tanque

	;XOOOO
	loadn r2, #38
	add r0, r0, r2
	cmp r1, r0
	jeq colisao_tanque

	;OXOOO
	inc r0
	cmp r1, r0
	jeq colisao_tanque

	;OOOXO
	inc r0
	inc r0
	cmp r1, r0
	jeq colisao_tanque

	;OOOOX
	inc r0
	cmp r1, r0
	jeq colisao_tanque
	jmp fim_colisao_tanque

colisao_tanque:
	load r0, vidas_restantes
	dec r0
	store vidas_restantes, r0

	loadn r1, #tanqueGaps
	load r2, tanquePosition
	loadn r3, #11
	call apagarChar

	;setando a posicao inicial do tanque
	loadn r0, #1059
	store tanquePosition, r0

fim_colisao_tanque:
	pop r3
	pop r2
	pop r1
	pop r0
	rts

att_pos_novo_tiro_alien:
	push r0
	push r1
	push r2
	push r3
	push r4

	loadn r3, #0
	load r2, atirador_atual

	cmp r3, r2
	jeq atirar_0
	inc r3
	cmp r3, r2
	jeq atirar_1
	inc r3
	cmp r3, r2
	jeq atirar_2
	inc r3
	cmp r3, r2
	jeq atirar_3
	inc r3
	cmp r3, r2
	jeq atirar_4

atirar_0:
	loadn r4, #1
	load r3, atirador_eh_20
	cmp r3, r4
	jeq setar_tiro_pos_20
	load r3, atirador_eh_15
	cmp r3, r4
	jeq setar_tiro_pos_15
	load r3, atirador_eh_10
	cmp r3, r4
	jeq setar_tiro_pos_10
	load r3, atirador_eh_5
	cmp r3, r4
	jeq setar_tiro_pos_5
	load r3, atirador_eh_0
	cmp r3, r4
	jeq setar_tiro_pos_0
	jmp fim_tiro_alien

atirar_1:
	loadn r4, #1
	load r3, atirador_eh_21
	cmp r3, r4
	jeq setar_tiro_pos_21
	load r3, atirador_eh_16
	cmp r3, r4
	jeq setar_tiro_pos_16
	load r3, atirador_eh_11
	cmp r3, r4
	jeq setar_tiro_pos_11
	load r3, atirador_eh_6
	cmp r3, r4
	jeq setar_tiro_pos_6
	load r3, atirador_eh_1
	cmp r3, r4
	jeq setar_tiro_pos_1
	jmp fim_tiro_alien

atirar_2:
	loadn r4, #1
	load r3, atirador_eh_22
	cmp r3, r4
	jeq setar_tiro_pos_22
	load r3, atirador_eh_17
	cmp r3, r4
	jeq setar_tiro_pos_17
	load r3, atirador_eh_12
	cmp r3, r4
	jeq setar_tiro_pos_12
	load r3, atirador_eh_7
	cmp r3, r4
	jeq setar_tiro_pos_7
	load r3, atirador_eh_2
	cmp r3, r4
	jeq setar_tiro_pos_2
	jmp fim_tiro_alien

atirar_3:
	loadn r4, #1
	load r3, atirador_eh_23
	cmp r3, r4
	jeq setar_tiro_pos_23
	load r3, atirador_eh_18
	cmp r3, r4
	jeq setar_tiro_pos_18
	load r3, atirador_eh_13
	cmp r3, r4
	jeq setar_tiro_pos_13
	load r3, atirador_eh_8
	cmp r3, r4
	jeq setar_tiro_pos_8
	load r3, atirador_eh_3
	cmp r3, r4
	jeq setar_tiro_pos_3
	jmp fim_tiro_alien

atirar_4:
	loadn r4, #1
	load r3, atirador_eh_24
	cmp r3, r4
	jeq setar_tiro_pos_24
	load r3, atirador_eh_19
	cmp r3, r4
	jeq setar_tiro_pos_19
	load r3, atirador_eh_14
	cmp r3, r4
	jeq setar_tiro_pos_14
	load r3, atirador_eh_9
	cmp r3, r4
	jeq setar_tiro_pos_9
	load r3, atirador_eh_4
	cmp r3, r4
	jeq setar_tiro_pos_4
	jmp fim_tiro_alien

setar_tiro_pos_20:
	push r0
	push r1

	load r0, alien_20
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_4
	loadn r0, #81
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #4
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_21:
	push r0
	push r1

	load r0, alien_21
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_4
	loadn r0, #89
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #0
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_22:
	push r0
	push r1

	load r0, alien_22
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_4
	loadn r0, #97
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #2
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_23:
	push r0
	push r1

	load r0, alien_23
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_4
	loadn r0, #105
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #1
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_24:
	push r0
	push r1

	load r0, alien_24
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_4
	loadn r0, #113
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #0
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_15:
	push r0
	push r1

	load r0, alien_15
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_3
	loadn r0, #81
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #2
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_16:
	push r0
	push r1

	load r0, alien_16
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_3
	loadn r0, #89
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #1
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_17:
	push r0
	push r1

	load r0, alien_17
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_3
	loadn r0, #97
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #0
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_18:
	push r0
	push r1

	load r0, alien_18
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_3
	loadn r0, #105
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #1
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_19:
	push r0
	push r1

	load r0, alien_19
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_3
	loadn r0, #113
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #4
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_10:
	push r0
	push r1

	load r0, alien_10
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_2
	loadn r0, #81
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #1
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_11:
	push r0
	push r1

	load r0, alien_11
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_2
	loadn r0, #89
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #4
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_12:
	push r0
	push r1

	load r0, alien_12
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_2
	loadn r0, #97
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #1
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_13:
	push r0
	push r1

	load r0, alien_13
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_2
	loadn r0, #105
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #3
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_14:
	push r0
	push r1

	load r0, alien_14
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_2
	loadn r0, #113
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #1
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_5:
	push r0
	push r1

	load r0, alien_5
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_1
	loadn r0, #81
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #2
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_6:
	push r0
	push r1

	load r0, alien_6
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_1
	loadn r0, #89
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #3
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_7:
	push r0
	push r1

	load r0, alien_7
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_1
	loadn r0, #97
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #0
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_8:
	push r0
	push r1

	load r0, alien_8
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_1
	loadn r0, #105
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #2
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_9:
	push r0
	push r1

	load r0, alien_9
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_1
	loadn r0, #113
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #0
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_0:
	push r0
	push r1

	load r0, alien_0
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_0
	loadn r0, #81
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #1
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_1:
	push r0
	push r1

	load r0, alien_1
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_0
	loadn r0, #89
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #3
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_2:
	push r0
	push r1

	load r0, alien_2
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_0
	loadn r0, #97
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #0
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_3:
	push r0
	push r1

	load r0, alien_3
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_0
	loadn r0, #105
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #2
	store atirador_atual, r0
	jmp fim_tiro_alien

setar_tiro_pos_4:
	push r0
	push r1

	load r0, alien_4
	loadn r1, #0
	cmp r0, r1
	pop r1
	pop r0
	jeq setar_pos_tiro_alien_0

	load r1, alien_pos_0
	loadn r0, #113
	add r1, r1, r0
	store tiroAlienPosition, r1
	loadn r0, #1
	store atirador_atual, r0

fim_tiro_alien:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

setar_pos_tiro_alien_0:
	push r0

	loadn r0, #0
	store tiroAlienPosition, r0

	pop r0
	jmp fim_tiro_alien

apagar_tiro_aliens:
	push r0
	push r1
	push r2

	loadn r0, #0
	load r1, tiroAlienPosition
	cmp r0, r1
	jeq fim_apagar_tiro_alien

	load r0, tiroAlienPosition
	loadn r1, #' '
	outchar r1, r0
	loadn r2, #40
	add r0, r0, r2
	store tiroAlienPosition, r0

	fim_apagar_tiro_alien:
	pop r2
	pop r1
	pop r0
	rts

print_tiro_aliens:
	push r0
	push r1
	push r2

	loadn r0, #0
	load r1, tiroAlienPosition
	cmp r0, r1
	jeq redefinir_atirador

	load r0, tiroAlienPosition
	loadn r1, #10
	load r2, amarelo
	add r1, r1, r2

	outchar r1, r0

	fim_printar_tiro_alien:

	pop r2
	pop r1
	pop r0
	rts

redefinir_atirador:
	push r0
	push r1

	load r0, atirador_atual
	inc r0
	loadn r1, #4
	cmp r0, r1
	jgr reset_atirador
	jmp fim_redefinir_atirador

reset_atirador:
	loadn r0, #0
	store atirador_atual, r0

fim_redefinir_atirador:
	pop r1
	pop r0

	jmp fim_printar_tiro_alien

verifica_pos_tiro_alien:
	push r0
	push r1

	loadn r1, #1159
	load r0, tiroAlienPosition
	cmp r1, r0
	jle reset_tiro_alien
	jmp return

return:
	pop r1
	pop r0
	rts

verificacao_tiro_2_alien:
	loadn r1, #1159
	cmp r0, r1
	jle reset_tiro_alien
	jmp return

reset_tiro_alien:
	call att_pos_novo_tiro_alien

	pop r1
	pop r0
	rts

verificar_fim_do_jogo:
	push r0
	push r1

	loadn r0, #25
	load r1, quant_alien_eliminados

	cmp r0, r1
	jeq vitoria

	loadn r0, #0
	load r1, vidas_restantes
	cmp r0, r1
	jeq game_over
	jmp fim_veri

game_over:
	pop r1
	pop r0
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	jmp gameover

fim_veri:
	pop r1
	pop r0

jmp fim_verificacao_fim_do_jogo

;r0 - posicao da tela que o score vai ser printado
;1166 - posicao score in game
printar_score:
	push r1
	push r2
	push r3
	push r4
	push r5

	load r2, amarelo

	load r3, quant_alien_eliminados
	loadn r4, #0
	loadn r5, #26

	cmp r3, r4
	jeq load_score0
	inc r4
	cmp r3, r4
	jeq load_score1
	inc r4
	cmp r3, r4
	jeq load_score2
	inc r4
	cmp r3, r4
	jeq load_score3
	inc r4
	cmp r3, r4
	jeq load_score4
	inc r4
	cmp r3, r4
	jeq load_score5
	inc r4
	cmp r3, r4
	jeq load_score6
	inc r4
	cmp r3, r4
	jeq load_score7
	inc r4
	cmp r3, r4
	jeq load_score8
	inc r4
	cmp r3, r4
	jeq load_score9
	inc r4
	cmp r3, r4
	jeq load_score10
	inc r4
	cmp r3, r4
	jeq load_score11
	inc r4
	cmp r3, r4
	jeq load_score12
	inc r4
	cmp r3, r4
	jeq load_score13
	inc r4
	cmp r3, r4
	jeq load_score14
	inc r4
	cmp r3, r4
	jeq load_score15
	inc r4
	cmp r3, r4
	jeq load_score16
	inc r4
	cmp r3, r4
	jeq load_score17
	inc r4
	cmp r3, r4
	jeq load_score18
	inc r4
	cmp r3, r4
	jeq load_score19
	inc r4
	cmp r3, r4
	jeq load_score20
	inc r4
	cmp r3, r4
	jeq load_score21
	inc r4
	cmp r3, r4
	jeq load_score22
	inc r4
	cmp r3, r4
	jeq load_score23
	inc r4
	cmp r3, r4
	jeq load_score24
	inc r4
	cmp r3, r4
	jeq load_score25

load_score0:
	loadn r1, #score0
	jmp fim_printar_score

load_score1:
	loadn r1, #score1
	jmp fim_printar_score

load_score2:
	loadn r1, #score2
	jmp fim_printar_score

load_score3:
	loadn r1, #score3
	jmp fim_printar_score

load_score4:
	loadn r1, #score4
	jmp fim_printar_score

load_score5:
	loadn r1, #score5
	jmp fim_printar_score

load_score6:
	loadn r1, #score6
	jmp fim_printar_score

load_score7:
	loadn r1, #score7
	jmp fim_printar_score

load_score8:
	loadn r1, #score8
	jmp fim_printar_score

load_score9:
	loadn r1, #score9
	jmp fim_printar_score

load_score9:
	loadn r1, #score9
	jmp fim_printar_score

load_score10:
	loadn r1, #score10
	jmp fim_printar_score

load_score11:
	loadn r1, #score11
	jmp fim_printar_score

load_score12:
	loadn r1, #score12
	jmp fim_printar_score

load_score13:
	loadn r1, #score13
	jmp fim_printar_score

load_score14:
	loadn r1, #score14
	jmp fim_printar_score

load_score15:
	loadn r1, #score15
	jmp fim_printar_score

load_score16:
	loadn r1, #score16
	jmp fim_printar_score

load_score17:
	loadn r1, #score17
	jmp fim_printar_score

load_score18:
	loadn r1, #score18
	jmp fim_printar_score

load_score19:
	loadn r1, #score19
	jmp fim_printar_score

load_score20:
	loadn r1, #score20
	jmp fim_printar_score

load_score21:
	loadn r1, #score21
	jmp fim_printar_score

load_score22:
	loadn r1, #score22
	jmp fim_printar_score

load_score23:
	loadn r1, #score23
	jmp fim_printar_score

load_score24:
	loadn r1, #score24
	jmp fim_printar_score

load_score25:
	loadn r1, #score25
	jmp fim_printar_score

fim_printar_score:
	call Imprimestr
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1

	rts

verifica_pos_tiro_tanque:
	push r0
	push r1

	loadn r1, #40
	load r0, tiroTanquePosition
	cmp r0, r1
	jle verificacao_tiro_2_tanque
	jmp return

return:
	pop r1
	pop r0
	rts

verificacao_tiro_2_tanque:
	loadn r1, #1
	cmp r0, r1
	jle reset_tiro_tanque
	jmp return

reset_tiro_tanque:
	call att_pos_novo_tiro_tanque

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

	load r0, tiroTanquePosition
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
	cmp r4, r1
	jeq verify_colis_alien_1

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
		jne set_4_14
		call set_alien19_atirador
		jmp cont_alien_24

		set_4_14:
		load r1, alien_14
		cmp r1, r2
		jne set_4_9
		call set_alien14_atirador
		jmp cont_alien_24

		set_4_9:
		load r1, alien_9
		cmp r1, r2
		jne set_4_4
		call set_alien9_atirador
		jmp cont_alien_24

		set_4_4:
		load r1, alien_4
		cmp r1, r2
		call set_alien4_atirador

		cont_alien_24:
		store atirador_eh_24, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_23:
		store alien_23, r4

		load r1, alien_18
		cmp r1, r2
		jne set_4_13
		call set_alien18_atirador
		jmp cont_alien_23

		set_4_13:
		load r1, alien_13
		cmp r1, r2
		jne set_4_8
		call set_alien13_atirador
		jmp cont_alien_23

		set_4_8:
		load r1, alien_8
		cmp r1, r2
		jne set_4_3
		call set_alien8_atirador
		jmp cont_alien_23

		set_4_3:
		load r1, alien_3
		cmp r1, r2
		call set_alien3_atirador

		cont_alien_23:
		store atirador_eh_23, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_22:
		store alien_22, r4

		load r1, alien_17
		cmp r1, r2
		jne set_4_12
		call set_alien17_atirador
		jmp cont_alien_22

		set_4_12:
		load r1, alien_12
		cmp r1, r2
		jne set_4_7
		call set_alien12_atirador
		jmp cont_alien_22

		set_4_7:
		load r1, alien_7
		cmp r1, r2
		jne set_4_2
		call set_alien7_atirador
		jmp cont_alien_22

		set_4_2:
		load r1, alien_2
		cmp r1, r2
		call set_alien2_atirador

		cont_alien_22:
		store atirador_eh_22, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_21:
		store alien_21, r4

		load r1, alien_16
		cmp r1, r2
		jne set_4_11
		call set_alien16_atirador
		jmp cont_alien_21

		set_4_11:
		load r1, alien_11
		cmp r1, r2
		jne set_4_6
		call set_alien11_atirador
		jmp cont_alien_21

		set_4_6:
		load r1, alien_6
		cmp r1, r2
		jne set_4_1
		call set_alien6_atirador
		jmp cont_alien_21

		set_4_1:
		load r1, alien_1
		cmp r1, r2
		call set_alien1_atirador

		cont_alien_21:
		store atirador_eh_21, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_20:
		store alien_20, r4

		load r1, alien_15
		cmp r1, r2
		jne set_4_10
		call set_alien15_atirador
		jmp cont_alien_20

		set_4_10:
		load r1, alien_10
		cmp r1, r2
		jne set_4_5
		call set_alien10_atirador
		jmp cont_alien_20

		set_4_5:
		load r1, alien_5
		cmp r1, r2
		jne set_4_0
		call set_alien5_atirador
		jmp cont_alien_20

		set_4_0:
		load r1, alien_0
		cmp r1, r2
		call set_alien0_atirador

		cont_alien_20:
		store atirador_eh_20, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_19:
		store alien_19, r4

		load r3, atirador_4
		loadn r1, #19
		cmp r3, r1
		jgr cont_alien_19

		load r1, alien_14
		cmp r1, r2
		jne set_3_9
		call set_alien14_atirador
		jmp cont_alien_19

		set_3_9:
		load r1, alien_9
		cmp r1, r2
		jne set_3_4
		call set_alien9_atirador
		jmp cont_alien_19

		set_3_4:
		load r1, alien_4
		cmp r1, r2
		call set_alien4_atirador

		cont_alien_19:
		store atirador_eh_19, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_18:
		store alien_18, r4

		load r3, atirador_3
		loadn r1, #18
		cmp r3, r1
		jgr cont_alien_18

		load r1, alien_13
		cmp r1, r2
		jne set_3_8
		call set_alien13_atirador
		jmp cont_alien_18

		set_3_8:
		load r1, alien_8
		cmp r1, r2
		jne set_3_3
		call set_alien8_atirador
		jmp cont_alien_18

		set_3_3:
		load r1, alien_3
		cmp r1, r2
		call set_alien3_atirador

		cont_alien_18:
		store atirador_eh_18, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_17:
		store alien_17, r4

		load r3, atirador_2
		loadn r1, #17
		cmp r3, r1
		jgr cont_alien_17

		load r1, alien_12
		cmp r1, r2
		jne set_3_7
		call set_alien12_atirador
		jmp cont_alien_17

		set_3_7:
		load r1, alien_7
		cmp r1, r2
		jne set_3_2
		call set_alien7_atirador
		jmp cont_alien_17

		set_3_2:
		load r1, alien_2
		cmp r1, r2
		call set_alien2_atirador

		cont_alien_17:
		store atirador_eh_17, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_16:
		store alien_16, r4

		load r3, atirador_1
		loadn r1, #16
		cmp r3, r1
		jgr cont_alien_16

		load r1, alien_11
		cmp r1, r2
		jne set_3_6
		call set_alien11_atirador
		jmp cont_alien_16

		set_3_6:
		load r1, alien_6
		cmp r1, r2
		jne set_3_1
		call set_alien6_atirador
		jmp cont_alien_16

		set_3_1:
		load r1, alien_1
		cmp r1, r2
		call set_alien1_atirador

		cont_alien_16:
		store atirador_eh_16, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_15:
		store alien_15, r4

		load r3, atirador_0
		loadn r1, #15
		cmp r3, r1
		jgr cont_alien_15

		load r1, alien_10
		cmp r1, r2
		jne set_3_5
		call set_alien10_atirador
		jmp cont_alien_15

		set_3_5:
		load r1, alien_5
		cmp r1, r2
		jne set_3_0
		call set_alien5_atirador
		jmp cont_alien_15

		set_3_0:
		load r1, alien_0
		cmp r1, r2
		call set_alien0_atirador

		cont_alien_15:
		store atirador_eh_15, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_14:
		store alien_14, r4

		load r3, atirador_4
		loadn r1, #14
		cmp r3, r1
		jgr cont_alien_14

		load r1, alien_9
		cmp r1, r2
		jne set_2_4
		call set_alien9_atirador
		jmp cont_alien_14

		set_2_4:
		load r1, alien_4
		cmp r1, r2
		call set_alien4_atirador

		cont_alien_14:
		store atirador_eh_14, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_13:
		store alien_13, r4

		load r3, atirador_3
		loadn r1, #13
		cmp r3, r1
		jgr cont_alien_13

		load r1, alien_8
		cmp r1, r2
		jne set_2_3
		call set_alien8_atirador
		jmp cont_alien_13

		set_2_3:
		load r1, alien_3
		cmp r1, r2
		call set_alien3_atirador

		cont_alien_13:
		store atirador_eh_13, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_12:
		store alien_12, r4

		load r3, atirador_2
		loadn r1, #12
		cmp r3, r1
		jgr cont_alien_12

		load r1, alien_7
		cmp r1, r2
		jne set_2_2
		call set_alien7_atirador
		jmp cont_alien_12

		set_2_2:
		load r1, alien_2
		cmp r1, r2
		call set_alien2_atirador

		cont_alien_12:
		store atirador_eh_12, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_11:
		store alien_11, r4

		load r3, atirador_1
		loadn r1, #11
		cmp r3, r1
		jgr cont_alien_11

		load r1, alien_6
		cmp r1, r2
		jne set_2_1
		call set_alien6_atirador
		jmp cont_alien_11

		set_2_1:
		load r1, alien_1
		cmp r1, r2
		call set_alien1_atirador

		cont_alien_11:
		store atirador_eh_11, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_10:
		store alien_10, r4

		load r3, atirador_0
		loadn r1, #10
		cmp r3, r1
		jgr cont_alien_10

		load r1, alien_5
		cmp r1, r2
		jne set_1_0
		call set_alien5_atirador
		jmp cont_alien_10

		set_1_0:
		load r1, alien_0
		cmp r1, r2
		call set_alien0_atirador

		cont_alien_10:
		store atirador_eh_10, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_9:
		store alien_9, r4

		load r3, atirador_4
		loadn r1, #9
		cmp r3, r1
		jgr cont_alien_9

		call set_alien4_atirador

		cont_alien_9:
		store atirador_eh_9, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_8:
		store alien_8, r4

		load r3, atirador_3
		loadn r1, #8
		cmp r3, r1
		jgr cont_alien_8

		call set_alien3_atirador

		cont_alien_8:
		store atirador_eh_8, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_7:
		store alien_7, r4

		load r3, atirador_2
		loadn r1, #7
		cmp r3, r1
		jgr cont_alien_7

		call set_alien2_atirador

		cont_alien_7:
		store atirador_eh_7, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_6:
		store alien_6, r4

		load r3, atirador_1
		loadn r1, #6
		cmp r3, r1
		jgr cont_alien_6

		call set_alien1_atirador

		cont_alien_6:
		store atirador_eh_6, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_5:
		store alien_5, r4

		load r3, atirador_0
		loadn r1, #5
		cmp r3, r1
		jgr cont_alien_5

		call set_alien0_atirador

		cont_alien_5:
		store atirador_eh_5, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_4:
		store alien_4, r4

		load r3, atirador_4
		loadn r1, #4
		cmp r3, r1
		jgr cont_alien_4

		loadn r1, #'@'
		store atirador_4, r1

		cont_alien_4:
		;store atirador_eh_4, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_3:
		store alien_3, r4

		load r3, atirador_3
		loadn r1, #3
		cmp r3, r1
		jgr cont_alien_3

		loadn r1, #'@'
		store atirador_3, r1

		cont_alien_3:
		;store atirador_eh_3, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_2:
		store alien_2, r4

		load r3, atirador_2
		loadn r1, #2
		cmp r3, r1
		jgr cont_alien_2

		loadn r1, #'@'
		store atirador_2, r1

		cont_alien_2:
		;store atirador_eh_2, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_1:
		store alien_1, r4

		load r3, atirador_1
		loadn r1, #1
		cmp r3, r1
		jgr cont_alien_1

		loadn r1, #'@'
		store atirador_1, r1

		cont_alien_1:
		;store atirador_eh_1, r4
		call att_pos_novo_tiro_tanque
		jmp colisao_aconteceu

	rem_alien_0:
		store alien_0, r4

		load r3, atirador_0
		loadn r1, #0
		cmp r3, r1
		jgr cont_alien_0

		loadn r1, #'@'
		store atirador_0, r1

		cont_alien_0:
		;store atirador_eh_0, r4
		call att_pos_novo_tiro_tanque

colisao_aconteceu:
	load r0, quant_alien_eliminados
	inc r0
	store quant_alien_eliminados, r0

fim_colisoes:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

att_pos_novo_tiro_tanque:
	push r0
	push r1

	loadn r0, #40
	load r1, tanquePosition
	sub r1, r1, r0
	store tiroTanquePosition, r1

	pop r1
	pop r0
	rts

print_tiro_tanque:
	push r0
	push r1
	push r2

	load r0, tiroTanquePosition
	loadn r1, #9
	load r2, vermelho
	add r1, r1, r2

	outchar r1, r0

	pop r2
	pop r1
	pop r0
	rts

apagar_tiro_tanque:
	push r0
	push r1
	push r2

	load r0, tiroTanquePosition
	loadn r1, #' '
	outchar r1, r0
	loadn r2, #40
	sub r0, r0, r2
	store tiroTanquePosition, r0

	pop r2
	pop r1
	pop r0
	rts

set_alien0_atirador:
	push r0

	loadn r0, #0
	store atirador_0, r0

	loadn r0, #1
	store atirador_eh_0, r0

	load r0, alien_pos_0
	store atirador_pos_0, r0

	pop r0

	rts

set_alien1_atirador:
	push r0
	push r1

	loadn r0, #1
	store atirador_1, r0

	loadn r0, #1
	store atirador_eh_1, r0

	load r0, alien_pos_0
	loadn r1, #8
	add r0, r0, r1
	store atirador_pos_1, r0

	pop r1
	pop r0

	rts

set_alien2_atirador:
	push r0
	push r1

	loadn r0, #2
	store atirador_2, r0

	loadn r0, #1
	store atirador_eh_2, r0

	load r0, alien_pos_0
	loadn r1, #16
	add r0, r0, r1
	store atirador_pos_2, r0

	pop r1
	pop r0

	rts

set_alien3_atirador:
	push r0
	push r1

	loadn r0, #3
	store atirador_3, r0

	loadn r0, #1
	store atirador_eh_3, r0

	load r0, alien_pos_0
	loadn r1, #24
	add r0, r0, r1
	store atirador_pos_3, r0

	pop r1
	pop r0

	rts

set_alien4_atirador:
	push r0
	push r1

	loadn r0, #4
	store atirador_4, r0

	loadn r0, #1
	store atirador_eh_4, r0

	load r0, alien_pos_0
	loadn r1, #32
	add r0, r0, r1
	store atirador_pos_4, r0

	pop r1
	pop r0

	rts

set_alien5_atirador:
	push r0

	loadn r0, #5
	store atirador_0, r0

	loadn r0, #1
	store atirador_eh_5, r0

	load r0, alien_pos_1
	store atirador_pos_0, r0

	pop r0

	rts

set_alien6_atirador:
	push r0
	push r1

	loadn r0, #6
	store atirador_1, r0

	loadn r0, #1
	store atirador_eh_6, r0

	load r0, alien_pos_1
	loadn r1, #8
	add r0, r0, r1
	store atirador_pos_1, r0

	pop r1
	pop r0

	rts

set_alien7_atirador:
	push r0
	push r1

	loadn r0, #7
	store atirador_2, r0

	loadn r0, #1
	store atirador_eh_7, r0

	load r0, alien_pos_1
	loadn r1, #16
	add r0, r0, r1
	store atirador_pos_2, r0

	pop r1
	pop r0

	rts

set_alien8_atirador:
	push r0
	push r1

	loadn r0, #8
	store atirador_3, r0

	loadn r0, #1
	store atirador_eh_8, r0

	load r0, alien_pos_1
	loadn r1, #24
	add r0, r0, r1
	store atirador_pos_3, r0

	pop r1
	pop r0

	rts

set_alien9_atirador:
	push r0
	push r1

	loadn r0, #9
	store atirador_4, r0

	loadn r0, #1
	store atirador_eh_9, r0

	load r0, alien_pos_1
	loadn r1, #32
	add r0, r0, r1
	store atirador_pos_4, r0

	pop r1
	pop r0

	rts

set_alien10_atirador:
	push r0

	loadn r0, #10
	store atirador_0, r0

	loadn r0, #1
	store atirador_eh_10, r0

	load r0, alien_pos_2
	store atirador_pos_0, r0

	pop r0

	rts

set_alien11_atirador:
	push r0
	push r1

	loadn r0, #11
	store atirador_1, r0

	loadn r0, #1
	store atirador_eh_11, r0

	load r0, alien_pos_2
	loadn r1, #8
	add r0, r0, r1
	store atirador_pos_1, r0

	pop r1
	pop r0

	rts

set_alien12_atirador:
	push r0
	push r1

	loadn r0, #12
	store atirador_2, r0

	loadn r0, #1
	store atirador_eh_12, r0

	load r0, alien_pos_2
	loadn r1, #16
	add r0, r0, r1
	store atirador_pos_2, r0

	pop r1
	pop r0

	rts

set_alien13_atirador:
	push r0
	push r1

	loadn r0, #13
	store atirador_3, r0

	loadn r0, #1
	store atirador_eh_13, r0

	load r0, alien_pos_2
	loadn r1, #24
	add r0, r0, r1
	store atirador_pos_3, r0

	pop r1
	pop r0

	rts

set_alien14_atirador:
	push r0
	push r1

	loadn r0, #14
	store atirador_4, r0

	loadn r0, #1
	store atirador_eh_14, r0

	load r0, alien_pos_2
	loadn r1, #32
	add r0, r0, r1
	store atirador_pos_4, r0

	pop r1
	pop r0

	rts

set_alien15_atirador:
	push r0

	loadn r0, #15
	store atirador_0, r0

	loadn r0, #1
	store atirador_eh_15, r0

	load r0, alien_pos_3
	store atirador_pos_0, r0

	pop r0

	rts

set_alien16_atirador:
	push r0
	push r1

	loadn r0, #16
	store atirador_1, r0

	loadn r0, #1
	store atirador_eh_16, r0

	load r0, alien_pos_3
	loadn r1, #8
	add r0, r0, r1
	store atirador_pos_1, r0

	pop r1
	pop r0

	rts

set_alien17_atirador:
	push r0
	push r1

	loadn r0, #17
	store atirador_2, r0

	loadn r0, #1
	store atirador_eh_17, r0

	load r0, alien_pos_3
	loadn r1, #16
	add r0, r0, r1
	store atirador_pos_2, r0

	pop r1
	pop r0

	rts

set_alien18_atirador:
	push r0
	push r1

	loadn r0, #18
	store atirador_3, r0

	loadn r0, #1
	store atirador_eh_18, r0

	load r0, alien_pos_3
	loadn r1, #24
	add r0, r0, r1
	store atirador_pos_3, r0

	pop r1
	pop r0

	rts

set_alien19_atirador:
	push r0
	push r1

	loadn r0, #19
	store atirador_4, r0

	loadn r0, #1
	store atirador_eh_19, r0

	load r0, alien_pos_3
	loadn r1, #32
	add r0, r0, r1
	store atirador_pos_4, r0

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
	push r7

	loadn r0, #gameover_screen
	call printScreen
	loadn r0, #861
	call printar_score

loopGameover:
	; imprime strings
	loadn r0, #jogar_novamente
	loadn r1, #jogar_novamenteGaps
	loadn r2, #969
	loadn r3, #26
	load r7, branco
	call printChar

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

	call apagarChar

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

		pop r7
		pop r5
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0

		jmp main_game

	nao:
		call limpa_tela

		pop r7
		pop r5
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0

		jmp menu

vitoria:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r7

	loadn r0, #youwin
	call printScreen

loopVitoria:
	; imprime strings
	loadn r0, #jogar_novamente
	loadn r1, #jogar_novamenteGaps
	loadn r2, #969
	loadn r3, #26
	load r7, roxo
	call printChar

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

	call apagarChar

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

	jmp loopVitoria

	sim:
		call limpa_tela

		pop r7
		pop r5
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0

		jmp main_game

	nao:
		call limpa_tela

		pop r7
		pop r5
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0

		jmp menu

menu:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r7

	loadn r0, #start_menu
	call printScreen

loopMenu:
	; imprime string
	loadn r0, #press_start
	loadn r1, #press_startGaps
	loadn r2, #967
	loadn r3, #23
	load r7, branco
	call printChar

	loadn r0, #1000
	call delay

	; verifica se o usuario digitou enter
	load r4, input_1
	loadn r5, #13
	cmp r4, r5
	jeq finalmenu

	call apagarChar

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

	pop r7
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

; r0: Posicao na tela onde a mensagem sera' escrita
; r1: Carrega r1 com o endereco do vetor que contem a mensagem
; r2: Seleciona a COr da Mensagem
Imprimestr:	;	rotina de Impresao de Mensagens:		r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;	r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.	 Obs: a mensagem sera' impressa ate' encontrar "/0"
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

start_menu : var #1200
	;Linha 0
	static start_menu + #0, #1536
	static start_menu + #1, #3967
	static start_menu + #2, #1536
	static start_menu + #3, #3967
	static start_menu + #4, #1536
	static start_menu + #5, #3967
	static start_menu + #6, #1536
	static start_menu + #7, #3967
	static start_menu + #8, #1536
	static start_menu + #9, #3967
	static start_menu + #10, #1536
	static start_menu + #11, #3967
	static start_menu + #12, #1536
	static start_menu + #13, #127
	static start_menu + #14, #1536
	static start_menu + #15, #3967
	static start_menu + #16, #1536
	static start_menu + #17, #127
	static start_menu + #18, #1536
	static start_menu + #19, #127
	static start_menu + #20, #1536
	static start_menu + #21, #3967
	static start_menu + #22, #1536
	static start_menu + #23, #127
	static start_menu + #24, #1536
	static start_menu + #25, #127
	static start_menu + #26, #1536
	static start_menu + #27, #3967
	static start_menu + #28, #1536
	static start_menu + #29, #3967
	static start_menu + #30, #1536
	static start_menu + #31, #3967
	static start_menu + #32, #1536
	static start_menu + #33, #127
	static start_menu + #34, #1536
	static start_menu + #35, #127
	static start_menu + #36, #1536
	static start_menu + #37, #3967
	static start_menu + #38, #1536
	static start_menu + #39, #127

	;Linha 1
	static start_menu + #40, #127
	static start_menu + #41, #127
	static start_menu + #42, #127
	static start_menu + #43, #127
	static start_menu + #44, #127
	static start_menu + #45, #127
	static start_menu + #46, #127
	static start_menu + #47, #127
	static start_menu + #48, #127
	static start_menu + #49, #127
	static start_menu + #50, #127
	static start_menu + #51, #127
	static start_menu + #52, #127
	static start_menu + #53, #127
	static start_menu + #54, #127
	static start_menu + #55, #127
	static start_menu + #56, #127
	static start_menu + #57, #127
	static start_menu + #58, #127
	static start_menu + #59, #127
	static start_menu + #60, #127
	static start_menu + #61, #127
	static start_menu + #62, #127
	static start_menu + #63, #127
	static start_menu + #64, #127
	static start_menu + #65, #127
	static start_menu + #66, #127
	static start_menu + #67, #127
	static start_menu + #68, #127
	static start_menu + #69, #127
	static start_menu + #70, #127
	static start_menu + #71, #127
	static start_menu + #72, #127
	static start_menu + #73, #127
	static start_menu + #74, #127
	static start_menu + #75, #127
	static start_menu + #76, #127
	static start_menu + #77, #3967
	static start_menu + #78, #127
	static start_menu + #79, #127

	;Linha 2
	static start_menu + #80, #127
	static start_menu + #81, #127
	static start_menu + #82, #127
	static start_menu + #83, #127
	static start_menu + #84, #127
	static start_menu + #85, #127
	static start_menu + #86, #127
	static start_menu + #87, #127
	static start_menu + #88, #127
	static start_menu + #89, #127
	static start_menu + #90, #127
	static start_menu + #91, #127
	static start_menu + #92, #127
	static start_menu + #93, #127
	static start_menu + #94, #127
	static start_menu + #95, #127
	static start_menu + #96, #127
	static start_menu + #97, #127
	static start_menu + #98, #127
	static start_menu + #99, #127
	static start_menu + #100, #127
	static start_menu + #101, #127
	static start_menu + #102, #127
	static start_menu + #103, #127
	static start_menu + #104, #127
	static start_menu + #105, #127
	static start_menu + #106, #127
	static start_menu + #107, #127
	static start_menu + #108, #127
	static start_menu + #109, #127
	static start_menu + #110, #127
	static start_menu + #111, #127
	static start_menu + #112, #127
	static start_menu + #113, #127
	static start_menu + #114, #127
	static start_menu + #115, #127
	static start_menu + #116, #127
	static start_menu + #117, #127
	static start_menu + #118, #127
	static start_menu + #119, #127

	;Linha 3
	static start_menu + #120, #127
	static start_menu + #121, #127
	static start_menu + #122, #127
	static start_menu + #123, #1024
	static start_menu + #124, #1024
	static start_menu + #125, #127
	static start_menu + #126, #127
	static start_menu + #127, #1151
	static start_menu + #128, #1024
	static start_menu + #129, #1024
	static start_menu + #130, #127
	static start_menu + #131, #3967
	static start_menu + #132, #1024
	static start_menu + #133, #1024
	static start_menu + #134, #127
	static start_menu + #135, #1024
	static start_menu + #136, #1024
	static start_menu + #137, #1024
	static start_menu + #138, #127
	static start_menu + #139, #127
	static start_menu + #140, #1024
	static start_menu + #141, #127
	static start_menu + #142, #1024
	static start_menu + #143, #127
	static start_menu + #144, #127
	static start_menu + #145, #1024
	static start_menu + #146, #1024
	static start_menu + #147, #1024
	static start_menu + #148, #127
	static start_menu + #149, #127
	static start_menu + #150, #1024
	static start_menu + #151, #127
	static start_menu + #152, #127
	static start_menu + #153, #1024
	static start_menu + #154, #127
	static start_menu + #155, #127
	static start_menu + #156, #127
	static start_menu + #157, #1024
	static start_menu + #158, #127
	static start_menu + #159, #127

	;Linha 4
	static start_menu + #160, #127
	static start_menu + #161, #127
	static start_menu + #162, #1024
	static start_menu + #163, #3967
	static start_menu + #164, #127
	static start_menu + #165, #1024
	static start_menu + #166, #127
	static start_menu + #167, #1024
	static start_menu + #168, #127
	static start_menu + #169, #127
	static start_menu + #170, #127
	static start_menu + #171, #1024
	static start_menu + #172, #127
	static start_menu + #173, #127
	static start_menu + #174, #127
	static start_menu + #175, #1024
	static start_menu + #176, #127
	static start_menu + #177, #127
	static start_menu + #178, #127
	static start_menu + #179, #1024
	static start_menu + #180, #127
	static start_menu + #181, #1024
	static start_menu + #182, #127
	static start_menu + #183, #1024
	static start_menu + #184, #127
	static start_menu + #185, #1024
	static start_menu + #186, #127
	static start_menu + #187, #127
	static start_menu + #188, #1024
	static start_menu + #189, #127
	static start_menu + #190, #1024
	static start_menu + #191, #3967
	static start_menu + #192, #127
	static start_menu + #193, #1024
	static start_menu + #194, #127
	static start_menu + #195, #127
	static start_menu + #196, #127
	static start_menu + #197, #1024
	static start_menu + #198, #127
	static start_menu + #199, #127

	;Linha 5
	static start_menu + #200, #127
	static start_menu + #201, #127
	static start_menu + #202, #1024
	static start_menu + #203, #127
	static start_menu + #204, #127
	static start_menu + #205, #1024
	static start_menu + #206, #127
	static start_menu + #207, #1024
	static start_menu + #208, #127
	static start_menu + #209, #127
	static start_menu + #210, #127
	static start_menu + #211, #1024
	static start_menu + #212, #127
	static start_menu + #213, #127
	static start_menu + #214, #127
	static start_menu + #215, #1024
	static start_menu + #216, #127
	static start_menu + #217, #127
	static start_menu + #218, #127
	static start_menu + #219, #1024
	static start_menu + #220, #127
	static start_menu + #221, #1024
	static start_menu + #222, #127
	static start_menu + #223, #1024
	static start_menu + #224, #127
	static start_menu + #225, #1024
	static start_menu + #226, #127
	static start_menu + #227, #127
	static start_menu + #228, #1024
	static start_menu + #229, #127
	static start_menu + #230, #1024
	static start_menu + #231, #3967
	static start_menu + #232, #127
	static start_menu + #233, #127
	static start_menu + #234, #1024
	static start_menu + #235, #127
	static start_menu + #236, #1024
	static start_menu + #237, #127
	static start_menu + #238, #127
	static start_menu + #239, #127

	;Linha 6
	static start_menu + #240, #127
	static start_menu + #241, #127
	static start_menu + #242, #1024
	static start_menu + #243, #127
	static start_menu + #244, #127
	static start_menu + #245, #1024
	static start_menu + #246, #127
	static start_menu + #247, #127
	static start_menu + #248, #1024
	static start_menu + #249, #127
	static start_menu + #250, #127
	static start_menu + #251, #127
	static start_menu + #252, #1024
	static start_menu + #253, #127
	static start_menu + #254, #127
	static start_menu + #255, #1024
	static start_menu + #256, #1024
	static start_menu + #257, #1024
	static start_menu + #258, #127
	static start_menu + #259, #1024
	static start_menu + #260, #127
	static start_menu + #261, #1024
	static start_menu + #262, #127
	static start_menu + #263, #1024
	static start_menu + #264, #127
	static start_menu + #265, #1024
	static start_menu + #266, #127
	static start_menu + #267, #1024
	static start_menu + #268, #127
	static start_menu + #269, #127
	static start_menu + #270, #1024
	static start_menu + #271, #3967
	static start_menu + #272, #127
	static start_menu + #273, #127
	static start_menu + #274, #127
	static start_menu + #275, #1024
	static start_menu + #276, #127
	static start_menu + #277, #127
	static start_menu + #278, #127
	static start_menu + #279, #127

	;Linha 7
	static start_menu + #280, #127
	static start_menu + #281, #127
	static start_menu + #282, #1024
	static start_menu + #283, #1024
	static start_menu + #284, #1024
	static start_menu + #285, #1024
	static start_menu + #286, #127
	static start_menu + #287, #127
	static start_menu + #288, #127
	static start_menu + #289, #1024
	static start_menu + #290, #127
	static start_menu + #291, #127
	static start_menu + #292, #127
	static start_menu + #293, #1024
	static start_menu + #294, #127
	static start_menu + #295, #1024
	static start_menu + #296, #127
	static start_menu + #297, #127
	static start_menu + #298, #127
	static start_menu + #299, #1024
	static start_menu + #300, #127
	static start_menu + #301, #1024
	static start_menu + #302, #127
	static start_menu + #303, #1024
	static start_menu + #304, #127
	static start_menu + #305, #1024
	static start_menu + #306, #127
	static start_menu + #307, #127
	static start_menu + #308, #1024
	static start_menu + #309, #127
	static start_menu + #310, #1024
	static start_menu + #311, #127
	static start_menu + #312, #127
	static start_menu + #313, #127
	static start_menu + #314, #127
	static start_menu + #315, #1024
	static start_menu + #316, #127
	static start_menu + #317, #127
	static start_menu + #318, #127
	static start_menu + #319, #127

	;Linha 8
	static start_menu + #320, #127
	static start_menu + #321, #127
	static start_menu + #322, #1024
	static start_menu + #323, #127
	static start_menu + #324, #127
	static start_menu + #325, #1024
	static start_menu + #326, #127
	static start_menu + #327, #127
	static start_menu + #328, #127
	static start_menu + #329, #1024
	static start_menu + #330, #127
	static start_menu + #331, #127
	static start_menu + #332, #127
	static start_menu + #333, #1024
	static start_menu + #334, #127
	static start_menu + #335, #1024
	static start_menu + #336, #127
	static start_menu + #337, #127
	static start_menu + #338, #127
	static start_menu + #339, #1024
	static start_menu + #340, #127
	static start_menu + #341, #127
	static start_menu + #342, #127
	static start_menu + #343, #1024
	static start_menu + #344, #127
	static start_menu + #345, #1024
	static start_menu + #346, #127
	static start_menu + #347, #127
	static start_menu + #348, #1024
	static start_menu + #349, #127
	static start_menu + #350, #1024
	static start_menu + #351, #127
	static start_menu + #352, #127
	static start_menu + #353, #127
	static start_menu + #354, #127
	static start_menu + #355, #1024
	static start_menu + #356, #127
	static start_menu + #357, #127
	static start_menu + #358, #127
	static start_menu + #359, #127

	;Linha 9
	static start_menu + #360, #127
	static start_menu + #361, #127
	static start_menu + #362, #1024
	static start_menu + #363, #127
	static start_menu + #364, #127
	static start_menu + #365, #1024
	static start_menu + #366, #127
	static start_menu + #367, #1024
	static start_menu + #368, #1024
	static start_menu + #369, #127
	static start_menu + #370, #127
	static start_menu + #371, #1024
	static start_menu + #372, #1024
	static start_menu + #373, #127
	static start_menu + #374, #127
	static start_menu + #375, #1024
	static start_menu + #376, #1024
	static start_menu + #377, #1024
	static start_menu + #378, #127
	static start_menu + #379, #1024
	static start_menu + #380, #127
	static start_menu + #381, #127
	static start_menu + #382, #127
	static start_menu + #383, #1024
	static start_menu + #384, #127
	static start_menu + #385, #1024
	static start_menu + #386, #1024
	static start_menu + #387, #1024
	static start_menu + #388, #127
	static start_menu + #389, #127
	static start_menu + #390, #1024
	static start_menu + #391, #1024
	static start_menu + #392, #1024
	static start_menu + #393, #127
	static start_menu + #394, #127
	static start_menu + #395, #1024
	static start_menu + #396, #127
	static start_menu + #397, #127
	static start_menu + #398, #127
	static start_menu + #399, #127

	;Linha 10
	static start_menu + #400, #127
	static start_menu + #401, #127
	static start_menu + #402, #127
	static start_menu + #403, #127
	static start_menu + #404, #127
	static start_menu + #405, #127
	static start_menu + #406, #127
	static start_menu + #407, #127
	static start_menu + #408, #127
	static start_menu + #409, #127
	static start_menu + #410, #127
	static start_menu + #411, #127
	static start_menu + #412, #127
	static start_menu + #413, #127
	static start_menu + #414, #127
	static start_menu + #415, #127
	static start_menu + #416, #127
	static start_menu + #417, #127
	static start_menu + #418, #127
	static start_menu + #419, #127
	static start_menu + #420, #127
	static start_menu + #421, #127
	static start_menu + #422, #127
	static start_menu + #423, #127
	static start_menu + #424, #127
	static start_menu + #425, #127
	static start_menu + #426, #127
	static start_menu + #427, #127
	static start_menu + #428, #127
	static start_menu + #429, #127
	static start_menu + #430, #127
	static start_menu + #431, #127
	static start_menu + #432, #127
	static start_menu + #433, #127
	static start_menu + #434, #127
	static start_menu + #435, #127
	static start_menu + #436, #127
	static start_menu + #437, #127
	static start_menu + #438, #127
	static start_menu + #439, #127

	;Linha 11
	static start_menu + #440, #127
	static start_menu + #441, #127
	static start_menu + #442, #127
	static start_menu + #443, #127
	static start_menu + #444, #127
	static start_menu + #445, #127
	static start_menu + #446, #127
	static start_menu + #447, #127
	static start_menu + #448, #127
	static start_menu + #449, #127
	static start_menu + #450, #127
	static start_menu + #451, #127
	static start_menu + #452, #127
	static start_menu + #453, #127
	static start_menu + #454, #127
	static start_menu + #455, #127
	static start_menu + #456, #127
	static start_menu + #457, #127
	static start_menu + #458, #127
	static start_menu + #459, #127
	static start_menu + #460, #127
	static start_menu + #461, #127
	static start_menu + #462, #127
	static start_menu + #463, #127
	static start_menu + #464, #127
	static start_menu + #465, #127
	static start_menu + #466, #127
	static start_menu + #467, #127
	static start_menu + #468, #127
	static start_menu + #469, #127
	static start_menu + #470, #127
	static start_menu + #471, #127
	static start_menu + #472, #127
	static start_menu + #473, #127
	static start_menu + #474, #127
	static start_menu + #475, #127
	static start_menu + #476, #127
	static start_menu + #477, #127
	static start_menu + #478, #127
	static start_menu + #479, #127

	;Linha 12
	static start_menu + #480, #127
	static start_menu + #481, #1024
	static start_menu + #482, #1024
	static start_menu + #483, #1024
	static start_menu + #484, #127
	static start_menu + #485, #127
	static start_menu + #486, #1024
	static start_menu + #487, #127
	static start_menu + #488, #127
	static start_menu + #489, #1024
	static start_menu + #490, #127
	static start_menu + #491, #1024
	static start_menu + #492, #127
	static start_menu + #493, #127
	static start_menu + #494, #127
	static start_menu + #495, #1024
	static start_menu + #496, #127
	static start_menu + #497, #127
	static start_menu + #498, #1024
	static start_menu + #499, #1024
	static start_menu + #500, #127
	static start_menu + #501, #127
	static start_menu + #502, #1024
	static start_menu + #503, #1024
	static start_menu + #504, #1024
	static start_menu + #505, #127
	static start_menu + #506, #127
	static start_menu + #507, #1024
	static start_menu + #508, #1024
	static start_menu + #509, #1024
	static start_menu + #510, #127
	static start_menu + #511, #1024
	static start_menu + #512, #1024
	static start_menu + #513, #1024
	static start_menu + #514, #127
	static start_menu + #515, #127
	static start_menu + #516, #127
	static start_menu + #517, #1024
	static start_menu + #518, #1024
	static start_menu + #519, #127

	;Linha 13
	static start_menu + #520, #127
	static start_menu + #521, #127
	static start_menu + #522, #1024
	static start_menu + #523, #127
	static start_menu + #524, #127
	static start_menu + #525, #1024
	static start_menu + #526, #127
	static start_menu + #527, #1024
	static start_menu + #528, #127
	static start_menu + #529, #1024
	static start_menu + #530, #127
	static start_menu + #531, #1024
	static start_menu + #532, #127
	static start_menu + #533, #127
	static start_menu + #534, #127
	static start_menu + #535, #1024
	static start_menu + #536, #127
	static start_menu + #537, #1024
	static start_menu + #538, #127
	static start_menu + #539, #127
	static start_menu + #540, #1024
	static start_menu + #541, #3967
	static start_menu + #542, #1024
	static start_menu + #543, #127
	static start_menu + #544, #127
	static start_menu + #545, #1024
	static start_menu + #546, #127
	static start_menu + #547, #1024
	static start_menu + #548, #127
	static start_menu + #549, #127
	static start_menu + #550, #127
	static start_menu + #551, #1024
	static start_menu + #552, #127
	static start_menu + #553, #127
	static start_menu + #554, #1024
	static start_menu + #555, #127
	static start_menu + #556, #1024
	static start_menu + #557, #127
	static start_menu + #558, #127
	static start_menu + #559, #127

	;Linha 14
	static start_menu + #560, #127
	static start_menu + #561, #127
	static start_menu + #562, #1024
	static start_menu + #563, #127
	static start_menu + #564, #127
	static start_menu + #565, #1024
	static start_menu + #566, #127
	static start_menu + #567, #1024
	static start_menu + #568, #127
	static start_menu + #569, #1024
	static start_menu + #570, #127
	static start_menu + #571, #1024
	static start_menu + #572, #127
	static start_menu + #573, #127
	static start_menu + #574, #127
	static start_menu + #575, #1024
	static start_menu + #576, #127
	static start_menu + #577, #1024
	static start_menu + #578, #127
	static start_menu + #579, #127
	static start_menu + #580, #1024
	static start_menu + #581, #3967
	static start_menu + #582, #1024
	static start_menu + #583, #3967
	static start_menu + #584, #127
	static start_menu + #585, #1024
	static start_menu + #586, #127
	static start_menu + #587, #1024
	static start_menu + #588, #127
	static start_menu + #589, #127
	static start_menu + #590, #127
	static start_menu + #591, #1024
	static start_menu + #592, #127
	static start_menu + #593, #127
	static start_menu + #594, #1024
	static start_menu + #595, #127
	static start_menu + #596, #1024
	static start_menu + #597, #127
	static start_menu + #598, #127
	static start_menu + #599, #127

	;Linha 15
	static start_menu + #600, #127
	static start_menu + #601, #127
	static start_menu + #602, #1024
	static start_menu + #603, #127
	static start_menu + #604, #127
	static start_menu + #605, #1024
	static start_menu + #606, #127
	static start_menu + #607, #1024
	static start_menu + #608, #3967
	static start_menu + #609, #1024
	static start_menu + #610, #127
	static start_menu + #611, #127
	static start_menu + #612, #1024
	static start_menu + #613, #127
	static start_menu + #614, #1024
	static start_menu + #615, #127
	static start_menu + #616, #127
	static start_menu + #617, #1024
	static start_menu + #618, #3967
	static start_menu + #619, #127
	static start_menu + #620, #1024
	static start_menu + #621, #3967
	static start_menu + #622, #1024
	static start_menu + #623, #3967
	static start_menu + #624, #127
	static start_menu + #625, #1024
	static start_menu + #626, #127
	static start_menu + #627, #1024
	static start_menu + #628, #1024
	static start_menu + #629, #1024
	static start_menu + #630, #127
	static start_menu + #631, #1024
	static start_menu + #632, #127
	static start_menu + #633, #1024
	static start_menu + #634, #127
	static start_menu + #635, #127
	static start_menu + #636, #127
	static start_menu + #637, #1024
	static start_menu + #638, #127
	static start_menu + #639, #127

	;Linha 16
	static start_menu + #640, #127
	static start_menu + #641, #127
	static start_menu + #642, #1024
	static start_menu + #643, #127
	static start_menu + #644, #127
	static start_menu + #645, #1024
	static start_menu + #646, #127
	static start_menu + #647, #1024
	static start_menu + #648, #127
	static start_menu + #649, #1024
	static start_menu + #650, #127
	static start_menu + #651, #127
	static start_menu + #652, #1024
	static start_menu + #653, #127
	static start_menu + #654, #1024
	static start_menu + #655, #127
	static start_menu + #656, #127
	static start_menu + #657, #1024
	static start_menu + #658, #1024
	static start_menu + #659, #1024
	static start_menu + #660, #1024
	static start_menu + #661, #127
	static start_menu + #662, #1024
	static start_menu + #663, #3967
	static start_menu + #664, #127
	static start_menu + #665, #1024
	static start_menu + #666, #127
	static start_menu + #667, #1024
	static start_menu + #668, #127
	static start_menu + #669, #127
	static start_menu + #670, #127
	static start_menu + #671, #1024
	static start_menu + #672, #127
	static start_menu + #673, #127
	static start_menu + #674, #1024
	static start_menu + #675, #127
	static start_menu + #676, #127
	static start_menu + #677, #127
	static start_menu + #678, #1024
	static start_menu + #679, #127

	;Linha 17
	static start_menu + #680, #127
	static start_menu + #681, #127
	static start_menu + #682, #1024
	static start_menu + #683, #127
	static start_menu + #684, #127
	static start_menu + #685, #1024
	static start_menu + #686, #127
	static start_menu + #687, #1024
	static start_menu + #688, #127
	static start_menu + #689, #1024
	static start_menu + #690, #127
	static start_menu + #691, #127
	static start_menu + #692, #1024
	static start_menu + #693, #127
	static start_menu + #694, #1024
	static start_menu + #695, #127
	static start_menu + #696, #127
	static start_menu + #697, #1024
	static start_menu + #698, #127
	static start_menu + #699, #127
	static start_menu + #700, #1024
	static start_menu + #701, #127
	static start_menu + #702, #1024
	static start_menu + #703, #127
	static start_menu + #704, #127
	static start_menu + #705, #1024
	static start_menu + #706, #127
	static start_menu + #707, #1024
	static start_menu + #708, #127
	static start_menu + #709, #127
	static start_menu + #710, #127
	static start_menu + #711, #1024
	static start_menu + #712, #127
	static start_menu + #713, #127
	static start_menu + #714, #1024
	static start_menu + #715, #127
	static start_menu + #716, #127
	static start_menu + #717, #127
	static start_menu + #718, #1024
	static start_menu + #719, #127

	;Linha 18
	static start_menu + #720, #127
	static start_menu + #721, #1024
	static start_menu + #722, #1024
	static start_menu + #723, #1024
	static start_menu + #724, #127
	static start_menu + #725, #1024
	static start_menu + #726, #127
	static start_menu + #727, #127
	static start_menu + #728, #1024
	static start_menu + #729, #127
	static start_menu + #730, #127
	static start_menu + #731, #127
	static start_menu + #732, #127
	static start_menu + #733, #1024
	static start_menu + #734, #127
	static start_menu + #735, #127
	static start_menu + #736, #127
	static start_menu + #737, #1024
	static start_menu + #738, #127
	static start_menu + #739, #127
	static start_menu + #740, #1024
	static start_menu + #741, #127
	static start_menu + #742, #1024
	static start_menu + #743, #1024
	static start_menu + #744, #1024
	static start_menu + #745, #127
	static start_menu + #746, #127
	static start_menu + #747, #1024
	static start_menu + #748, #1024
	static start_menu + #749, #1024
	static start_menu + #750, #127
	static start_menu + #751, #1024
	static start_menu + #752, #3967
	static start_menu + #753, #127
	static start_menu + #754, #1024
	static start_menu + #755, #127
	static start_menu + #756, #1024
	static start_menu + #757, #1024
	static start_menu + #758, #127
	static start_menu + #759, #127

	;Linha 19
	static start_menu + #760, #127
	static start_menu + #761, #127
	static start_menu + #762, #127
	static start_menu + #763, #127
	static start_menu + #764, #127
	static start_menu + #765, #127
	static start_menu + #766, #127
	static start_menu + #767, #127
	static start_menu + #768, #127
	static start_menu + #769, #127
	static start_menu + #770, #127
	static start_menu + #771, #127
	static start_menu + #772, #127
	static start_menu + #773, #127
	static start_menu + #774, #127
	static start_menu + #775, #127
	static start_menu + #776, #127
	static start_menu + #777, #127
	static start_menu + #778, #127
	static start_menu + #779, #127
	static start_menu + #780, #127
	static start_menu + #781, #127
	static start_menu + #782, #127
	static start_menu + #783, #127
	static start_menu + #784, #127
	static start_menu + #785, #127
	static start_menu + #786, #127
	static start_menu + #787, #127
	static start_menu + #788, #127
	static start_menu + #789, #127
	static start_menu + #790, #127
	static start_menu + #791, #127
	static start_menu + #792, #127
	static start_menu + #793, #127
	static start_menu + #794, #127
	static start_menu + #795, #127
	static start_menu + #796, #127
	static start_menu + #797, #127
	static start_menu + #798, #127
	static start_menu + #799, #127

	;Linha 20
	static start_menu + #800, #127
	static start_menu + #801, #127
	static start_menu + #802, #127
	static start_menu + #803, #127
	static start_menu + #804, #127
	static start_menu + #805, #127
	static start_menu + #806, #127
	static start_menu + #807, #127
	static start_menu + #808, #127
	static start_menu + #809, #127
	static start_menu + #810, #127
	static start_menu + #811, #127
	static start_menu + #812, #127
	static start_menu + #813, #127
	static start_menu + #814, #127
	static start_menu + #815, #127
	static start_menu + #816, #127
	static start_menu + #817, #127
	static start_menu + #818, #127
	static start_menu + #819, #127
	static start_menu + #820, #127
	static start_menu + #821, #127
	static start_menu + #822, #127
	static start_menu + #823, #127
	static start_menu + #824, #127
	static start_menu + #825, #127
	static start_menu + #826, #127
	static start_menu + #827, #127
	static start_menu + #828, #127
	static start_menu + #829, #127
	static start_menu + #830, #127
	static start_menu + #831, #127
	static start_menu + #832, #127
	static start_menu + #833, #127
	static start_menu + #834, #127
	static start_menu + #835, #127
	static start_menu + #836, #127
	static start_menu + #837, #127
	static start_menu + #838, #127
	static start_menu + #839, #127

	;Linha 21
	static start_menu + #840, #127
	static start_menu + #841, #127
	static start_menu + #842, #127
	static start_menu + #843, #127
	static start_menu + #844, #127
	static start_menu + #845, #127
	static start_menu + #846, #127
	static start_menu + #847, #127
	static start_menu + #848, #127
	static start_menu + #849, #127
	static start_menu + #850, #127
	static start_menu + #851, #127
	static start_menu + #852, #127
	static start_menu + #853, #127
	static start_menu + #854, #127
	static start_menu + #855, #127
	static start_menu + #856, #127
	static start_menu + #857, #127
	static start_menu + #858, #127
	static start_menu + #859, #127
	static start_menu + #860, #127
	static start_menu + #861, #127
	static start_menu + #862, #127
	static start_menu + #863, #127
	static start_menu + #864, #127
	static start_menu + #865, #127
	static start_menu + #866, #127
	static start_menu + #867, #127
	static start_menu + #868, #127
	static start_menu + #869, #127
	static start_menu + #870, #127
	static start_menu + #871, #127
	static start_menu + #872, #127
	static start_menu + #873, #127
	static start_menu + #874, #127
	static start_menu + #875, #127
	static start_menu + #876, #127
	static start_menu + #877, #127
	static start_menu + #878, #127
	static start_menu + #879, #127

	;Linha 22
	static start_menu + #880, #127
	static start_menu + #881, #127
	static start_menu + #882, #127
	static start_menu + #883, #127
	static start_menu + #884, #127
	static start_menu + #885, #127
	static start_menu + #886, #127
	static start_menu + #887, #127
	static start_menu + #888, #127
	static start_menu + #889, #127
	static start_menu + #890, #127
	static start_menu + #891, #127
	static start_menu + #892, #127
	static start_menu + #893, #127
	static start_menu + #894, #127
	static start_menu + #895, #127
	static start_menu + #896, #127
	static start_menu + #897, #127
	static start_menu + #898, #127
	static start_menu + #899, #127
	static start_menu + #900, #127
	static start_menu + #901, #127
	static start_menu + #902, #127
	static start_menu + #903, #127
	static start_menu + #904, #127
	static start_menu + #905, #127
	static start_menu + #906, #127
	static start_menu + #907, #127
	static start_menu + #908, #127
	static start_menu + #909, #127
	static start_menu + #910, #127
	static start_menu + #911, #127
	static start_menu + #912, #127
	static start_menu + #913, #127
	static start_menu + #914, #127
	static start_menu + #915, #127
	static start_menu + #916, #127
	static start_menu + #917, #127
	static start_menu + #918, #127
	static start_menu + #919, #127

	;Linha 23
	static start_menu + #920, #127
	static start_menu + #921, #3967
	static start_menu + #922, #3967
	static start_menu + #923, #97
	static start_menu + #924, #98
	static start_menu + #925, #99
	static start_menu + #926, #127
	static start_menu + #927, #127
	static start_menu + #928, #127
	static start_menu + #929, #127
	static start_menu + #930, #127
	static start_menu + #931, #127
	static start_menu + #932, #127
	static start_menu + #933, #127
	static start_menu + #934, #127
	static start_menu + #935, #127
	static start_menu + #936, #127
	static start_menu + #937, #127
	static start_menu + #938, #127
	static start_menu + #939, #127
	static start_menu + #940, #127
	static start_menu + #941, #127
	static start_menu + #942, #127
	static start_menu + #943, #127
	static start_menu + #944, #127
	static start_menu + #945, #127
	static start_menu + #946, #127
	static start_menu + #947, #127
	static start_menu + #948, #127
	static start_menu + #949, #127
	static start_menu + #950, #127
	static start_menu + #951, #127
	static start_menu + #952, #127
	static start_menu + #953, #127
	static start_menu + #954, #97
	static start_menu + #955, #98
	static start_menu + #956, #99
	static start_menu + #957, #127
	static start_menu + #958, #127
	static start_menu + #959, #127

	;Linha 24
	static start_menu + #960, #127
	static start_menu + #961, #3967
	static start_menu + #962, #3967
	static start_menu + #963, #100
	static start_menu + #964, #101
	static start_menu + #965, #102
	static start_menu + #966, #3967
	static start_menu + #967, #3967
	static start_menu + #968, #3967
	static start_menu + #969, #3967
	static start_menu + #970, #3967
	static start_menu + #971, #3967
	static start_menu + #972, #3967
	static start_menu + #973, #3967
	static start_menu + #974, #3967
	static start_menu + #975, #3967
	static start_menu + #976, #3967
	static start_menu + #977, #3967
	static start_menu + #978, #3967
	static start_menu + #979, #3967
	static start_menu + #980, #3967
	static start_menu + #981, #3967
	static start_menu + #982, #3967
	static start_menu + #983, #3967
	static start_menu + #984, #3967
	static start_menu + #985, #3967
	static start_menu + #986, #3967
	static start_menu + #987, #3967
	static start_menu + #988, #3967
	static start_menu + #989, #3967
	static start_menu + #990, #3967
	static start_menu + #991, #3967
	static start_menu + #992, #3967
	static start_menu + #993, #127
	static start_menu + #994, #100
	static start_menu + #995, #101
	static start_menu + #996, #102
	static start_menu + #997, #127
	static start_menu + #998, #127
	static start_menu + #999, #127

	;Linha 25
	static start_menu + #1000, #127
	static start_menu + #1001, #3967
	static start_menu + #1002, #3967
	static start_menu + #1003, #3967
	static start_menu + #1004, #127
	static start_menu + #1005, #127
	static start_menu + #1006, #127
	static start_menu + #1007, #127
	static start_menu + #1008, #127
	static start_menu + #1009, #127
	static start_menu + #1010, #127
	static start_menu + #1011, #127
	static start_menu + #1012, #127
	static start_menu + #1013, #127
	static start_menu + #1014, #127
	static start_menu + #1015, #127
	static start_menu + #1016, #127
	static start_menu + #1017, #127
	static start_menu + #1018, #127
	static start_menu + #1019, #127
	static start_menu + #1020, #127
	static start_menu + #1021, #127
	static start_menu + #1022, #127
	static start_menu + #1023, #127
	static start_menu + #1024, #127
	static start_menu + #1025, #127
	static start_menu + #1026, #127
	static start_menu + #1027, #127
	static start_menu + #1028, #127
	static start_menu + #1029, #127
	static start_menu + #1030, #127
	static start_menu + #1031, #127
	static start_menu + #1032, #127
	static start_menu + #1033, #127
	static start_menu + #1034, #127
	static start_menu + #1035, #127
	static start_menu + #1036, #127
	static start_menu + #1037, #127
	static start_menu + #1038, #127
	static start_menu + #1039, #127

	;Linha 26
	static start_menu + #1040, #127
	static start_menu + #1041, #127
	static start_menu + #1042, #127
	static start_menu + #1043, #127
	static start_menu + #1044, #127
	static start_menu + #1045, #127
	static start_menu + #1046, #127
	static start_menu + #1047, #127
	static start_menu + #1048, #127
	static start_menu + #1049, #127
	static start_menu + #1050, #127
	static start_menu + #1051, #127
	static start_menu + #1052, #127
	static start_menu + #1053, #127
	static start_menu + #1054, #127
	static start_menu + #1055, #127
	static start_menu + #1056, #127
	static start_menu + #1057, #127
	static start_menu + #1058, #127
	static start_menu + #1059, #127
	static start_menu + #1060, #127
	static start_menu + #1061, #127
	static start_menu + #1062, #127
	static start_menu + #1063, #127
	static start_menu + #1064, #127
	static start_menu + #1065, #127
	static start_menu + #1066, #127
	static start_menu + #1067, #127
	static start_menu + #1068, #127
	static start_menu + #1069, #127
	static start_menu + #1070, #127
	static start_menu + #1071, #127
	static start_menu + #1072, #127
	static start_menu + #1073, #127
	static start_menu + #1074, #127
	static start_menu + #1075, #127
	static start_menu + #1076, #127
	static start_menu + #1077, #127
	static start_menu + #1078, #127
	static start_menu + #1079, #127

	;Linha 27
	static start_menu + #1080, #127
	static start_menu + #1081, #127
	static start_menu + #1082, #127
	static start_menu + #1083, #127
	static start_menu + #1084, #127
	static start_menu + #1085, #127
	static start_menu + #1086, #127
	static start_menu + #1087, #127
	static start_menu + #1088, #127
	static start_menu + #1089, #127
	static start_menu + #1090, #127
	static start_menu + #1091, #127
	static start_menu + #1092, #127
	static start_menu + #1093, #127
	static start_menu + #1094, #127
	static start_menu + #1095, #127
	static start_menu + #1096, #127
	static start_menu + #1097, #127
	static start_menu + #1098, #127
	static start_menu + #1099, #127
	static start_menu + #1100, #127
	static start_menu + #1101, #127
	static start_menu + #1102, #127
	static start_menu + #1103, #127
	static start_menu + #1104, #127
	static start_menu + #1105, #127
	static start_menu + #1106, #127
	static start_menu + #1107, #127
	static start_menu + #1108, #127
	static start_menu + #1109, #127
	static start_menu + #1110, #127
	static start_menu + #1111, #127
	static start_menu + #1112, #127
	static start_menu + #1113, #127
	static start_menu + #1114, #127
	static start_menu + #1115, #127
	static start_menu + #1116, #127
	static start_menu + #1117, #127
	static start_menu + #1118, #127
	static start_menu + #1119, #127

	;Linha 28
	static start_menu + #1120, #127
	static start_menu + #1121, #127
	static start_menu + #1122, #127
	static start_menu + #1123, #127
	static start_menu + #1124, #127
	static start_menu + #1125, #127
	static start_menu + #1126, #127
	static start_menu + #1127, #127
	static start_menu + #1128, #127
	static start_menu + #1129, #127
	static start_menu + #1130, #127
	static start_menu + #1131, #127
	static start_menu + #1132, #127
	static start_menu + #1133, #127
	static start_menu + #1134, #127
	static start_menu + #1135, #127
	static start_menu + #1136, #127
	static start_menu + #1137, #127
	static start_menu + #1138, #127
	static start_menu + #1139, #127
	static start_menu + #1140, #127
	static start_menu + #1141, #127
	static start_menu + #1142, #127
	static start_menu + #1143, #127
	static start_menu + #1144, #127
	static start_menu + #1145, #127
	static start_menu + #1146, #127
	static start_menu + #1147, #127
	static start_menu + #1148, #127
	static start_menu + #1149, #127
	static start_menu + #1150, #127
	static start_menu + #1151, #127
	static start_menu + #1152, #127
	static start_menu + #1153, #127
	static start_menu + #1154, #127
	static start_menu + #1155, #127
	static start_menu + #1156, #127
	static start_menu + #1157, #127
	static start_menu + #1158, #127
	static start_menu + #1159, #127

	;Linha 29
	static start_menu + #1160, #127
	static start_menu + #1161, #1536
	static start_menu + #1162, #127
	static start_menu + #1163, #1536
	static start_menu + #1164, #127
	static start_menu + #1165, #1536
	static start_menu + #1166, #3967
	static start_menu + #1167, #1536
	static start_menu + #1168, #3967
	static start_menu + #1169, #1536
	static start_menu + #1170, #127
	static start_menu + #1171, #1536
	static start_menu + #1172, #127
	static start_menu + #1173, #1536
	static start_menu + #1174, #3967
	static start_menu + #1175, #1536
	static start_menu + #1176, #127
	static start_menu + #1177, #1536
	static start_menu + #1178, #127
	static start_menu + #1179, #1536
	static start_menu + #1180, #3967
	static start_menu + #1181, #1536
	static start_menu + #1182, #127
	static start_menu + #1183, #1536
	static start_menu + #1184, #127
	static start_menu + #1185, #1536
	static start_menu + #1186, #3967
	static start_menu + #1187, #1536
	static start_menu + #1188, #127
	static start_menu + #1189, #1536
	static start_menu + #1190, #127
	static start_menu + #1191, #1536
	static start_menu + #1192, #127
	static start_menu + #1193, #1536
	static start_menu + #1194, #3967
	static start_menu + #1195, #1536
	static start_menu + #1196, #127
	static start_menu + #1197, #1536
	static start_menu + #1198, #127
	static start_menu + #1199, #1536

press_start : var #23
	static press_start + #0, #2881 ;		 A
	static press_start + #1, #2896 ;		 P
	static press_start + #2, #2885 ;		 E
	static press_start + #3, #2898 ;		 R
	static press_start + #4, #2900 ;		 T
	static press_start + #5, #2885 ;		 E
	;2		espacos para o proximo caractere
	static press_start + #6, #2885 ;		 E
	static press_start + #7, #2894 ;		 N
	static press_start + #8, #2900 ;		 T
	static press_start + #9, #2885 ;		 E
	static press_start + #10, #2898 ;		 R
	;2		espacos para o proximo caractere
	static press_start + #11, #2896 ;		 P
	static press_start + #12, #2881 ;		 A
	static press_start + #13, #2898 ;		 R
	static press_start + #14, #2881 ;		 A
	;2		espacos para o proximo caractere
	static press_start + #15, #2889 ;		 I
	static press_start + #16, #2894 ;		 N
	static press_start + #17, #2889 ;		 I
	static press_start + #18, #2883 ;		 C
	static press_start + #19, #2889 ;		 I
	static press_start + #20, #2881 ;		 A
	static press_start + #21, #2898 ;		 R
	static press_start + #22, #2849 ;		 I

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

gameover_screen : var #1200
	;Linha 0
	static gameover_screen + #0, #0
	static gameover_screen + #1, #3967
	static gameover_screen + #2, #0
	static gameover_screen + #3, #3967
	static gameover_screen + #4, #0
	static gameover_screen + #5, #3967
	static gameover_screen + #6, #0
	static gameover_screen + #7, #3967
	static gameover_screen + #8, #0
	static gameover_screen + #9, #3967
	static gameover_screen + #10, #0
	static gameover_screen + #11, #3967
	static gameover_screen + #12, #0
	static gameover_screen + #13, #3967
	static gameover_screen + #14, #0
	static gameover_screen + #15, #3967
	static gameover_screen + #16, #0
	static gameover_screen + #17, #3967
	static gameover_screen + #18, #0
	static gameover_screen + #19, #3967
	static gameover_screen + #20, #0
	static gameover_screen + #21, #3967
	static gameover_screen + #22, #0
	static gameover_screen + #23, #3967
	static gameover_screen + #24, #0
	static gameover_screen + #25, #3967
	static gameover_screen + #26, #0
	static gameover_screen + #27, #3967
	static gameover_screen + #28, #0
	static gameover_screen + #29, #3967
	static gameover_screen + #30, #0
	static gameover_screen + #31, #3967
	static gameover_screen + #32, #0
	static gameover_screen + #33, #3967
	static gameover_screen + #34, #0
	static gameover_screen + #35, #3967
	static gameover_screen + #36, #0
	static gameover_screen + #37, #3967
	static gameover_screen + #38, #0
	static gameover_screen + #39, #3967

	;Linha 1
	static gameover_screen + #40, #3967
	static gameover_screen + #41, #3967
	static gameover_screen + #42, #3967
	static gameover_screen + #43, #3967
	static gameover_screen + #44, #3967
	static gameover_screen + #45, #3967
	static gameover_screen + #46, #3967
	static gameover_screen + #47, #3967
	static gameover_screen + #48, #3967
	static gameover_screen + #49, #3967
	static gameover_screen + #50, #3967
	static gameover_screen + #51, #3967
	static gameover_screen + #52, #3967
	static gameover_screen + #53, #3967
	static gameover_screen + #54, #3967
	static gameover_screen + #55, #3967
	static gameover_screen + #56, #3967
	static gameover_screen + #57, #3967
	static gameover_screen + #58, #3967
	static gameover_screen + #59, #3967
	static gameover_screen + #60, #3967
	static gameover_screen + #61, #3967
	static gameover_screen + #62, #3967
	static gameover_screen + #63, #3967
	static gameover_screen + #64, #3967
	static gameover_screen + #65, #3967
	static gameover_screen + #66, #3967
	static gameover_screen + #67, #3967
	static gameover_screen + #68, #3967
	static gameover_screen + #69, #3967
	static gameover_screen + #70, #3967
	static gameover_screen + #71, #3967
	static gameover_screen + #72, #3967
	static gameover_screen + #73, #3967
	static gameover_screen + #74, #3967
	static gameover_screen + #75, #3967
	static gameover_screen + #76, #3967
	static gameover_screen + #77, #3967
	static gameover_screen + #78, #3967
	static gameover_screen + #79, #3967

	;Linha 2
	static gameover_screen + #80, #3967
	static gameover_screen + #81, #3967
	static gameover_screen + #82, #3967
	static gameover_screen + #83, #3967
	static gameover_screen + #84, #3967
	static gameover_screen + #85, #3967
	static gameover_screen + #86, #3967
	static gameover_screen + #87, #3967
	static gameover_screen + #88, #3967
	static gameover_screen + #89, #3967
	static gameover_screen + #90, #3967
	static gameover_screen + #91, #3967
	static gameover_screen + #92, #3967
	static gameover_screen + #93, #3967
	static gameover_screen + #94, #3967
	static gameover_screen + #95, #3967
	static gameover_screen + #96, #3967
	static gameover_screen + #97, #3967
	static gameover_screen + #98, #3967
	static gameover_screen + #99, #3967
	static gameover_screen + #100, #3967
	static gameover_screen + #101, #3967
	static gameover_screen + #102, #3967
	static gameover_screen + #103, #3967
	static gameover_screen + #104, #3967
	static gameover_screen + #105, #3967
	static gameover_screen + #106, #3967
	static gameover_screen + #107, #3967
	static gameover_screen + #108, #3967
	static gameover_screen + #109, #3967
	static gameover_screen + #110, #3967
	static gameover_screen + #111, #3967
	static gameover_screen + #112, #3967
	static gameover_screen + #113, #3967
	static gameover_screen + #114, #3967
	static gameover_screen + #115, #3967
	static gameover_screen + #116, #3967
	static gameover_screen + #117, #3967
	static gameover_screen + #118, #3967
	static gameover_screen + #119, #3967

	;Linha 3
	static gameover_screen + #120, #3967
	static gameover_screen + #121, #3967
	static gameover_screen + #122, #3967
	static gameover_screen + #123, #3967
	static gameover_screen + #124, #3967
	static gameover_screen + #125, #3967
	static gameover_screen + #126, #3967
	static gameover_screen + #127, #3967
	static gameover_screen + #128, #3967
	static gameover_screen + #129, #3967
	static gameover_screen + #130, #3967
	static gameover_screen + #131, #3967
	static gameover_screen + #132, #3967
	static gameover_screen + #133, #3967
	static gameover_screen + #134, #3967
	static gameover_screen + #135, #3967
	static gameover_screen + #136, #3967
	static gameover_screen + #137, #3967
	static gameover_screen + #138, #3967
	static gameover_screen + #139, #3967
	static gameover_screen + #140, #3967
	static gameover_screen + #141, #3967
	static gameover_screen + #142, #3967
	static gameover_screen + #143, #3967
	static gameover_screen + #144, #3967
	static gameover_screen + #145, #3967
	static gameover_screen + #146, #3967
	static gameover_screen + #147, #3967
	static gameover_screen + #148, #3967
	static gameover_screen + #149, #3967
	static gameover_screen + #150, #3967
	static gameover_screen + #151, #3967
	static gameover_screen + #152, #3967
	static gameover_screen + #153, #3967
	static gameover_screen + #154, #3967
	static gameover_screen + #155, #3967
	static gameover_screen + #156, #3967
	static gameover_screen + #157, #3967
	static gameover_screen + #158, #3967
	static gameover_screen + #159, #3967

	;Linha 4
	static gameover_screen + #160, #3967
	static gameover_screen + #161, #3967
	static gameover_screen + #162, #3967
	static gameover_screen + #163, #3967
	static gameover_screen + #164, #3967
	static gameover_screen + #165, #3967
	static gameover_screen + #166, #3967
	static gameover_screen + #167, #3967
	static gameover_screen + #168, #3967
	static gameover_screen + #169, #3967
	static gameover_screen + #170, #3967
	static gameover_screen + #171, #2304
	static gameover_screen + #172, #2304
	static gameover_screen + #173, #3967
	static gameover_screen + #174, #3967
	static gameover_screen + #175, #3967
	static gameover_screen + #176, #2304
	static gameover_screen + #177, #2304
	static gameover_screen + #178, #3967
	static gameover_screen + #179, #3967
	static gameover_screen + #180, #3967
	static gameover_screen + #181, #2304
	static gameover_screen + #182, #3967
	static gameover_screen + #183, #2304
	static gameover_screen + #184, #3967
	static gameover_screen + #185, #3967
	static gameover_screen + #186, #2304
	static gameover_screen + #187, #2304
	static gameover_screen + #188, #2304
	static gameover_screen + #189, #2304
	static gameover_screen + #190, #3967
	static gameover_screen + #191, #3967
	static gameover_screen + #192, #3967
	static gameover_screen + #193, #3967
	static gameover_screen + #194, #3967
	static gameover_screen + #195, #3967
	static gameover_screen + #196, #3967
	static gameover_screen + #197, #3967
	static gameover_screen + #198, #3967
	static gameover_screen + #199, #3967

	;Linha 5
	static gameover_screen + #200, #3967
	static gameover_screen + #201, #3967
	static gameover_screen + #202, #3967
	static gameover_screen + #203, #97
	static gameover_screen + #204, #98
	static gameover_screen + #205, #99
	static gameover_screen + #206, #3967
	static gameover_screen + #207, #3967
	static gameover_screen + #208, #3967
	static gameover_screen + #209, #3967
	static gameover_screen + #210, #2304
	static gameover_screen + #211, #3967
	static gameover_screen + #212, #3967
	static gameover_screen + #213, #2304
	static gameover_screen + #214, #3967
	static gameover_screen + #215, #2304
	static gameover_screen + #216, #3967
	static gameover_screen + #217, #3967
	static gameover_screen + #218, #2304
	static gameover_screen + #219, #3967
	static gameover_screen + #220, #2304
	static gameover_screen + #221, #3967
	static gameover_screen + #222, #2304
	static gameover_screen + #223, #3967
	static gameover_screen + #224, #2304
	static gameover_screen + #225, #3967
	static gameover_screen + #226, #2304
	static gameover_screen + #227, #3967
	static gameover_screen + #228, #3967
	static gameover_screen + #229, #3967
	static gameover_screen + #230, #3967
	static gameover_screen + #231, #3967
	static gameover_screen + #232, #3967
	static gameover_screen + #233, #3967
	static gameover_screen + #234, #97
	static gameover_screen + #235, #98
	static gameover_screen + #236, #99
	static gameover_screen + #237, #3967
	static gameover_screen + #238, #3967
	static gameover_screen + #239, #3967

	;Linha 6
	static gameover_screen + #240, #3967
	static gameover_screen + #241, #3967
	static gameover_screen + #242, #3967
	static gameover_screen + #243, #100
	static gameover_screen + #244, #101
	static gameover_screen + #245, #102
	static gameover_screen + #246, #3967
	static gameover_screen + #247, #3967
	static gameover_screen + #248, #3967
	static gameover_screen + #249, #3967
	static gameover_screen + #250, #2304
	static gameover_screen + #251, #3967
	static gameover_screen + #252, #3967
	static gameover_screen + #253, #3967
	static gameover_screen + #254, #3967
	static gameover_screen + #255, #2304
	static gameover_screen + #256, #3967
	static gameover_screen + #257, #3967
	static gameover_screen + #258, #2304
	static gameover_screen + #259, #3967
	static gameover_screen + #260, #2304
	static gameover_screen + #261, #3967
	static gameover_screen + #262, #2304
	static gameover_screen + #263, #3967
	static gameover_screen + #264, #2304
	static gameover_screen + #265, #3967
	static gameover_screen + #266, #2304
	static gameover_screen + #267, #3967
	static gameover_screen + #268, #3967
	static gameover_screen + #269, #3967
	static gameover_screen + #270, #3967
	static gameover_screen + #271, #3967
	static gameover_screen + #272, #3967
	static gameover_screen + #273, #3967
	static gameover_screen + #274, #100
	static gameover_screen + #275, #101
	static gameover_screen + #276, #102
	static gameover_screen + #277, #3967
	static gameover_screen + #278, #3967
	static gameover_screen + #279, #3967

	;Linha 7
	static gameover_screen + #280, #3967
	static gameover_screen + #281, #3967
	static gameover_screen + #282, #3967
	static gameover_screen + #283, #3967
	static gameover_screen + #284, #3967
	static gameover_screen + #285, #3967
	static gameover_screen + #286, #3967
	static gameover_screen + #287, #3967
	static gameover_screen + #288, #3967
	static gameover_screen + #289, #3967
	static gameover_screen + #290, #2304
	static gameover_screen + #291, #3967
	static gameover_screen + #292, #2304
	static gameover_screen + #293, #2304
	static gameover_screen + #294, #3967
	static gameover_screen + #295, #2304
	static gameover_screen + #296, #3967
	static gameover_screen + #297, #3967
	static gameover_screen + #298, #2304
	static gameover_screen + #299, #3967
	static gameover_screen + #300, #2304
	static gameover_screen + #301, #3967
	static gameover_screen + #302, #2304
	static gameover_screen + #303, #3967
	static gameover_screen + #304, #2304
	static gameover_screen + #305, #3967
	static gameover_screen + #306, #2304
	static gameover_screen + #307, #2304
	static gameover_screen + #308, #2304
	static gameover_screen + #309, #3967
	static gameover_screen + #310, #3967
	static gameover_screen + #311, #3967
	static gameover_screen + #312, #3967
	static gameover_screen + #313, #3967
	static gameover_screen + #314, #3967
	static gameover_screen + #315, #3967
	static gameover_screen + #316, #3967
	static gameover_screen + #317, #3967
	static gameover_screen + #318, #3967
	static gameover_screen + #319, #3967

	;Linha 8
	static gameover_screen + #320, #3967
	static gameover_screen + #321, #3967
	static gameover_screen + #322, #3967
	static gameover_screen + #323, #3967
	static gameover_screen + #324, #3967
	static gameover_screen + #325, #3967
	static gameover_screen + #326, #3967
	static gameover_screen + #327, #3967
	static gameover_screen + #328, #3967
	static gameover_screen + #329, #3967
	static gameover_screen + #330, #2304
	static gameover_screen + #331, #3967
	static gameover_screen + #332, #3967
	static gameover_screen + #333, #2304
	static gameover_screen + #334, #3967
	static gameover_screen + #335, #2304
	static gameover_screen + #336, #2304
	static gameover_screen + #337, #2304
	static gameover_screen + #338, #2304
	static gameover_screen + #339, #3967
	static gameover_screen + #340, #2304
	static gameover_screen + #341, #3967
	static gameover_screen + #342, #2304
	static gameover_screen + #343, #3967
	static gameover_screen + #344, #2304
	static gameover_screen + #345, #3967
	static gameover_screen + #346, #2304
	static gameover_screen + #347, #3967
	static gameover_screen + #348, #3967
	static gameover_screen + #349, #3967
	static gameover_screen + #350, #3967
	static gameover_screen + #351, #3967
	static gameover_screen + #352, #3967
	static gameover_screen + #353, #3967
	static gameover_screen + #354, #3967
	static gameover_screen + #355, #3967
	static gameover_screen + #356, #3967
	static gameover_screen + #357, #3967
	static gameover_screen + #358, #3967
	static gameover_screen + #359, #3967

	;Linha 9
	static gameover_screen + #360, #3967
	static gameover_screen + #361, #3967
	static gameover_screen + #362, #3967
	static gameover_screen + #363, #3967
	static gameover_screen + #364, #3967
	static gameover_screen + #365, #3967
	static gameover_screen + #366, #3967
	static gameover_screen + #367, #3967
	static gameover_screen + #368, #3967
	static gameover_screen + #369, #3967
	static gameover_screen + #370, #2304
	static gameover_screen + #371, #3967
	static gameover_screen + #372, #3967
	static gameover_screen + #373, #2304
	static gameover_screen + #374, #3967
	static gameover_screen + #375, #2304
	static gameover_screen + #376, #3967
	static gameover_screen + #377, #3967
	static gameover_screen + #378, #2304
	static gameover_screen + #379, #3967
	static gameover_screen + #380, #2304
	static gameover_screen + #381, #3967
	static gameover_screen + #382, #3967
	static gameover_screen + #383, #3967
	static gameover_screen + #384, #2304
	static gameover_screen + #385, #3967
	static gameover_screen + #386, #2304
	static gameover_screen + #387, #3967
	static gameover_screen + #388, #3967
	static gameover_screen + #389, #3967
	static gameover_screen + #390, #3967
	static gameover_screen + #391, #3967
	static gameover_screen + #392, #3967
	static gameover_screen + #393, #3967
	static gameover_screen + #394, #3967
	static gameover_screen + #395, #3967
	static gameover_screen + #396, #3967
	static gameover_screen + #397, #3967
	static gameover_screen + #398, #3967
	static gameover_screen + #399, #3967

	;Linha 10
	static gameover_screen + #400, #3967
	static gameover_screen + #401, #3967
	static gameover_screen + #402, #3967
	static gameover_screen + #403, #3967
	static gameover_screen + #404, #3967
	static gameover_screen + #405, #3967
	static gameover_screen + #406, #3967
	static gameover_screen + #407, #3967
	static gameover_screen + #408, #3967
	static gameover_screen + #409, #3967
	static gameover_screen + #410, #3967
	static gameover_screen + #411, #2304
	static gameover_screen + #412, #2304
	static gameover_screen + #413, #3967
	static gameover_screen + #414, #3967
	static gameover_screen + #415, #2304
	static gameover_screen + #416, #3967
	static gameover_screen + #417, #3967
	static gameover_screen + #418, #2304
	static gameover_screen + #419, #3967
	static gameover_screen + #420, #2304
	static gameover_screen + #421, #3967
	static gameover_screen + #422, #3967
	static gameover_screen + #423, #3967
	static gameover_screen + #424, #2304
	static gameover_screen + #425, #3967
	static gameover_screen + #426, #2304
	static gameover_screen + #427, #2304
	static gameover_screen + #428, #2304
	static gameover_screen + #429, #2304
	static gameover_screen + #430, #3967
	static gameover_screen + #431, #3967
	static gameover_screen + #432, #3967
	static gameover_screen + #433, #3967
	static gameover_screen + #434, #3967
	static gameover_screen + #435, #3967
	static gameover_screen + #436, #3967
	static gameover_screen + #437, #3967
	static gameover_screen + #438, #3967
	static gameover_screen + #439, #3967

	;Linha 11
	static gameover_screen + #440, #3967
	static gameover_screen + #441, #3967
	static gameover_screen + #442, #3967
	static gameover_screen + #443, #23
	static gameover_screen + #444, #24
	static gameover_screen + #445, #25
	static gameover_screen + #446, #3967
	static gameover_screen + #447, #3967
	static gameover_screen + #448, #3967
	static gameover_screen + #449, #3967
	static gameover_screen + #450, #3967
	static gameover_screen + #451, #3967
	static gameover_screen + #452, #3967
	static gameover_screen + #453, #3967
	static gameover_screen + #454, #3967
	static gameover_screen + #455, #3967
	static gameover_screen + #456, #3967
	static gameover_screen + #457, #3967
	static gameover_screen + #458, #3967
	static gameover_screen + #459, #3967
	static gameover_screen + #460, #3967
	static gameover_screen + #461, #3967
	static gameover_screen + #462, #3967
	static gameover_screen + #463, #3967
	static gameover_screen + #464, #3967
	static gameover_screen + #465, #3967
	static gameover_screen + #466, #3967
	static gameover_screen + #467, #3967
	static gameover_screen + #468, #3967
	static gameover_screen + #469, #3967
	static gameover_screen + #470, #3967
	static gameover_screen + #471, #3967
	static gameover_screen + #472, #3967
	static gameover_screen + #473, #3967
	static gameover_screen + #474, #23
	static gameover_screen + #475, #24
	static gameover_screen + #476, #25
	static gameover_screen + #477, #3967
	static gameover_screen + #478, #3967
	static gameover_screen + #479, #3967

	;Linha 12
	static gameover_screen + #480, #3967
	static gameover_screen + #481, #3967
	static gameover_screen + #482, #3967
	static gameover_screen + #483, #26
	static gameover_screen + #484, #27
	static gameover_screen + #485, #28
	static gameover_screen + #486, #3967
	static gameover_screen + #487, #3967
	static gameover_screen + #488, #3967
	static gameover_screen + #489, #3967
	static gameover_screen + #490, #3967
	static gameover_screen + #491, #2304
	static gameover_screen + #492, #2304
	static gameover_screen + #493, #2304
	static gameover_screen + #494, #3967
	static gameover_screen + #495, #3967
	static gameover_screen + #496, #2304
	static gameover_screen + #497, #3967
	static gameover_screen + #498, #3967
	static gameover_screen + #499, #2304
	static gameover_screen + #500, #3967
	static gameover_screen + #501, #2304
	static gameover_screen + #502, #2304
	static gameover_screen + #503, #2304
	static gameover_screen + #504, #2304
	static gameover_screen + #505, #3967
	static gameover_screen + #506, #3967
	static gameover_screen + #507, #2304
	static gameover_screen + #508, #2304
	static gameover_screen + #509, #2304
	static gameover_screen + #510, #3967
	static gameover_screen + #511, #3967
	static gameover_screen + #512, #3967
	static gameover_screen + #513, #3967
	static gameover_screen + #514, #26
	static gameover_screen + #515, #27
	static gameover_screen + #516, #28
	static gameover_screen + #517, #3967
	static gameover_screen + #518, #3967
	static gameover_screen + #519, #3967

	;Linha 13
	static gameover_screen + #520, #3967
	static gameover_screen + #521, #3967
	static gameover_screen + #522, #3967
	static gameover_screen + #523, #3967
	static gameover_screen + #524, #3967
	static gameover_screen + #525, #3967
	static gameover_screen + #526, #3967
	static gameover_screen + #527, #3967
	static gameover_screen + #528, #3967
	static gameover_screen + #529, #3967
	static gameover_screen + #530, #2304
	static gameover_screen + #531, #3967
	static gameover_screen + #532, #3967
	static gameover_screen + #533, #3967
	static gameover_screen + #534, #2304
	static gameover_screen + #535, #3967
	static gameover_screen + #536, #2304
	static gameover_screen + #537, #3967
	static gameover_screen + #538, #3967
	static gameover_screen + #539, #2304
	static gameover_screen + #540, #3967
	static gameover_screen + #541, #2304
	static gameover_screen + #542, #3967
	static gameover_screen + #543, #3967
	static gameover_screen + #544, #3967
	static gameover_screen + #545, #3967
	static gameover_screen + #546, #2304
	static gameover_screen + #547, #3967
	static gameover_screen + #548, #3967
	static gameover_screen + #549, #2304
	static gameover_screen + #550, #3967
	static gameover_screen + #551, #3967
	static gameover_screen + #552, #3967
	static gameover_screen + #553, #3967
	static gameover_screen + #554, #3967
	static gameover_screen + #555, #3967
	static gameover_screen + #556, #3967
	static gameover_screen + #557, #3967
	static gameover_screen + #558, #3967
	static gameover_screen + #559, #3967

	;Linha 14
	static gameover_screen + #560, #3967
	static gameover_screen + #561, #3967
	static gameover_screen + #562, #3967
	static gameover_screen + #563, #3967
	static gameover_screen + #564, #3967
	static gameover_screen + #565, #3967
	static gameover_screen + #566, #3967
	static gameover_screen + #567, #3967
	static gameover_screen + #568, #3967
	static gameover_screen + #569, #3967
	static gameover_screen + #570, #2304
	static gameover_screen + #571, #3967
	static gameover_screen + #572, #3967
	static gameover_screen + #573, #3967
	static gameover_screen + #574, #2304
	static gameover_screen + #575, #3967
	static gameover_screen + #576, #2304
	static gameover_screen + #577, #3967
	static gameover_screen + #578, #3967
	static gameover_screen + #579, #2304
	static gameover_screen + #580, #3967
	static gameover_screen + #581, #2304
	static gameover_screen + #582, #3967
	static gameover_screen + #583, #3967
	static gameover_screen + #584, #3967
	static gameover_screen + #585, #3967
	static gameover_screen + #586, #2304
	static gameover_screen + #587, #3967
	static gameover_screen + #588, #3967
	static gameover_screen + #589, #2304
	static gameover_screen + #590, #3967
	static gameover_screen + #591, #3967
	static gameover_screen + #592, #3967
	static gameover_screen + #593, #3967
	static gameover_screen + #594, #3967
	static gameover_screen + #595, #3967
	static gameover_screen + #596, #3967
	static gameover_screen + #597, #3967
	static gameover_screen + #598, #3967
	static gameover_screen + #599, #3967

	;Linha 15
	static gameover_screen + #600, #3967
	static gameover_screen + #601, #3967
	static gameover_screen + #602, #3967
	static gameover_screen + #603, #3967
	static gameover_screen + #604, #3967
	static gameover_screen + #605, #3967
	static gameover_screen + #606, #3967
	static gameover_screen + #607, #3967
	static gameover_screen + #608, #3967
	static gameover_screen + #609, #3967
	static gameover_screen + #610, #2304
	static gameover_screen + #611, #3967
	static gameover_screen + #612, #3967
	static gameover_screen + #613, #3967
	static gameover_screen + #614, #2304
	static gameover_screen + #615, #3967
	static gameover_screen + #616, #2304
	static gameover_screen + #617, #3967
	static gameover_screen + #618, #3967
	static gameover_screen + #619, #2304
	static gameover_screen + #620, #3967
	static gameover_screen + #621, #2304
	static gameover_screen + #622, #2304
	static gameover_screen + #623, #2304
	static gameover_screen + #624, #3967
	static gameover_screen + #625, #3967
	static gameover_screen + #626, #2304
	static gameover_screen + #627, #2304
	static gameover_screen + #628, #2304
	static gameover_screen + #629, #3967
	static gameover_screen + #630, #3967
	static gameover_screen + #631, #3967
	static gameover_screen + #632, #3967
	static gameover_screen + #633, #3967
	static gameover_screen + #634, #3967
	static gameover_screen + #635, #3967
	static gameover_screen + #636, #3967
	static gameover_screen + #637, #3967
	static gameover_screen + #638, #3967
	static gameover_screen + #639, #3967

	;Linha 16
	static gameover_screen + #640, #3967
	static gameover_screen + #641, #3967
	static gameover_screen + #642, #3967
	static gameover_screen + #643, #3967
	static gameover_screen + #644, #3967
	static gameover_screen + #645, #3967
	static gameover_screen + #646, #3967
	static gameover_screen + #647, #3967
	static gameover_screen + #648, #3967
	static gameover_screen + #649, #3967
	static gameover_screen + #650, #2304
	static gameover_screen + #651, #3967
	static gameover_screen + #652, #3967
	static gameover_screen + #653, #3967
	static gameover_screen + #654, #2304
	static gameover_screen + #655, #3967
	static gameover_screen + #656, #2304
	static gameover_screen + #657, #3967
	static gameover_screen + #658, #3967
	static gameover_screen + #659, #2304
	static gameover_screen + #660, #3967
	static gameover_screen + #661, #2304
	static gameover_screen + #662, #3967
	static gameover_screen + #663, #3967
	static gameover_screen + #664, #3967
	static gameover_screen + #665, #3967
	static gameover_screen + #666, #2304
	static gameover_screen + #667, #3967
	static gameover_screen + #668, #2304
	static gameover_screen + #669, #3967
	static gameover_screen + #670, #3967
	static gameover_screen + #671, #3967
	static gameover_screen + #672, #3967
	static gameover_screen + #673, #3967
	static gameover_screen + #674, #3967
	static gameover_screen + #675, #3967
	static gameover_screen + #676, #3967
	static gameover_screen + #677, #3967
	static gameover_screen + #678, #3967
	static gameover_screen + #679, #3967

	;Linha 17
	static gameover_screen + #680, #3967
	static gameover_screen + #681, #3967
	static gameover_screen + #682, #3967
	static gameover_screen + #683, #14
	static gameover_screen + #684, #0
	static gameover_screen + #685, #15
	static gameover_screen + #686, #3967
	static gameover_screen + #687, #3967
	static gameover_screen + #688, #3967
	static gameover_screen + #689, #3967
	static gameover_screen + #690, #2304
	static gameover_screen + #691, #3967
	static gameover_screen + #692, #3967
	static gameover_screen + #693, #3967
	static gameover_screen + #694, #2304
	static gameover_screen + #695, #3967
	static gameover_screen + #696, #3967
	static gameover_screen + #697, #2304
	static gameover_screen + #698, #2304
	static gameover_screen + #699, #3967
	static gameover_screen + #700, #3967
	static gameover_screen + #701, #2304
	static gameover_screen + #702, #3967
	static gameover_screen + #703, #3967
	static gameover_screen + #704, #3967
	static gameover_screen + #705, #3967
	static gameover_screen + #706, #2304
	static gameover_screen + #707, #3967
	static gameover_screen + #708, #3967
	static gameover_screen + #709, #2304
	static gameover_screen + #710, #3967
	static gameover_screen + #711, #3967
	static gameover_screen + #712, #3967
	static gameover_screen + #713, #3967
	static gameover_screen + #714, #14
	static gameover_screen + #715, #0
	static gameover_screen + #716, #15
	static gameover_screen + #717, #3967
	static gameover_screen + #718, #3967
	static gameover_screen + #719, #3967

	;Linha 18
	static gameover_screen + #720, #3967
	static gameover_screen + #721, #3967
	static gameover_screen + #722, #3967
	static gameover_screen + #723, #12
	static gameover_screen + #724, #16
	static gameover_screen + #725, #13
	static gameover_screen + #726, #3967
	static gameover_screen + #727, #3967
	static gameover_screen + #728, #3967
	static gameover_screen + #729, #3967
	static gameover_screen + #730, #3967
	static gameover_screen + #731, #2304
	static gameover_screen + #732, #2304
	static gameover_screen + #733, #2304
	static gameover_screen + #734, #3967
	static gameover_screen + #735, #3967
	static gameover_screen + #736, #3967
	static gameover_screen + #737, #2304
	static gameover_screen + #738, #2304
	static gameover_screen + #739, #3967
	static gameover_screen + #740, #3967
	static gameover_screen + #741, #2304
	static gameover_screen + #742, #2304
	static gameover_screen + #743, #2304
	static gameover_screen + #744, #2304
	static gameover_screen + #745, #3967
	static gameover_screen + #746, #2304
	static gameover_screen + #747, #3967
	static gameover_screen + #748, #3967
	static gameover_screen + #749, #2304
	static gameover_screen + #750, #3967
	static gameover_screen + #751, #3967
	static gameover_screen + #752, #3967
	static gameover_screen + #753, #3967
	static gameover_screen + #754, #12
	static gameover_screen + #755, #16
	static gameover_screen + #756, #13
	static gameover_screen + #757, #3967
	static gameover_screen + #758, #3967
	static gameover_screen + #759, #3967

	;Linha 19
	static gameover_screen + #760, #3967
	static gameover_screen + #761, #3967
	static gameover_screen + #762, #3967
	static gameover_screen + #763, #3967
	static gameover_screen + #764, #3967
	static gameover_screen + #765, #3967
	static gameover_screen + #766, #3967
	static gameover_screen + #767, #3967
	static gameover_screen + #768, #3967
	static gameover_screen + #769, #3967
	static gameover_screen + #770, #3967
	static gameover_screen + #771, #3967
	static gameover_screen + #772, #3967
	static gameover_screen + #773, #3967
	static gameover_screen + #774, #3967
	static gameover_screen + #775, #3967
	static gameover_screen + #776, #3967
	static gameover_screen + #777, #3967
	static gameover_screen + #778, #3967
	static gameover_screen + #779, #3967
	static gameover_screen + #780, #3967
	static gameover_screen + #781, #3967
	static gameover_screen + #782, #3967
	static gameover_screen + #783, #3967
	static gameover_screen + #784, #3967
	static gameover_screen + #785, #3967
	static gameover_screen + #786, #3967
	static gameover_screen + #787, #3967
	static gameover_screen + #788, #3967
	static gameover_screen + #789, #3967
	static gameover_screen + #790, #3967
	static gameover_screen + #791, #3967
	static gameover_screen + #792, #3967
	static gameover_screen + #793, #3967
	static gameover_screen + #794, #3967
	static gameover_screen + #795, #3967
	static gameover_screen + #796, #3967
	static gameover_screen + #797, #3967
	static gameover_screen + #798, #3967
	static gameover_screen + #799, #3967

	;Linha 20
	static gameover_screen + #800, #3967
	static gameover_screen + #801, #3967
	static gameover_screen + #802, #3967
	static gameover_screen + #803, #3967
	static gameover_screen + #804, #3967
	static gameover_screen + #805, #3967
	static gameover_screen + #806, #3967
	static gameover_screen + #807, #3967
	static gameover_screen + #808, #3967
	static gameover_screen + #809, #3967
	static gameover_screen + #810, #3967
	static gameover_screen + #811, #3967
	static gameover_screen + #812, #3967
	static gameover_screen + #813, #3967
	static gameover_screen + #814, #3967
	static gameover_screen + #815, #3967
	static gameover_screen + #816, #3967
	static gameover_screen + #817, #3967
	static gameover_screen + #818, #3967
	static gameover_screen + #819, #3967
	static gameover_screen + #820, #3967
	static gameover_screen + #821, #3967
	static gameover_screen + #822, #3967
	static gameover_screen + #823, #3967
	static gameover_screen + #824, #3967
	static gameover_screen + #825, #3967
	static gameover_screen + #826, #3967
	static gameover_screen + #827, #3967
	static gameover_screen + #828, #3967
	static gameover_screen + #829, #3967
	static gameover_screen + #830, #3967
	static gameover_screen + #831, #3967
	static gameover_screen + #832, #3967
	static gameover_screen + #833, #3967
	static gameover_screen + #834, #3967
	static gameover_screen + #835, #3967
	static gameover_screen + #836, #3967
	static gameover_screen + #837, #3967
	static gameover_screen + #838, #3967
	static gameover_screen + #839, #3967

	;Linha 21
	static gameover_screen + #840, #3967
	static gameover_screen + #841, #3967
	static gameover_screen + #842, #3967
	static gameover_screen + #843, #3967
	static gameover_screen + #844, #3967
	static gameover_screen + #845, #3967
	static gameover_screen + #846, #3967
	static gameover_screen + #847, #3967
	static gameover_screen + #848, #3967
	static gameover_screen + #849, #3967
	static gameover_screen + #850, #3967
	static gameover_screen + #851, #3967
	static gameover_screen + #852, #3967
	static gameover_screen + #853, #3967
	static gameover_screen + #854, #3967
	static gameover_screen + #855, #2899
	static gameover_screen + #856, #2883
	static gameover_screen + #857, #2895
	static gameover_screen + #858, #2898
	static gameover_screen + #859, #2885
	static gameover_screen + #860, #3967
	static gameover_screen + #861, #3967
	static gameover_screen + #862, #3967
	static gameover_screen + #863, #3967
	static gameover_screen + #864, #3967
	static gameover_screen + #865, #3967
	static gameover_screen + #866, #3967
	static gameover_screen + #867, #3967
	static gameover_screen + #868, #3967
	static gameover_screen + #869, #3967
	static gameover_screen + #870, #3967
	static gameover_screen + #871, #3967
	static gameover_screen + #872, #3967
	static gameover_screen + #873, #3967
	static gameover_screen + #874, #3967
	static gameover_screen + #875, #3967
	static gameover_screen + #876, #3967
	static gameover_screen + #877, #3967
	static gameover_screen + #878, #3967
	static gameover_screen + #879, #3967

	;Linha 22
	static gameover_screen + #880, #3967
	static gameover_screen + #881, #3967
	static gameover_screen + #882, #3967
	static gameover_screen + #883, #3967
	static gameover_screen + #884, #3967
	static gameover_screen + #885, #3967
	static gameover_screen + #886, #3967
	static gameover_screen + #887, #3967
	static gameover_screen + #888, #3967
	static gameover_screen + #889, #3967
	static gameover_screen + #890, #3967
	static gameover_screen + #891, #3967
	static gameover_screen + #892, #3967
	static gameover_screen + #893, #3967
	static gameover_screen + #894, #3967
	static gameover_screen + #895, #3967
	static gameover_screen + #896, #3967
	static gameover_screen + #897, #3967
	static gameover_screen + #898, #3967
	static gameover_screen + #899, #3967
	static gameover_screen + #900, #3967
	static gameover_screen + #901, #3967
	static gameover_screen + #902, #3967
	static gameover_screen + #903, #3967
	static gameover_screen + #904, #3967
	static gameover_screen + #905, #3967
	static gameover_screen + #906, #3967
	static gameover_screen + #907, #3967
	static gameover_screen + #908, #3967
	static gameover_screen + #909, #3967
	static gameover_screen + #910, #3967
	static gameover_screen + #911, #3967
	static gameover_screen + #912, #3967
	static gameover_screen + #913, #3967
	static gameover_screen + #914, #3967
	static gameover_screen + #915, #3967
	static gameover_screen + #916, #3967
	static gameover_screen + #917, #3967
	static gameover_screen + #918, #3967
	static gameover_screen + #919, #3967

	;Linha 23
	static gameover_screen + #920, #3967
	static gameover_screen + #921, #3967
	static gameover_screen + #922, #3967
	static gameover_screen + #923, #14
	static gameover_screen + #924, #0
	static gameover_screen + #925, #15
	static gameover_screen + #926, #3967
	static gameover_screen + #927, #3967
	static gameover_screen + #928, #3967
	static gameover_screen + #929, #3967
	static gameover_screen + #930, #3967
	static gameover_screen + #931, #3967
	static gameover_screen + #932, #3967
	static gameover_screen + #933, #3967
	static gameover_screen + #934, #3967
	static gameover_screen + #935, #3967
	static gameover_screen + #936, #3967
	static gameover_screen + #937, #3967
	static gameover_screen + #938, #3967
	static gameover_screen + #939, #3967
	static gameover_screen + #940, #3967
	static gameover_screen + #941, #3967
	static gameover_screen + #942, #3967
	static gameover_screen + #943, #3967
	static gameover_screen + #944, #3967
	static gameover_screen + #945, #3967
	static gameover_screen + #946, #3967
	static gameover_screen + #947, #3967
	static gameover_screen + #948, #3967
	static gameover_screen + #949, #3967
	static gameover_screen + #950, #3967
	static gameover_screen + #951, #3967
	static gameover_screen + #952, #3967
	static gameover_screen + #953, #3967
	static gameover_screen + #954, #14
	static gameover_screen + #955, #0
	static gameover_screen + #956, #15
	static gameover_screen + #957, #3967
	static gameover_screen + #958, #3967
	static gameover_screen + #959, #3967

	;Linha 24
	static gameover_screen + #960, #3967
	static gameover_screen + #961, #3967
	static gameover_screen + #962, #3967
	static gameover_screen + #963, #12
	static gameover_screen + #964, #16
	static gameover_screen + #965, #13
	static gameover_screen + #966, #3967
	static gameover_screen + #967, #3967
	static gameover_screen + #968, #3967
	static gameover_screen + #969, #3967
	static gameover_screen + #970, #3967
	static gameover_screen + #971, #3967
	static gameover_screen + #972, #3967
	static gameover_screen + #973, #3967
	static gameover_screen + #974, #3967
	static gameover_screen + #975, #3967
	static gameover_screen + #976, #3967
	static gameover_screen + #977, #3967
	static gameover_screen + #978, #3967
	static gameover_screen + #979, #3967
	static gameover_screen + #980, #3967
	static gameover_screen + #981, #3967
	static gameover_screen + #982, #3967
	static gameover_screen + #983, #3967
	static gameover_screen + #984, #3967
	static gameover_screen + #985, #3967
	static gameover_screen + #986, #3967
	static gameover_screen + #987, #3967
	static gameover_screen + #988, #3967
	static gameover_screen + #989, #3967
	static gameover_screen + #990, #3967
	static gameover_screen + #991, #3967
	static gameover_screen + #992, #3967
	static gameover_screen + #993, #3967
	static gameover_screen + #994, #12
	static gameover_screen + #995, #16
	static gameover_screen + #996, #13
	static gameover_screen + #997, #3967
	static gameover_screen + #998, #3967
	static gameover_screen + #999, #3967

	;Linha 25
	static gameover_screen + #1000, #3967
	static gameover_screen + #1001, #3967
	static gameover_screen + #1002, #3967
	static gameover_screen + #1003, #3967
	static gameover_screen + #1004, #3967
	static gameover_screen + #1005, #3967
	static gameover_screen + #1006, #3967
	static gameover_screen + #1007, #3967
	static gameover_screen + #1008, #3967
	static gameover_screen + #1009, #3967
	static gameover_screen + #1010, #3967
	static gameover_screen + #1011, #3967
	static gameover_screen + #1012, #3967
	static gameover_screen + #1013, #3967
	static gameover_screen + #1014, #3967
	static gameover_screen + #1015, #3967
	static gameover_screen + #1016, #3967
	static gameover_screen + #1017, #3967
	static gameover_screen + #1018, #3967
	static gameover_screen + #1019, #3967
	static gameover_screen + #1020, #3967
	static gameover_screen + #1021, #3967
	static gameover_screen + #1022, #3967
	static gameover_screen + #1023, #3967
	static gameover_screen + #1024, #3967
	static gameover_screen + #1025, #3967
	static gameover_screen + #1026, #3967
	static gameover_screen + #1027, #3967
	static gameover_screen + #1028, #3967
	static gameover_screen + #1029, #3967
	static gameover_screen + #1030, #3967
	static gameover_screen + #1031, #3967
	static gameover_screen + #1032, #3967
	static gameover_screen + #1033, #3967
	static gameover_screen + #1034, #3967
	static gameover_screen + #1035, #3967
	static gameover_screen + #1036, #3967
	static gameover_screen + #1037, #3967
	static gameover_screen + #1038, #3967
	static gameover_screen + #1039, #3967

	;Linha 26
	static gameover_screen + #1040, #3967
	static gameover_screen + #1041, #3967
	static gameover_screen + #1042, #3967
	static gameover_screen + #1043, #3967
	static gameover_screen + #1044, #3967
	static gameover_screen + #1045, #3967
	static gameover_screen + #1046, #3967
	static gameover_screen + #1047, #3967
	static gameover_screen + #1048, #3967
	static gameover_screen + #1049, #3967
	static gameover_screen + #1050, #3967
	static gameover_screen + #1051, #3967
	static gameover_screen + #1052, #3967
	static gameover_screen + #1053, #3967
	static gameover_screen + #1054, #3967
	static gameover_screen + #1055, #3967
	static gameover_screen + #1056, #3967
	static gameover_screen + #1057, #3967
	static gameover_screen + #1058, #3967
	static gameover_screen + #1059, #3967
	static gameover_screen + #1060, #3967
	static gameover_screen + #1061, #3967
	static gameover_screen + #1062, #3967
	static gameover_screen + #1063, #3967
	static gameover_screen + #1064, #3967
	static gameover_screen + #1065, #3967
	static gameover_screen + #1066, #3967
	static gameover_screen + #1067, #3967
	static gameover_screen + #1068, #3967
	static gameover_screen + #1069, #3967
	static gameover_screen + #1070, #3967
	static gameover_screen + #1071, #3967
	static gameover_screen + #1072, #3967
	static gameover_screen + #1073, #3967
	static gameover_screen + #1074, #3967
	static gameover_screen + #1075, #3967
	static gameover_screen + #1076, #3967
	static gameover_screen + #1077, #3967
	static gameover_screen + #1078, #3967
	static gameover_screen + #1079, #3967

	;Linha 27
	static gameover_screen + #1080, #3967
	static gameover_screen + #1081, #3967
	static gameover_screen + #1082, #3967
	static gameover_screen + #1083, #3967
	static gameover_screen + #1084, #3967
	static gameover_screen + #1085, #3967
	static gameover_screen + #1086, #3967
	static gameover_screen + #1087, #3967
	static gameover_screen + #1088, #3967
	static gameover_screen + #1089, #3967
	static gameover_screen + #1090, #3967
	static gameover_screen + #1091, #3967
	static gameover_screen + #1092, #3967
	static gameover_screen + #1093, #3967
	static gameover_screen + #1094, #3967
	static gameover_screen + #1095, #3967
	static gameover_screen + #1096, #3967
	static gameover_screen + #1097, #3967
	static gameover_screen + #1098, #3967
	static gameover_screen + #1099, #3967
	static gameover_screen + #1100, #3967
	static gameover_screen + #1101, #3967
	static gameover_screen + #1102, #3967
	static gameover_screen + #1103, #3967
	static gameover_screen + #1104, #3967
	static gameover_screen + #1105, #3967
	static gameover_screen + #1106, #3967
	static gameover_screen + #1107, #3967
	static gameover_screen + #1108, #3967
	static gameover_screen + #1109, #3967
	static gameover_screen + #1110, #3967
	static gameover_screen + #1111, #3967
	static gameover_screen + #1112, #3967
	static gameover_screen + #1113, #3967
	static gameover_screen + #1114, #3967
	static gameover_screen + #1115, #3967
	static gameover_screen + #1116, #3967
	static gameover_screen + #1117, #3967
	static gameover_screen + #1118, #3967
	static gameover_screen + #1119, #3967

	;Linha 28
	static gameover_screen + #1120, #3967
	static gameover_screen + #1121, #3967
	static gameover_screen + #1122, #3967
	static gameover_screen + #1123, #3967
	static gameover_screen + #1124, #3967
	static gameover_screen + #1125, #3967
	static gameover_screen + #1126, #3967
	static gameover_screen + #1127, #3967
	static gameover_screen + #1128, #3967
	static gameover_screen + #1129, #3967
	static gameover_screen + #1130, #3967
	static gameover_screen + #1131, #3967
	static gameover_screen + #1132, #3967
	static gameover_screen + #1133, #3967
	static gameover_screen + #1134, #3967
	static gameover_screen + #1135, #3967
	static gameover_screen + #1136, #3967
	static gameover_screen + #1137, #3967
	static gameover_screen + #1138, #3967
	static gameover_screen + #1139, #3967
	static gameover_screen + #1140, #3967
	static gameover_screen + #1141, #3967
	static gameover_screen + #1142, #3967
	static gameover_screen + #1143, #3967
	static gameover_screen + #1144, #3967
	static gameover_screen + #1145, #3967
	static gameover_screen + #1146, #3967
	static gameover_screen + #1147, #3967
	static gameover_screen + #1148, #3967
	static gameover_screen + #1149, #3967
	static gameover_screen + #1150, #3967
	static gameover_screen + #1151, #3967
	static gameover_screen + #1152, #3967
	static gameover_screen + #1153, #3967
	static gameover_screen + #1154, #3967
	static gameover_screen + #1155, #3967
	static gameover_screen + #1156, #3967
	static gameover_screen + #1157, #3967
	static gameover_screen + #1158, #3967
	static gameover_screen + #1159, #3967

	;Linha 29
	static gameover_screen + #1160, #3967
	static gameover_screen + #1161, #0
	static gameover_screen + #1162, #3967
	static gameover_screen + #1163, #0
	static gameover_screen + #1164, #3967
	static gameover_screen + #1165, #0
	static gameover_screen + #1166, #3967
	static gameover_screen + #1167, #0
	static gameover_screen + #1168, #3967
	static gameover_screen + #1169, #0
	static gameover_screen + #1170, #3967
	static gameover_screen + #1171, #0
	static gameover_screen + #1172, #3967
	static gameover_screen + #1173, #0
	static gameover_screen + #1174, #3967
	static gameover_screen + #1175, #0
	static gameover_screen + #1176, #3967
	static gameover_screen + #1177, #0
	static gameover_screen + #1178, #3967
	static gameover_screen + #1179, #0
	static gameover_screen + #1180, #3967
	static gameover_screen + #1181, #0
	static gameover_screen + #1182, #3967
	static gameover_screen + #1183, #0
	static gameover_screen + #1184, #3967
	static gameover_screen + #1185, #0
	static gameover_screen + #1186, #3967
	static gameover_screen + #1187, #0
	static gameover_screen + #1188, #3967
	static gameover_screen + #1189, #0
	static gameover_screen + #1190, #3967
	static gameover_screen + #1191, #0
	static gameover_screen + #1192, #3967
	static gameover_screen + #1193, #0
	static gameover_screen + #1194, #3967
	static gameover_screen + #1195, #0
	static gameover_screen + #1196, #3967
	static gameover_screen + #1197, #0
	static gameover_screen + #1198, #3967
	static gameover_screen + #1199, #0

jogar_novamente : var #26
	static jogar_novamente + #0, #2372 ;		 D
	static jogar_novamente + #1, #2373 ;		 E
	static jogar_novamente + #2, #2387 ;		 S
	static jogar_novamente + #3, #2373 ;		 E
	static jogar_novamente + #4, #2378 ;		 J
	static jogar_novamente + #5, #2369 ;		 A
	;2		espacos para o proximo caractere
	static jogar_novamente + #6, #2378 ;		 J
	static jogar_novamente + #7, #2383 ;		 O
	static jogar_novamente + #8, #2375 ;		 G
	static jogar_novamente + #9, #2369 ;		 A
	static jogar_novamente + #10, #2386 ;		 R
	;2		espacos para o proximo caractere
	static jogar_novamente + #11, #2382 ;		 N
	static jogar_novamente + #12, #2383 ;		 O
	static jogar_novamente + #13, #2390 ;		 V
	static jogar_novamente + #14, #2369 ;		 A
	static jogar_novamente + #15, #2381 ;		 M
	static jogar_novamente + #16, #2373 ;		 E
	static jogar_novamente + #17, #2382 ;		 N
	static jogar_novamente + #18, #2388 ;		 T
	static jogar_novamente + #19, #2373 ;		 E
	static jogar_novamente + #20, #2367 ;		 ?
	;67		espacos para o proximo caractere
	static jogar_novamente + #21, #2395 ;		 [
	static jogar_novamente + #22, #2387 ;		 S
	static jogar_novamente + #23, #2351 ;		 /
	static jogar_novamente + #24, #2382 ;		 N
	static jogar_novamente + #25, #2397 ;		 ]

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

youwin : var #1200
	;Linha 0
	static youwin + #0, #0
	static youwin + #1, #3967
	static youwin + #2, #0
	static youwin + #3, #3967
	static youwin + #4, #0
	static youwin + #5, #3967
	static youwin + #6, #0
	static youwin + #7, #3967
	static youwin + #8, #0
	static youwin + #9, #3967
	static youwin + #10, #0
	static youwin + #11, #3967
	static youwin + #12, #0
	static youwin + #13, #3967
	static youwin + #14, #0
	static youwin + #15, #3967
	static youwin + #16, #0
	static youwin + #17, #3967
	static youwin + #18, #0
	static youwin + #19, #3967
	static youwin + #20, #0
	static youwin + #21, #3967
	static youwin + #22, #0
	static youwin + #23, #3967
	static youwin + #24, #0
	static youwin + #25, #3967
	static youwin + #26, #0
	static youwin + #27, #3967
	static youwin + #28, #0
	static youwin + #29, #3967
	static youwin + #30, #0
	static youwin + #31, #3967
	static youwin + #32, #0
	static youwin + #33, #3967
	static youwin + #34, #0
	static youwin + #35, #3967
	static youwin + #36, #0
	static youwin + #37, #3967
	static youwin + #38, #0
	static youwin + #39, #3967

	;Linha 1
	static youwin + #40, #3967
	static youwin + #41, #3967
	static youwin + #42, #3967
	static youwin + #43, #3967
	static youwin + #44, #3967
	static youwin + #45, #3967
	static youwin + #46, #3967
	static youwin + #47, #3967
	static youwin + #48, #3967
	static youwin + #49, #3967
	static youwin + #50, #3967
	static youwin + #51, #3967
	static youwin + #52, #3967
	static youwin + #53, #3967
	static youwin + #54, #3967
	static youwin + #55, #3967
	static youwin + #56, #3967
	static youwin + #57, #3967
	static youwin + #58, #3967
	static youwin + #59, #3967
	static youwin + #60, #3967
	static youwin + #61, #3967
	static youwin + #62, #3967
	static youwin + #63, #3967
	static youwin + #64, #3967
	static youwin + #65, #3967
	static youwin + #66, #3967
	static youwin + #67, #3967
	static youwin + #68, #3967
	static youwin + #69, #3967
	static youwin + #70, #3967
	static youwin + #71, #3967
	static youwin + #72, #3967
	static youwin + #73, #3967
	static youwin + #74, #3967
	static youwin + #75, #3967
	static youwin + #76, #3967
	static youwin + #77, #3967
	static youwin + #78, #3967
	static youwin + #79, #3967

	;Linha 2
	static youwin + #80, #3967
	static youwin + #81, #3967
	static youwin + #82, #3967
	static youwin + #83, #3967
	static youwin + #84, #3967
	static youwin + #85, #3967
	static youwin + #86, #3967
	static youwin + #87, #3967
	static youwin + #88, #3967
	static youwin + #89, #3967
	static youwin + #90, #3967
	static youwin + #91, #3967
	static youwin + #92, #3967
	static youwin + #93, #3967
	static youwin + #94, #3967
	static youwin + #95, #3967
	static youwin + #96, #3967
	static youwin + #97, #3967
	static youwin + #98, #3967
	static youwin + #99, #3967
	static youwin + #100, #3967
	static youwin + #101, #3967
	static youwin + #102, #3967
	static youwin + #103, #3967
	static youwin + #104, #3967
	static youwin + #105, #3967
	static youwin + #106, #3967
	static youwin + #107, #3967
	static youwin + #108, #3967
	static youwin + #109, #3967
	static youwin + #110, #3967
	static youwin + #111, #3967
	static youwin + #112, #3967
	static youwin + #113, #3967
	static youwin + #114, #3967
	static youwin + #115, #3967
	static youwin + #116, #3967
	static youwin + #117, #3967
	static youwin + #118, #3967
	static youwin + #119, #3967

	;Linha 3
	static youwin + #120, #3967
	static youwin + #121, #3967
	static youwin + #122, #3967
	static youwin + #123, #3967
	static youwin + #124, #3967
	static youwin + #125, #3967
	static youwin + #126, #3967
	static youwin + #127, #3967
	static youwin + #128, #3967
	static youwin + #129, #3967
	static youwin + #130, #3967
	static youwin + #131, #3967
	static youwin + #132, #3967
	static youwin + #133, #3967
	static youwin + #134, #3967
	static youwin + #135, #3967
	static youwin + #136, #3967
	static youwin + #137, #3967
	static youwin + #138, #3967
	static youwin + #139, #3967
	static youwin + #140, #3967
	static youwin + #141, #3967
	static youwin + #142, #3967
	static youwin + #143, #3967
	static youwin + #144, #3967
	static youwin + #145, #3967
	static youwin + #146, #3967
	static youwin + #147, #3967
	static youwin + #148, #3967
	static youwin + #149, #3967
	static youwin + #150, #3967
	static youwin + #151, #3967
	static youwin + #152, #3967
	static youwin + #153, #3967
	static youwin + #154, #3967
	static youwin + #155, #3967
	static youwin + #156, #3967
	static youwin + #157, #3967
	static youwin + #158, #3967
	static youwin + #159, #3967

	;Linha 4
	static youwin + #160, #3967
	static youwin + #161, #3967
	static youwin + #162, #3967
	static youwin + #163, #3967
	static youwin + #164, #3967
	static youwin + #165, #3967
	static youwin + #166, #3967
	static youwin + #167, #3967
	static youwin + #168, #3967
	static youwin + #169, #3967
	static youwin + #170, #2560
	static youwin + #171, #3967
	static youwin + #172, #3967
	static youwin + #173, #3967
	static youwin + #174, #2560
	static youwin + #175, #3967
	static youwin + #176, #3967
	static youwin + #177, #2560
	static youwin + #178, #2560
	static youwin + #179, #2560
	static youwin + #180, #3967
	static youwin + #181, #3967
	static youwin + #182, #2560
	static youwin + #183, #3967
	static youwin + #184, #3967
	static youwin + #185, #3967
	static youwin + #186, #2560
	static youwin + #187, #3967
	static youwin + #188, #3967
	static youwin + #189, #3967
	static youwin + #190, #3967
	static youwin + #191, #3967
	static youwin + #192, #3967
	static youwin + #193, #3967
	static youwin + #194, #3967
	static youwin + #195, #3967
	static youwin + #196, #3967
	static youwin + #197, #3967
	static youwin + #198, #3967
	static youwin + #199, #3967

	;Linha 5
	static youwin + #200, #3967
	static youwin + #201, #3967
	static youwin + #202, #3967
	static youwin + #203, #97
	static youwin + #204, #98
	static youwin + #205, #99
	static youwin + #206, #3967
	static youwin + #207, #3967
	static youwin + #208, #3967
	static youwin + #209, #3967
	static youwin + #210, #2560
	static youwin + #211, #3967
	static youwin + #212, #3967
	static youwin + #213, #3967
	static youwin + #214, #2560
	static youwin + #215, #3967
	static youwin + #216, #2560
	static youwin + #217, #3967
	static youwin + #218, #3967
	static youwin + #219, #3967
	static youwin + #220, #2560
	static youwin + #221, #3967
	static youwin + #222, #2560
	static youwin + #223, #3967
	static youwin + #224, #3967
	static youwin + #225, #3967
	static youwin + #226, #2560
	static youwin + #227, #3967
	static youwin + #228, #3967
	static youwin + #229, #3967
	static youwin + #230, #3967
	static youwin + #231, #3967
	static youwin + #232, #3967
	static youwin + #233, #3967
	static youwin + #234, #97
	static youwin + #235, #98
	static youwin + #236, #99
	static youwin + #237, #3967
	static youwin + #238, #3967
	static youwin + #239, #3967

	;Linha 6
	static youwin + #240, #3967
	static youwin + #241, #3967
	static youwin + #242, #3967
	static youwin + #243, #100
	static youwin + #244, #101
	static youwin + #245, #102
	static youwin + #246, #3967
	static youwin + #247, #3967
	static youwin + #248, #3967
	static youwin + #249, #3967
	static youwin + #250, #3967
	static youwin + #251, #2560
	static youwin + #252, #3967
	static youwin + #253, #2560
	static youwin + #254, #3967
	static youwin + #255, #3967
	static youwin + #256, #2560
	static youwin + #257, #3967
	static youwin + #258, #3967
	static youwin + #259, #3967
	static youwin + #260, #2560
	static youwin + #261, #3967
	static youwin + #262, #2560
	static youwin + #263, #3967
	static youwin + #264, #3967
	static youwin + #265, #3967
	static youwin + #266, #2560
	static youwin + #267, #3967
	static youwin + #268, #3967
	static youwin + #269, #3967
	static youwin + #270, #3967
	static youwin + #271, #3967
	static youwin + #272, #3967
	static youwin + #273, #3967
	static youwin + #274, #100
	static youwin + #275, #101
	static youwin + #276, #102
	static youwin + #277, #3967
	static youwin + #278, #3967
	static youwin + #279, #3967

	;Linha 7
	static youwin + #280, #3967
	static youwin + #281, #3967
	static youwin + #282, #3967
	static youwin + #283, #3967
	static youwin + #284, #3967
	static youwin + #285, #3967
	static youwin + #286, #3967
	static youwin + #287, #3967
	static youwin + #288, #3967
	static youwin + #289, #3967
	static youwin + #290, #3967
	static youwin + #291, #3967
	static youwin + #292, #2560
	static youwin + #293, #3967
	static youwin + #294, #3967
	static youwin + #295, #3967
	static youwin + #296, #2560
	static youwin + #297, #3967
	static youwin + #298, #3967
	static youwin + #299, #3967
	static youwin + #300, #2560
	static youwin + #301, #3967
	static youwin + #302, #2560
	static youwin + #303, #3967
	static youwin + #304, #3967
	static youwin + #305, #3967
	static youwin + #306, #2560
	static youwin + #307, #3967
	static youwin + #308, #3967
	static youwin + #309, #3967
	static youwin + #310, #3967
	static youwin + #311, #3967
	static youwin + #312, #3967
	static youwin + #313, #3967
	static youwin + #314, #3967
	static youwin + #315, #3967
	static youwin + #316, #3967
	static youwin + #317, #3967
	static youwin + #318, #3967
	static youwin + #319, #3967

	;Linha 8
	static youwin + #320, #3967
	static youwin + #321, #3967
	static youwin + #322, #3967
	static youwin + #323, #3967
	static youwin + #324, #3967
	static youwin + #325, #3967
	static youwin + #326, #3967
	static youwin + #327, #3967
	static youwin + #328, #3967
	static youwin + #329, #3967
	static youwin + #330, #3967
	static youwin + #331, #3967
	static youwin + #332, #2560
	static youwin + #333, #3967
	static youwin + #334, #3967
	static youwin + #335, #3967
	static youwin + #336, #2560
	static youwin + #337, #3967
	static youwin + #338, #3967
	static youwin + #339, #3967
	static youwin + #340, #2560
	static youwin + #341, #3967
	static youwin + #342, #2560
	static youwin + #343, #3967
	static youwin + #344, #3967
	static youwin + #345, #3967
	static youwin + #346, #2560
	static youwin + #347, #3967
	static youwin + #348, #3967
	static youwin + #349, #3967
	static youwin + #350, #3967
	static youwin + #351, #3967
	static youwin + #352, #3967
	static youwin + #353, #3967
	static youwin + #354, #3967
	static youwin + #355, #3967
	static youwin + #356, #3967
	static youwin + #357, #3967
	static youwin + #358, #3967
	static youwin + #359, #3967

	;Linha 9
	static youwin + #360, #3967
	static youwin + #361, #3967
	static youwin + #362, #3967
	static youwin + #363, #3967
	static youwin + #364, #3967
	static youwin + #365, #3967
	static youwin + #366, #3967
	static youwin + #367, #3967
	static youwin + #368, #3967
	static youwin + #369, #3967
	static youwin + #370, #3967
	static youwin + #371, #3967
	static youwin + #372, #2560
	static youwin + #373, #3967
	static youwin + #374, #3967
	static youwin + #375, #3967
	static youwin + #376, #2560
	static youwin + #377, #3967
	static youwin + #378, #3967
	static youwin + #379, #3967
	static youwin + #380, #2560
	static youwin + #381, #3967
	static youwin + #382, #2560
	static youwin + #383, #3967
	static youwin + #384, #3967
	static youwin + #385, #3967
	static youwin + #386, #2560
	static youwin + #387, #3967
	static youwin + #388, #3967
	static youwin + #389, #3967
	static youwin + #390, #3967
	static youwin + #391, #3967
	static youwin + #392, #3967
	static youwin + #393, #3967
	static youwin + #394, #3967
	static youwin + #395, #3967
	static youwin + #396, #3967
	static youwin + #397, #3967
	static youwin + #398, #3967
	static youwin + #399, #3967

	;Linha 10
	static youwin + #400, #3967
	static youwin + #401, #3967
	static youwin + #402, #3967
	static youwin + #403, #3967
	static youwin + #404, #3967
	static youwin + #405, #3967
	static youwin + #406, #3967
	static youwin + #407, #3967
	static youwin + #408, #3967
	static youwin + #409, #3967
	static youwin + #410, #3967
	static youwin + #411, #3967
	static youwin + #412, #2560
	static youwin + #413, #3967
	static youwin + #414, #3967
	static youwin + #415, #3967
	static youwin + #416, #3967
	static youwin + #417, #2560
	static youwin + #418, #2560
	static youwin + #419, #2560
	static youwin + #420, #3967
	static youwin + #421, #3967
	static youwin + #422, #3967
	static youwin + #423, #2560
	static youwin + #424, #2560
	static youwin + #425, #2560
	static youwin + #426, #3967
	static youwin + #427, #3967
	static youwin + #428, #3967
	static youwin + #429, #3967
	static youwin + #430, #3967
	static youwin + #431, #3967
	static youwin + #432, #3967
	static youwin + #433, #3967
	static youwin + #434, #3967
	static youwin + #435, #3967
	static youwin + #436, #3967
	static youwin + #437, #3967
	static youwin + #438, #3967
	static youwin + #439, #3967

	;Linha 11
	static youwin + #440, #3967
	static youwin + #441, #3967
	static youwin + #442, #3967
	static youwin + #443, #23
	static youwin + #444, #24
	static youwin + #445, #25
	static youwin + #446, #3967
	static youwin + #447, #3967
	static youwin + #448, #3967
	static youwin + #449, #3967
	static youwin + #450, #3967
	static youwin + #451, #3967
	static youwin + #452, #3967
	static youwin + #453, #3967
	static youwin + #454, #3967
	static youwin + #455, #3967
	static youwin + #456, #3967
	static youwin + #457, #3967
	static youwin + #458, #3967
	static youwin + #459, #3967
	static youwin + #460, #3967
	static youwin + #461, #3967
	static youwin + #462, #3967
	static youwin + #463, #3967
	static youwin + #464, #3967
	static youwin + #465, #3967
	static youwin + #466, #3967
	static youwin + #467, #3967
	static youwin + #468, #3967
	static youwin + #469, #3967
	static youwin + #470, #3967
	static youwin + #471, #3967
	static youwin + #472, #3967
	static youwin + #473, #3967
	static youwin + #474, #23
	static youwin + #475, #24
	static youwin + #476, #25
	static youwin + #477, #3967
	static youwin + #478, #3967
	static youwin + #479, #3967

	;Linha 12
	static youwin + #480, #3967
	static youwin + #481, #3967
	static youwin + #482, #3967
	static youwin + #483, #26
	static youwin + #484, #27
	static youwin + #485, #28
	static youwin + #486, #3967
	static youwin + #487, #3967
	static youwin + #488, #3967
	static youwin + #489, #3967
	static youwin + #490, #3967
	static youwin + #491, #3967
	static youwin + #492, #3967
	static youwin + #493, #2560
	static youwin + #494, #3967
	static youwin + #495, #3967
	static youwin + #496, #3967
	static youwin + #497, #3967
	static youwin + #498, #3967
	static youwin + #499, #2560
	static youwin + #500, #3967
	static youwin + #501, #2560
	static youwin + #502, #2560
	static youwin + #503, #2560
	static youwin + #504, #3967
	static youwin + #505, #2560
	static youwin + #506, #3967
	static youwin + #507, #3967
	static youwin + #508, #3967
	static youwin + #509, #2560
	static youwin + #510, #3967
	static youwin + #511, #3967
	static youwin + #512, #3967
	static youwin + #513, #3967
	static youwin + #514, #26
	static youwin + #515, #27
	static youwin + #516, #28
	static youwin + #517, #3967
	static youwin + #518, #3967
	static youwin + #519, #3967

	;Linha 13
	static youwin + #520, #3967
	static youwin + #521, #3967
	static youwin + #522, #3967
	static youwin + #523, #3967
	static youwin + #524, #3967
	static youwin + #525, #3967
	static youwin + #526, #3967
	static youwin + #527, #3967
	static youwin + #528, #3967
	static youwin + #529, #3967
	static youwin + #530, #3967
	static youwin + #531, #3967
	static youwin + #532, #3967
	static youwin + #533, #2560
	static youwin + #534, #3967
	static youwin + #535, #3967
	static youwin + #536, #2560
	static youwin + #537, #3967
	static youwin + #538, #3967
	static youwin + #539, #2560
	static youwin + #540, #3967
	static youwin + #541, #3967
	static youwin + #542, #2560
	static youwin + #543, #3967
	static youwin + #544, #3967
	static youwin + #545, #2560
	static youwin + #546, #3967
	static youwin + #547, #3967
	static youwin + #548, #3967
	static youwin + #549, #2560
	static youwin + #550, #3967
	static youwin + #551, #3967
	static youwin + #552, #3967
	static youwin + #553, #3967
	static youwin + #554, #3967
	static youwin + #555, #3967
	static youwin + #556, #3967
	static youwin + #557, #3967
	static youwin + #558, #3967
	static youwin + #559, #3967

	;Linha 14
	static youwin + #560, #3967
	static youwin + #561, #3967
	static youwin + #562, #3967
	static youwin + #563, #3967
	static youwin + #564, #3967
	static youwin + #565, #3967
	static youwin + #566, #3967
	static youwin + #567, #3967
	static youwin + #568, #3967
	static youwin + #569, #3967
	static youwin + #570, #3967
	static youwin + #571, #3967
	static youwin + #572, #3967
	static youwin + #573, #2560
	static youwin + #574, #3967
	static youwin + #575, #3967
	static youwin + #576, #2560
	static youwin + #577, #3967
	static youwin + #578, #3967
	static youwin + #579, #2560
	static youwin + #580, #3967
	static youwin + #581, #3967
	static youwin + #582, #2560
	static youwin + #583, #3967
	static youwin + #584, #3967
	static youwin + #585, #2560
	static youwin + #586, #2560
	static youwin + #587, #3967
	static youwin + #588, #3967
	static youwin + #589, #2560
	static youwin + #590, #3967
	static youwin + #591, #3967
	static youwin + #592, #3967
	static youwin + #593, #3967
	static youwin + #594, #3967
	static youwin + #595, #3967
	static youwin + #596, #3967
	static youwin + #597, #3967
	static youwin + #598, #3967
	static youwin + #599, #3967

	;Linha 15
	static youwin + #600, #3967
	static youwin + #601, #3967
	static youwin + #602, #3967
	static youwin + #603, #3967
	static youwin + #604, #3967
	static youwin + #605, #3967
	static youwin + #606, #3967
	static youwin + #607, #3967
	static youwin + #608, #3967
	static youwin + #609, #3967
	static youwin + #610, #3967
	static youwin + #611, #3967
	static youwin + #612, #3967
	static youwin + #613, #2560
	static youwin + #614, #3967
	static youwin + #615, #3967
	static youwin + #616, #2560
	static youwin + #617, #3967
	static youwin + #618, #3967
	static youwin + #619, #2560
	static youwin + #620, #3967
	static youwin + #621, #3967
	static youwin + #622, #2560
	static youwin + #623, #3967
	static youwin + #624, #3967
	static youwin + #625, #2560
	static youwin + #626, #3967
	static youwin + #627, #2560
	static youwin + #628, #3967
	static youwin + #629, #2560
	static youwin + #630, #3967
	static youwin + #631, #3967
	static youwin + #632, #3967
	static youwin + #633, #3967
	static youwin + #634, #3967
	static youwin + #635, #3967
	static youwin + #636, #3967
	static youwin + #637, #3967
	static youwin + #638, #3967
	static youwin + #639, #3967

	;Linha 16
	static youwin + #640, #3967
	static youwin + #641, #3967
	static youwin + #642, #3967
	static youwin + #643, #3967
	static youwin + #644, #3967
	static youwin + #645, #3967
	static youwin + #646, #3967
	static youwin + #647, #3967
	static youwin + #648, #3967
	static youwin + #649, #3967
	static youwin + #650, #3967
	static youwin + #651, #3967
	static youwin + #652, #3967
	static youwin + #653, #2560
	static youwin + #654, #3967
	static youwin + #655, #3967
	static youwin + #656, #2560
	static youwin + #657, #3967
	static youwin + #658, #3967
	static youwin + #659, #2560
	static youwin + #660, #3967
	static youwin + #661, #3967
	static youwin + #662, #2560
	static youwin + #663, #3967
	static youwin + #664, #3967
	static youwin + #665, #2560
	static youwin + #666, #3967
	static youwin + #667, #3967
	static youwin + #668, #2560
	static youwin + #669, #2560
	static youwin + #670, #3967
	static youwin + #671, #3967
	static youwin + #672, #3967
	static youwin + #673, #3967
	static youwin + #674, #3967
	static youwin + #675, #3967
	static youwin + #676, #3967
	static youwin + #677, #3967
	static youwin + #678, #3967
	static youwin + #679, #3967

	;Linha 17
	static youwin + #680, #3967
	static youwin + #681, #3967
	static youwin + #682, #3967
	static youwin + #683, #14
	static youwin + #684, #0
	static youwin + #685, #15
	static youwin + #686, #3967
	static youwin + #687, #3967
	static youwin + #688, #3967
	static youwin + #689, #3967
	static youwin + #690, #3967
	static youwin + #691, #3967
	static youwin + #692, #3967
	static youwin + #693, #2560
	static youwin + #694, #3967
	static youwin + #695, #3967
	static youwin + #696, #2560
	static youwin + #697, #3967
	static youwin + #698, #3967
	static youwin + #699, #2560
	static youwin + #700, #3967
	static youwin + #701, #3967
	static youwin + #702, #2560
	static youwin + #703, #3967
	static youwin + #704, #3967
	static youwin + #705, #2560
	static youwin + #706, #3967
	static youwin + #707, #3967
	static youwin + #708, #3967
	static youwin + #709, #2560
	static youwin + #710, #3967
	static youwin + #711, #3967
	static youwin + #712, #3967
	static youwin + #713, #3967
	static youwin + #714, #14
	static youwin + #715, #0
	static youwin + #716, #15
	static youwin + #717, #3967
	static youwin + #718, #3967
	static youwin + #719, #3967

	;Linha 18
	static youwin + #720, #3967
	static youwin + #721, #3967
	static youwin + #722, #3967
	static youwin + #723, #12
	static youwin + #724, #16
	static youwin + #725, #13
	static youwin + #726, #3967
	static youwin + #727, #3967
	static youwin + #728, #3967
	static youwin + #729, #3967
	static youwin + #730, #3967
	static youwin + #731, #3967
	static youwin + #732, #3967
	static youwin + #733, #3967
	static youwin + #734, #2560
	static youwin + #735, #2560
	static youwin + #736, #3967
	static youwin + #737, #2560
	static youwin + #738, #2560
	static youwin + #739, #3967
	static youwin + #740, #3967
	static youwin + #741, #2560
	static youwin + #742, #2560
	static youwin + #743, #2560
	static youwin + #744, #3967
	static youwin + #745, #2560
	static youwin + #746, #3967
	static youwin + #747, #3967
	static youwin + #748, #3967
	static youwin + #749, #2560
	static youwin + #750, #3967
	static youwin + #751, #3967
	static youwin + #752, #3967
	static youwin + #753, #3967
	static youwin + #754, #12
	static youwin + #755, #16
	static youwin + #756, #13
	static youwin + #757, #3967
	static youwin + #758, #3967
	static youwin + #759, #3967

	;Linha 19
	static youwin + #760, #3967
	static youwin + #761, #3967
	static youwin + #762, #3967
	static youwin + #763, #3967
	static youwin + #764, #3967
	static youwin + #765, #3967
	static youwin + #766, #3967
	static youwin + #767, #3967
	static youwin + #768, #3967
	static youwin + #769, #3967
	static youwin + #770, #3967
	static youwin + #771, #3967
	static youwin + #772, #3967
	static youwin + #773, #3967
	static youwin + #774, #3967
	static youwin + #775, #3967
	static youwin + #776, #3967
	static youwin + #777, #3967
	static youwin + #778, #3967
	static youwin + #779, #3967
	static youwin + #780, #3967
	static youwin + #781, #3967
	static youwin + #782, #3967
	static youwin + #783, #3967
	static youwin + #784, #3967
	static youwin + #785, #3967
	static youwin + #786, #3967
	static youwin + #787, #3967
	static youwin + #788, #3967
	static youwin + #789, #3967
	static youwin + #790, #3967
	static youwin + #791, #3967
	static youwin + #792, #3967
	static youwin + #793, #3967
	static youwin + #794, #3967
	static youwin + #795, #3967
	static youwin + #796, #3967
	static youwin + #797, #3967
	static youwin + #798, #3967
	static youwin + #799, #3967

	;Linha 20
	static youwin + #800, #3967
	static youwin + #801, #3967
	static youwin + #802, #3967
	static youwin + #803, #3967
	static youwin + #804, #3967
	static youwin + #805, #3967
	static youwin + #806, #3967
	static youwin + #807, #3967
	static youwin + #808, #3967
	static youwin + #809, #3967
	static youwin + #810, #3967
	static youwin + #811, #3967
	static youwin + #812, #3967
	static youwin + #813, #3967
	static youwin + #814, #3967
	static youwin + #815, #3967
	static youwin + #816, #3967
	static youwin + #817, #3967
	static youwin + #818, #3967
	static youwin + #819, #3967
	static youwin + #820, #3967
	static youwin + #821, #3967
	static youwin + #822, #3967
	static youwin + #823, #3967
	static youwin + #824, #3967
	static youwin + #825, #3967
	static youwin + #826, #3967
	static youwin + #827, #3967
	static youwin + #828, #3967
	static youwin + #829, #3967
	static youwin + #830, #3967
	static youwin + #831, #3967
	static youwin + #832, #3967
	static youwin + #833, #3967
	static youwin + #834, #3967
	static youwin + #835, #3967
	static youwin + #836, #3967
	static youwin + #837, #3967
	static youwin + #838, #3967
	static youwin + #839, #3967

	;Linha 21
	static youwin + #840, #3967
	static youwin + #841, #3967
	static youwin + #842, #3967
	static youwin + #843, #3967
	static youwin + #844, #3967
	static youwin + #845, #3967
	static youwin + #846, #3967
	static youwin + #847, #3967
	static youwin + #848, #3967
	static youwin + #849, #3967
	static youwin + #850, #3967
	static youwin + #851, #3967
	static youwin + #852, #3967
	static youwin + #853, #3967
	static youwin + #854, #3967
	static youwin + #855, #2899
	static youwin + #856, #2883
	static youwin + #857, #2895
	static youwin + #858, #2898
	static youwin + #859, #2885
	static youwin + #860, #3967
	static youwin + #861, #2865
	static youwin + #862, #2864
	static youwin + #863, #2864
	static youwin + #864, #2864
	static youwin + #865, #3967
	static youwin + #866, #3967
	static youwin + #867, #3967
	static youwin + #868, #3967
	static youwin + #869, #3967
	static youwin + #870, #3967
	static youwin + #871, #3967
	static youwin + #872, #3967
	static youwin + #873, #3967
	static youwin + #874, #3967
	static youwin + #875, #3967
	static youwin + #876, #3967
	static youwin + #877, #3967
	static youwin + #878, #3967
	static youwin + #879, #3967

	;Linha 22
	static youwin + #880, #3967
	static youwin + #881, #3967
	static youwin + #882, #3967
	static youwin + #883, #3967
	static youwin + #884, #3967
	static youwin + #885, #3967
	static youwin + #886, #3967
	static youwin + #887, #3967
	static youwin + #888, #3967
	static youwin + #889, #3967
	static youwin + #890, #3967
	static youwin + #891, #3967
	static youwin + #892, #3967
	static youwin + #893, #3967
	static youwin + #894, #3967
	static youwin + #895, #3967
	static youwin + #896, #3967
	static youwin + #897, #3967
	static youwin + #898, #3967
	static youwin + #899, #3967
	static youwin + #900, #3967
	static youwin + #901, #3967
	static youwin + #902, #3967
	static youwin + #903, #3967
	static youwin + #904, #3967
	static youwin + #905, #3967
	static youwin + #906, #3967
	static youwin + #907, #3967
	static youwin + #908, #3967
	static youwin + #909, #3967
	static youwin + #910, #3967
	static youwin + #911, #3967
	static youwin + #912, #3967
	static youwin + #913, #3967
	static youwin + #914, #3967
	static youwin + #915, #3967
	static youwin + #916, #3967
	static youwin + #917, #3967
	static youwin + #918, #3967
	static youwin + #919, #3967

	;Linha 23
	static youwin + #920, #3967
	static youwin + #921, #3967
	static youwin + #922, #3967
	static youwin + #923, #14
	static youwin + #924, #0
	static youwin + #925, #15
	static youwin + #926, #3967
	static youwin + #927, #3967
	static youwin + #928, #3967
	static youwin + #929, #3967
	static youwin + #930, #3967
	static youwin + #931, #3967
	static youwin + #932, #3967
	static youwin + #933, #3967
	static youwin + #934, #3967
	static youwin + #935, #3967
	static youwin + #936, #3967
	static youwin + #937, #3967
	static youwin + #938, #3967
	static youwin + #939, #3967
	static youwin + #940, #3967
	static youwin + #941, #3967
	static youwin + #942, #3967
	static youwin + #943, #3967
	static youwin + #944, #3967
	static youwin + #945, #3967
	static youwin + #946, #3967
	static youwin + #947, #3967
	static youwin + #948, #3967
	static youwin + #949, #3967
	static youwin + #950, #3967
	static youwin + #951, #3967
	static youwin + #952, #3967
	static youwin + #953, #3967
	static youwin + #954, #14
	static youwin + #955, #0
	static youwin + #956, #15
	static youwin + #957, #3967
	static youwin + #958, #3967
	static youwin + #959, #3967

	;Linha 24
	static youwin + #960, #3967
	static youwin + #961, #3967
	static youwin + #962, #3967
	static youwin + #963, #12
	static youwin + #964, #16
	static youwin + #965, #13
	static youwin + #966, #3967
	static youwin + #967, #3967
	static youwin + #968, #3967
	static youwin + #969, #3967
	static youwin + #970, #3967
	static youwin + #971, #3967
	static youwin + #972, #3967
	static youwin + #973, #3967
	static youwin + #974, #3967
	static youwin + #975, #3967
	static youwin + #976, #3967
	static youwin + #977, #3967
	static youwin + #978, #3967
	static youwin + #979, #3967
	static youwin + #980, #3967
	static youwin + #981, #3967
	static youwin + #982, #3967
	static youwin + #983, #3967
	static youwin + #984, #3967
	static youwin + #985, #3967
	static youwin + #986, #3967
	static youwin + #987, #3967
	static youwin + #988, #3967
	static youwin + #989, #3967
	static youwin + #990, #3967
	static youwin + #991, #3967
	static youwin + #992, #3967
	static youwin + #993, #3967
	static youwin + #994, #12
	static youwin + #995, #16
	static youwin + #996, #13
	static youwin + #997, #3967
	static youwin + #998, #3967
	static youwin + #999, #3967

	;Linha 25
	static youwin + #1000, #3967
	static youwin + #1001, #3967
	static youwin + #1002, #3967
	static youwin + #1003, #3967
	static youwin + #1004, #3967
	static youwin + #1005, #3967
	static youwin + #1006, #3967
	static youwin + #1007, #3967
	static youwin + #1008, #3967
	static youwin + #1009, #3967
	static youwin + #1010, #3967
	static youwin + #1011, #3967
	static youwin + #1012, #3967
	static youwin + #1013, #3967
	static youwin + #1014, #3967
	static youwin + #1015, #3967
	static youwin + #1016, #3967
	static youwin + #1017, #3967
	static youwin + #1018, #3967
	static youwin + #1019, #3967
	static youwin + #1020, #3967
	static youwin + #1021, #3967
	static youwin + #1022, #3967
	static youwin + #1023, #3967
	static youwin + #1024, #3967
	static youwin + #1025, #3967
	static youwin + #1026, #3967
	static youwin + #1027, #3967
	static youwin + #1028, #3967
	static youwin + #1029, #3967
	static youwin + #1030, #3967
	static youwin + #1031, #3967
	static youwin + #1032, #3967
	static youwin + #1033, #3967
	static youwin + #1034, #3967
	static youwin + #1035, #3967
	static youwin + #1036, #3967
	static youwin + #1037, #3967
	static youwin + #1038, #3967
	static youwin + #1039, #3967

	;Linha 26
	static youwin + #1040, #3967
	static youwin + #1041, #3967
	static youwin + #1042, #3967
	static youwin + #1043, #3967
	static youwin + #1044, #3967
	static youwin + #1045, #3967
	static youwin + #1046, #3967
	static youwin + #1047, #3967
	static youwin + #1048, #3967
	static youwin + #1049, #3967
	static youwin + #1050, #3967
	static youwin + #1051, #3967
	static youwin + #1052, #3967
	static youwin + #1053, #3967
	static youwin + #1054, #3967
	static youwin + #1055, #3967
	static youwin + #1056, #3967
	static youwin + #1057, #3967
	static youwin + #1058, #3967
	static youwin + #1059, #3967
	static youwin + #1060, #3967
	static youwin + #1061, #3967
	static youwin + #1062, #3967
	static youwin + #1063, #3967
	static youwin + #1064, #3967
	static youwin + #1065, #3967
	static youwin + #1066, #3967
	static youwin + #1067, #3967
	static youwin + #1068, #3967
	static youwin + #1069, #3967
	static youwin + #1070, #3967
	static youwin + #1071, #3967
	static youwin + #1072, #3967
	static youwin + #1073, #3967
	static youwin + #1074, #3967
	static youwin + #1075, #3967
	static youwin + #1076, #3967
	static youwin + #1077, #3967
	static youwin + #1078, #3967
	static youwin + #1079, #3967

	;Linha 27
	static youwin + #1080, #3967
	static youwin + #1081, #3967
	static youwin + #1082, #3967
	static youwin + #1083, #3967
	static youwin + #1084, #3967
	static youwin + #1085, #3967
	static youwin + #1086, #3967
	static youwin + #1087, #3967
	static youwin + #1088, #3967
	static youwin + #1089, #3967
	static youwin + #1090, #3967
	static youwin + #1091, #3967
	static youwin + #1092, #3967
	static youwin + #1093, #3967
	static youwin + #1094, #3967
	static youwin + #1095, #3967
	static youwin + #1096, #3967
	static youwin + #1097, #3967
	static youwin + #1098, #3967
	static youwin + #1099, #3967
	static youwin + #1100, #3967
	static youwin + #1101, #3967
	static youwin + #1102, #3967
	static youwin + #1103, #3967
	static youwin + #1104, #3967
	static youwin + #1105, #3967
	static youwin + #1106, #3967
	static youwin + #1107, #3967
	static youwin + #1108, #3967
	static youwin + #1109, #3967
	static youwin + #1110, #3967
	static youwin + #1111, #3967
	static youwin + #1112, #3967
	static youwin + #1113, #3967
	static youwin + #1114, #3967
	static youwin + #1115, #3967
	static youwin + #1116, #3967
	static youwin + #1117, #3967
	static youwin + #1118, #3967
	static youwin + #1119, #3967

	;Linha 28
	static youwin + #1120, #3967
	static youwin + #1121, #3967
	static youwin + #1122, #3967
	static youwin + #1123, #3967
	static youwin + #1124, #3967
	static youwin + #1125, #3967
	static youwin + #1126, #3967
	static youwin + #1127, #3967
	static youwin + #1128, #3967
	static youwin + #1129, #3967
	static youwin + #1130, #3967
	static youwin + #1131, #3967
	static youwin + #1132, #3967
	static youwin + #1133, #3967
	static youwin + #1134, #3967
	static youwin + #1135, #3967
	static youwin + #1136, #3967
	static youwin + #1137, #3967
	static youwin + #1138, #3967
	static youwin + #1139, #3967
	static youwin + #1140, #3967
	static youwin + #1141, #3967
	static youwin + #1142, #3967
	static youwin + #1143, #3967
	static youwin + #1144, #3967
	static youwin + #1145, #3967
	static youwin + #1146, #3967
	static youwin + #1147, #3967
	static youwin + #1148, #3967
	static youwin + #1149, #3967
	static youwin + #1150, #3967
	static youwin + #1151, #3967
	static youwin + #1152, #3967
	static youwin + #1153, #3967
	static youwin + #1154, #3967
	static youwin + #1155, #3967
	static youwin + #1156, #3967
	static youwin + #1157, #3967
	static youwin + #1158, #3967
	static youwin + #1159, #3967

	;Linha 29
	static youwin + #1160, #3967
	static youwin + #1161, #0
	static youwin + #1162, #3967
	static youwin + #1163, #0
	static youwin + #1164, #3967
	static youwin + #1165, #0
	static youwin + #1166, #3967
	static youwin + #1167, #0
	static youwin + #1168, #3967
	static youwin + #1169, #0
	static youwin + #1170, #3967
	static youwin + #1171, #0
	static youwin + #1172, #3967
	static youwin + #1173, #0
	static youwin + #1174, #3967
	static youwin + #1175, #0
	static youwin + #1176, #3967
	static youwin + #1177, #0
	static youwin + #1178, #3967
	static youwin + #1179, #0
	static youwin + #1180, #3967
	static youwin + #1181, #0
	static youwin + #1182, #3967
	static youwin + #1183, #0
	static youwin + #1184, #3967
	static youwin + #1185, #0
	static youwin + #1186, #3967
	static youwin + #1187, #0
	static youwin + #1188, #3967
	static youwin + #1189, #0
	static youwin + #1190, #3967
	static youwin + #1191, #0
	static youwin + #1192, #3967
	static youwin + #1193, #0
	static youwin + #1194, #3967
	static youwin + #1195, #0
	static youwin + #1196, #3967
	static youwin + #1197, #0
	static youwin + #1198, #3967
	static youwin + #1199, #0

printScreen:
		push r1
		push r2
		push r3

		loadn r1, #0
		loadn r2, #1200

		printScreenLoop:
			add r3, r0, r1
			loadi r3, r3
			outchar r3, r1
			inc r1
			cmp r1, r2

			jne printScreenLoop

		pop r3
		pop r2
		pop r1
		rts
