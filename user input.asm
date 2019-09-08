.data
	prompt: .asciiz "Enter your age:\n"
	message: .asciiz "Your age is "
.text
	li $v0,4
	la $a0, prompt
	syscall
	
	li $v0,5
	syscall
	
	add $t0, $zero, $v0
	
	li $v0,4
	la $a0,message
	syscall
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	