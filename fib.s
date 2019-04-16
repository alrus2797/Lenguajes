.data
coma: .asciiz ", "
flinea: .asciiz "\n"
.text

main:
    li $v0, 5;
    syscall

    move $t1, $v0

    li $t2,0
    li $t3,1
    

loop:
    beqz $t1, fin
    
    add $t4, $t2, $t3
    move $t2, $t3
    move $t3, $t4
    
    add $a0, $t2 , 0

    li $v0, 1
    syscall

    li $v0, 4
    la $a0, coma
    syscall
    

    add $t1,$t1,-1
    b loop
fin:    
    li $v0, 4
    la $a0, flinea
    syscall
    jr $ra
