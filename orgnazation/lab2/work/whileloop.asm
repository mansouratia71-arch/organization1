.data
number: .asciiz"please enter the number : "
newline: .asciiz"\n"
msg: .asciiz"please enter number mor than 0"
.text
main:
    li $v0,4
    la $a0,number
    syscall
    li $v0,5
    syscall
    move $t0,$v0
    li $t1,1
    bltz $t1,endloop
 while:
     bgt $t1,$t0,esit

     li $v0,1
     move $a0,$t1
     syscall
    li $v0,4
    la $a0,newline
    syscall
    addi $t1,$t1,1
    j while
endloop:
    li $v0,4
    la $a0,newline
    syscall
    j esit

   esit:
     
      li $v0,4
      la $a0,msg
      syscall  
      li $v0,10
      syscall    
 
