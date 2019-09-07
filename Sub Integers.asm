.data
	firstnumber: .word 10
	secondnumber: .word 5
	
.text

	#subtract and print integers
	lw $s0, firstnumber
	lw $s1, secondnumber
	sub $t0, $s0,$s1
	
	li $v0,1
	move $a0, $t0
	syscall