#Wagner Loch
#Turma M2
#Exercício 2

.data
	string:	.space 10
	
.text
	la $a0, string		#passa o endereço da string
	li $a1, 10		#passa o tamanho da string
	li $v0, 8		#define o número 8 para leitura de string
	syscall			#chama o syscall para ler a string
	
	#não entendi o que fazer '-'