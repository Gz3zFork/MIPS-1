.data

.text
	main:
		addi $t0,$zero,100 
		add $t1,$zero,$zero #i
		add $t2,$zero,$zero #acumulador
		loop:
			slt $t3,$t1,$t0 #if i<100 t3=1
			beq $t3,$zero,exit
			addi $t1,$t1,1
			add $t2, $t2, $t1
			j loop
		exit:
		li $v0,1
		add $a0,$zero,$t2
		syscall
		add $s0,$zero,$t2