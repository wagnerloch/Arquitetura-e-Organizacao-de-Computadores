# Wagner Loch
# Turma M2

.text

ori $t0, $zero, 2  	# valor de x
ori $t1, $zero, 5  	# valor 5 em t1
ori $t2, $zero, 9   	#valor 9 em t2
ori $t3, $zero, 34	#valor -34 em t3
ori $t7, $zero, 1 	#valor 1

mult $t0, $t0
mflo $t4 #Move X ao quadrado para $t4

sll $t0, $t0, 0

mult $t4, $t1
mflo $t5 #Move a primeira soma para t5

sll $t0, $t0, 0

mult $t0, $t2
mflo $t6

add $t4, $t5, $t6

nor $t3, $t3, $t3
add $t3, $t3, $t7 # -34

add $t7, $t3, $t4 #Resultado final em t7