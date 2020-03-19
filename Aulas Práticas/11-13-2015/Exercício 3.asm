# Wagner Loch
# Turma M2

.data
	string:	.asciiz "ONE RING to rule Them aLL"
	
.text
			la $t0, string
			li $t1, -90
			li $t2, 32	#espaço
loop:				
			lb $t3, 0($t0)
			beqz $t3, fimString
			beq $t2, $t3, espaco
			nop
			add $t3, $t3, $t1
			blez $t3, maiusculaTOminuscula
			nop
			j minusculaTOmaiuscula
			nop
			
espaco:			addi $t0, $t0, 1
			j loop
			nop

maiusculaTOminuscula:	lb $t3, 0($t0)
			addi $t3, $t3, 32
			sb $t3, 0($t0)
			addi $t0, $t0, 1
			j loop
			nop

minusculaTOmaiuscula:	lb $t3, 0($t0)
			addi $t3, $t3, -32
			sb $t3, 0($t0)
			addi $t0, $t0, 1
			j loop
			nop

fimString:		nop