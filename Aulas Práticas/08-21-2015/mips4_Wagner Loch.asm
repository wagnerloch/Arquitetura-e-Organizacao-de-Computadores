#Wagner Loch
#Turma M2

.text

ori $t1, $zero, 2 #x
ori $t2, $zero, 2 #y
ori $t3, $zero, 2 #z

sll $t1, $t1, 2 #desloca para multiplicar por 4
sll $t2, $t2, 1  #desloca para multiplicar por 2
sll $t4, $t3, 1 #desloca para multiplicar por 2
add $t3, $t3, $t4 #soma mais um para ficar multiplicado por 3

nor $t2, $t2, $zero
addi $t2, $t2, 1    #inver o sinal para y ficar negativo

add $t7, $t1, $t3 #soma t1 + t3, ou seja => 4x+3z
add $t7, $t7, $t2 #soma o resultado anterior com o -2y armazenando em t7 o resultado final
