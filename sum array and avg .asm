.data
	array: .word 10,2,9
	length: .word 3
	sum: .word 0
	avg: .word 0
	newline: .asciiz "\n"
.text
	main:
		la $t0,array #base address
		li $t1, 0 #i=0
		lw $t2,length #length
		li $t3,0 #acum
		sumloop:
			lw $t4,0($t0) #t4 = array[i]
			add $t3, $t3, $t4 #acum
		
			add $t1,$t1,1
			add $t0,$t0,4
		
			blt $t1,$t2,sumloop 
			
		sw $t3,sum
		
		li $v0,1
		add $a0, $zero,$t3
		syscall
		
		li $v0,4
		la $a0,newline
		syscall
		
		div $t5,$t3,$t2
		sw $t5,avg
		
		li $v0,1
		add $a0, $zero,$t5
		syscall

		
	li $v0,10
	syscall
	
	
		
		
		