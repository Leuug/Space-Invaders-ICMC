; Hello World - Escreve mensagem armazenada na memoria na tela

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

input_1 : var #1	
score : var #1

startmenu : string "Aperte Enter para comecar!"
gameover_str : string "Gameover"
jogarnovamente : string "Deseja jogar novamente?"
confirmacao : string "s/n"

;---- Inicio do Programa Principal -----

main:
	loadn r0, #0
	store score, r0
	
menu_main:
	call limpa_tela
	call menu
	
	jmp gameover
	
jogo:
	loadn r2, #branco
	call tela
	call limpa_tela
	
halt

	
;---- Fim do Programa Principal -----
	
;---- Inicio das Subrotinas -----

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
	load r2, branco
	call tela
	call limpa_tela
	
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	
	rts

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
; r2: Seleciona a COR da Mensagem
Imprimestr:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
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
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
	
	