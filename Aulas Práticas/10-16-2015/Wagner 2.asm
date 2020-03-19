#Wagner Loch
#Turma M2

.data

	string: .asciiz "draco dormiens nunquam tittillandus"
	
.text
	
	la $t0, string #LEITURA
	ori $t1, $zero, 32
	
inicio:	lbu $t2, 0($t0)
	addi $t2, $t2, -32
	sb $t2, 0($t0)

loop:	nop
	addi $t0, $t0, 1
	lbu $t2, 0($t0)
	beq $t1, $t2, espaco
	nop
	beq $t2, $zero, fim
	j loop
	nop
	
espaco:	nop
	addi $t0, $t0, 1
	lbu $t2, 0($t0)
	beq $t1, $t2, espaco #teste pra saber se não tem dois ou mais espaços
	nop
	addi $t2, $t2, -32
	sb $t2, 0($t0)
	j loop
	nop
	
fim:	nop