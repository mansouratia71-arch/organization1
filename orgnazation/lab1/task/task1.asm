.data
name: .asciiz "name : atia mansour atia\n"
course: .asciiz "course :cse321_computer_orgnization\n"
id: .asciiz "4040\n"
.text
main:
    li $v0,4
    la $a0,name
    syscall
    li $v0,4
    la $a0,id
    syscall
    li $v0,4
    la $a0,course
    syscall  
    li $v0,10  
    syscall    

