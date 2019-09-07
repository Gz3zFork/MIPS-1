.data
	firstnumber: .word 5
	secondnumber: .word 10
	myenter: .asciiz " \n"
	mymessage: .asciiz "Hello World!\n"
	
.text
	#add and print integers
	lw $t0, firstnumber($zero)
	lw $t1, secondnumber($zero)
	
	li $v0,1
	add $a0, $t0, $t1
	syscall
	
	li $v0, 4
	la $a0, mymessage
	syscall
	
	#subtract and print integers
	lw $s0, firstnumber
	lw $s1, secondnumber
	
	sub $t2, $s0,$s1
	li $v0,1
	move $a0, $t2
	syscall