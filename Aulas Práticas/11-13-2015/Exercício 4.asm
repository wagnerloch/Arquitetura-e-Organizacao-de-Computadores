# Wagner Loch
# Turma M2

.data
	inicio:	.asciiz "Selecione uma conversão\n1)Metro -> Pé\n2)Pé -> Metro\n"
	metros:	.asciiz "Digite a medida em METROS: "
	rpe:	.asciiz "Medida em pés: "
	pes:	.asciiz "Digite a medida em PÉS: "
	rmet:	.asciiz "Medida em metros: "
	
.text
	menu:	li $t0, 1
		li $t1, 2
		li $t2, -2
		li $t3, 23
		li $t4, 7
		li $v0, 51
		la $a0, inicio
		syscall
		beq $a0, $t0, MP
		nop
		beq $a0, $t1, PM
		nop
		beq $a1, $t2, fim
		nop
		j menu
		nop
		
	MP:	li $v0, 51
		la $a0, metros
		syscall
		div $t4, $t3		#resultado sempre vai dar zero
		mflo $t3		#teria que trabalhar com ponto flutuante?
		nop
		mul $a1, $t3, $a0
		la $a0, rpe
		li $v0, 56
		syscall
		j menu
		nop
	
	PM:	li $v0, 51
		la $a0, pes
		syscall
		div $t3, $t4
		mflo $t3
		nop
		mul $a1, $t3, $a0		
		la $a0, rmet
		li $v0, 56
		syscall
		j menu
		nop
	
	fim:	li $v0, 10
		syscall