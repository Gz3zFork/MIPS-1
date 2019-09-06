.data
	age: .word 23 #this is a 32 bit word
.text
	#this prints and integer to the screen
	li $v0, 1
	lw $a0, age
	syscall