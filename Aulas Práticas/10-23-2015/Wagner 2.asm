#Wagner Loch
#Turma M2
#Exerc�cio 2

.data
	string:	.space 10
	
.text
	la $a0, string		#passa o endere�o da string
	li $a1, 10		#passa o tamanho da string
	li $v0, 8		#define o n�mero 8 para leitura de string
	syscall			#chama o syscall para ler a string
	
	#n�o entendi o que fazer '-'