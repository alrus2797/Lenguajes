.data
input_message: .asciiz "Ingrese su anio de nacimiento:  "
output_message: .asciiz "Usted tiene: "
endl: .asciiz "\n"
.text

main:
    li $v0, 4
    la $a0, input_message
    syscall


    li $v0, 5
    syscall
    
    move $t1, $v0

    li $v0, 4
    la $a0, output_message
    syscall

    add $t1, $t1, -2019
    abs $a0, $t1

    li $v0, 1
    syscall

    li $v0, 4
    la $a0, endl
    syscall

    jr $ra
