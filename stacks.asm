.data
	NewLine: .asciiz "\n"
.text
	main:
		addi $s0,$zero,10
		
		jal IncreaseReg
		
		li $v0,4
		la $a0, NewLine
		syscall
		
		li $v0,1
		add $a0,$zero, $s0
		syscall
		
		
	li $v0,10
	syscall
	
	IncreaseReg:
		addi $sp, $sp, -4
		sw $s0, 0($sp)
		
		addi $s0, $s0, 30
		
		li $v0,1
		add $a0,$zero, $s0
		syscall
		
		lw $s0,0($sp)
		addi $sp,$sp,4
		
		jr $ra