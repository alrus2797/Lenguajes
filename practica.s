.data

hola: .asciiz "\nHola\n"

.text

main:
	li $v0, 4
	la $a0, hola
	syscall
	jr $ra
