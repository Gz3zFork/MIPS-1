.data
	NewLine: .asciiz "\n"
.text
	main:
		addi $s0,$zero,10
		
		jal IncreaseReg
		
		li $v0,4
		la $a0, NewLine
		syscall
		
		jal printValue
		
		
	li $v0,10
	syscall
	
	IncreaseReg:
		addi $sp, $sp, -8
		sw $s0, 0($sp)
		sw $ra, 4($sp)
		addi $s0, $s0, 30
		
		jal printValue
		
		lw $ra,4($sp)
		lw $s0,0($sp)
		addi $sp,$sp,8
		
		jr $ra
		
	printValue:
		li $v0,1
		add $a0,$zero, $s0
		syscall
		
		jr $ra