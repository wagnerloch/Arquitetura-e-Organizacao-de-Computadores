#Wagner Loch
#Turma M2

.text
ori $t1, $zero, 0xAAAA
sll $t1, $t1, 16
ori $t1, $t1, 0xAAAA
srl $t2, $t1, 4
or  $t3, $t1, $t2
and $t4, $t1, $t2
xor $t5, $t1, $t2

#t3 = aaaaaaaa = 10101010101010101010101010101010
#t4 = 0aaaaaaa = 00001010101010101010101010101010
#t5 = a0000000 = 10100000000000000000000000000000
