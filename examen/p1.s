.data

endl: .asciiz "\n"

.text
main:
    li $v0, 5
    syscall

    move $t1,$v0
    li $v0, 5
    syscall
    move $t2,$v0

    bge $t1, $t2, mayor
    
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
