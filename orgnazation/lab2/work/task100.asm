
.data
numberone:   .asciiz "Please enter the first number: "
numbertwo:   .asciiz "Please enter the second number: "
numberthree: .asciiz "Please enter the third number: "
numberfour:  .asciiz "Please enter the fourth number: "
sumtext:     .asciiz "The sum = "
avgtext:     .asciiz "\nThe average = "
n:     .asciiz "\n"
.text
main:
    li $v0,4
    la $a0, numberone
    syscall
    li $v0,5
    syscall
    move $t0,$v0

    li $v0,4
    la $a0, numbertwo
    syscall
    li $v0,5
    syscall
    move $t1,$v0

    li $v0,4
    la $a0, numberthree
    syscall
    li $v0,5
    syscall
    move $t2,$v0

    li $v0,4
    la $a0, numberfour
    syscall
    li $v0,5
    syscall
    move $t3,$v0

    add $t4,$t0,$t1
    add $t5,$t3,$t2
    add $t0,$t4,$t5



    li $v0,4
    la $a0, sumtext
    syscall

    li $v0,1
    move $a0,$t0
    syscall



    li $v0,4
    la $a0, avgtext
    syscall

    li $t2,4
    div $t0,$t2

    mflo $a0

    li $v0,1
    syscall

    li $v0,4
    la $a0,n
    syscall

    li $v0,10
    syscall