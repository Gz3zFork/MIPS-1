.data
	message: .asciiz "Enter number to find factorial: "
	Rmessage: .ascii "\nThe factorial is "
	TheNumber: .word 0
	Result: .word 0
.text
	.globl main
	main:
		li $v0,4
		la $a0, message
		syscall
		
		li $v0,5
		syscall
		
		sw $v0,TheNumber 
		
		lw $a0,TheNumber
		jal findFactorial
		sw $v0,Result
		
		li $v0,4
		la $a0, Rmessage
		syscall
		
		li $v0,1
		lw $a0, Result
		syscall
	
	li $v0,10
	syscall
	
	.globl findFactorial
	findFactorial:
		subu $sp,$sp ,8
		sw $ra, 0($sp)
		sw $s0, 4($sp)
		
		li $v0,1
		beq $a0,$zero, factorialFound
		
		add $s0, $zero, $a0
		sub $a0,$a0,1
		jal findFactorial
		
		mul $v0, $s0, $v0 
		
		factorialFound:
			lw $s0,4($sp)
			lw $ra,0($sp)
			addu $sp,$sp,8
			jr $ra