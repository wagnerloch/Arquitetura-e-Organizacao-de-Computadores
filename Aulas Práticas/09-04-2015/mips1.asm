.data
	a: .word 5
	b: .word 2
	y: .space 4
	
.text

ori $t0, $zero, 10 #registrador t0 armazena 10
ori $t1, $zero, 5 #registrador t1 armazena 5
nor $t1, $t1, $t1 #registrador t1 armazena -5
ori $t2, $zero, 12 #registrador t2 armazena 12
nor $t2, $t2, $t2 #registrador t2 armazena -12
ori $t3, $zero, 9 #registrador t3 armazena 9

lw $t4,               #como carregar??