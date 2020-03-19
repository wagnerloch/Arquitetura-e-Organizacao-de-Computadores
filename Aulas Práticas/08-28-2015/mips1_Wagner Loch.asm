# Operando 1		0x100		0x0FFF		0xFF00		0x8000		0xFFFFF888
# Bits Significativos	9		12		16		20		32
# Operando 2		0x1000		0x0FFF		0xFFFF		0x1000		0x3333
# Bits Significativos	13		12		16		13		14
# Produto		100000		0xFFE001	0xFEFF0100	0x8000000	0xFFFFFFFFFE819B18
# Bits Significativos	6		24		32		32		64

.text
ori $t0, $zero, 0x100
ori $t1, $zero, 0x1000
mult $t0, $t1

ori $t0, $zero, 0x0FFF
ori $t1, $zero, 0x0FFF
mult $t0, $t1

ori $t0, $zero, 0xFF00
ori $t1, $zero, 0xFFFF
mult $t0, $t1

ori $t0, $zero, 0x8000
ori $t1, $zero, 0x1000
mult $t0, $t1

ori $t0, $zero, 0xFFFF
sll $t0, $t0, 16
ori $t0, $t0, 0xF888
ori $t1, $zero, 0x3333
mult $t0, $t1
