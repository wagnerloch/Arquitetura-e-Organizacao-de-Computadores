# Wagner Loch

.data
	string: .asciiz "The dark lord shall rise again."
	
.text
	
	la $t0, string	#LEITURA
	la $t1, string	#ESCRITA
	ori $t3, $zero, 32
	
loop:	lbu $t2, 0($t0)
	beq $t2, $zero, fim
	nop
	addi $t0, $t0, 1
	beq $t3, $t2, loop
	nop
	sb $t2, 0($t1)
	addi $t1, $t1, 1
	j loop

fim:	nop