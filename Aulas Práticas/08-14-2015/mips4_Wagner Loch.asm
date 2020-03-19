#Wagner Loch
#Turma M2

.text

ori $t1, $zero, 0x1234
sll $t1, $t1, 16
ori $t1, $t1, 0x5678

sll $t2, $t1, 28
sll $t3, $t1, 20
ori $t4, $zero, 0x070
sll $t4, $t4, 20
and $t3, $t3, $t4
or $t2, $t2, $t3

sll $t3, $t1, 12
ori $t4, $zero, 0x6
sll $t4, $t4, 20
and $t3, $t3, $t4
or $t2, $t2, $t3

sll $t3, $t1, 4
ori $t4, $zero, 0x5
sll $t4, $t4, 16
and $t3, $t3, $t4
or $t2, $t2, $t3

srl $t3, $t1, 4
ori $t4, $zero, 0x4
sll $t4, $t4, 12
and $t3, $t3, $t4
or $t2, $t2, $t3

srl $t3, $t1, 12
ori $t4, $zero, 0x3
sll $t4, $t4, 8
and $t3, $t3, $t4
or $t2, $t2, $t3

srl $t3, $t1, 20
ori $t4, $zero, 0x2
sll $t4, $t4, 4
and $t3, $t3, $t4
or $t2, $t2, $t3

srl $t3, $t1, 28
or $t2, $t2, $t3