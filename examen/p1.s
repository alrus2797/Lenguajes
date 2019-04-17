.data
input1: .asciiz "Ingrese primer numero: "
input2: .asciiz "Ingrese segundo numero: "
output: .asciiz "El mayor es: "
endl: .asciiz "\n"

.text
main:
    li $v0, 4
    la $a0, input1
    syscall

    li $v0, 5
    syscall

    move $t1,$v0

    li $v0, 4
    la $a0, input2
    syscall


    li $v0, 5
    syscall

    move $t2,$v0

    bge $t1, $t2, mayor
    
    li $v0, 4
    la $a0, output
    syscall



    move $a0, $t2
    li $v0, 1
    syscall
    b fin
mayor:
    move $a0, $t2
    li $v0, 1
    syscall
fin:
    li $v0,4
    la $a0, endl
    syscall
    jr $ra
