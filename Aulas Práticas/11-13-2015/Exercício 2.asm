# Wagner Loch
# Turma M2

.data
	inicio:		.asciiz "SELECIONE UMA FUN��O\n1)�REA DA CIRCUNFER�NCIA\n2)�REA DO TRI�NGULO\n3)�REA DO RET�NGULO"
	denovo:		.asciiz "Deseja realizar um novo c�lculo meu nobre amigo?\n"
	circunferencia:	.asciiz "Por favor meu caro\nInforme o raio da circunfer�ncia\n"
	circunferencia2:.asciiz "A �rea da circunfer�ncia �: "
	triangulo:	.asciiz "Por favor meu caro\nInforme a base do tri�ngulo\n"
	triangulo2:	.asciiz "Por favor meu caro\nInforme a altura do tri�ngulo\n"
	triangulo3:	.asciiz "A �rea do tri�ngulo �: "
	retangulo:	.asciiz "Por favor meu caro\nInforme a base do ret�ngulo\n"
	retangulo2:	.asciiz "Por favor meu caro\nInforme a altura do ret�ngulo\n"
	retangulo3:	.asciiz "A �rea do tri�ngulo �: "

.text
	
menu:	li $t0, 1
	li $t1, 2
	li $t2, 3
	la $a0, inicio
	li $v0, 51		#c�digo para ler inteiro 51
	syscall
	beq $t0, $a0, Circ
	nop
	beq $t1, $a0, Trian
	nop
	beq $t2, $a0, Retan
	nop
	j menu
	nop
	
Circ:	li $v0, 51		#c�digo para ler inteiro 51
	la $a0, circunferencia
	syscall
	li $t0, 3		#valor do pi
	mul $t1, $a0, $a0
	mul $a1, $t0, $t1
	li $v0, 56		# c�digo para imprimir inteiro 56
	la $a0, circunferencia2
	syscall
	la $a0, denovo
	li $v0, 50		#c�digo para questionar sim ou n�o 50
	syscall
	beq $a0, $zero, menu	#se o usu�rio quiser realizar um novo c�lculo, volta pro inicio
	nop
	li $v0, 10		#caso contr�rio, encerra o programa
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
	li $v0, 50		#c�digo para questionar sim ou n�o 50
	syscall
	beq $a0, $zero, menu	#se o usu�rio quiser realizar um novo c�lculo, volta pro inicio
	nop
	li $v0, 10		#caso contr�rio, encerra o programa
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
	li $v0, 50		#c�digo para questionar sim ou n�o 50
	syscall
	beq $a0, $zero, menu	#se o usu�rio quiser realizar um novo c�lculo, volta pro inicio
	nop
	li $v0, 10		#caso contr�rio, encerra o programa
	syscall