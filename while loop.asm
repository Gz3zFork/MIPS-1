.data
	space: .asciiz ", "
.text
	main:
		addi $t0,$zero,0
		addi $t1,$zero,10
		
		while:
			slt $t3, $t0, $t1
			bne $t3,1,exit
			
			li $v0,1
			add $a0, $zero, $t0
			syscall
			
			li $v0,4
			la $a0,space
			syscall
			
			addi $t0,$t0,1
			
			j while
		
		exit:
	
	
	
	
	li $v0,10
	syscall