.data
space: .asciiz " "
endl: .asciiz "\n"
.text

main:
    la $v0, 5
    syscall
    move $t1, $v0
    
    la $t3, 2

    #mul $t1, $t1, 3
#add $t1, $t1, 1
    
#move $a0, $t1
#la $v0, 1
#syscall
#b fin


loop:
    beq $t1, 1, fin

    move $a0, $t1

    la $v0, 1
    syscall

    li $v0, 4
    la $a0, space
    syscall

    div $t1, $t3
    mfhi $t2
    beqz $t2, es_par

    mul $t1, $t1, 3
    add $t1, $t1, 1
    b loop
es_par:
    div $t1, $t1, 2

    b loop

fin:

    move $a0, $t1
    la $v0, 1
    syscall

    li $v0,4
    la $a0, endl
    syscall
    jr $ra
    
    
