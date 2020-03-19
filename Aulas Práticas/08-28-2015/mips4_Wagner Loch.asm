#  Wagner Loch
# Turma M2

.text

ori $t0, $zero, 160 #base
ori $t1, $zero, 120 #altura

mult $t0, $t1 #base vezes altura
mflo $t2
ori $t3, $zero, 0x2 # Coloca 2 em $t3
div $t2, $t3

mflo $t7 # Resultado em $t7
