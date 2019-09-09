.data
	message: .asciiz "Hi, how are you?"
	message2: .asciiz "Hola, qué tal?"
	message3: .asciiz "Ha uupei, kp?"
.text
	main:
		addi $s0, $zero, 14
		addi $s1,$zero,10
		
		bgt $s0, $s1, prntmessage
		blt $s0, $s1, prntmessage2
		bgtz $s0, prntmessage3 #este no anda no se why
	
	
	li $v0,10
	syscall
	
	prntmessage:
		li $v0,4
		la $a0, message
		syscall
	li $v0,10
	syscall
	
	prntmessage2:
		li $v0,4
		la $a0, message2
		syscall
	li $v0,10
	syscall
	
	prntmessage3:
		li $v0,4
		la $a0, message3
		syscall
	li $v0,10
	syscall