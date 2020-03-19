#Wagner Loch
#Turma M2

.data
	.word 5
	
.text
	lui $s0, 0x1001
	# T0 armazena o número que se quer obter o fatorial
	lw $t0, 0($s0)
	ori $t1, $zero, 1
	ori $t2, $zero, 2
	
	beq $t0, $t1, FatorialDe1
	beq $t0, $t2, FatorialDe2

laco:	
	add $t3, $t1, $t2
	mult $t3, $t2
	or $t2, $t3, $zero
	mflo $t4
	beq $t0, $t2, fim
	j laco
	#add $t2, $t2, $t1
	
	

	
FatorialDe1:
	sw $t1, 4($s0)
	j fim
	
FatorialDe2:
	sw $t2, 4($s0)
	j fim


fim: nop