.data
msg: .asciiz "please enter the number "
sum: .asciiz "please enter the number "
newline: .asciiz "\n"

.text
main:
    li $v0,4
    la $a0,msg
    syscall
    li $v0,5
    syscall
    move $t0,$v0
    li $t2,1
    move $t1,$zero


    if:
       beq $t0,$zero,endif
       add $t1,$t1,$t0
       sub $t0,$t0,$t2
       j if
    endif: 
        li $v0,4
        la $a0,sum
        syscall
        move $a0,$t1
        li $v0,1
        syscall

    li $v0,10
    syscall














