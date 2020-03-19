# Wagner Loch
# Turma M2

.text

ori $t0, $zero, 2 # X
nor $t0, $0, $t0 # Complemento de 1
addi $t0, $t0, 0x01 # Complemento de 2
ori $t2, $zero, 0x7
mult $t0, $t1
mflo $2
addi $t3, $t2, 0x4
ori $t4, $zero, 0x3
mult $t0, $t4
mflo $t5
addi $t5, $t5, 0x6
div $t4, $t5
mflo $t0
sll $0, $0, 0x0
mfhi $t1
