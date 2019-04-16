.data
flinea: .asciiz "\n"
.text

main:
    li $v0, 6
    syscall
    mov.s $f1, $f0

    li $v0, 6
    syscall
    mov.s $f2, $f0

    div.s $f12, $f1, $f2
    
    li $v0 , 2
    syscall
    
    li $v0, 4
    la $a0, flinea
    syscall
    
    jr $ra

