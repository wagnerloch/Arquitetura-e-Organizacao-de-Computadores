#Wagner Loch
#Turma M2

.text

ori $t0, $zero, 0x7
sll $t0, $t0, 28

addu $t0, $t0, $t0
#Resultado = 0xe0000000, o resultado está correto, como a soma é sem sinal ele soma corretamente
#add $t0, $t0, $t0 => a execução termina com erro: arithmetic overflow