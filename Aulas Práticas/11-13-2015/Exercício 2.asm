# Wagner Loch
# Turma M2

.data
	inicio:		.asciiz "SELECIONE UMA FUNÇÃO\n1)ÁREA DA CIRCUNFERÊNCIA\n2)ÁREA DO TRIÂNGULO\n3)ÁREA DO RETÂNGULO"
	denovo:		.asciiz "Deseja realizar um novo cálculo meu nobre amigo?\n"
	circunferencia:	.asciiz "Por favor meu caro\nInforme o raio da circunferência\n"
	circunferencia2:.asciiz "A área da circunferência é: "
	triangulo:	.asciiz "Por favor meu caro\nInforme a base do triângulo\n"
	triangulo2:	.asciiz "Por favor meu caro\nInforme a altura do triângulo\n"
	triangulo3:	.asciiz "A área do triângulo é: "
	retangulo:	.asciiz "Por favor meu caro\nInforme a base do retângulo\n"
	retangulo2:	.asciiz "Por favor meu caro\nInforme a altura do retângulo\n"
	retangulo3:	.asciiz "A área do triângulo é: "

.text
	
menu:	li $t0, 1
	li $t1, 2
	li $t2, 3
	la $a0, inicio
	li $v0, 51		#código para ler inteiro 51
	syscall
	beq $t0, $a0, Circ
	nop
	beq $t1, $a0, Trian
	nop
	beq $t2, $a0, Retan
	nop
	j menu
	nop
	
Circ:	li $v0, 51		#código para ler inteiro 51
	la $a0, circunferencia
	syscall
	li $t0, 3		#valor do pi
	mul $t1, $a0, $a0
	mul $a1, $t0, $t1
	li $v0, 56		# código para imprimir inteiro 56
	la $a0, circunferencia2
	syscall
	la $a0, denovo
	li $v0, 50		#código para questionar sim ou não 50
	syscall
	beq $a0, $zero, menu	#se o usuário quiser realizar um novo cálculo, volta pro inicio
	nop
	li $v0, 10		#caso contrário, encerra o programa
	syscall

Trian:	li $v0, 51
	la $a0, triangulo2
	syscall
	li $t0, 2
	div $a0, $t0
	mflo $t0
	nop
	la $a0, triangulo
	syscall
	mul $a1, $t0, $a0
	la $a0, triangulo3
	li $v0, 56
	syscall
	la $a0, denovo
	li $v0, 50		#código para questionar sim ou não 50
	syscall
	beq $a0, $zero, menu	#se o usuário quiser realizar um novo cálculo, volta pro inicio
	nop
	li $v0, 10		#caso contrário, encerra o programa
	syscall

Retan:	li $v0, 51
	la $a0, retangulo
	syscall
	move $t0, $a0
	li $v0, 51
	la $a0, retangulo2
	syscall
	mul $a1, $t0, $a0
	li $v0, 56
	la $a0, retangulo3
	syscall
	la $a0, denovo
	li $v0, 50		#código para questionar sim ou não 50
	syscall
	beq $a0, $zero, menu	#se o usuário quiser realizar um novo cálculo, volta pro inicio
	nop
	li $v0, 10		#caso contrário, encerra o programa
	syscall