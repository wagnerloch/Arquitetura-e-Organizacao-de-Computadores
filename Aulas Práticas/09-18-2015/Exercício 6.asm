# Wagner Loch
# Turma M2

.data
	.word 100
	
.text
	lui $s0, 0x1001
	lw $t0, 0($s0)
	ori $t5, $zero, 1
	ori $t1, $zero, 1
	
laco:	srl $t0, $t0, 1
	beq $t0, $zero, fim
	add $t5, $t5, $t1
	j laco
	
fim:	nop
	#armazena na memória a quantidade de bit significativo do número
	sw $t5, 4($s0)