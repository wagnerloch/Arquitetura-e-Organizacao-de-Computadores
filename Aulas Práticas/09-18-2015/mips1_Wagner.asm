# Wagner Loch
# Turma M2


#     div $t5, $t2
#     mfhi $t6      -- resto da divisão  
#     beq $t6, $zero, if

# nop
# lw $t3. 0($t0)
# lw $t4, -4($t0)
# add $t3, $t3, $t4
# sw $t3, 0($t0)

# if: sll $t5, $t5, 1
#     sw $t5, 0($t0)

.data
	.space 32	
	
.text
	lui $s0, 0x1001 #Guarda a primeira posição como referência
	
	# $t0 = i,  $t1 = 2,   $t2 = bool,  $t3 = auxiliar
	
	ori $t1, $zero, 2
	
	# i % 2
	
laço:	div $t0, $t1
	mfhi $t2	#move o resto para $t2
	
	# if (i%2 == 0)
	
	beq $t2, $zero, if
	
if:	sll $t3, $t0, 1 #multiplica o vetor por 2
	sw $t3, 0($s0)
	
	addi $t0, $t0, 1 #incrementa i
	j laço