.data
input_message:  .asciiz "Ingrese un numero: "
output_message: .asciiz "La division sobre 4 es: "
endl: .asciiz "\n"
.text

main:
    
    li $v0, 4
    la $a0, input_message
    syscall
    
    li $v0, 5
    syscall
    
    move $t1, $v0
    srl $t1, $t1, 2
    
    li $v0, 4
    la $a0, output_message
    syscall
 
    move $a0, $t1

    li $v0, 1
    syscall

    li $v0, 4
    la $a0, endl
    syscall
 

    jr $ra
