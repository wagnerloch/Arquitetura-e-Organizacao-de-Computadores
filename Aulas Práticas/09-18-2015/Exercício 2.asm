#Wagner Loch
#Turma M2

.data
	.word 3
	
.text

lui $s0, 0x1001
#valor de n foi carregado em t0
lw $t0, 0($s0)
#valor 2 para divisão fica armazenado no registrado t1
ori $t1, $zero, 2
# i = t2
ori $t5, $zero, 1
laco:	div $t2, $t1
	#resultado da divisão fica armazenado em t3
	mflo $t3
	#soma a divisão com n e guarda em t4
	nop
	add $t4, $t3, $t0
	mult $t4, $t5
	mflo $t5
	nop
	addi $t2, $t2, 1
	bne $t2, $t0, laco
	sw $t5, 4($s0)