# Wagner Loch
# Turma M2

.text

ori $t1, $zero, 0x01
sll $t2, $t1, 4
or  $t1, $t1, $t2
or  $t2, $t1, $t2
sll $t1, $t1, 8
or  $t1, $t1, $t2
sll $t1, $t1, 8
or  $t1, $t1, $t2
sll $t1, $t1, 8
or  $t1, $t1, $t2