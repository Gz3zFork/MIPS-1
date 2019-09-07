.data
	message: .asciiz "Hola todos!\nMi nombre es David"
.text
	main:
		jal printmessage
	
	#finalizar main
	li $v0, 10
	syscall
	
	printmessage:
		li $v0,4
		la $a0, message
		syscall
		
		jr $ra
	