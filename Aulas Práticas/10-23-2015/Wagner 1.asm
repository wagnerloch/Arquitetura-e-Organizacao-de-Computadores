#Wagner Loch
#Turma M2

.text

loop:	li $v0, 5		#carrega o registrado v0 para syscall ler um valor inteiro
	syscall			#chama syscall para ler os km
	move $t0, $v0		#move as km para t0
	beq $zero, $t0, fim	#teste se a km é 0, se for o programa termina
	nop			#nop após o beq
	li $v0, 5		#carrega novamente o valor 5 para que syscall leia um valor inteiro
	syscall			#chama syscall para ler quantos litros gastou
	move $t1, $v0		#move os litros para t1
	div $t0, $t1		#km/l
	mflo $a0		#resultado vai para a0, para ser impresso na tela
	li $v0, 1		#carrega v0 em 1, para que o syscall imprima um inteiro na tela
	syscall			#chama syscall para imprimir km/l na tela
	j loop			#pula pro início
	nop			#nop depois do jump
	
fim:	li $v0, 10		#carrega o valor 10 para finalizar o programa
	syscall			#chama syscall para finalizar
