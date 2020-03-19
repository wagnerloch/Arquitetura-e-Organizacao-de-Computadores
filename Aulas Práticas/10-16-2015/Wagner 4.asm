#Wagner Loch
#Turma M2
#Exercício 4

.data
	vetor :	.word 1, 2, 3, 4, 5, 6
	backup: .word 0
	
.text
	la $t0, vetor
	la $t1, backup
	addi $t1, $t1, 4
	
laco:	
	lb $t2, 0($t0)
	sb $t2, 0($t1)
	beq $t2, $zero, fimVetor
	nop
	addi $s0, $s0, 1 #s0 armazena o tamanho do vetor
	addi $t0, $t0, 4
	addi $t1, $t1, 4
	j laco
	nop
	
fimVetor:
	addi $t1, $t1, -4
	la $t0, vetor
	j loop
	
	
loop:	
	lb $t2, 0($t1)
	sb $t2, 0($t0)
	addi $s0, $s0, -1
	addi $t1, $t1, -4
	addi $t0, $t0, 4
	beq $s0, $zero, fim
	nop
	j loop
	
fim:	
	nop