.data

number: .asciiz"please enter the number : "
newline: .asciiz"\n"

.text

fact:
addi $sp,$sp,-4
sw $ra,0($sp)
li $t0,2
beq $a0,$zero,returnfact
div $a0,$t0
mflo $a0
mfhi $t1
addi $sp,$sp,-4
sw $t1,0($sp)
jal fact
lw $t1,0($sp)
addi $sp,$sp,4
move $a0,$t1
li $v0,1
syscall
returnfact:
lw $ra,0($sp)
addi $sp,$sp,4
jr $ra



main:
li $v0,4
la $a0,number
syscall
li $v0,5
syscall
move $a0,$v0
addi $sp,$sp,-4
sw $ra,0($sp)
jal fact
li $v0,4
la $a0,newline
syscall
lw $ra,0($sp)
addi $sp,$sp,4
jr $ra

