#Wagner Loch
#Turma M2

.text
	li $t0, 150	# X
	li $t1, 230	# Y
	li $t2, 991	# Z
	jal soma3n
	
soma3n:	add $t3, $t0, $t1
	add $t3, $t3, $t2
	jr $ra