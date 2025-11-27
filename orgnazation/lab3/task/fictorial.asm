.data

number: .asciiz"please enter the number : "
newline: .asciiz"\n"

.text

fact:

li $t0,1
li $t1,1

loop:
bgt $t0,$a0,endloop
mul $t1,$t1,$t0
addi $t0,$t0,1
j loop 

endloop:
move $v0,$t1

returnfact:

jr $ra

main:
li $v0,4
la $a0,number
syscall
li $v0,5
syscall
move $t3,$v0


addi $sp,$sp,-4
sw $ra,0($sp)

move $a0,$t3
 jal fact

move $a0,$v0
li $v0,1
syscall





returnmain:
li $v0,4
la $a0,newline
syscall
lw $ra,0($sp)
addi $sp,$sp,4
jr $ra
