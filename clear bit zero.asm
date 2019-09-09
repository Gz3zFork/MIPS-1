.data
	newline: .asciiz "\n"
	
.text
	main:
		li $a1,11
		jal showNumber
		
		li $a1,11
		jal clearBitZero
		
		add $a1,$v0, $zero
		jal showNumber
	
	li $v0,10
	syscall
	
	showNumber:
		li $v0,4
		la $a0, newline
		syscall
		 
		li $v0,1
		add $a0, $zero, $a1
		syscall
		
		jr $ra
		
	clearBitZero:
		addi $sp $sp,-4
		 sw $s0,0($sp)
		 
		 li $s0,-1
		 sll $s0,$s0, 1
		 
		 and $v0,$a1,$s0
		 
		 lw $s0,0($sp)
		 addi $sp,$sp,4
		 jr $ra