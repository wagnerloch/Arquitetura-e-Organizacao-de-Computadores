#Wagner Loch
#Turma M2

# QUE TRABALHO QUE DEU ESSE HEIN '-'

.data
	a: .word 19
	b: .word 9
	c: .word 6
	
.text

# carrega s0 como a primeira posição de memória
lui $s0, 0x1001
# carrega o primeiro valor da memória para o registrador t0
lw $t0, 0($s0)
# carrega o segundo valor da memória para o registrador t1
lw $t1, 4($s0)
# carrega o terceiro valor da memória para o registrador t2
lw $t2, 8($s0)

# para descobrir a mediana, o valor tem que ser maior que um e menor que outro.
# registrador t3 recebe 1 se o registrador t0 for menor que t1, senão ele recebe 0
slt $t3, $t0, $t1

bne $t3, $zero, t1maiorQuet0
beq $t3, $zero, t0maiorQuet1

t1maiorQuet0:
	#se o t0 é menor que t2 e também é menor que t1, então t0 é o menor, basta descobrir agora quem é o maior.
	slt $t4, $t0, $t2 
	bne $t4, $zero, t0ehOmenor 
	beq $t4, $zero, t2maiorQuet0
	
t0maiorQuet1: 
	#se o t0 for menor que t2, então t0 é a mediana, senão t2 é a mediana
	slt $t6, $t0, $t2
	bne $t6, $zero, t0Mediana
	beq $t6, $zero, t0Maior

t0ehOmenor: 
	#se t1 é menor que t2, então t1 é a mediana, senão t2 é a mediana
	slt $t5, $t1, $t2
	bne $t5, $zero, t1Mediana
	beq $t5, $zero, t2Mediana

t2maiorQuet0:
	#t7 recebe 1 se t2 é menor t1
	slt $t7, $t2, $t1
	bne $t7, $zero, t2Mediana
	beq $t7, $zero, t2Maior
	
t2Maior: 
	slt $t7, $t1, $t0
	bne $t7, $zero, t0Mediana
	beq $t7, $zero, t1Mediana

t0Maior: 
	slt $t7, $t1, $t2
	bne $t7, $zero, t2Mediana
	beq $t7, $zero, t1Mediana
t0Mediana: 
	#armazena t0 como sendo a mediana na memória:
	sw $t0, 12($s0)
	j fim
t1Mediana:  
	#armazena t1 como sendo a mediana na memória:
	sw $t1, 12($s0)
	j fim
t2Mediana: 
	#armazena t2 como sendo a mediana na memória:
	sw $t2, 12($s0)
	j fim
	
fim: nop