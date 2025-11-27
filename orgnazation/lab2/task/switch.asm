.data
number: .asciiz"please enter the number:  "
cas0: .asciiz"case0"
cas1: .asciiz"case1"
cas2: .asciiz"case2"
casd: .asciiz"cased"
newline:  .asciiz"\n"

.text
main:
    li $v0,4
    la $a0,number
    syscall
    li $v0,5
    syscall
    move $t0,$v0
    li $t1,0
    bne $t0,$zero,l1
    j case0
 l1:    
    li $t1,1
    sub $t0,$t0,$t1   
    bne $t0,$zero,l2
    j case1
 l2:     
    li $t1,2 
    sub $t0,$t0,$t1
    beq $t0,$zero,defult
    j case2
 

case0:
     li $v0,4
     la $a0,cas0
     syscall
     j endswitch
 case1:
     li $v0,4
     la $a0,cas1
     syscall
     j endswitch
 case2:
     li $v0,4
     la $a0,cas2
     syscall
     j endswitch
 defult:
     li $v0,4
     la $a0,casd
     syscall
     j endswitch
 endswitch:
 exist:
 addi $t4,$zero,4
 add $v0,$zero,$t4
 la $a0,newline
 syscall
 li $v0,10
 syscall

      


