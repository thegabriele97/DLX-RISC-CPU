

main:
    j a
    addi r1, r0, #2

a:
    jal b
    addi r1, r0, #3
    
b:
    addi r24, r0, c
    jr r24
    addi r1, r0, #4

c:
    addi r15, r0, b
    jalr r15
    addi r1, r0, #5

