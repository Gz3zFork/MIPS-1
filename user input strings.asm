.data
	message: .asciiz "Helloooo "
	userinput: .space 20
.text
	main:
		li $v0,8
		la $a0,userinput
		li $a1, 20
		syscall
		
		li $v0,4
		la $a0,message
		syscall
		
		li $v0,4
		la $a0, userinput
		syscall
	
	
	li $v0,10
	syscall