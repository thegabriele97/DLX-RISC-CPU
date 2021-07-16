

main:
    j a                 ;0
    addi r1, r0, #2     ;4

a:
    jal b               ;8
    addi r1, r0, #3     ;C
    
b:
    addi r24, r0, c     ;10
    jr r24              ;14
    addi r1, r0, #4     ;18

c:
    addi r15, r0, b     ;1C
    jalr r15            ;20
    addi r1, r0, #5     ;24

