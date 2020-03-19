.data
	.space 32
.text
	lui $s0,0x1001
	#t0 = i   t1 = 2   t2 = bool   t3,t4 = aux  t5 = 8
	ori $t1,$zero,2
	ori $t5,$zero,8
	# if (i==8) Exit
laco:	beq $t0,$t5, Exit
	#nop
	sll $0,$0,0
	# i % 2
	div $t0,$t1
	mfhi $t2
	# if (i%2 == 0)
	beq $t2,$zero,if
	#nop	
	sll $0,$0,0
	#vetor[i] = i*2
if:	sll $t3,$t0,1
	sw $t3,0($s0)
	#i++
	j ipp
	#nop
	sll $0,$0,0
	#if (i%2 != 0)
	#t3 = vetor[i]
	lw $t3,0($s0)
	#t4 = vetor[i-1]
	lw $t4,-4($s0)
	#t3 = vetor[i] + vetor[i-1]
	add $t3,$t3,$t4
	#vetor[i] = vetor[i] + vetor[i-1]
	sw $t3,0($s0)
	#i++
	j ipp
	#nop
	sll $0,$0,0
	#i++
ipp:	addi $t0,$t0,1
	addi $s0,$s0,4
	j laco
Exit:	sll $0,$0,0
