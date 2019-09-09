.data
	myarray: .space 12
.text
	addi $s0, $zero, 4
	addi $s1, $zero, 10
	addi $s2, $zero, 13
	
	addi $t0, $zero, 0
	sw $s0, myarray($t0)
		
	addi $t0, $t0, 4
	sw $s1, myarray($t0)
	
	addi $t0, $t0, 4
	sw $s2, myarray($t0)
		
