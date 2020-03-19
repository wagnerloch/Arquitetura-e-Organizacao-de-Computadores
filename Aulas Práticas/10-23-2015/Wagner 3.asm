#Wagner Loch
#Turma M2
#Exercício 3

.text
	li $v0, 5		#carrega o valor 5 no registrador v0 para que o syscall leia um inteiro
	syscall			#chama o syscall para ler o inteiro
	move $t0, $v0		#move o inteiro lido para t0
	li $v0, 5		#carrega o valor 5 no registrador v0 para que o syscall leia o segundo inteiro
	syscall			#chama syscall para ler o segundo inteiro
	move $t1, $v0		#move o segundo inteiro para o registrador t1
	li $v0, 5		#carrega o valor 5 no registrador v0 para que syscall leia o terceiro inteiro
	syscall			#chama syscall para ler o terceiro inteiro
	move $t2, $v0		#move o terceiro inteiro para o registrador t2
	
	jal media		#chama a função para calcular a média dos três valores
	nop			
	
	li $v0, 1		#carrega o valor 1 para imprimir o resultado
	syscall			#imprime o resultado
	li $v0, 10		#carrega o valor 10 para sair do programa
	syscall			#termina o programa
	
	
media:	add $t3, $t1, $t2	#faz a soma dos dois primeiros valores
	add $t3, $t3, $t0	#soma o terceiro valor
	li $t4, 3		#carrega o registrador t4 com o valor 3
	div $t3, $t4		#divide a soma dos três valores por três
	mflo $a0		#move o resultado para a0, pronto para imprimir o resultado
	nop			#nop após o mflo
	jr $ra			#retorna a função principal
	nop			#nop