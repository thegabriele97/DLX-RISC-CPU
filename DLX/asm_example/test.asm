
.code

    addi r1, r0, #10
    addi r2, r0, #10
    addi r3, r0, #10
    addi r4, r0, #10
    addi r5, r0, #10
    addi r6, r0, #10
    addi r7, r0, #10
    addi r8, r0, #10

    add r3, r1, r2
    add r2, r4, r2

x:
    add r1, r5, r4

labb: 
    add r1, r2, r3
    add r4, r1, r1
    j laba

laba: 
    add r1,r2,r3
    j labb

    add r5, r6, r7

