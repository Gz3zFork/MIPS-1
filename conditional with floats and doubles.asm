.data
	Tmessage: .asciiz "True"
	Fmessage: .asciiz "False"
	number1: .float 10.0
	number2: .float 10.4
.text

	main:
		lwc1 $f0,number1
		lwc1 $f2,number2
		
		c.eq.s $f0,$f2
		bc1t printmessage
		
		li $v0,4
		la $a0, Fmessage
		syscall
	
	
	li $v0,10
	syscall
	
	printmessage:
		li $v0,4
		la $a0, Tmessage
		syscall
		
		li $v0,10
		syscall