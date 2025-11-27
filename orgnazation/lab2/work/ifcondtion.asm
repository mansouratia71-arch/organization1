.data
msg: .asciiz"enter the number  :"
zer: .asciiz"zero"
positve: .asciiz"positve"
nagtve:  .asciiz"nagtve"
newline : .asciiz"\n"
.text
 main:
     li $v0,4
     la $a0,msg
     syscall
     li $v0,5
     syscall
     move $t0,$v0
 if :
    bne $t0,$zero,elsif
    la $a0,zer
    j endif
 elsif:
      bltz $t0,els
      la $a0,positve
      j endif
 els :
     la $a0,nagtve  
     j endif
 endif :
        li $v0,4
        syscall
 esit:
      li $v0,4
      la $a0,newline
      syscall  
      li $v0,10
      syscall  





    

