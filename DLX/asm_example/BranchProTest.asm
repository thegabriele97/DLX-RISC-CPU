

a:
    addi r1, r0, #1 ; 1
    addi r3, r0, #4 ; 1
    ble r3, r1, c ; 8
    bge r1, r3, c
    beqz r1, c

b:
    addi r5, r0, #12312 ;10
    blt r3, r1, d
    bgt r3, r1, d

c:
    addi r6, r0, #8 ;18
    jal a

d:
    bge r1, r1, e
    j b

e:
    addi r7, r0, #7

