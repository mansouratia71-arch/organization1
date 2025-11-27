.data


.text

fact:
addi $sp,$sp,-4
sw $ra,0($sp)
li $t1,1

ble $a0,$t1,endloop
addi $sp,$sp,-4
sw $a0,0($sp)
addi $a0,$a0,-1
jal fact
lw $a0,0($sp)
addi $sp,$sp,4
mul $v0,$v0,$a0
j returnfact
endloop:
li $v0,1

returnfact:
lw $ra,0($sp)
addi $sp,$sp,4
jr $ra

main:
addi $sp,$sp,-4
sw $ra,0($sp)

li $t3,4

move $a0,$t3
 jal fact
 
move $a0,$v0
li $v0,1
syscall
lw $ra,0($sp)
addi $sp,$sp,4
jr $ra

returnmain:

lw $ra,0($sp)
addi $sp,$sp,4
jr $ra
