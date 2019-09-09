.data
	number1: .float 3.14
	number2: .float 2.71
	newline: .asciiz "\n"
	number3: .double 3.14
	number4: .double 2.71
	number5: .double 3.00
	number6: .double 2.00
.text
	main:
		lwc1 $f2, number1
		lwc1 $f4, number2
		add.s $f12, $f2, $f4
		li $v0,2
		syscall
		
		li $v0,4
		la $a0,newline
		syscall
	
		ldc1 $f6, number3
		ldc1 $f8, number4
		add.d $f12, $f6, $f8
		li $v0,3
		syscall
		
		li $v0,4
		la $a0,newline
		syscall
	
		ldc1 $f10, number5
		ldc1 $f14, number6
		mul.d $f12, $f10, $f14
		li $v0,3
		syscall
		
	li $v0,10
	syscall