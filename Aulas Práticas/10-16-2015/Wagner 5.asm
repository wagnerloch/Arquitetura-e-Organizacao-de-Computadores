#Wagner Loch
#Turma M2
#Exerc�cio 5

.data
	tamanho: .word 7
	vetor1: .word -30, -23, 56, -43, 72, -18, 71
	vetor2: .word 45, 23, 21, -23, -82, 0, 69
	soma: .word 0, 0, 0, 0, 0, 0, 0
	
.text
	la $t0, tamanho
	la $t1, vetor1
	la $t2, vetor2
	la $t3, soma
	lb $t4, 0($t0)
laco:	
	beq $t4, $zero, fim
	nop
	lb $t5, 0($t1)
	lb $t6, 0($t2)
	
	add $t7, $t5, $t6
	addi $t4, $t4 -1 
	addi $t1, $t1, 4
	addi $t2, $t2, 4
	sb $t7, 0($t3)
	addi $t3, $t3, 4
	
	j laco
	
fim:	nop