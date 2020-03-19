#Wagner Loch
#Turma M2

.data
	vetor: .word 4,8,33,52,1,17,11,7,90,-7,8,-13
	
.text

	la $t0, vetor
	
loop:	lb $t1, 0($t0)
	addi $t0, $t0, 4
	lb $t2, 0($t0)
	
	slt $s0, $t1, $t2
	
	beq $s0, $zero, fim
	nop
	j loop
	nop
	
fim:	nop