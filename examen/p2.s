.data
endl: .asciiz "\n"
.text

main:
    li $v0, 5
    syscall

    move $t1, $v0   # n 
    la $t2, 2       #i
    la $t3, 0       #sum
loop:   
    la $t4, 1       #no_divisores
    la $t5, 2       # divisors try
    beq $t2, $t1, fin
inner_loop:
    div $t2, $t5
    mfhi $t6    #residuo
    beqz $t6, es_primo
    b update
es_primo:
    add $t3, $t3, $t2
update:
    






    
fin:
    #mostrar la suma ...

    move $a0, $t2
    li $v0, 1
    syscall
    
    jr $ra
    

    
