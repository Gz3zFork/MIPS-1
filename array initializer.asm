.data
	myarray: .word 0:10
	newline: .asciiz "\n"
.text
	main:
	
			
	addi $t0, $zero, 0
	while:
		beq $t0,40,exit
		lw $t6,myarray($t0)
		
		li $v0,1
		add $a0,$zero,$t6
		syscall
		
		li $v0, 4
		la $a0,newline
		syscall
		
		addi $t0, $t0, 4
		
		j while
	exit:
		li $v0,10
		syscall
		
	li $v0,10
	syscall